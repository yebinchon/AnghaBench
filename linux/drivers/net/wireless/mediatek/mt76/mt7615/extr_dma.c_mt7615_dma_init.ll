; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_dma.c_mt7615_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_dma.c_mt7615_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }

@MT_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_FIFO_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_FIRST_TOKEN_ONLY = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_OMIT_TX_INFO = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_BT_SIZE_BIT0 = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_BT_SIZE_BIT21 = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_DMA_BURST_SIZE = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_MULTI_DMA_EN = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG1 = common dso_local global i32 0, align 4
@MT_WPDMA_TX_PRE_CFG = common dso_local global i32 0, align 4
@MT_WPDMA_RX_PRE_CFG = common dso_local global i32 0, align 4
@MT_WPDMA_ABT_CFG = common dso_local global i32 0, align 4
@MT_WPDMA_ABT_CFG1 = common dso_local global i32 0, align 4
@MT_WPDMA_RST_IDX = common dso_local global i32 0, align 4
@MT7615_TX_RING_SIZE = common dso_local global i32 0, align 4
@MT_TXQ_MCU = common dso_local global i64 0, align 8
@MT7615_TXQ_MCU = common dso_local global i32 0, align 4
@MT7615_TX_MCU_RING_SIZE = common dso_local global i32 0, align 4
@MT_TXQ_FWDL = common dso_local global i64 0, align 8
@MT7615_TXQ_FWDL = common dso_local global i32 0, align 4
@MT7615_TX_FWDL_RING_SIZE = common dso_local global i32 0, align 4
@MT_RXQ_MCU = common dso_local global i64 0, align 8
@MT7615_RX_MCU_RING_SIZE = common dso_local global i32 0, align 4
@MT_RX_BUF_SIZE = common dso_local global i32 0, align 4
@MT_RX_RING_BASE = common dso_local global i32 0, align 4
@MT_RXQ_MAIN = common dso_local global i64 0, align 8
@MT7615_RX_RING_SIZE = common dso_local global i32 0, align 4
@MT_DELAY_INT_CFG = common dso_local global i32 0, align 4
@mt7615_poll_tx = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_DMA_BUSY = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_RX_DMA_BUSY = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_DMA_EN = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_RX_DMA_EN = common dso_local global i32 0, align 4
@MT_INT_RX_DONE_ALL = common dso_local global i32 0, align 4
@MT_INT_TX_DONE_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7615_dma_init(%struct.mt7615_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7615_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  %5 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %5, i32 0, i32 0
  %7 = call i32 @mt76_dma_attach(%struct.TYPE_2__* %6)
  %8 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %9 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %10 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE, align 4
  %11 = load i32, i32* @MT_WPDMA_GLO_CFG_FIFO_LITTLE_ENDIAN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MT_WPDMA_GLO_CFG_FIRST_TOKEN_ONLY, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MT_WPDMA_GLO_CFG_OMIT_TX_INFO, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @mt76_wr(%struct.mt7615_dev* %8, i32 %9, i32 %16)
  %18 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %19 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %20 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_BT_SIZE_BIT0, align 4
  %21 = call i32 @mt76_rmw_field(%struct.mt7615_dev* %18, i32 %19, i32 %20, i32 1)
  %22 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %23 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %24 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_BT_SIZE_BIT21, align 4
  %25 = call i32 @mt76_rmw_field(%struct.mt7615_dev* %22, i32 %23, i32 %24, i32 1)
  %26 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %27 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %28 = load i32, i32* @MT_WPDMA_GLO_CFG_DMA_BURST_SIZE, align 4
  %29 = call i32 @mt76_rmw_field(%struct.mt7615_dev* %26, i32 %27, i32 %28, i32 3)
  %30 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %31 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %32 = load i32, i32* @MT_WPDMA_GLO_CFG_MULTI_DMA_EN, align 4
  %33 = call i32 @mt76_rmw_field(%struct.mt7615_dev* %30, i32 %31, i32 %32, i32 3)
  %34 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %35 = load i32, i32* @MT_WPDMA_GLO_CFG1, align 4
  %36 = call i32 @mt76_wr(%struct.mt7615_dev* %34, i32 %35, i32 1)
  %37 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %38 = load i32, i32* @MT_WPDMA_TX_PRE_CFG, align 4
  %39 = call i32 @mt76_wr(%struct.mt7615_dev* %37, i32 %38, i32 983040)
  %40 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %41 = load i32, i32* @MT_WPDMA_RX_PRE_CFG, align 4
  %42 = call i32 @mt76_wr(%struct.mt7615_dev* %40, i32 %41, i32 259981312)
  %43 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %44 = load i32, i32* @MT_WPDMA_ABT_CFG, align 4
  %45 = call i32 @mt76_wr(%struct.mt7615_dev* %43, i32 %44, i32 67108902)
  %46 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %47 = load i32, i32* @MT_WPDMA_ABT_CFG1, align 4
  %48 = call i32 @mt76_wr(%struct.mt7615_dev* %46, i32 %47, i32 411113601)
  %49 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %50 = call i32 @BIT(i32 16)
  %51 = call i32 @mt76_set(%struct.mt7615_dev* %49, i32 29016, i32 %50)
  %52 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %53 = call i32 @BIT(i32 23)
  %54 = call i32 @mt76_clear(%struct.mt7615_dev* %52, i32 28672, i32 %53)
  %55 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %56 = load i32, i32* @MT_WPDMA_RST_IDX, align 4
  %57 = call i32 @mt76_wr(%struct.mt7615_dev* %55, i32 %56, i32 -1)
  %58 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %59 = load i32, i32* @MT7615_TX_RING_SIZE, align 4
  %60 = call i32 @mt7615_init_tx_queues(%struct.mt7615_dev* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %1
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %168

65:                                               ; preds = %1
  %66 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %67 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %68 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @MT_TXQ_MCU, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* @MT7615_TXQ_MCU, align 4
  %74 = load i32, i32* @MT7615_TX_MCU_RING_SIZE, align 4
  %75 = call i32 @mt7615_init_mcu_queue(%struct.mt7615_dev* %66, i32* %72, i32 %73, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %65
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %168

80:                                               ; preds = %65
  %81 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %82 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %83 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @MT_TXQ_FWDL, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* @MT7615_TXQ_FWDL, align 4
  %89 = load i32, i32* @MT7615_TX_FWDL_RING_SIZE, align 4
  %90 = call i32 @mt7615_init_mcu_queue(%struct.mt7615_dev* %81, i32* %87, i32 %88, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %80
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %168

95:                                               ; preds = %80
  %96 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %97 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %98 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @MT_RXQ_MCU, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* @MT7615_RX_MCU_RING_SIZE, align 4
  %104 = load i32, i32* @MT_RX_BUF_SIZE, align 4
  %105 = load i32, i32* @MT_RX_RING_BASE, align 4
  %106 = call i32 @mt76_queue_alloc(%struct.mt7615_dev* %96, i32* %102, i32 1, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %95
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %2, align 4
  br label %168

111:                                              ; preds = %95
  %112 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %113 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %114 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @MT_RXQ_MAIN, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* @MT7615_RX_RING_SIZE, align 4
  %120 = load i32, i32* @MT_RX_BUF_SIZE, align 4
  %121 = load i32, i32* @MT_RX_RING_BASE, align 4
  %122 = call i32 @mt76_queue_alloc(%struct.mt7615_dev* %112, i32* %118, i32 0, i32 %119, i32 %120, i32 %121)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %111
  %126 = load i32, i32* %4, align 4
  store i32 %126, i32* %2, align 4
  br label %168

127:                                              ; preds = %111
  %128 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %129 = load i32, i32* @MT_DELAY_INT_CFG, align 4
  %130 = call i32 @mt76_wr(%struct.mt7615_dev* %128, i32 %129, i32 0)
  %131 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %132 = call i32 @mt76_init_queues(%struct.mt7615_dev* %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %2, align 4
  br label %168

137:                                              ; preds = %127
  %138 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %139 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %142 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* @mt7615_poll_tx, align 4
  %145 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %146 = call i32 @netif_tx_napi_add(i32* %140, i32* %143, i32 %144, i32 %145)
  %147 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %148 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = call i32 @napi_enable(i32* %149)
  %151 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %152 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %153 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_DMA_BUSY, align 4
  %154 = load i32, i32* @MT_WPDMA_GLO_CFG_RX_DMA_BUSY, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @mt76_poll(%struct.mt7615_dev* %151, i32 %152, i32 %155, i32 0, i32 1000)
  %157 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %158 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %159 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_DMA_EN, align 4
  %160 = load i32, i32* @MT_WPDMA_GLO_CFG_RX_DMA_EN, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @mt76_set(%struct.mt7615_dev* %157, i32 %158, i32 %161)
  %163 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %164 = load i32, i32* @MT_INT_RX_DONE_ALL, align 4
  %165 = load i32, i32* @MT_INT_TX_DONE_ALL, align 4
  %166 = or i32 %164, %165
  %167 = call i32 @mt7615_irq_enable(%struct.mt7615_dev* %163, i32 %166)
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %137, %135, %125, %109, %93, %78, %63
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @mt76_dma_attach(%struct.TYPE_2__*) #1

declare dso_local i32 @mt76_wr(%struct.mt7615_dev*, i32, i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt7615_dev*, i32, i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt7615_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76_clear(%struct.mt7615_dev*, i32, i32) #1

declare dso_local i32 @mt7615_init_tx_queues(%struct.mt7615_dev*, i32) #1

declare dso_local i32 @mt7615_init_mcu_queue(%struct.mt7615_dev*, i32*, i32, i32) #1

declare dso_local i32 @mt76_queue_alloc(%struct.mt7615_dev*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mt76_init_queues(%struct.mt7615_dev*) #1

declare dso_local i32 @netif_tx_napi_add(i32*, i32*, i32, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @mt76_poll(%struct.mt7615_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt7615_irq_enable(%struct.mt7615_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
