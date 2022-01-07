; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ivtv = type { i32, i64, i32, i64, i32, i64, i64, %struct.ivtv_stream*, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32 }
%struct.ivtv_stream = type { i32, i32, %struct.TYPE_9__, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_input = type { i32 }
%struct.v4l2_audio = type { i32 }
%struct.tveeprom = type { i32 }
%struct.v4l2_output = type { i32 }
%struct.v4l2_audioout = type { i32 }
%struct.TYPE_10__ = type { %struct.ivtv* }

@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Version: %s Card: %s\0A\00", align 1
@IVTV_VERSION = common dso_local global i64 0, align 8
@IVTV_HW_TVEEPROM = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@log_status = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Video Input:  %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Audio Input:  %s%s\0A\00", align 1
@V4L2_MPEG_AUDIO_MODE_DUAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c" (Bilingual)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ivtv_log_status.output_modes = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"MPEG Streaming\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"YUV Streaming\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"YUV Frames\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Passthrough\00", align 1
@ivtv_log_status.alpha_mode = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Local\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Global and Local\00", align 1
@ivtv_log_status.pixel_format = internal constant [16 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0)], align 16
@.str.13 = private unnamed_addr constant [13 x i8] c"ARGB Indexed\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"RGB 5:6:5\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"ARGB 1:5:5:5\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"ARGB 1:4:4:4\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"ARGB 8:8:8:8\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"AYUV Indexed\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"YUV 5:6:5\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"AYUV 1:5:5:5\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"AYUV 1:4:4:4\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"AYUV 8:8:8:8\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"13\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"14\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Video Output: %s\0A\00", align 1
@OUT_PASSTHROUGH = common dso_local global i32 0, align 4
@OUT_NONE = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [18 x i8] c"Output Mode:  %s\0A\00", align 1
@CX2341X_OSD_GET_STATE = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [47 x i8] c"Overlay:      %s, Alpha: %s, Pixel Format: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"Tuner:  %s\0A\00", align 1
@IVTV_F_I_RADIO_USER = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"Radio\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"TV\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"Status flags:    0x%08lx\0A\00", align 1
@IVTV_MAX_STREAMS = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [63 x i8] c"Stream %s: status 0x%04lx, %d%% of %d KiB (%d buffers) in use\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"Read MPG/VBI: %lld/%lld bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*)* @ivtv_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_log_status(%struct.file* %0, i8* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_input, align 4
  %10 = alloca %struct.v4l2_audio, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tveeprom, align 4
  %13 = alloca %struct.v4l2_output, align 4
  %14 = alloca %struct.v4l2_audioout, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ivtv_stream*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.TYPE_10__* @fh2id(i8* %17)
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.ivtv*, %struct.ivtv** %19, align 8
  store %struct.ivtv* %20, %struct.ivtv** %5, align 8
  %21 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %25 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %26 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i64, i64* @IVTV_VERSION, align 8
  %31 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %32 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %33)
  %35 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %36 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IVTV_HW_TVEEPROM, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %2
  %42 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %43 = call i32 @ivtv_read_eeprom(%struct.ivtv* %42, %struct.tveeprom* %12)
  br label %44

44:                                               ; preds = %41, %2
  %45 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %46 = load i32, i32* @core, align 4
  %47 = load i32, i32* @log_status, align 4
  %48 = call i32 @ivtv_call_all(%struct.ivtv* %45, i32 %46, i32 %47)
  %49 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %50 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %51 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %50, i32 0, i32 13
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ivtv_get_input(%struct.ivtv* %49, i32 %52, %struct.v4l2_input* %9)
  %54 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %55 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %56 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ivtv_get_audio_input(%struct.ivtv* %54, i32 %57, %struct.v4l2_audio* %10)
  %59 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %10, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %65 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @V4L2_MPEG_AUDIO_MODE_DUAL, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %71 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %63, i8* %70)
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %132

74:                                               ; preds = %44
  %75 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %76 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %15, align 4
  %78 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %79 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %80 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ivtv_get_output(%struct.ivtv* %78, i32 %81, %struct.v4l2_output* %13)
  %83 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %84 = call i32 @ivtv_get_audio_output(%struct.ivtv* %83, i32 0, %struct.v4l2_audioout* %14)
  %85 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %13, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %15, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %74
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @OUT_PASSTHROUGH, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90, %74
  %95 = load i32, i32* @OUT_NONE, align 4
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %94, %90
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [5 x i8*], [5 x i8*]* @ivtv_log_status.output_modes, i64 0, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i8* %100)
  %102 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %103 = load i32, i32* @CX2341X_OSD_GET_STATE, align 4
  %104 = call i32 @ivtv_vapi_result(%struct.ivtv* %102, i32* %24, i32 %103, i32 0)
  %105 = call i32 @read_reg(i32 10752)
  %106 = ashr i32 %105, 7
  %107 = and i32 %106, 64
  %108 = getelementptr inbounds i32, i32* %24, i64 0
  %109 = load i32, i32* %108, align 16
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 16
  %111 = getelementptr inbounds i32, i32* %24, i64 0
  %112 = load i32, i32* %111, align 16
  %113 = and i32 %112, 1
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0)
  %117 = getelementptr inbounds i32, i32* %24, i64 0
  %118 = load i32, i32* %117, align 16
  %119 = ashr i32 %118, 1
  %120 = and i32 %119, 3
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i8*], [4 x i8*]* @ivtv_log_status.alpha_mode, i64 0, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds i32, i32* %24, i64 0
  %125 = load i32, i32* %124, align 16
  %126 = ashr i32 %125, 3
  %127 = and i32 %126, 15
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [16 x i8*], [16 x i8*]* @ivtv_log_status.pixel_format, i64 0, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.31, i64 0, i64 0), i8* %116, i8* %123, i8* %130)
  br label %132

132:                                              ; preds = %96, %44
  %133 = load i32, i32* @IVTV_F_I_RADIO_USER, align 4
  %134 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %135 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %134, i32 0, i32 8
  %136 = call i64 @test_bit(i32 %133, i32* %135)
  %137 = icmp ne i64 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0)
  %140 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* %139)
  %141 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %142 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %141, i32 0, i32 10
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %145 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %144, i32 0, i32 9
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @v4l2_ctrl_handler_log_status(i32* %143, i32 %147)
  %149 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %150 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0), i32 %151)
  store i32 0, i32* %11, align 4
  br label %153

153:                                              ; preds = %207, %132
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @IVTV_MAX_STREAMS, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %210

157:                                              ; preds = %153
  %158 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %159 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %158, i32 0, i32 7
  %160 = load %struct.ivtv_stream*, %struct.ivtv_stream** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %160, i64 %162
  store %struct.ivtv_stream* %163, %struct.ivtv_stream** %16, align 8
  %164 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %165 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %174, label %169

169:                                              ; preds = %157
  %170 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %171 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169, %157
  br label %207

175:                                              ; preds = %169
  %176 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %177 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %180 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %183 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %186 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %184, %188
  %190 = mul nsw i32 %189, 100
  %191 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %192 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sdiv i32 %190, %193
  %195 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %196 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %199 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %197, %200
  %202 = sdiv i32 %201, 1024
  %203 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %204 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.38, i64 0, i64 0), i32 %178, i32 %181, i32 %194, i32 %202, i32 %205)
  br label %207

207:                                              ; preds = %175, %174
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %11, align 4
  br label %153

210:                                              ; preds = %153
  %211 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %212 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %211, i32 0, i32 6
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %215 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %214, i32 0, i32 5
  %216 = load i64, i64* %215, align 8
  %217 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0), i64 %213, i64 %216)
  %218 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %218)
  ret i32 0
}

declare dso_local %struct.TYPE_10__* @fh2id(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @IVTV_INFO(i8*, ...) #1

declare dso_local i32 @ivtv_read_eeprom(%struct.ivtv*, %struct.tveeprom*) #1

declare dso_local i32 @ivtv_call_all(%struct.ivtv*, i32, i32) #1

declare dso_local i32 @ivtv_get_input(%struct.ivtv*, i32, %struct.v4l2_input*) #1

declare dso_local i32 @ivtv_get_audio_input(%struct.ivtv*, i32, %struct.v4l2_audio*) #1

declare dso_local i32 @ivtv_get_output(%struct.ivtv*, i32, %struct.v4l2_output*) #1

declare dso_local i32 @ivtv_get_audio_output(%struct.ivtv*, i32, %struct.v4l2_audioout*) #1

declare dso_local i32 @ivtv_vapi_result(%struct.ivtv*, i32*, i32, i32) #1

declare dso_local i32 @read_reg(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_log_status(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
