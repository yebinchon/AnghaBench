; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_enum_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_enum_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vpif_capture_config* }
%struct.vpif_capture_config = type { %struct.vpif_capture_chan_config* }
%struct.vpif_capture_chan_config = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.v4l2_input }
%struct.v4l2_input = type { i64 }
%struct.file = type { i32 }
%struct.v4l2_enum_dv_timings = type { i64 }
%struct.video_device = type { i32 }
%struct.channel_obj = type { i64, i64, i32 }

@vpif_dev = common dso_local global %struct.TYPE_4__* null, align 8
@ENODATA = common dso_local global i32 0, align 4
@V4L2_IN_CAP_DV_TIMINGS = common dso_local global i64 0, align 8
@pad = common dso_local global i32 0, align 4
@enum_dv_timings = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_enum_dv_timings*)* @vpif_enum_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_enum_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_enum_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_enum_dv_timings*, align 8
  %8 = alloca %struct.vpif_capture_config*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.channel_obj*, align 8
  %11 = alloca %struct.vpif_capture_chan_config*, align 8
  %12 = alloca %struct.v4l2_input, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_enum_dv_timings* %2, %struct.v4l2_enum_dv_timings** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vpif_dev, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %15, align 8
  store %struct.vpif_capture_config* %16, %struct.vpif_capture_config** %8, align 8
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = call %struct.video_device* @video_devdata(%struct.file* %17)
  store %struct.video_device* %18, %struct.video_device** %9, align 8
  %19 = load %struct.video_device*, %struct.video_device** %9, align 8
  %20 = call %struct.channel_obj* @video_get_drvdata(%struct.video_device* %19)
  store %struct.channel_obj* %20, %struct.channel_obj** %10, align 8
  %21 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %8, align 8
  %22 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %21, i32 0, i32 0
  %23 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %22, align 8
  %24 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %25 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %23, i64 %26
  %28 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @ENODATA, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %83

34:                                               ; preds = %3
  %35 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %8, align 8
  %36 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %35, i32 0, i32 0
  %37 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %36, align 8
  %38 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %39 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %37, i64 %40
  store %struct.vpif_capture_chan_config* %41, %struct.vpif_capture_chan_config** %11, align 8
  %42 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %11, align 8
  %43 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %46 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = bitcast %struct.v4l2_input* %12 to i8*
  %51 = bitcast %struct.v4l2_input* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 8, i1 false)
  %52 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %12, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @V4L2_IN_CAP_DV_TIMINGS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %34
  %57 = load i32, i32* @ENODATA, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %83

59:                                               ; preds = %34
  %60 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %63 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @pad, align 4
  %66 = load i32, i32* @enum_dv_timings, align 4
  %67 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %7, align 8
  %68 = call i32 @v4l2_subdev_call(i32 %64, i32 %65, i32 %66, %struct.v4l2_enum_dv_timings* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @ENOIOCTLCMD, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73, %59
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %78, %56, %31
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.channel_obj* @video_get_drvdata(%struct.video_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_enum_dv_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
