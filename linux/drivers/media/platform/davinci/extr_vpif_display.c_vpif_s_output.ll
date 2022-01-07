; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_s_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_s_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.vpif_display_config* }
%struct.vpif_display_config = type { %struct.vpif_display_chan_config* }
%struct.vpif_display_chan_config = type { i32 }
%struct.file = type { i32 }
%struct.video_device = type { i32 }
%struct.channel_obj = type { i64, %struct.common_obj* }
%struct.common_obj = type { i32 }

@vpif_dev = common dso_local global %struct.TYPE_2__* null, align 8
@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vpif_s_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_s_output(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpif_display_config*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.channel_obj*, align 8
  %11 = alloca %struct.vpif_display_chan_config*, align 8
  %12 = alloca %struct.common_obj*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpif_dev, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.vpif_display_config*, %struct.vpif_display_config** %14, align 8
  store %struct.vpif_display_config* %15, %struct.vpif_display_config** %8, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.video_device* @video_devdata(%struct.file* %16)
  store %struct.video_device* %17, %struct.video_device** %9, align 8
  %18 = load %struct.video_device*, %struct.video_device** %9, align 8
  %19 = call %struct.channel_obj* @video_get_drvdata(%struct.video_device* %18)
  store %struct.channel_obj* %19, %struct.channel_obj** %10, align 8
  %20 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %21 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %20, i32 0, i32 1
  %22 = load %struct.common_obj*, %struct.common_obj** %21, align 8
  %23 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %24 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %22, i64 %23
  store %struct.common_obj* %24, %struct.common_obj** %12, align 8
  %25 = load %struct.common_obj*, %struct.common_obj** %12, align 8
  %26 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %25, i32 0, i32 0
  %27 = call i64 @vb2_is_busy(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %53

32:                                               ; preds = %3
  %33 = load %struct.vpif_display_config*, %struct.vpif_display_config** %8, align 8
  %34 = getelementptr inbounds %struct.vpif_display_config, %struct.vpif_display_config* %33, i32 0, i32 0
  %35 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %34, align 8
  %36 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %37 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %35, i64 %38
  store %struct.vpif_display_chan_config* %39, %struct.vpif_display_chan_config** %11, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.vpif_display_chan_config*, %struct.vpif_display_chan_config** %11, align 8
  %42 = getelementptr inbounds %struct.vpif_display_chan_config, %struct.vpif_display_chan_config* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp uge i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %53

48:                                               ; preds = %32
  %49 = load %struct.vpif_display_config*, %struct.vpif_display_config** %8, align 8
  %50 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @vpif_set_output(%struct.vpif_display_config* %49, %struct.channel_obj* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %45, %29
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.channel_obj* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @vpif_set_output(%struct.vpif_display_config*, %struct.channel_obj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
