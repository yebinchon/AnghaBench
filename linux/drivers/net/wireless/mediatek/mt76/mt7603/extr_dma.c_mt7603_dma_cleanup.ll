; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_dma.c_mt7603_dma_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_dma.c_mt7603_dma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MT_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_DMA_EN = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_RX_DMA_EN = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7603_dma_cleanup(%struct.mt7603_dev* %0) #0 {
  %2 = alloca %struct.mt7603_dev*, align 8
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %2, align 8
  %3 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %4 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %5 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_DMA_EN, align 4
  %6 = load i32, i32* @MT_WPDMA_GLO_CFG_RX_DMA_EN, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @mt76_clear(%struct.mt7603_dev* %3, i32 %4, i32 %9)
  %11 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %12 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @tasklet_kill(i32* %13)
  %15 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %16 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %15, i32 0, i32 0
  %17 = call i32 @mt76_dma_cleanup(%struct.TYPE_2__* %16)
  ret void
}

declare dso_local i32 @mt76_clear(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @mt76_dma_cleanup(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
