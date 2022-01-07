; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@FIMC_REG_CISRCFMT = common dso_local global i64 0, align 8
@FIMC_REG_CISRCFMT_ITU601_8BIT = common dso_local global i32 0, align 4
@FIMC_REG_CIGCTRL = common dso_local global i64 0, align 8
@FIMC_REG_CIGCTRL_SWRST = common dso_local global i32 0, align 4
@FIMC_REG_CIGCTRL_IRQ_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_hw_reset(%struct.fimc_dev* %0) #0 {
  %2 = alloca %struct.fimc_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %2, align 8
  %4 = load %struct.fimc_dev*, %struct.fimc_dev** %2, align 8
  %5 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @FIMC_REG_CISRCFMT, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @FIMC_REG_CISRCFMT_ITU601_8BIT, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.fimc_dev*, %struct.fimc_dev** %2, align 8
  %15 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FIMC_REG_CISRCFMT, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  %20 = load %struct.fimc_dev*, %struct.fimc_dev** %2, align 8
  %21 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FIMC_REG_CIGCTRL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @FIMC_REG_CIGCTRL_SWRST, align 4
  %27 = load i32, i32* @FIMC_REG_CIGCTRL_IRQ_LEVEL, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.fimc_dev*, %struct.fimc_dev** %2, align 8
  %33 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FIMC_REG_CIGCTRL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  %38 = call i32 @udelay(i32 10)
  %39 = load %struct.fimc_dev*, %struct.fimc_dev** %2, align 8
  %40 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FIMC_REG_CIGCTRL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @FIMC_REG_CIGCTRL_SWRST, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.fimc_dev*, %struct.fimc_dev** %2, align 8
  %51 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @FIMC_REG_CIGCTRL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  %56 = load %struct.fimc_dev*, %struct.fimc_dev** %2, align 8
  %57 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 4
  br i1 %61, label %62, label %65

62:                                               ; preds = %1
  %63 = load %struct.fimc_dev*, %struct.fimc_dev** %2, align 8
  %64 = call i32 @fimc_hw_set_dma_seq(%struct.fimc_dev* %63, i32 15)
  br label %65

65:                                               ; preds = %62, %1
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @fimc_hw_set_dma_seq(%struct.fimc_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
