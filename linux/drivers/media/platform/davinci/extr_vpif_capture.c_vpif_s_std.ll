; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.vpif_capture_config* }
%struct.vpif_capture_config = type { %struct.vpif_capture_chan_config* }
%struct.vpif_capture_chan_config = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.v4l2_input }
%struct.v4l2_input = type { i64 }
%struct.file = type { i32 }
%struct.video_device = type { i32 }
%struct.channel_obj = type { i64, i64, i32, %struct.TYPE_5__, %struct.common_obj* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.common_obj = type { i32 }

@vpif_dev = common dso_local global %struct.TYPE_6__* null, align 8
@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vpif_s_std\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@V4L2_IN_CAP_STD = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Error getting the standard info\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to set standard for sub devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vpif_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_s_std(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpif_capture_config*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.channel_obj*, align 8
  %11 = alloca %struct.common_obj*, align 8
  %12 = alloca %struct.vpif_capture_chan_config*, align 8
  %13 = alloca %struct.v4l2_input, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vpif_dev, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %16, align 8
  store %struct.vpif_capture_config* %17, %struct.vpif_capture_config** %8, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = call %struct.video_device* @video_devdata(%struct.file* %18)
  store %struct.video_device* %19, %struct.video_device** %9, align 8
  %20 = load %struct.video_device*, %struct.video_device** %9, align 8
  %21 = call %struct.channel_obj* @video_get_drvdata(%struct.video_device* %20)
  store %struct.channel_obj* %21, %struct.channel_obj** %10, align 8
  %22 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %23 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %22, i32 0, i32 4
  %24 = load %struct.common_obj*, %struct.common_obj** %23, align 8
  %25 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %26 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %24, i64 %25
  store %struct.common_obj* %26, %struct.common_obj** %11, align 8
  %27 = load i32, i32* @debug, align 4
  %28 = call i32 @vpif_dbg(i32 2, i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %8, align 8
  %30 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %29, i32 0, i32 0
  %31 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %30, align 8
  %32 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %33 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %31, i64 %34
  %36 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* @ENODATA, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %116

42:                                               ; preds = %3
  %43 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %8, align 8
  %44 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %43, i32 0, i32 0
  %45 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %44, align 8
  %46 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %47 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %45, i64 %48
  store %struct.vpif_capture_chan_config* %49, %struct.vpif_capture_chan_config** %12, align 8
  %50 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %12, align 8
  %51 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %54 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = bitcast %struct.v4l2_input* %13 to i8*
  %59 = bitcast %struct.v4l2_input* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 8, i1 false)
  %60 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %13, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @V4L2_IN_CAP_STD, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %42
  %65 = load i32, i32* @ENODATA, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %116

67:                                               ; preds = %42
  %68 = load %struct.common_obj*, %struct.common_obj** %11, align 8
  %69 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %68, i32 0, i32 0
  %70 = call i64 @vb2_is_busy(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %116

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %78 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %81 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = call i32 @memset(i32* %82, i32 0, i32 4)
  %84 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %85 = call i64 @vpif_update_std_info(%struct.channel_obj* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %75
  %88 = call i32 @vpif_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %116

91:                                               ; preds = %75
  %92 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %93 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @video, align 4
  %96 = load i32, i32* @s_std, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @v4l2_subdev_call(i32 %94, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %91
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @ENOIOCTLCMD, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp ne i32 %102, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @debug, align 4
  %113 = call i32 @vpif_dbg(i32 1, i32 %112, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* %14, align 4
  store i32 %114, i32* %4, align 4
  br label %116

115:                                              ; preds = %106, %101, %91
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %111, %87, %72, %64, %39
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.channel_obj* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @vpif_update_std_info(%struct.channel_obj*) #1

declare dso_local i32 @vpif_err(i8*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
