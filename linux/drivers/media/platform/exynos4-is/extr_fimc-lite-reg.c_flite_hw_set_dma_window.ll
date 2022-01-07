; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite-reg.c_flite_hw_set_dma_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite-reg.c_flite_hw_set_dma_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { i64 }
%struct.flite_frame = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FLITE_REG_CIOCAN = common dso_local global i64 0, align 8
@FLITE_REG_CIOCAN_MASK = common dso_local global i32 0, align 4
@FLITE_REG_CIOOFF = common dso_local global i64 0, align 8
@FLITE_REG_CIOOFF_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flite_hw_set_dma_window(%struct.fimc_lite* %0, %struct.flite_frame* %1) #0 {
  %3 = alloca %struct.fimc_lite*, align 8
  %4 = alloca %struct.flite_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.fimc_lite* %0, %struct.fimc_lite** %3, align 8
  store %struct.flite_frame* %1, %struct.flite_frame** %4, align 8
  %6 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %7 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FLITE_REG_CIOCAN, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @FLITE_REG_CIOCAN_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.flite_frame*, %struct.flite_frame** %4, align 8
  %17 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 16
  %20 = load %struct.flite_frame*, %struct.flite_frame** %4, align 8
  %21 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %19, %22
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %28 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FLITE_REG_CIOCAN, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %34 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FLITE_REG_CIOOFF, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @FLITE_REG_CIOOFF_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.flite_frame*, %struct.flite_frame** %4, align 8
  %44 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 16
  %48 = load %struct.flite_frame*, %struct.flite_frame** %4, align 8
  %49 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %47, %51
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %57 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @FLITE_REG_CIOOFF, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
