; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_interrupt.c_wil_configure_interrupt_moderation_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_interrupt.c_wil_configure_interrupt_moderation_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }

@RGF_INT_GEN_IDLE_TIME_LIMIT = common dso_local global i32 0, align 4
@WIL_EDMA_IDLE_TIME_LIMIT_USEC = common dso_local global i32 0, align 4
@RGF_INT_GEN_TIME_UNIT_LIMIT = common dso_local global i32 0, align 4
@WIL_EDMA_TIME_UNIT_CLK_CYCLES = common dso_local global i32 0, align 4
@WIL_EDMA_AGG_WATERMARK = common dso_local global i32 0, align 4
@WIL_EDMA_AGG_WATERMARK_POS = common dso_local global i32 0, align 4
@RGF_INT_CTRL_INT_GEN_CFG_0 = common dso_local global i32 0, align 4
@RGF_INT_CTRL_INT_GEN_CFG_1 = common dso_local global i32 0, align 4
@RGF_INT_COUNT_ON_SPECIAL_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_configure_interrupt_moderation_edma(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %4 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %5 = load i32, i32* @RGF_INT_GEN_IDLE_TIME_LIMIT, align 4
  %6 = load i32, i32* @WIL_EDMA_IDLE_TIME_LIMIT_USEC, align 4
  %7 = call i32 @wil_s(%struct.wil6210_priv* %4, i32 %5, i32 %6)
  %8 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %9 = load i32, i32* @RGF_INT_GEN_TIME_UNIT_LIMIT, align 4
  %10 = load i32, i32* @WIL_EDMA_TIME_UNIT_CLK_CYCLES, align 4
  %11 = call i32 @wil_s(%struct.wil6210_priv* %8, i32 %9, i32 %10)
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %13 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @WIL_EDMA_AGG_WATERMARK, align 4
  %16 = load i32, i32* @WIL_EDMA_AGG_WATERMARK_POS, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %14, %17
  store i32 %18, i32* %3, align 4
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %20 = load i32, i32* @RGF_INT_CTRL_INT_GEN_CFG_0, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @wil_w(%struct.wil6210_priv* %19, i32 %20, i32 %21)
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %24 = load i32, i32* @RGF_INT_CTRL_INT_GEN_CFG_1, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @wil_w(%struct.wil6210_priv* %23, i32 %24, i32 %25)
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %28 = load i32, i32* @RGF_INT_COUNT_ON_SPECIAL_EVT, align 4
  %29 = call i32 @wil_c(%struct.wil6210_priv* %27, i32 %28, i32 510)
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %31 = load i32, i32* @RGF_INT_COUNT_ON_SPECIAL_EVT, align 4
  %32 = call i32 @wil_s(%struct.wil6210_priv* %30, i32 %31, i32 1)
  ret void
}

declare dso_local i32 @wil_s(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @wil_w(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @wil_c(%struct.wil6210_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
