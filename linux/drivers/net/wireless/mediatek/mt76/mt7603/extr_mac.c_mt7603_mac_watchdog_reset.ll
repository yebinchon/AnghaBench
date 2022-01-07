; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_mac_watchdog_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_mac_watchdog_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i64, %struct.TYPE_4__, i64* }
%struct.TYPE_4__ = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MT76_RESET = common dso_local global i32 0, align 4
@RESET_CAUSE_RESET_FAILED = common dso_local global i64 0, align 8
@RESET_CAUSE_RX_PSE_BUSY = common dso_local global i64 0, align 8
@RESET_CAUSE_BEACON_STUCK = common dso_local global i64 0, align 8
@RESET_CAUSE_TX_HANG = common dso_local global i64 0, align 8
@MT_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_RX_DMA_EN = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_DMA_EN = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_FORCE_TX_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7603_dev*)* @mt7603_mac_watchdog_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7603_mac_watchdog_reset(%struct.mt7603_dev* %0) #0 {
  %2 = alloca %struct.mt7603_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %2, align 8
  %6 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %11 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 10
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %16 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ieee80211_stop_queues(i32 %18)
  %20 = load i32, i32* @MT76_RESET, align 4
  %21 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %22 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 7
  %24 = call i32 @set_bit(i32 %20, i32* %23)
  %25 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %26 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %25, i32 0, i32 1
  %27 = call i32 @mt76_txq_schedule_all(%struct.TYPE_4__* %26)
  %28 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %29 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  %31 = call i32 @tasklet_disable(i32* %30)
  %32 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %33 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = call i32 @tasklet_disable(i32* %34)
  %36 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %37 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @napi_disable(i32* %40)
  %42 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %43 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = call i32 @napi_disable(i32* %46)
  %48 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %49 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = call i32 @napi_disable(i32* %50)
  %52 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %53 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 6
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %57 = call i32 @mt7603_beacon_set_timer(%struct.mt7603_dev* %56, i32 -1, i32 0)
  %58 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %59 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @RESET_CAUSE_RESET_FAILED, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %1
  %66 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %67 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @RESET_CAUSE_RX_PSE_BUSY, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %65
  %72 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %73 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RESET_CAUSE_BEACON_STUCK, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %79 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @RESET_CAUSE_TX_HANG, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77, %71, %65, %1
  %84 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %85 = call i32 @mt7603_pse_reset(%struct.mt7603_dev* %84)
  br label %86

86:                                               ; preds = %83, %77
  %87 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %88 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* @RESET_CAUSE_RESET_FAILED, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %155

95:                                               ; preds = %86
  %96 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %97 = call i32 @mt7603_mac_stop(%struct.mt7603_dev* %96)
  %98 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %99 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %100 = load i32, i32* @MT_WPDMA_GLO_CFG_RX_DMA_EN, align 4
  %101 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_DMA_EN, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @mt76_clear(%struct.mt7603_dev* %98, i32 %99, i32 %104)
  %106 = call i32 @usleep_range(i32 1000, i32 2000)
  %107 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @mt7603_irq_disable(%struct.mt7603_dev* %107, i32 %108)
  %110 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %111 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %112 = load i32, i32* @MT_WPDMA_GLO_CFG_FORCE_TX_EOF, align 4
  %113 = call i32 @mt76_set(%struct.mt7603_dev* %110, i32 %111, i32 %112)
  %114 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %115 = call i32 @mt7603_pse_client_reset(%struct.mt7603_dev* %114)
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %128, %95
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %119 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @ARRAY_SIZE(i32 %121)
  %123 = icmp slt i32 %117, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %116
  %125 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @mt76_queue_tx_cleanup(%struct.mt7603_dev* %125, i32 %126, i32 1)
  br label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %116

131:                                              ; preds = %116
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %144, %131
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %135 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ARRAY_SIZE(i32 %137)
  %139 = icmp slt i32 %133, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %132
  %141 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @mt76_queue_rx_reset(%struct.mt7603_dev* %141, i32 %142)
  br label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %132

147:                                              ; preds = %132
  %148 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %149 = call i32 @mt7603_dma_sched_reset(%struct.mt7603_dev* %148)
  %150 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %151 = call i32 @mt7603_mac_dma_start(%struct.mt7603_dev* %150)
  %152 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @mt7603_irq_enable(%struct.mt7603_dev* %152, i32 %153)
  br label %155

155:                                              ; preds = %147, %94
  %156 = load i32, i32* @MT76_RESET, align 4
  %157 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %158 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 7
  %160 = call i32 @clear_bit(i32 %156, i32* %159)
  %161 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %162 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 6
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %166 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 5
  %168 = call i32 @tasklet_enable(i32* %167)
  %169 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %170 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 4
  %172 = call i32 @napi_enable(i32* %171)
  %173 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %174 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 4
  %176 = call i32 @napi_schedule(i32* %175)
  %177 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %178 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  %180 = call i32 @tasklet_enable(i32* %179)
  %181 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %182 = load i32, i32* %3, align 4
  %183 = call i32 @mt7603_beacon_set_timer(%struct.mt7603_dev* %181, i32 -1, i32 %182)
  %184 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %185 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = call i32 @napi_enable(i32* %188)
  %190 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %191 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = call i32 @napi_schedule(i32* %194)
  %196 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %197 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = call i32 @napi_enable(i32* %200)
  %202 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %203 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = call i32 @napi_schedule(i32* %206)
  %208 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %209 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @ieee80211_wake_queues(i32 %211)
  %213 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %214 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %213, i32 0, i32 1
  %215 = call i32 @mt76_txq_schedule_all(%struct.TYPE_4__* %214)
  ret void
}

declare dso_local i32 @ieee80211_stop_queues(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mt76_txq_schedule_all(%struct.TYPE_4__*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt7603_beacon_set_timer(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt7603_pse_reset(%struct.mt7603_dev*) #1

declare dso_local i32 @mt7603_mac_stop(%struct.mt7603_dev*) #1

declare dso_local i32 @mt76_clear(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mt7603_irq_disable(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @mt76_set(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt7603_pse_client_reset(%struct.mt7603_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mt76_queue_tx_cleanup(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt76_queue_rx_reset(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @mt7603_dma_sched_reset(%struct.mt7603_dev*) #1

declare dso_local i32 @mt7603_mac_dma_start(%struct.mt7603_dev*) #1

declare dso_local i32 @mt7603_irq_enable(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
