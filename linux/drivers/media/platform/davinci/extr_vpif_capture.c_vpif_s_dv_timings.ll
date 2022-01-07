; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_s_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_s_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vpif_capture_config* }
%struct.vpif_capture_config = type { %struct.vpif_capture_chan_config* }
%struct.vpif_capture_chan_config = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.v4l2_input }
%struct.v4l2_input = type { i64 }
%struct.file = type { i32 }
%struct.v4l2_dv_timings = type { i64, %struct.v4l2_bt_timings }
%struct.v4l2_bt_timings = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.video_device = type { i32 }
%struct.channel_obj = type { i64, i64, i32, %struct.video_obj, %struct.common_obj*, %struct.vpif_params }
%struct.video_obj = type { i64, %struct.v4l2_dv_timings }
%struct.common_obj = type { i32 }
%struct.vpif_params = type { %struct.vpif_channel_config_params }
%struct.vpif_channel_config_params = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64 }

@vpif_dev = common dso_local global %struct.TYPE_4__* null, align 8
@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@V4L2_IN_CAP_DV_TIMINGS = common dso_local global i64 0, align 8
@V4L2_DV_BT_656_1120 = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Timing type not defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_dv_timings = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Error setting custom DV timings\0A\00", align 1
@.str.2 = private unnamed_addr constant [167 x i8] c"Timings for width, height, horizontal back porch, horizontal sync, horizontal front porch, vertical back porch, vertical sync and vertical back porch must be defined\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Required timing values for interlaced BT format missing\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Custom timings BT656/1120\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)* @vpif_s_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_s_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dv_timings*, align 8
  %8 = alloca %struct.vpif_capture_config*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.channel_obj*, align 8
  %11 = alloca %struct.vpif_params*, align 8
  %12 = alloca %struct.vpif_channel_config_params*, align 8
  %13 = alloca %struct.common_obj*, align 8
  %14 = alloca %struct.video_obj*, align 8
  %15 = alloca %struct.v4l2_bt_timings*, align 8
  %16 = alloca %struct.vpif_capture_chan_config*, align 8
  %17 = alloca %struct.v4l2_input, align 8
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dv_timings* %2, %struct.v4l2_dv_timings** %7, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vpif_dev, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %20, align 8
  store %struct.vpif_capture_config* %21, %struct.vpif_capture_config** %8, align 8
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = call %struct.video_device* @video_devdata(%struct.file* %22)
  store %struct.video_device* %23, %struct.video_device** %9, align 8
  %24 = load %struct.video_device*, %struct.video_device** %9, align 8
  %25 = call %struct.channel_obj* @video_get_drvdata(%struct.video_device* %24)
  store %struct.channel_obj* %25, %struct.channel_obj** %10, align 8
  %26 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %27 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %26, i32 0, i32 5
  store %struct.vpif_params* %27, %struct.vpif_params** %11, align 8
  %28 = load %struct.vpif_params*, %struct.vpif_params** %11, align 8
  %29 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %28, i32 0, i32 0
  store %struct.vpif_channel_config_params* %29, %struct.vpif_channel_config_params** %12, align 8
  %30 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %31 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %30, i32 0, i32 4
  %32 = load %struct.common_obj*, %struct.common_obj** %31, align 8
  %33 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %34 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %32, i64 %33
  store %struct.common_obj* %34, %struct.common_obj** %13, align 8
  %35 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %36 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %35, i32 0, i32 3
  store %struct.video_obj* %36, %struct.video_obj** %14, align 8
  %37 = load %struct.video_obj*, %struct.video_obj** %14, align 8
  %38 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %38, i32 0, i32 1
  store %struct.v4l2_bt_timings* %39, %struct.v4l2_bt_timings** %15, align 8
  %40 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %8, align 8
  %41 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %40, i32 0, i32 0
  %42 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %41, align 8
  %43 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %44 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %42, i64 %45
  %47 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = icmp ne %struct.TYPE_3__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %3
  %51 = load i32, i32* @ENODATA, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %322

53:                                               ; preds = %3
  %54 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %8, align 8
  %55 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %54, i32 0, i32 0
  %56 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %55, align 8
  %57 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %58 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %56, i64 %59
  store %struct.vpif_capture_chan_config* %60, %struct.vpif_capture_chan_config** %16, align 8
  %61 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %16, align 8
  %62 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %65 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = bitcast %struct.v4l2_input* %17 to i8*
  %70 = bitcast %struct.v4l2_input* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 8, i1 false)
  %71 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %17, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @V4L2_IN_CAP_DV_TIMINGS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %53
  %76 = load i32, i32* @ENODATA, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %322

78:                                               ; preds = %53
  %79 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @V4L2_DV_BT_656_1120, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i32, i32* @debug, align 4
  %86 = call i32 @vpif_dbg(i32 2, i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %322

89:                                               ; preds = %78
  %90 = load %struct.common_obj*, %struct.common_obj** %13, align 8
  %91 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %90, i32 0, i32 0
  %92 = call i64 @vb2_is_busy(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @EBUSY, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %322

97:                                               ; preds = %89
  %98 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %99 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @video, align 4
  %102 = load i32, i32* @s_dv_timings, align 4
  %103 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %104 = call i32 @v4l2_subdev_call(i32 %100, i32 %101, i32 %102, %struct.v4l2_dv_timings* %103)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* @ENOIOCTLCMD, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %114, label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %109, %97
  store i32 0, i32* %18, align 4
  br label %115

115:                                              ; preds = %114, %109
  %116 = load i32, i32* %18, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i32, i32* @debug, align 4
  %120 = call i32 @vpif_dbg(i32 2, i32 %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* %18, align 4
  store i32 %121, i32* %4, align 4
  br label %322

122:                                              ; preds = %115
  %123 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %124 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %170

128:                                              ; preds = %122
  %129 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %130 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %170

134:                                              ; preds = %128
  %135 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %136 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %136, i32 0, i32 11
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %152, label %140

140:                                              ; preds = %134
  %141 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %142 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %142, i32 0, i32 10
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %148 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %148, i32 0, i32 9
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %170

152:                                              ; preds = %146, %140, %134
  %153 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %154 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %152
  %159 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %160 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %160, i32 0, i32 7
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %175, label %164

164:                                              ; preds = %158
  %165 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %166 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %166, i32 0, i32 8
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %164, %152, %146, %128, %122
  %171 = load i32, i32* @debug, align 4
  %172 = call i32 @vpif_dbg(i32 2, i32 %171, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.2, i64 0, i64 0))
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %4, align 4
  br label %322

175:                                              ; preds = %164, %158
  %176 = load %struct.video_obj*, %struct.video_obj** %14, align 8
  %177 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %176, i32 0, i32 1
  %178 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %179 = bitcast %struct.v4l2_dv_timings* %177 to i8*
  %180 = bitcast %struct.v4l2_dv_timings* %178 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %179, i8* align 8 %180, i64 96, i1 false)
  %181 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %182 = call i64 @V4L2_DV_BT_BLANKING_WIDTH(%struct.v4l2_bt_timings* %181)
  %183 = sub nsw i64 %182, 8
  %184 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %185 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %184, i32 0, i32 17
  store i64 %183, i64* %185, align 8
  %186 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %187 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %190 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %189, i32 0, i32 16
  store i64 %188, i64* %190, align 8
  %191 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %192 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %191, i32 0, i32 0
  store i32 1, i32* %192, align 8
  %193 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %194 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %193, i32 0, i32 8
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %197 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %196, i32 0, i32 7
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %195, %198
  %200 = add nsw i64 %199, 1
  %201 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %202 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %201, i32 0, i32 15
  store i64 %200, i64* %202, align 8
  %203 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %204 = call i32 @V4L2_DV_BT_FRAME_HEIGHT(%struct.v4l2_bt_timings* %203)
  %205 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %206 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %208 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %276

211:                                              ; preds = %175
  %212 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %213 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %212, i32 0, i32 5
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %226, label %216

216:                                              ; preds = %211
  %217 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %218 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %216
  %222 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %223 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %222, i32 0, i32 6
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %270

226:                                              ; preds = %221, %216, %211
  %227 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %228 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = sdiv i32 %229, 2
  %231 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %232 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 %233, 1
  %235 = sub nsw i32 %230, %234
  %236 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %237 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 8
  %238 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %239 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = sdiv i32 %240, 2
  %242 = add nsw i32 %241, 1
  %243 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %244 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %243, i32 0, i32 3
  store i32 %242, i32* %244, align 4
  %245 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %246 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %250 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %248, %251
  %253 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %254 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %253, i32 0, i32 5
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %252, %255
  %257 = add nsw i64 %256, 1
  %258 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %259 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %258, i32 0, i32 14
  store i64 %257, i64* %259, align 8
  %260 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %261 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %264 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = sub nsw i32 %265, 1
  %267 = sub nsw i32 %262, %266
  %268 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %269 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %268, i32 0, i32 4
  store i32 %267, i32* %269, align 8
  br label %275

270:                                              ; preds = %221
  %271 = load i32, i32* @debug, align 4
  %272 = call i32 @vpif_dbg(i32 2, i32 %271, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %273 = load i32, i32* @EINVAL, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %4, align 4
  br label %322

275:                                              ; preds = %226
  br label %287

276:                                              ; preds = %175
  %277 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %278 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %281 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = sub nsw i32 %282, 1
  %284 = sub nsw i32 %279, %283
  %285 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %286 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %285, i32 0, i32 2
  store i32 %284, i32* %286, align 8
  br label %287

287:                                              ; preds = %276, %275
  %288 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %289 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %288, i32 0, i32 13
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @strscpy(i32 %290, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %292 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %293 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %292, i32 0, i32 4
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %296 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %295, i32 0, i32 12
  store i64 %294, i64* %296, align 8
  %297 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %298 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %301 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %300, i32 0, i32 11
  store i64 %299, i64* %301, align 8
  %302 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %15, align 8
  %303 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  %306 = zext i1 %305 to i64
  %307 = select i1 %305, i32 0, i32 1
  %308 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %309 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %308, i32 0, i32 5
  store i32 %307, i32* %309, align 4
  %310 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %311 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %310, i32 0, i32 10
  store i64 0, i64* %311, align 8
  %312 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %313 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %312, i32 0, i32 9
  store i64 0, i64* %313, align 8
  %314 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %315 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %314, i32 0, i32 8
  store i64 0, i64* %315, align 8
  %316 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %317 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %316, i32 0, i32 6
  store i32 1, i32* %317, align 8
  %318 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %12, align 8
  %319 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %318, i32 0, i32 7
  store i64 0, i64* %319, align 8
  %320 = load %struct.video_obj*, %struct.video_obj** %14, align 8
  %321 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %320, i32 0, i32 0
  store i64 0, i64* %321, align 8
  store i32 0, i32* %4, align 4
  br label %322

322:                                              ; preds = %287, %270, %170, %118, %94, %84, %75, %50
  %323 = load i32, i32* %4, align 4
  ret i32 %323
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.channel_obj* @video_get_drvdata(%struct.video_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_dv_timings*) #1

declare dso_local i64 @V4L2_DV_BT_BLANKING_WIDTH(%struct.v4l2_bt_timings*) #1

declare dso_local i32 @V4L2_DV_BT_FRAME_HEIGHT(%struct.v4l2_bt_timings*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
