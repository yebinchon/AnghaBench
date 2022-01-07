; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c___fimc_pipeline_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c___fimc_pipeline_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_media_pipeline = type { i32 }
%struct.fimc_md = type { i32* }
%struct.fimc_pipeline = type { i64* }

@CLK_IDX_WB_B = common dso_local global i64 0, align 8
@IDX_IS_ISP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_media_pipeline*, %struct.fimc_md*)* @__fimc_pipeline_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fimc_pipeline_enable(%struct.exynos_media_pipeline* %0, %struct.fimc_md* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_media_pipeline*, align 8
  %5 = alloca %struct.fimc_md*, align 8
  %6 = alloca %struct.fimc_pipeline*, align 8
  %7 = alloca i32, align 4
  store %struct.exynos_media_pipeline* %0, %struct.exynos_media_pipeline** %4, align 8
  store %struct.fimc_md* %1, %struct.fimc_md** %5, align 8
  %8 = load %struct.exynos_media_pipeline*, %struct.exynos_media_pipeline** %4, align 8
  %9 = call %struct.fimc_pipeline* @to_fimc_pipeline(%struct.exynos_media_pipeline* %8)
  store %struct.fimc_pipeline* %9, %struct.fimc_pipeline** %6, align 8
  %10 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %11 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @CLK_IDX_WB_B, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @IS_ERR(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %2
  %19 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %6, align 8
  %20 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @IDX_IS_ISP, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  %27 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %28 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @CLK_IDX_WB_B, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_prepare_enable(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %72

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %18, %2
  %40 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %6, align 8
  %41 = call i32 @fimc_pipeline_s_power(%struct.fimc_pipeline* %40, i32 1)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %72

45:                                               ; preds = %39
  %46 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %47 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @CLK_IDX_WB_B, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @IS_ERR(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %45
  %55 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %6, align 8
  %56 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @IDX_IS_ISP, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %64 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @CLK_IDX_WB_B, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @clk_disable_unprepare(i32 %68)
  br label %70

70:                                               ; preds = %62, %54, %45
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %44, %36
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.fimc_pipeline* @to_fimc_pipeline(%struct.exynos_media_pipeline*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @fimc_pipeline_s_power(%struct.fimc_pipeline*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
