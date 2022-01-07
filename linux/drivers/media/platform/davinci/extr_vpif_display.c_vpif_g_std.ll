; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_g_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_g_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.vpif_display_config* }
%struct.vpif_display_config = type { %struct.vpif_display_chan_config* }
%struct.vpif_display_chan_config = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.v4l2_output }
%struct.v4l2_output = type { i64 }
%struct.file = type { i32 }
%struct.video_device = type { i32 }
%struct.channel_obj = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@vpif_dev = common dso_local global %struct.TYPE_6__* null, align 8
@ENODATA = common dso_local global i32 0, align 4
@V4L2_OUT_CAP_STD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @vpif_g_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_g_std(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vpif_display_config*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.channel_obj*, align 8
  %11 = alloca %struct.vpif_display_chan_config*, align 8
  %12 = alloca %struct.v4l2_output, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vpif_dev, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.vpif_display_config*, %struct.vpif_display_config** %14, align 8
  store %struct.vpif_display_config* %15, %struct.vpif_display_config** %8, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.video_device* @video_devdata(%struct.file* %16)
  store %struct.video_device* %17, %struct.video_device** %9, align 8
  %18 = load %struct.video_device*, %struct.video_device** %9, align 8
  %19 = call %struct.channel_obj* @video_get_drvdata(%struct.video_device* %18)
  store %struct.channel_obj* %19, %struct.channel_obj** %10, align 8
  %20 = load %struct.vpif_display_config*, %struct.vpif_display_config** %8, align 8
  %21 = getelementptr inbounds %struct.vpif_display_config, %struct.vpif_display_config* %20, i32 0, i32 0
  %22 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %21, align 8
  %23 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %24 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %22, i64 %25
  %27 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENODATA, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %64

33:                                               ; preds = %3
  %34 = load %struct.vpif_display_config*, %struct.vpif_display_config** %8, align 8
  %35 = getelementptr inbounds %struct.vpif_display_config, %struct.vpif_display_config* %34, i32 0, i32 0
  %36 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %35, align 8
  %37 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %38 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %36, i64 %39
  store %struct.vpif_display_chan_config* %40, %struct.vpif_display_chan_config** %11, align 8
  %41 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %11, align 8
  %42 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %45 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = bitcast %struct.v4l2_output* %12 to i8*
  %50 = bitcast %struct.v4l2_output* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false)
  %51 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %12, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @V4L2_OUT_CAP_STD, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %33
  %56 = load i32, i32* @ENODATA, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %64

58:                                               ; preds = %33
  %59 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %60 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %58, %55, %30
  %65 = load i32, i32* %4, align 4
  ret i32 %65
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
