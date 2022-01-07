; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa6752hs.c_saa6752hs_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa6752hs.c_saa6752hs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.saa6752hs_state = type { i32, i32, i64, i32, i8*, i8*, %struct.v4l2_ctrl_handler, i32, %struct.v4l2_subdev }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_subdev = type { %struct.v4l2_ctrl_handler* }

@.str = private unnamed_addr constant [24 x i8] c"chip found @ 0x%x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@saa6752hs_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"supports AC-3\0A\00", align 1
@param_defaults = common dso_local global i32 0, align 4
@saa6752hs_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_AUDIO_ENCODING = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_AC3 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_LAYER_2 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_AUDIO_L2_BITRATE = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_L2_BITRATE_384K = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_L2_BITRATE_256K = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_AUDIO_AC3_BITRATE = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_AC3_BITRATE_384K = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_AC3_BITRATE_256K = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_AUDIO_SAMPLING_FREQ = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_ENCODING = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_2 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_ASPECT = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_16x9 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_4x3 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE_PEAK = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_STREAM_TYPE = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG2_TS = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_VBR = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_STREAM_PID_PMT = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_STREAM_PID_AUDIO = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_STREAM_PID_VIDEO = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_STREAM_PID_PCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @saa6752hs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa6752hs_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.saa6752hs_state*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [12 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 19, i32* %9, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = shl i32 %15, 1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.saa6752hs_state* @devm_kzalloc(i32* %24, i32 56, i32 %25)
  store %struct.saa6752hs_state* %26, %struct.saa6752hs_state** %6, align 8
  %27 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %28 = icmp eq %struct.saa6752hs_state* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %192

32:                                               ; preds = %2
  %33 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %34 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %33, i32 0, i32 8
  store %struct.v4l2_subdev* %34, %struct.v4l2_subdev** %7, align 8
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %35, %struct.i2c_client* %36, i32* @saa6752hs_ops)
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = call i32 @i2c_master_send(%struct.i2c_client* %38, i32* %9, i32 1)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds [12 x i32], [12 x i32]* %10, i64 0, i64 0
  %42 = call i32 @i2c_master_recv(%struct.i2c_client* %40, i32* %41, i32 48)
  %43 = getelementptr inbounds [12 x i32], [12 x i32]* %10, i64 0, i64 8
  %44 = load i32, i32* %43, align 16
  %45 = shl i32 %44, 8
  %46 = getelementptr inbounds [12 x i32], [12 x i32]* %10, i64 0, i64 9
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %45, %47
  %49 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %50 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %52 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %54 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 518
  br i1 %56, label %57, label %62

57:                                               ; preds = %32
  %58 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %59 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %32
  %63 = load i32, i32* @param_defaults, align 4
  %64 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %65 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 4
  %66 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %67 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %66, i32 0, i32 6
  store %struct.v4l2_ctrl_handler* %67, %struct.v4l2_ctrl_handler** %8, align 8
  %68 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %69 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %68, i32 14)
  %70 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %71 = load i32, i32* @V4L2_CID_MPEG_AUDIO_ENCODING, align 4
  %72 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %73 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 4
  br label %80

78:                                               ; preds = %62
  %79 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_LAYER_2, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_LAYER_2, align 4
  %83 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %70, i32* @saa6752hs_ctrl_ops, i32 %71, i32 %81, i32 13, i32 %82)
  %84 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %85 = load i32, i32* @V4L2_CID_MPEG_AUDIO_L2_BITRATE, align 4
  %86 = load i32, i32* @V4L2_MPEG_AUDIO_L2_BITRATE_384K, align 4
  %87 = load i32, i32* @V4L2_MPEG_AUDIO_L2_BITRATE_256K, align 4
  %88 = shl i32 1, %87
  %89 = load i32, i32* @V4L2_MPEG_AUDIO_L2_BITRATE_384K, align 4
  %90 = shl i32 1, %89
  %91 = or i32 %88, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* @V4L2_MPEG_AUDIO_L2_BITRATE_256K, align 4
  %94 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %84, i32* @saa6752hs_ctrl_ops, i32 %85, i32 %86, i32 %92, i32 %93)
  %95 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %96 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %80
  %100 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %101 = load i32, i32* @V4L2_CID_MPEG_AUDIO_AC3_BITRATE, align 4
  %102 = load i32, i32* @V4L2_MPEG_AUDIO_AC3_BITRATE_384K, align 4
  %103 = load i32, i32* @V4L2_MPEG_AUDIO_AC3_BITRATE_256K, align 4
  %104 = shl i32 1, %103
  %105 = load i32, i32* @V4L2_MPEG_AUDIO_AC3_BITRATE_384K, align 4
  %106 = shl i32 1, %105
  %107 = or i32 %104, %106
  %108 = xor i32 %107, -1
  %109 = load i32, i32* @V4L2_MPEG_AUDIO_AC3_BITRATE_256K, align 4
  %110 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %100, i32* @saa6752hs_ctrl_ops, i32 %101, i32 %102, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %99, %80
  %112 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %113 = load i32, i32* @V4L2_CID_MPEG_AUDIO_SAMPLING_FREQ, align 4
  %114 = load i32, i32* @V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000, align 4
  %115 = load i32, i32* @V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000, align 4
  %116 = shl i32 1, %115
  %117 = xor i32 %116, -1
  %118 = load i32, i32* @V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000, align 4
  %119 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %112, i32* @saa6752hs_ctrl_ops, i32 %113, i32 %114, i32 %117, i32 %118)
  %120 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %121 = load i32, i32* @V4L2_CID_MPEG_VIDEO_ENCODING, align 4
  %122 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_2, align 4
  %123 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_2, align 4
  %124 = shl i32 1, %123
  %125 = xor i32 %124, -1
  %126 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_2, align 4
  %127 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %120, i32* @saa6752hs_ctrl_ops, i32 %121, i32 %122, i32 %125, i32 %126)
  %128 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %129 = load i32, i32* @V4L2_CID_MPEG_VIDEO_ASPECT, align 4
  %130 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_16x9, align 4
  %131 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_4x3, align 4
  %132 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %128, i32* @saa6752hs_ctrl_ops, i32 %129, i32 %130, i32 1, i32 %131)
  %133 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %134 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE_PEAK, align 4
  %135 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %133, i32* @saa6752hs_ctrl_ops, i32 %134, i32 1000000, i32 27000000, i32 1000, i32 8000000)
  %136 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %137 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %136, i32 0, i32 5
  store i8* %135, i8** %137, align 8
  %138 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %139 = load i32, i32* @V4L2_CID_MPEG_STREAM_TYPE, align 4
  %140 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_TS, align 4
  %141 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_TS, align 4
  %142 = shl i32 1, %141
  %143 = xor i32 %142, -1
  %144 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_TS, align 4
  %145 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %138, i32* @saa6752hs_ctrl_ops, i32 %139, i32 %140, i32 %143, i32 %144)
  %146 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %147 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE_MODE, align 4
  %148 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %149 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 4
  %150 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %146, i32* @saa6752hs_ctrl_ops, i32 %147, i32 %148, i32 0, i32 %149)
  %151 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %152 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 8
  %153 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %154 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE, align 4
  %155 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %153, i32* @saa6752hs_ctrl_ops, i32 %154, i32 1000000, i32 27000000, i32 1000, i32 6000000)
  %156 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %157 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %156, i32 0, i32 4
  store i8* %155, i8** %157, align 8
  %158 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %159 = load i32, i32* @V4L2_CID_MPEG_STREAM_PID_PMT, align 4
  %160 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %158, i32* @saa6752hs_ctrl_ops, i32 %159, i32 0, i32 16383, i32 1, i32 16)
  %161 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %162 = load i32, i32* @V4L2_CID_MPEG_STREAM_PID_AUDIO, align 4
  %163 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %161, i32* @saa6752hs_ctrl_ops, i32 %162, i32 0, i32 16383, i32 1, i32 260)
  %164 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %165 = load i32, i32* @V4L2_CID_MPEG_STREAM_PID_VIDEO, align 4
  %166 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %164, i32* @saa6752hs_ctrl_ops, i32 %165, i32 0, i32 16383, i32 1, i32 256)
  %167 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %168 = load i32, i32* @V4L2_CID_MPEG_STREAM_PID_PCR, align 4
  %169 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %167, i32* @saa6752hs_ctrl_ops, i32 %168, i32 0, i32 16383, i32 1, i32 259)
  %170 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %171 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %172 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %171, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %170, %struct.v4l2_ctrl_handler** %172, align 8
  %173 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %174 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %111
  %178 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %179 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %11, align 4
  %181 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %182 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %181)
  %183 = load i32, i32* %11, align 4
  store i32 %183, i32* %3, align 4
  br label %192

184:                                              ; preds = %111
  %185 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %186 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %185, i32 0, i32 3
  %187 = call i32 @v4l2_ctrl_cluster(i32 3, i32* %186)
  %188 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %189 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %188)
  %190 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %191 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %190, i32 0, i32 2
  store i64 0, i64* %191, align 8
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %184, %177, %29
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, ...) #1

declare dso_local %struct.saa6752hs_state* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
