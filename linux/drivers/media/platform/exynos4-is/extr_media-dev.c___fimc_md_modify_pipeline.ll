; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c___fimc_md_modify_pipeline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c___fimc_md_modify_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.exynos_video_entity = type { i32 }
%struct.fimc_pipeline = type { i32** }
%struct.video_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IDX_SENSOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, i32)* @__fimc_md_modify_pipeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fimc_md_modify_pipeline(%struct.media_entity* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.media_entity*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.exynos_video_entity*, align 8
  %7 = alloca %struct.fimc_pipeline*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %11 = call %struct.video_device* @media_entity_to_video_device(%struct.media_entity* %10)
  store %struct.video_device* %11, %struct.video_device** %8, align 8
  %12 = load %struct.video_device*, %struct.video_device** %8, align 8
  %13 = getelementptr inbounds %struct.video_device, %struct.video_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

18:                                               ; preds = %2
  %19 = load %struct.video_device*, %struct.video_device** %8, align 8
  %20 = call %struct.exynos_video_entity* @vdev_to_exynos_video_entity(%struct.video_device* %19)
  store %struct.exynos_video_entity* %20, %struct.exynos_video_entity** %6, align 8
  %21 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %6, align 8
  %22 = getelementptr inbounds %struct.exynos_video_entity, %struct.exynos_video_entity* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.fimc_pipeline* @to_fimc_pipeline(i32 %23)
  store %struct.fimc_pipeline* %24, %struct.fimc_pipeline** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %18
  %28 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %7, align 8
  %29 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = load i64, i64* @IDX_SENSOR, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %63

36:                                               ; preds = %27, %18
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %6, align 8
  %41 = getelementptr inbounds %struct.exynos_video_entity, %struct.exynos_video_entity* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.media_entity*, %struct.media_entity** %4, align 8
  %44 = call i32 @__fimc_pipeline_open(i32 %42, %struct.media_entity* %43, i32 1)
  store i32 %44, i32* %9, align 4
  br label %50

45:                                               ; preds = %36
  %46 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %6, align 8
  %47 = getelementptr inbounds %struct.exynos_video_entity, %struct.exynos_video_entity* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__fimc_pipeline_close(i32 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %45, %39
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %7, align 8
  %58 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = call i32 @memset(i32** %59, i32 0, i32 8)
  br label %61

61:                                               ; preds = %56, %53, %50
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %35, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.video_device* @media_entity_to_video_device(%struct.media_entity*) #1

declare dso_local %struct.exynos_video_entity* @vdev_to_exynos_video_entity(%struct.video_device*) #1

declare dso_local %struct.fimc_pipeline* @to_fimc_pipeline(i32) #1

declare dso_local i32 @__fimc_pipeline_open(i32, %struct.media_entity*, i32) #1

declare dso_local i32 @__fimc_pipeline_close(i32) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
