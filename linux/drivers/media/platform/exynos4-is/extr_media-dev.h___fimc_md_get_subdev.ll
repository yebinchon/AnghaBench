; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.h___fimc_md_get_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.h___fimc_md_get_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.exynos_media_pipeline = type { i32 }
%struct.fimc_pipeline = type { %struct.v4l2_subdev** }

@IDX_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_subdev* (%struct.exynos_media_pipeline*, i32)* @__fimc_md_get_subdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_subdev* @__fimc_md_get_subdev(%struct.exynos_media_pipeline* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.exynos_media_pipeline*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fimc_pipeline*, align 8
  store %struct.exynos_media_pipeline* %0, %struct.exynos_media_pipeline** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.exynos_media_pipeline*, %struct.exynos_media_pipeline** %4, align 8
  %8 = call %struct.fimc_pipeline* @to_fimc_pipeline(%struct.exynos_media_pipeline* %7)
  store %struct.fimc_pipeline* %8, %struct.fimc_pipeline** %6, align 8
  %9 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %6, align 8
  %10 = icmp ne %struct.fimc_pipeline* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IDX_MAX, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %3, align 8
  br label %24

16:                                               ; preds = %11
  %17 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %6, align 8
  %18 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %17, i32 0, i32 0
  %19 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %19, i64 %21
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %22, align 8
  store %struct.v4l2_subdev* %23, %struct.v4l2_subdev** %3, align 8
  br label %24

24:                                               ; preds = %16, %15
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  ret %struct.v4l2_subdev* %25
}

declare dso_local %struct.fimc_pipeline* @to_fimc_pipeline(%struct.exynos_media_pipeline*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
