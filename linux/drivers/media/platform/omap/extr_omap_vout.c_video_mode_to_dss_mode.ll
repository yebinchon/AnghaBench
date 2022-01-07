; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_video_mode_to_dss_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_video_mode_to_dss_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_vout_device = type { %struct.omapvideo_info, %struct.v4l2_pix_format }
%struct.omapvideo_info = type { %struct.omap_overlay** }
%struct.omap_overlay = type { i32 }
%struct.v4l2_pix_format = type { i32 }

@OMAP_DSS_COLOR_YUV2 = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_UYVY = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_RGB16 = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_RGB24P = common dso_local global i32 0, align 4
@OMAP_DSS_VIDEO1 = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_RGB24U = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_ARGB32 = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_RGBX32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_vout_device*)* @video_mode_to_dss_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_mode_to_dss_mode(%struct.omap_vout_device* %0) #0 {
  %2 = alloca %struct.omap_vout_device*, align 8
  %3 = alloca %struct.omap_overlay*, align 8
  %4 = alloca %struct.omapvideo_info*, align 8
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca i32, align 4
  store %struct.omap_vout_device* %0, %struct.omap_vout_device** %2, align 8
  %7 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %8 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %7, i32 0, i32 1
  store %struct.v4l2_pix_format* %8, %struct.v4l2_pix_format** %5, align 8
  %9 = load %struct.omap_vout_device*, %struct.omap_vout_device** %2, align 8
  %10 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %9, i32 0, i32 0
  store %struct.omapvideo_info* %10, %struct.omapvideo_info** %4, align 8
  %11 = load %struct.omapvideo_info*, %struct.omapvideo_info** %4, align 8
  %12 = getelementptr inbounds %struct.omapvideo_info, %struct.omapvideo_info* %11, i32 0, i32 0
  %13 = load %struct.omap_overlay**, %struct.omap_overlay*** %12, align 8
  %14 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %13, i64 0
  %15 = load %struct.omap_overlay*, %struct.omap_overlay** %14, align 8
  store %struct.omap_overlay* %15, %struct.omap_overlay** %3, align 8
  %16 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %41 [
    i32 128, label %19
    i32 129, label %21
    i32 130, label %23
    i32 132, label %25
    i32 131, label %27
    i32 133, label %39
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* @OMAP_DSS_COLOR_YUV2, align 4
  store i32 %20, i32* %6, align 4
  br label %44

21:                                               ; preds = %1
  %22 = load i32, i32* @OMAP_DSS_COLOR_UYVY, align 4
  store i32 %22, i32* %6, align 4
  br label %44

23:                                               ; preds = %1
  %24 = load i32, i32* @OMAP_DSS_COLOR_RGB16, align 4
  store i32 %24, i32* %6, align 4
  br label %44

25:                                               ; preds = %1
  %26 = load i32, i32* @OMAP_DSS_COLOR_RGB24P, align 4
  store i32 %26, i32* %6, align 4
  br label %44

27:                                               ; preds = %1
  %28 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %29 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @OMAP_DSS_VIDEO1, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @OMAP_DSS_COLOR_RGB24U, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @OMAP_DSS_COLOR_ARGB32, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %6, align 4
  br label %44

39:                                               ; preds = %1
  %40 = load i32, i32* @OMAP_DSS_COLOR_RGBX32, align 4
  store i32 %40, i32* %6, align 4
  br label %44

41:                                               ; preds = %1
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %39, %37, %25, %23, %21, %19
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
