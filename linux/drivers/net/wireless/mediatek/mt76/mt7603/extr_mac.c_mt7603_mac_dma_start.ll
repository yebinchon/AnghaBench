; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_mac_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_mac_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32 }

@MT_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_DMA_EN = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_RX_DMA_EN = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_DMA_BURST_SIZE = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE = common dso_local global i32 0, align 4
@MT_INT_RX_DONE_ALL = common dso_local global i32 0, align 4
@MT_INT_TX_DONE_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7603_mac_dma_start(%struct.mt7603_dev* %0) #0 {
  %2 = alloca %struct.mt7603_dev*, align 8
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %2, align 8
  %3 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %4 = call i32 @mt7603_mac_start(%struct.mt7603_dev* %3)
  %5 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %6 = call i32 @wait_for_wpdma(%struct.mt7603_dev* %5)
  %7 = call i32 @usleep_range(i32 50, i32 100)
  %8 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %9 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %10 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_DMA_EN, align 4
  %11 = load i32, i32* @MT_WPDMA_GLO_CFG_RX_DMA_EN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MT_WPDMA_GLO_CFG_DMA_BURST_SIZE, align 4
  %14 = call i32 @FIELD_PREP(i32 %13, i32 3)
  %15 = or i32 %12, %14
  %16 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @mt76_set(%struct.mt7603_dev* %8, i32 %9, i32 %17)
  %19 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %20 = load i32, i32* @MT_INT_RX_DONE_ALL, align 4
  %21 = load i32, i32* @MT_INT_TX_DONE_ALL, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @mt7603_irq_enable(%struct.mt7603_dev* %19, i32 %22)
  ret void
}

declare dso_local i32 @mt7603_mac_start(%struct.mt7603_dev*) #1

declare dso_local i32 @wait_for_wpdma(%struct.mt7603_dev*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt7603_irq_enable(%struct.mt7603_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
