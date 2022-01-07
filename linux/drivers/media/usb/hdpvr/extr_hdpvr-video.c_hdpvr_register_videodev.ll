; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_hdpvr_register_videodev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_hdpvr_register_videodev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.hdpvr_device = type { i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i8*, i8*, %struct.TYPE_6__, i32, i32, %struct.v4l2_ctrl_handler }
%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }

@HDPVR_FLAG_AC3_CAP = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@hdpvr_dv_timings = common dso_local global i32* null, align 8
@HDPVR_DEF_DV_TIMINGS_IDX = common dso_local global i64 0, align 8
@hdpvr_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_STREAM_TYPE = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG2_TS = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_AUDIO_ENCODING = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_AC3 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_AAC = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_ENCODING = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE_PEAK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not register controls\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not setup controls\0A\00", align 1
@hdpvr_video_template = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Hauppauge HD PVR\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"video_device registration failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdpvr_register_videodev(%struct.hdpvr_device* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdpvr_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %12 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %11, i32 0, i32 12
  store %struct.v4l2_ctrl_handler* %12, %struct.v4l2_ctrl_handler** %8, align 8
  %13 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %14 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @HDPVR_FLAG_AC3_CAP, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @V4L2_STD_525_60, align 4
  %19 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %20 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %19, i32 0, i32 11
  store i32 %18, i32* %20, align 8
  %21 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %22 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %21, i32 0, i32 1
  store i32 720, i32* %22, align 4
  %23 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %24 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %23, i32 0, i32 2
  store i32 480, i32* %24, align 8
  %25 = load i32*, i32** @hdpvr_dv_timings, align 8
  %26 = load i64, i64* @HDPVR_DEF_DV_TIMINGS_IDX, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %30 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 4
  %31 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %32 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %31, i32 11)
  %33 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %34 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 21
  br i1 %36, label %37, label %53

37:                                               ; preds = %3
  %38 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %39 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %40 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %38, i32* @hdpvr_ctrl_ops, i32 %39, i32 0, i32 255, i32 1, i32 128)
  %41 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %42 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %43 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %41, i32* @hdpvr_ctrl_ops, i32 %42, i32 0, i32 255, i32 1, i32 64)
  %44 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %45 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %46 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %44, i32* @hdpvr_ctrl_ops, i32 %45, i32 0, i32 255, i32 1, i32 64)
  %47 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %48 = load i32, i32* @V4L2_CID_HUE, align 4
  %49 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %47, i32* @hdpvr_ctrl_ops, i32 %48, i32 0, i32 30, i32 1, i32 15)
  %50 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %51 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %52 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %50, i32* @hdpvr_ctrl_ops, i32 %51, i32 0, i32 255, i32 1, i32 128)
  br label %69

53:                                               ; preds = %3
  %54 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %55 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %56 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %54, i32* @hdpvr_ctrl_ops, i32 %55, i32 0, i32 255, i32 1, i32 134)
  %57 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %58 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %59 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %57, i32* @hdpvr_ctrl_ops, i32 %58, i32 0, i32 255, i32 1, i32 128)
  %60 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %61 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %62 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %60, i32* @hdpvr_ctrl_ops, i32 %61, i32 0, i32 255, i32 1, i32 128)
  %63 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %64 = load i32, i32* @V4L2_CID_HUE, align 4
  %65 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %63, i32* @hdpvr_ctrl_ops, i32 %64, i32 0, i32 255, i32 1, i32 128)
  %66 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %67 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %68 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %66, i32* @hdpvr_ctrl_ops, i32 %67, i32 0, i32 255, i32 1, i32 128)
  br label %69

69:                                               ; preds = %53, %37
  %70 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %71 = load i32, i32* @V4L2_CID_MPEG_STREAM_TYPE, align 4
  %72 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_TS, align 4
  %73 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_TS, align 4
  %74 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %70, i32* @hdpvr_ctrl_ops, i32 %71, i32 %72, i32 1, i32 %73)
  %75 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %76 = load i32, i32* @V4L2_CID_MPEG_AUDIO_ENCODING, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 4
  br label %83

81:                                               ; preds = %69
  %82 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AAC, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %89 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %88, i32 0, i32 9
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  br label %94

92:                                               ; preds = %83
  %93 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AAC, align 4
  br label %94

94:                                               ; preds = %92, %87
  %95 = phi i32 [ %91, %87 ], [ %93, %92 ]
  %96 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %75, i32* @hdpvr_ctrl_ops, i32 %76, i32 %84, i32 7, i32 %95)
  %97 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %98 = load i32, i32* @V4L2_CID_MPEG_VIDEO_ENCODING, align 4
  %99 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC, align 4
  %100 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC, align 4
  %101 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %97, i32* @hdpvr_ctrl_ops, i32 %98, i32 %99, i32 3, i32 %100)
  %102 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %103 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE_MODE, align 4
  %104 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %105 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %106 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %102, i32* @hdpvr_ctrl_ops, i32 %103, i32 %104, i32 0, i32 %105)
  %107 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %108 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 8
  %109 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %110 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE, align 4
  %111 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %109, i32* @hdpvr_ctrl_ops, i32 %110, i32 1000000, i32 13500000, i32 100000, i32 6500000)
  %112 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %113 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %112, i32 0, i32 8
  store i8* %111, i8** %113, align 8
  %114 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %115 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE_PEAK, align 4
  %116 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %114, i32* @hdpvr_ctrl_ops, i32 %115, i32 1100000, i32 20200000, i32 100000, i32 9000000)
  %117 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %118 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %117, i32 0, i32 7
  store i8* %116, i8** %118, align 8
  %119 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %120 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %121 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %119, %struct.v4l2_ctrl_handler** %122, align 8
  %123 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %124 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %94
  %128 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %129 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %10, align 4
  %131 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %132 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %131, i32 0, i32 4
  %133 = call i32 @v4l2_err(%struct.TYPE_8__* %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %176

134:                                              ; preds = %94
  %135 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %136 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %135, i32 0, i32 6
  %137 = call i32 @v4l2_ctrl_cluster(i32 3, i32* %136)
  %138 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %139 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %144 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %143, i32 0, i32 4
  %145 = call i32 @v4l2_err(%struct.TYPE_8__* %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %176

146:                                              ; preds = %134
  %147 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %148 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %147, i32 0, i32 5
  %149 = bitcast %struct.TYPE_7__* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %149, i8* align 8 bitcast (%struct.TYPE_7__* @hdpvr_video_template to i8*), i64 16, i1 false)
  %150 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %151 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @strscpy(i32 %153, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %155 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %156 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %155, i32 0, i32 4
  %157 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %158 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  store %struct.TYPE_8__* %156, %struct.TYPE_8__** %159, align 8
  %160 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %161 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %160, i32 0, i32 5
  %162 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %163 = call i32 @video_set_drvdata(%struct.TYPE_7__* %161, %struct.hdpvr_device* %162)
  %164 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %165 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %164, i32 0, i32 5
  %166 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @video_register_device(%struct.TYPE_7__* %165, i32 %166, i32 %167)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %146
  %172 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %173 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %172, i32 0, i32 4
  %174 = call i32 @v4l2_err(%struct.TYPE_8__* %173, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %176

175:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  br label %180

176:                                              ; preds = %171, %142, %127
  %177 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %178 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %177)
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %176, %175
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_7__*, %struct.hdpvr_device*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
