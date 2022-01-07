; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite-reg.c_flite_hw_set_interrupt_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite-reg.c_flite_hw_set_interrupt_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { i64, i32 }

@FIMC_IO_DMA = common dso_local global i64 0, align 8
@FLITE_REG_CIGCTRL_IRQ_OVFEN = common dso_local global i32 0, align 4
@FLITE_REG_CIGCTRL_IRQ_LASTEN = common dso_local global i32 0, align 4
@FLITE_REG_CIGCTRL_IRQ_STARTEN = common dso_local global i32 0, align 4
@FLITE_REG_CIGCTRL_IRQ_ENDEN = common dso_local global i32 0, align 4
@FLITE_REG_CIGCTRL = common dso_local global i64 0, align 8
@FLITE_REG_CIGCTRL_IRQ_DISABLE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flite_hw_set_interrupt_mask(%struct.fimc_lite* %0) #0 {
  %2 = alloca %struct.fimc_lite*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fimc_lite* %0, %struct.fimc_lite** %2, align 8
  %5 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %6 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %5, i32 0, i32 1
  %7 = call i64 @atomic_read(i32* %6)
  %8 = load i64, i64* @FIMC_IO_DMA, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* @FLITE_REG_CIGCTRL_IRQ_OVFEN, align 4
  %12 = load i32, i32* @FLITE_REG_CIGCTRL_IRQ_LASTEN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @FLITE_REG_CIGCTRL_IRQ_STARTEN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @FLITE_REG_CIGCTRL_IRQ_ENDEN, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %4, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @FLITE_REG_CIGCTRL_IRQ_OVFEN, align 4
  %20 = load i32, i32* @FLITE_REG_CIGCTRL_IRQ_LASTEN, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %18, %10
  %23 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %24 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FLITE_REG_CIGCTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @FLITE_REG_CIGCTRL_IRQ_DISABLE_MASK, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %38 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FLITE_REG_CIGCTRL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
