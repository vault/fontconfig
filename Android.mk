
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := fontconfig
LOCAL_CFLAGS := -DFONTCONFIG_PATH=\"/sdcard/.fcconfig\"
LOCAL_CFLAGS += -DFC_CACHEDIR=\"/sdcard/.fccache\"
LOCAL_CFLAGS += -DFC_DEFAULT_FONTS=\"/system/fonts\"
#LOCAL_STATIC_LIBRARIES := ft2 expat 
#LOCAL_LDLIBS :=  -lft2 -lexpat

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/fontconfig \
	$(LOCAL_PATH)/../freetype/include \
	$(LOCAL_PATH)/../expat/lib

LOCAL_SRC_FILES := \
	src/fcatomic.c \
	src/fcblanks.c \
	src/fccache.c \
	src/fccfg.c \
	src/fccharset.c \
	src/fcdbg.c \
	src/fcdefault.c \
	src/fcdir.c \
	src/fcformat.c \
	src/fcfreetype.c \
	src/fcfs.c \
	src/fcinit.c \
	src/fclang.c \
	src/fclist.c \
	src/fcmatch.c \
	src/fcmatrix.c \
	src/fcname.c \
	src/fcpat.c \
	src/fcserialize.c \
	src/fcstr.c \
	src/fcxml.c \
	src/ftglue.c

