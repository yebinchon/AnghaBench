; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_interrupt.c_wil6210_unmask_irq_pseudo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_interrupt.c_wil6210_unmask_irq_pseudo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"unmask_irq_pseudo\0A\00", align 1
@wil_status_irqen = common dso_local global i32 0, align 4
@RGF_DMA_PSEUDO_CAUSE_MASK_SW = common dso_local global i32 0, align 4
@WIL6210_IRQ_PSEUDO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*)* @wil6210_unmask_irq_pseudo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil6210_unmask_irq_pseudo(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %3 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %4 = call i32 @wil_dbg_irq(%struct.wil6210_priv* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @wil_status_irqen, align 4
  %6 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %7 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @set_bit(i32 %5, i32 %8)
  %10 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %11 = load i32, i32* @RGF_DMA_PSEUDO_CAUSE_MASK_SW, align 4
  %12 = load i32, i32* @WIL6210_IRQ_PSEUDO_MASK, align 4
  %13 = call i32 @wil_w(%struct.wil6210_priv* %10, i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @wil_dbg_irq(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @wil_w(%struct.wil6210_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
