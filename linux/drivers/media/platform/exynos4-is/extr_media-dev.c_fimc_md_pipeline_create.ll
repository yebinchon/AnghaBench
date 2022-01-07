; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_pipeline_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_pipeline_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_media_pipeline = type { i32* }
%struct.fimc_md = type { i32 }
%struct.fimc_pipeline = type { %struct.exynos_media_pipeline, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@fimc_pipeline_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.exynos_media_pipeline* (%struct.fimc_md*)* @fimc_md_pipeline_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.exynos_media_pipeline* @fimc_md_pipeline_create(%struct.fimc_md* %0) #0 {
  %2 = alloca %struct.exynos_media_pipeline*, align 8
  %3 = alloca %struct.fimc_md*, align 8
  %4 = alloca %struct.fimc_pipeline*, align 8
  store %struct.fimc_md* %0, %struct.fimc_md** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.fimc_pipeline* @kzalloc(i32 16, i32 %5)
  store %struct.fimc_pipeline* %6, %struct.fimc_pipeline** %4, align 8
  %7 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %4, align 8
  %8 = icmp ne %struct.fimc_pipeline* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.exynos_media_pipeline* null, %struct.exynos_media_pipeline** %2, align 8
  br label %21

10:                                               ; preds = %1
  %11 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %4, align 8
  %12 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %11, i32 0, i32 1
  %13 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %14 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %13, i32 0, i32 0
  %15 = call i32 @list_add_tail(i32* %12, i32* %14)
  %16 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %4, align 8
  %17 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.exynos_media_pipeline, %struct.exynos_media_pipeline* %17, i32 0, i32 0
  store i32* @fimc_pipeline_ops, i32** %18, align 8
  %19 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %4, align 8
  %20 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %19, i32 0, i32 0
  store %struct.exynos_media_pipeline* %20, %struct.exynos_media_pipeline** %2, align 8
  br label %21

21:                                               ; preds = %10, %9
  %22 = load %struct.exynos_media_pipeline*, %struct.exynos_media_pipeline** %2, align 8
  ret %struct.exynos_media_pipeline* %22
}

declare dso_local %struct.fimc_pipeline* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
