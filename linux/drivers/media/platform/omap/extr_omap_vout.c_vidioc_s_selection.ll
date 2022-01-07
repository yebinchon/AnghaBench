; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_vidioc_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_vidioc_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i64, i32 }
%struct.omap_vout_device = type { %struct.TYPE_6__, i32, i32, i32, %struct.omapvideo_info, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.omapvideo_info = type { %struct.omap_overlay** }
%struct.omap_overlay = type { %struct.omap_dss_device* (%struct.omap_overlay*)* }
%struct.omap_dss_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.omap_video_timings }
%struct.omap_video_timings = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @vidioc_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_vout_device*, align 8
  %10 = alloca %struct.omapvideo_info*, align 8
  %11 = alloca %struct.omap_overlay*, align 8
  %12 = alloca %struct.omap_video_timings*, align 8
  %13 = alloca %struct.omap_dss_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.omap_vout_device* @video_drvdata(%struct.file* %16)
  store %struct.omap_vout_device* %17, %struct.omap_vout_device** %9, align 8
  %18 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %112

26:                                               ; preds = %3
  %27 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %112

35:                                               ; preds = %26
  %36 = load %struct.omap_vout_device*, %struct.omap_vout_device** %9, align 8
  %37 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %36, i32 0, i32 5
  %38 = call i64 @vb2_is_busy(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %112

43:                                               ; preds = %35
  %44 = load %struct.omap_vout_device*, %struct.omap_vout_device** %9, align 8
  %45 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %44, i32 0, i32 4
  store %struct.omapvideo_info* %45, %struct.omapvideo_info** %10, align 8
  %46 = load %struct.omapvideo_info*, %struct.omapvideo_info** %10, align 8
  %47 = getelementptr inbounds %struct.omapvideo_info, %struct.omapvideo_info* %46, i32 0, i32 0
  %48 = load %struct.omap_overlay**, %struct.omap_overlay*** %47, align 8
  %49 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %48, i64 0
  %50 = load %struct.omap_overlay*, %struct.omap_overlay** %49, align 8
  store %struct.omap_overlay* %50, %struct.omap_overlay** %11, align 8
  %51 = load %struct.omap_overlay*, %struct.omap_overlay** %11, align 8
  %52 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %51, i32 0, i32 0
  %53 = load %struct.omap_dss_device* (%struct.omap_overlay*)*, %struct.omap_dss_device* (%struct.omap_overlay*)** %52, align 8
  %54 = load %struct.omap_overlay*, %struct.omap_overlay** %11, align 8
  %55 = call %struct.omap_dss_device* %53(%struct.omap_overlay* %54)
  store %struct.omap_dss_device* %55, %struct.omap_dss_device** %13, align 8
  %56 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %57 = icmp ne %struct.omap_dss_device* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %43
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %110

61:                                               ; preds = %43
  %62 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %63 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store %struct.omap_video_timings* %64, %struct.omap_video_timings** %12, align 8
  %65 = load %struct.omap_vout_device*, %struct.omap_vout_device** %9, align 8
  %66 = call i64 @is_rotation_90_or_270(%struct.omap_vout_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %61
  %69 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %70 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.omap_vout_device*, %struct.omap_vout_device** %9, align 8
  %73 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  %76 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %77 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.omap_vout_device*, %struct.omap_vout_device** %9, align 8
  %80 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 8
  br label %98

83:                                               ; preds = %61
  %84 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %85 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.omap_vout_device*, %struct.omap_vout_device** %9, align 8
  %88 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 4
  %91 = load %struct.omap_video_timings*, %struct.omap_video_timings** %12, align 8
  %92 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.omap_vout_device*, %struct.omap_vout_device** %9, align 8
  %95 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 8
  br label %98

98:                                               ; preds = %83, %68
  %99 = load %struct.omap_vout_device*, %struct.omap_vout_device** %9, align 8
  %100 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %99, i32 0, i32 3
  %101 = load %struct.omap_vout_device*, %struct.omap_vout_device** %9, align 8
  %102 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %101, i32 0, i32 2
  %103 = load %struct.omap_vout_device*, %struct.omap_vout_device** %9, align 8
  %104 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %103, i32 0, i32 1
  %105 = load %struct.omap_vout_device*, %struct.omap_vout_device** %9, align 8
  %106 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %105, i32 0, i32 0
  %107 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %107, i32 0, i32 2
  %109 = call i32 @omap_vout_new_crop(i32* %100, i32* %102, i32* %104, %struct.TYPE_6__* %106, i32* %108)
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %98, %58
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %40, %32, %23
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.omap_vout_device* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i64 @is_rotation_90_or_270(%struct.omap_vout_device*) #1

declare dso_local i32 @omap_vout_new_crop(i32*, i32*, i32*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
