; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_g_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_g_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vpif_capture_config* }
%struct.vpif_capture_config = type { %struct.vpif_capture_chan_config* }
%struct.vpif_capture_chan_config = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.v4l2_input }
%struct.v4l2_input = type { i64 }
%struct.file = type { i32 }
%struct.v4l2_dv_timings = type { i32 }
%struct.video_device = type { i32 }
%struct.channel_obj = type { i64, i64, %struct.video_obj }
%struct.video_obj = type { %struct.v4l2_dv_timings }

@vpif_dev = common dso_local global %struct.TYPE_4__* null, align 8
@ENODATA = common dso_local global i32 0, align 4
@V4L2_IN_CAP_DV_TIMINGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)* @vpif_g_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_g_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dv_timings*, align 8
  %8 = alloca %struct.vpif_capture_config*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.channel_obj*, align 8
  %11 = alloca %struct.video_obj*, align 8
  %12 = alloca %struct.vpif_capture_chan_config*, align 8
  %13 = alloca %struct.v4l2_input, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dv_timings* %2, %struct.v4l2_dv_timings** %7, align 8
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
  %21 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %22 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %21, i32 0, i32 2
  store %struct.video_obj* %22, %struct.video_obj** %11, align 8
  %23 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %8, align 8
  %24 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %23, i32 0, i32 0
  %25 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %24, align 8
  %26 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %27 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %25, i64 %28
  %30 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @ENODATA, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %67

36:                                               ; preds = %3
  %37 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %8, align 8
  %38 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %37, i32 0, i32 0
  %39 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %38, align 8
  %40 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %41 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %39, i64 %42
  store %struct.vpif_capture_chan_config* %43, %struct.vpif_capture_chan_config** %12, align 8
  %44 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %12, align 8
  %45 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %48 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = bitcast %struct.v4l2_input* %13 to i8*
  %53 = bitcast %struct.v4l2_input* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 8, i1 false)
  %54 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %13, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @V4L2_IN_CAP_DV_TIMINGS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %36
  %59 = load i32, i32* @ENODATA, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %67

61:                                               ; preds = %36
  %62 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %63 = load %struct.video_obj*, %struct.video_obj** %11, align 8
  %64 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %63, i32 0, i32 0
  %65 = bitcast %struct.v4l2_dv_timings* %62 to i8*
  %66 = bitcast %struct.v4l2_dv_timings* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %61, %58, %33
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.channel_obj* @video_get_drvdata(%struct.video_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
