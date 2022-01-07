; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_exynos-lpass.c_exynos_lpass_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_exynos-lpass.c_exynos_lpass_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_lpass = type { i32, i32 }

@SFR_LPASS_INTR_CA5_MASK = common dso_local global i32 0, align 4
@LPASS_INTR_SFR = common dso_local global i32 0, align 4
@LPASS_INTR_DMA = common dso_local global i32 0, align 4
@LPASS_INTR_I2S = common dso_local global i32 0, align 4
@SFR_LPASS_INTR_CPU_MASK = common dso_local global i32 0, align 4
@LPASS_INTR_UART = common dso_local global i32 0, align 4
@LPASS_I2S_SW_RESET = common dso_local global i32 0, align 4
@LPASS_DMA_SW_RESET = common dso_local global i32 0, align 4
@LPASS_MEM_SW_RESET = common dso_local global i32 0, align 4
@LPASS_UART_SW_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_lpass*)* @exynos_lpass_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_lpass_enable(%struct.exynos_lpass* %0) #0 {
  %2 = alloca %struct.exynos_lpass*, align 8
  store %struct.exynos_lpass* %0, %struct.exynos_lpass** %2, align 8
  %3 = load %struct.exynos_lpass*, %struct.exynos_lpass** %2, align 8
  %4 = getelementptr inbounds %struct.exynos_lpass, %struct.exynos_lpass* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @clk_prepare_enable(i32 %5)
  %7 = load %struct.exynos_lpass*, %struct.exynos_lpass** %2, align 8
  %8 = getelementptr inbounds %struct.exynos_lpass, %struct.exynos_lpass* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SFR_LPASS_INTR_CA5_MASK, align 4
  %11 = load i32, i32* @LPASS_INTR_SFR, align 4
  %12 = load i32, i32* @LPASS_INTR_DMA, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @LPASS_INTR_I2S, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @regmap_write(i32 %9, i32 %10, i32 %15)
  %17 = load %struct.exynos_lpass*, %struct.exynos_lpass** %2, align 8
  %18 = getelementptr inbounds %struct.exynos_lpass, %struct.exynos_lpass* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SFR_LPASS_INTR_CPU_MASK, align 4
  %21 = load i32, i32* @LPASS_INTR_SFR, align 4
  %22 = load i32, i32* @LPASS_INTR_DMA, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @LPASS_INTR_I2S, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @LPASS_INTR_UART, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @regmap_write(i32 %19, i32 %20, i32 %27)
  %29 = load %struct.exynos_lpass*, %struct.exynos_lpass** %2, align 8
  %30 = load i32, i32* @LPASS_I2S_SW_RESET, align 4
  %31 = call i32 @exynos_lpass_core_sw_reset(%struct.exynos_lpass* %29, i32 %30)
  %32 = load %struct.exynos_lpass*, %struct.exynos_lpass** %2, align 8
  %33 = load i32, i32* @LPASS_DMA_SW_RESET, align 4
  %34 = call i32 @exynos_lpass_core_sw_reset(%struct.exynos_lpass* %32, i32 %33)
  %35 = load %struct.exynos_lpass*, %struct.exynos_lpass** %2, align 8
  %36 = load i32, i32* @LPASS_MEM_SW_RESET, align 4
  %37 = call i32 @exynos_lpass_core_sw_reset(%struct.exynos_lpass* %35, i32 %36)
  %38 = load %struct.exynos_lpass*, %struct.exynos_lpass** %2, align 8
  %39 = load i32, i32* @LPASS_UART_SW_RESET, align 4
  %40 = call i32 @exynos_lpass_core_sw_reset(%struct.exynos_lpass* %38, i32 %39)
  ret void
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @exynos_lpass_core_sw_reset(%struct.exynos_lpass*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
