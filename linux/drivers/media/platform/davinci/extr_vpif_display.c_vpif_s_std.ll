; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.vpif_display_config* }
%struct.vpif_display_config = type { %struct.vpif_display_chan_config* }
%struct.vpif_display_chan_config = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.v4l2_output }
%struct.v4l2_output = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.file = type { i32 }
%struct.video_device = type { i32 }
%struct.channel_obj = type { i64, i64, %struct.TYPE_9__, %struct.common_obj* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.common_obj = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@vpif_dev = common dso_local global %struct.TYPE_14__* null, align 8
@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@V4L2_OUT_CAP_STD = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@VPIF_V4L2_STD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vpif_obj = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@video = common dso_local global i32 0, align 4
@s_std_output = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to set output standard\0A\00", align 1
@s_std = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to set standard for sub devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vpif_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_s_std(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpif_display_config*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.channel_obj*, align 8
  %11 = alloca %struct.common_obj*, align 8
  %12 = alloca %struct.vpif_display_chan_config*, align 8
  %13 = alloca %struct.v4l2_output, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** @vpif_dev, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.vpif_display_config*, %struct.vpif_display_config** %16, align 8
  store %struct.vpif_display_config* %17, %struct.vpif_display_config** %8, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = call %struct.video_device* @video_devdata(%struct.file* %18)
  store %struct.video_device* %19, %struct.video_device** %9, align 8
  %20 = load %struct.video_device*, %struct.video_device** %9, align 8
  %21 = call %struct.channel_obj* @video_get_drvdata(%struct.video_device* %20)
  store %struct.channel_obj* %21, %struct.channel_obj** %10, align 8
  %22 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %23 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %22, i32 0, i32 3
  %24 = load %struct.common_obj*, %struct.common_obj** %23, align 8
  %25 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %26 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %24, i64 %25
  store %struct.common_obj* %26, %struct.common_obj** %11, align 8
  %27 = load %struct.vpif_display_config*, %struct.vpif_display_config** %8, align 8
  %28 = getelementptr inbounds %struct.vpif_display_config, %struct.vpif_display_config* %27, i32 0, i32 0
  %29 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %28, align 8
  %30 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %31 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %29, i64 %32
  %34 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* @ENODATA, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %128

40:                                               ; preds = %3
  %41 = load %struct.vpif_display_config*, %struct.vpif_display_config** %8, align 8
  %42 = getelementptr inbounds %struct.vpif_display_config, %struct.vpif_display_config* %41, i32 0, i32 0
  %43 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %42, align 8
  %44 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %45 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %43, i64 %46
  store %struct.vpif_display_chan_config* %47, %struct.vpif_display_chan_config** %12, align 8
  %48 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %12, align 8
  %49 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %52 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = bitcast %struct.v4l2_output* %13 to i8*
  %57 = bitcast %struct.v4l2_output* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %13, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @V4L2_OUT_CAP_STD, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %40
  %63 = load i32, i32* @ENODATA, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %128

65:                                               ; preds = %40
  %66 = load %struct.common_obj*, %struct.common_obj** %11, align 8
  %67 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %66, i32 0, i32 1
  %68 = call i64 @vb2_is_busy(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %128

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @VPIF_V4L2_STD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %128

81:                                               ; preds = %73
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %84 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %87 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = call i32 @memset(i32* %88, i32 0, i32 4)
  %90 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %91 = call i64 @vpif_update_resolution(%struct.channel_obj* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %128

96:                                               ; preds = %81
  %97 = load %struct.common_obj*, %struct.common_obj** %11, align 8
  %98 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.common_obj*, %struct.common_obj** %11, align 8
  %104 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  store i32 %102, i32* %107, align 4
  %108 = load i32, i32* @video, align 4
  %109 = load i32, i32* @s_std_output, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @v4l2_device_call_until_err(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @vpif_obj, i32 0, i32 0), i32 1, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %96
  %115 = call i32 @vpif_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %4, align 4
  br label %128

117:                                              ; preds = %96
  %118 = load i32, i32* @video, align 4
  %119 = load i32, i32* @s_std, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @v4l2_device_call_until_err(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @vpif_obj, i32 0, i32 0), i32 1, i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = call i32 @vpif_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %117
  %127 = load i32, i32* %14, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %114, %93, %78, %70, %62, %37
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.channel_obj* @video_get_drvdata(%struct.video_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @vpif_update_resolution(%struct.channel_obj*) #1

declare dso_local i32 @v4l2_device_call_until_err(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @vpif_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
