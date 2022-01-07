; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_out_dma_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_out_dma_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { %struct.fimc_frame, %struct.fimc_dev* }
%struct.fimc_frame = type { i32, i32 }
%struct.fimc_dev = type { i64 }

@FIMC_REG_ORGOSIZE = common dso_local global i64 0, align 8
@FIMC_REG_CIGCTRL = common dso_local global i64 0, align 8
@FIMC_REG_CIGCTRL_CSC_ITU601_709 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_ctx*)* @fimc_hw_set_out_dma_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_hw_set_out_dma_size(%struct.fimc_ctx* %0) #0 {
  %2 = alloca %struct.fimc_ctx*, align 8
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.fimc_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %2, align 8
  %6 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %6, i32 0, i32 1
  %8 = load %struct.fimc_dev*, %struct.fimc_dev** %7, align 8
  store %struct.fimc_dev* %8, %struct.fimc_dev** %3, align 8
  %9 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %9, i32 0, i32 0
  store %struct.fimc_frame* %10, %struct.fimc_frame** %4, align 8
  %11 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %12 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 16
  %15 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %16 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %14, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %21 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FIMC_REG_ORGOSIZE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %27 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FIMC_REG_CIGCTRL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %33 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 1280
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32, i32* @FIMC_REG_CIGCTRL_CSC_ITU601_709, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %45

40:                                               ; preds = %1
  %41 = load i32, i32* @FIMC_REG_CIGCTRL_CSC_ITU601_709, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %48 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FIMC_REG_CIGCTRL, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
