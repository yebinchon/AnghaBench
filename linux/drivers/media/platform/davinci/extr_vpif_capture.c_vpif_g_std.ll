; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_g_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_g_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.vpif_capture_config* }
%struct.vpif_capture_config = type { %struct.vpif_capture_chan_config* }
%struct.vpif_capture_chan_config = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.v4l2_input }
%struct.v4l2_input = type { i64 }
%struct.file = type { i32 }
%struct.video_device = type { i32 }
%struct.channel_obj = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@vpif_dev = common dso_local global %struct.TYPE_6__* null, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vpif_g_std\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@V4L2_IN_CAP_STD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @vpif_g_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_g_std(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vpif_capture_config*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.channel_obj*, align 8
  %11 = alloca %struct.vpif_capture_chan_config*, align 8
  %12 = alloca %struct.v4l2_input, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vpif_dev, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %14, align 8
  store %struct.vpif_capture_config* %15, %struct.vpif_capture_config** %8, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.video_device* @video_devdata(%struct.file* %16)
  store %struct.video_device* %17, %struct.video_device** %9, align 8
  %18 = load %struct.video_device*, %struct.video_device** %9, align 8
  %19 = call %struct.channel_obj* @video_get_drvdata(%struct.video_device* %18)
  store %struct.channel_obj* %19, %struct.channel_obj** %10, align 8
  %20 = load i32, i32* @debug, align 4
  %21 = call i32 @vpif_dbg(i32 2, i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %8, align 8
  %23 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %22, i32 0, i32 0
  %24 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %23, align 8
  %25 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %26 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %24, i64 %27
  %29 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ENODATA, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %66

35:                                               ; preds = %3
  %36 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %8, align 8
  %37 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %36, i32 0, i32 0
  %38 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %37, align 8
  %39 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %40 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %38, i64 %41
  store %struct.vpif_capture_chan_config* %42, %struct.vpif_capture_chan_config** %11, align 8
  %43 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %11, align 8
  %44 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %47 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = bitcast %struct.v4l2_input* %12 to i8*
  %52 = bitcast %struct.v4l2_input* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 8, i1 false)
  %53 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %12, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @V4L2_IN_CAP_STD, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %35
  %58 = load i32, i32* @ENODATA, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %66

60:                                               ; preds = %35
  %61 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %62 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %60, %57, %32
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.channel_obj* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
