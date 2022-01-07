; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_dma.c_mt7603_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_dma.c_mt7603_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }

@mt7603_dma_init.wmm_queue_map = internal constant [132 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2, i32 0, i32 1], align 16
@MT_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_DMA_EN = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_RX_DMA_EN = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_DMA_BURST_SIZE = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE = common dso_local global i32 0, align 4
@MT_WPDMA_RST_IDX = common dso_local global i32 0, align 4
@MT_TX_RING_SIZE = common dso_local global i32 0, align 4
@MT_TXQ_PSD = common dso_local global i64 0, align 8
@MT_TX_HW_QUEUE_MGMT = common dso_local global i32 0, align 4
@MT_TXQ_MCU = common dso_local global i64 0, align 8
@MT_TX_HW_QUEUE_MCU = common dso_local global i32 0, align 4
@MT_MCU_RING_SIZE = common dso_local global i32 0, align 4
@MT_TXQ_BEACON = common dso_local global i64 0, align 8
@MT_TX_HW_QUEUE_BCN = common dso_local global i32 0, align 4
@MT_TXQ_CAB = common dso_local global i64 0, align 8
@MT_TX_HW_QUEUE_BMC = common dso_local global i32 0, align 4
@MT_RXQ_MCU = common dso_local global i64 0, align 8
@MT_RX_BUF_SIZE = common dso_local global i32 0, align 4
@MT_RXQ_MAIN = common dso_local global i64 0, align 8
@MT7603_RX_RING_SIZE = common dso_local global i32 0, align 4
@MT_DELAY_INT_CFG = common dso_local global i32 0, align 4
@mt7603_poll_tx = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7603_dma_init(%struct.mt7603_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7603_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %3, align 8
  %6 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %6, i32 0, i32 0
  %8 = call i32 @mt76_dma_attach(%struct.TYPE_2__* %7)
  %9 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %10 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %11 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_DMA_EN, align 4
  %12 = load i32, i32* @MT_WPDMA_GLO_CFG_RX_DMA_EN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MT_WPDMA_GLO_CFG_DMA_BURST_SIZE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @mt76_clear(%struct.mt7603_dev* %9, i32 %10, i32 %17)
  %19 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %20 = load i32, i32* @MT_WPDMA_RST_IDX, align 4
  %21 = call i32 @mt76_wr(%struct.mt7603_dev* %19, i32 %20, i32 -1)
  %22 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %23 = call i32 @mt7603_pse_client_reset(%struct.mt7603_dev* %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %48, %1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([132 x i32], [132 x i32]* @mt7603_dma_init.wmm_queue_map, i64 0, i64 0))
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %30 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [132 x i32], [132 x i32]* @mt7603_dma_init.wmm_queue_map, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MT_TX_RING_SIZE, align 4
  %42 = call i32 @mt7603_init_tx_queue(%struct.mt7603_dev* %29, i32* %36, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %28
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %165

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %24

51:                                               ; preds = %24
  %52 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %53 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %54 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @MT_TXQ_PSD, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* @MT_TX_HW_QUEUE_MGMT, align 4
  %60 = load i32, i32* @MT_TX_RING_SIZE, align 4
  %61 = call i32 @mt7603_init_tx_queue(%struct.mt7603_dev* %52, i32* %58, i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %165

66:                                               ; preds = %51
  %67 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %68 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %69 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @MT_TXQ_MCU, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* @MT_TX_HW_QUEUE_MCU, align 4
  %75 = load i32, i32* @MT_MCU_RING_SIZE, align 4
  %76 = call i32 @mt7603_init_tx_queue(%struct.mt7603_dev* %67, i32* %73, i32 %74, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %165

81:                                               ; preds = %66
  %82 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %83 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %84 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @MT_TXQ_BEACON, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* @MT_TX_HW_QUEUE_BCN, align 4
  %90 = load i32, i32* @MT_MCU_RING_SIZE, align 4
  %91 = call i32 @mt7603_init_tx_queue(%struct.mt7603_dev* %82, i32* %88, i32 %89, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %165

96:                                               ; preds = %81
  %97 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %98 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %99 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @MT_TXQ_CAB, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* @MT_TX_HW_QUEUE_BMC, align 4
  %105 = load i32, i32* @MT_MCU_RING_SIZE, align 4
  %106 = call i32 @mt7603_init_tx_queue(%struct.mt7603_dev* %97, i32* %103, i32 %104, i32 %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %96
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %2, align 4
  br label %165

111:                                              ; preds = %96
  %112 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %113 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %114 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @MT_RXQ_MCU, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* @MT_MCU_RING_SIZE, align 4
  %120 = load i32, i32* @MT_RX_BUF_SIZE, align 4
  %121 = call i32 @mt7603_init_rx_queue(%struct.mt7603_dev* %112, i32* %118, i32 1, i32 %119, i32 %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %111
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %165

126:                                              ; preds = %111
  %127 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %128 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %129 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @MT_RXQ_MAIN, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* @MT7603_RX_RING_SIZE, align 4
  %135 = load i32, i32* @MT_RX_BUF_SIZE, align 4
  %136 = call i32 @mt7603_init_rx_queue(%struct.mt7603_dev* %127, i32* %133, i32 0, i32 %134, i32 %135)
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %126
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %2, align 4
  br label %165

141:                                              ; preds = %126
  %142 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %143 = load i32, i32* @MT_DELAY_INT_CFG, align 4
  %144 = call i32 @mt76_wr(%struct.mt7603_dev* %142, i32 %143, i32 0)
  %145 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %146 = call i32 @mt76_init_queues(%struct.mt7603_dev* %145)
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* %4, align 4
  store i32 %150, i32* %2, align 4
  br label %165

151:                                              ; preds = %141
  %152 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %153 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %156 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* @mt7603_poll_tx, align 4
  %159 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %160 = call i32 @netif_tx_napi_add(i32* %154, i32* %157, i32 %158, i32 %159)
  %161 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %162 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = call i32 @napi_enable(i32* %163)
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %151, %149, %139, %124, %109, %94, %79, %64, %45
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @mt76_dma_attach(%struct.TYPE_2__*) #1

declare dso_local i32 @mt76_clear(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt7603_pse_client_reset(%struct.mt7603_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mt7603_init_tx_queue(%struct.mt7603_dev*, i32*, i32, i32) #1

declare dso_local i32 @mt7603_init_rx_queue(%struct.mt7603_dev*, i32*, i32, i32, i32) #1

declare dso_local i32 @mt76_init_queues(%struct.mt7603_dev*) #1

declare dso_local i32 @netif_tx_napi_add(i32*, i32*, i32, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
