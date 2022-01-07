; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_vidioc_try_fmt_vid_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_vidioc_try_fmt_vid_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_window }
%struct.v4l2_window = type { i64 }
%struct.omap_vout_device = type { i32, %struct.omapvideo_info }
%struct.omapvideo_info = type { %struct.omap_overlay** }
%struct.omap_overlay = type { i32 }

@OMAP_DSS_OVL_CAP_GLOBAL_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_overlay(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap_vout_device*, align 8
  %9 = alloca %struct.omap_overlay*, align 8
  %10 = alloca %struct.omapvideo_info*, align 8
  %11 = alloca %struct.v4l2_window*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.omap_vout_device* @video_drvdata(%struct.file* %12)
  store %struct.omap_vout_device* %13, %struct.omap_vout_device** %8, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.v4l2_window* %16, %struct.v4l2_window** %11, align 8
  %17 = load %struct.omap_vout_device*, %struct.omap_vout_device** %8, align 8
  %18 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %17, i32 0, i32 1
  store %struct.omapvideo_info* %18, %struct.omapvideo_info** %10, align 8
  %19 = load %struct.omapvideo_info*, %struct.omapvideo_info** %10, align 8
  %20 = getelementptr inbounds %struct.omapvideo_info, %struct.omapvideo_info* %19, i32 0, i32 0
  %21 = load %struct.omap_overlay**, %struct.omap_overlay*** %20, align 8
  %22 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %21, i64 0
  %23 = load %struct.omap_overlay*, %struct.omap_overlay** %22, align 8
  store %struct.omap_overlay* %23, %struct.omap_overlay** %9, align 8
  %24 = load %struct.omap_vout_device*, %struct.omap_vout_device** %8, align 8
  %25 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %24, i32 0, i32 0
  %26 = load %struct.v4l2_window*, %struct.v4l2_window** %11, align 8
  %27 = call i32 @omap_vout_try_window(i32* %25, %struct.v4l2_window* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %3
  %31 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %32 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @OMAP_DSS_OVL_CAP_GLOBAL_ALPHA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load %struct.v4l2_window*, %struct.v4l2_window** %11, align 8
  %39 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %30, %3
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.omap_vout_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @omap_vout_try_window(i32*, %struct.v4l2_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
