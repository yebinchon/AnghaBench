; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_fimc_isp_video_device_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_fimc_isp_video_device_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_isp = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.exynos_video_entity }
%struct.exynos_video_entity = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_isp_video_device_unregister(%struct.fimc_isp* %0, i32 %1) #0 {
  %3 = alloca %struct.fimc_isp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.exynos_video_entity*, align 8
  store %struct.fimc_isp* %0, %struct.fimc_isp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %11 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.exynos_video_entity* %12, %struct.exynos_video_entity** %5, align 8
  br label %14

13:                                               ; preds = %2
  br label %36

14:                                               ; preds = %9
  %15 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %16 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %5, align 8
  %19 = getelementptr inbounds %struct.exynos_video_entity, %struct.exynos_video_entity* %18, i32 0, i32 1
  %20 = call i64 @video_is_registered(%struct.TYPE_5__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %5, align 8
  %24 = getelementptr inbounds %struct.exynos_video_entity, %struct.exynos_video_entity* %23, i32 0, i32 1
  %25 = call i32 @video_unregister_device(%struct.TYPE_5__* %24)
  %26 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %5, align 8
  %27 = getelementptr inbounds %struct.exynos_video_entity, %struct.exynos_video_entity* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @media_entity_cleanup(i32* %28)
  %30 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %5, align 8
  %31 = getelementptr inbounds %struct.exynos_video_entity, %struct.exynos_video_entity* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %22, %14
  %33 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %34 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  br label %36

36:                                               ; preds = %32, %13
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @video_is_registered(%struct.TYPE_5__*) #1

declare dso_local i32 @video_unregister_device(%struct.TYPE_5__*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
