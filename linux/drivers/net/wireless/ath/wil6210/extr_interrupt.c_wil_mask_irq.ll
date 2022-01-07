; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_interrupt.c_wil_mask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_interrupt.c_wil_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"mask_irq\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_mask_irq(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %3 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %4 = call i32 @wil_dbg_irq(%struct.wil6210_priv* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %6 = call i32 @wil6210_mask_irq_tx(%struct.wil6210_priv* %5)
  %7 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %8 = call i32 @wil6210_mask_irq_tx_edma(%struct.wil6210_priv* %7)
  %9 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %10 = call i32 @wil6210_mask_irq_rx(%struct.wil6210_priv* %9)
  %11 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %12 = call i32 @wil6210_mask_irq_rx_edma(%struct.wil6210_priv* %11)
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %14 = call i32 @wil6210_mask_irq_misc(%struct.wil6210_priv* %13, i32 1)
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %16 = call i32 @wil6210_mask_irq_pseudo(%struct.wil6210_priv* %15)
  ret void
}

declare dso_local i32 @wil_dbg_irq(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil6210_mask_irq_tx(%struct.wil6210_priv*) #1

declare dso_local i32 @wil6210_mask_irq_tx_edma(%struct.wil6210_priv*) #1

declare dso_local i32 @wil6210_mask_irq_rx(%struct.wil6210_priv*) #1

declare dso_local i32 @wil6210_mask_irq_rx_edma(%struct.wil6210_priv*) #1

declare dso_local i32 @wil6210_mask_irq_misc(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @wil6210_mask_irq_pseudo(%struct.wil6210_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
