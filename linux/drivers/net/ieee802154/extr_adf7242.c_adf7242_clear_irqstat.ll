; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_adf7242.c_adf7242_clear_irqstat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_adf7242.c_adf7242_clear_irqstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf7242_local = type { i32 }

@REG_IRQ1_SRC1 = common dso_local global i32 0, align 4
@IRQ_CCA_COMPLETE = common dso_local global i32 0, align 4
@IRQ_SFD_RX = common dso_local global i32 0, align 4
@IRQ_SFD_TX = common dso_local global i32 0, align 4
@IRQ_RX_PKT_RCVD = common dso_local global i32 0, align 4
@IRQ_TX_PKT_SENT = common dso_local global i32 0, align 4
@IRQ_FRAME_VALID = common dso_local global i32 0, align 4
@IRQ_ADDRESS_VALID = common dso_local global i32 0, align 4
@IRQ_CSMA_CA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adf7242_local*)* @adf7242_clear_irqstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adf7242_clear_irqstat(%struct.adf7242_local* %0) #0 {
  %2 = alloca %struct.adf7242_local*, align 8
  store %struct.adf7242_local* %0, %struct.adf7242_local** %2, align 8
  %3 = load %struct.adf7242_local*, %struct.adf7242_local** %2, align 8
  %4 = load i32, i32* @REG_IRQ1_SRC1, align 4
  %5 = load i32, i32* @IRQ_CCA_COMPLETE, align 4
  %6 = load i32, i32* @IRQ_SFD_RX, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @IRQ_SFD_TX, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @IRQ_RX_PKT_RCVD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @IRQ_TX_PKT_SENT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IRQ_FRAME_VALID, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IRQ_ADDRESS_VALID, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @IRQ_CSMA_CA, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @adf7242_write_reg(%struct.adf7242_local* %3, i32 %4, i32 %19)
  ret void
}

declare dso_local i32 @adf7242_write_reg(%struct.adf7242_local*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
