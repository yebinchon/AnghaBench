; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_pciefd_main.c_pciefd_can_clear_rx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_pciefd_main.c_pciefd_can_clear_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pciefd_can = type { i32 }

@CANFD_CTL_RST_BIT = common dso_local global i32 0, align 4
@PCIEFD_REG_CAN_RX_CTL_SET = common dso_local global i32 0, align 4
@PCIEFD_REG_CAN_RX_DMA_ADDR_L = common dso_local global i32 0, align 4
@PCIEFD_REG_CAN_RX_DMA_ADDR_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pciefd_can*)* @pciefd_can_clear_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pciefd_can_clear_rx_dma(%struct.pciefd_can* %0) #0 {
  %2 = alloca %struct.pciefd_can*, align 8
  store %struct.pciefd_can* %0, %struct.pciefd_can** %2, align 8
  %3 = load %struct.pciefd_can*, %struct.pciefd_can** %2, align 8
  %4 = load i32, i32* @CANFD_CTL_RST_BIT, align 4
  %5 = load i32, i32* @PCIEFD_REG_CAN_RX_CTL_SET, align 4
  %6 = call i32 @pciefd_can_writereg(%struct.pciefd_can* %3, i32 %4, i32 %5)
  %7 = load %struct.pciefd_can*, %struct.pciefd_can** %2, align 8
  %8 = load i32, i32* @PCIEFD_REG_CAN_RX_DMA_ADDR_L, align 4
  %9 = call i32 @pciefd_can_writereg(%struct.pciefd_can* %7, i32 0, i32 %8)
  %10 = load %struct.pciefd_can*, %struct.pciefd_can** %2, align 8
  %11 = load i32, i32* @PCIEFD_REG_CAN_RX_DMA_ADDR_H, align 4
  %12 = call i32 @pciefd_can_writereg(%struct.pciefd_can* %10, i32 0, i32 %11)
  ret void
}

declare dso_local i32 @pciefd_can_writereg(%struct.pciefd_can*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
