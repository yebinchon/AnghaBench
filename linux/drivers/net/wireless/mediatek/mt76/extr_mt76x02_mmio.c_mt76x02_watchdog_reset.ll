; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mmio.c_mt76x02_watchdog_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mmio.c_mt76x02_watchdog_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32*, i32, i32, i32, i32, i32, i64, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MT76_RESET = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_BEACON_TX = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_TBTT_EN = common dso_local global i32 0, align 4
@MT_TXOP_CTRL_CFG = common dso_local global i32 0, align 4
@MT_TXOP_ED_CCA_EN = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_DMA_EN = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_RX_DMA_EN = common dso_local global i32 0, align 4
@MT_INT_SOURCE_CSR = common dso_local global i32 0, align 4
@Q_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x02_watchdog_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x02_watchdog_reset(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 11
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %12 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 10
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ieee80211_stop_queues(i32 %20)
  %22 = load i32, i32* @MT76_RESET, align 4
  %23 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %24 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = call i32 @set_bit(i32 %22, i32* %25)
  %27 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %28 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = call i32 @tasklet_disable(i32* %29)
  %31 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %32 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  %34 = call i32 @tasklet_disable(i32* %33)
  %35 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %36 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = call i32 @napi_disable(i32* %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %56, %1
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %42 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = icmp slt i32 %40, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %39
  %48 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %49 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @napi_disable(i32* %54)
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %39

59:                                               ; preds = %39
  %60 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %61 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 6
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %68 = call i32 @mt76x02_reset_state(%struct.mt76x02_dev* %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %71 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %77 = load i32, i32* @MT_BEACON_TIME_CFG, align 4
  %78 = load i32, i32* @MT_BEACON_TIME_CFG_BEACON_TX, align 4
  %79 = load i32, i32* @MT_BEACON_TIME_CFG_TBTT_EN, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @mt76_clear(%struct.mt76x02_dev* %76, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %75, %69
  %83 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @mt76x02_irq_disable(%struct.mt76x02_dev* %83, i32 %84)
  %86 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %87 = load i32, i32* @MT_TXOP_CTRL_CFG, align 4
  %88 = load i32, i32* @MT_TXOP_ED_CCA_EN, align 4
  %89 = call i32 @mt76_clear(%struct.mt76x02_dev* %86, i32 %87, i32 %88)
  %90 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %91 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %92 = call i32 @mt76_wr(%struct.mt76x02_dev* %90, i32 %91, i32 0)
  %93 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %94 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %95 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_DMA_EN, align 4
  %96 = load i32, i32* @MT_WPDMA_GLO_CFG_RX_DMA_EN, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @mt76_clear(%struct.mt76x02_dev* %93, i32 %94, i32 %97)
  %99 = call i32 @usleep_range(i32 5000, i32 10000)
  %100 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %101 = load i32, i32* @MT_INT_SOURCE_CSR, align 4
  %102 = call i32 @mt76_wr(%struct.mt76x02_dev* %100, i32 %101, i32 -1)
  %103 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %104 = call i32 @mt76_set(%struct.mt76x02_dev* %103, i32 1844, i32 3)
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %82
  %108 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %109 = call i32 @mt76_mcu_restart(%struct.mt76x02_dev* %108)
  br label %110

110:                                              ; preds = %107, %82
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %123, %110
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %114 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 9
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @ARRAY_SIZE(i32* %116)
  %118 = icmp slt i32 %112, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %111
  %120 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @mt76_queue_tx_cleanup(%struct.mt76x02_dev* %120, i32 %121, i32 1)
  br label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %111

126:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %139, %126
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %130 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 8
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @ARRAY_SIZE(i32* %132)
  %134 = icmp slt i32 %128, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %127
  %136 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @mt76_queue_rx_reset(%struct.mt76x02_dev* %136, i32 %137)
  br label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %127

142:                                              ; preds = %127
  %143 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %144 = call i32 @mt76x02_mac_start(%struct.mt76x02_dev* %143)
  %145 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %146 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %151 = load i32, i32* @MT_TXOP_CTRL_CFG, align 4
  %152 = load i32, i32* @MT_TXOP_ED_CCA_EN, align 4
  %153 = call i32 @mt76_set(%struct.mt76x02_dev* %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %149, %142
  %155 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %156 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 7
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %154
  %161 = load i32, i32* %4, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %160
  %164 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %165 = load i32, i32* @MT_BEACON_TIME_CFG, align 4
  %166 = load i32, i32* @MT_BEACON_TIME_CFG_BEACON_TX, align 4
  %167 = load i32, i32* @MT_BEACON_TIME_CFG_TBTT_EN, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @mt76_set(%struct.mt76x02_dev* %164, i32 %165, i32 %168)
  br label %170

170:                                              ; preds = %163, %160, %154
  %171 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @mt76x02_irq_enable(%struct.mt76x02_dev* %171, i32 %172)
  %174 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %175 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 6
  %177 = call i32 @mutex_unlock(i32* %176)
  %178 = load i32, i32* @MT76_RESET, align 4
  %179 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %180 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 5
  %182 = call i32 @clear_bit(i32 %178, i32* %181)
  %183 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %184 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 4
  %186 = call i32 @tasklet_enable(i32* %185)
  %187 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %188 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 3
  %190 = call i32 @napi_enable(i32* %189)
  %191 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %192 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 3
  %194 = call i32 @napi_schedule(i32* %193)
  %195 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %196 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  %198 = call i32 @tasklet_enable(i32* %197)
  store i32 0, i32* %5, align 4
  br label %199

199:                                              ; preds = %224, %170
  %200 = load i32, i32* %5, align 4
  %201 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %202 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = call i32 @ARRAY_SIZE(i32* %204)
  %206 = icmp slt i32 %200, %205
  br i1 %206, label %207, label %227

207:                                              ; preds = %199
  %208 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %209 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = call i32 @napi_enable(i32* %214)
  %216 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %217 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = call i32 @napi_schedule(i32* %222)
  br label %224

224:                                              ; preds = %207
  %225 = load i32, i32* %5, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %5, align 4
  br label %199

227:                                              ; preds = %199
  %228 = load i32, i32* %4, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %227
  %231 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %232 = load i32, i32* @Q_SELECT, align 4
  %233 = call i32 @mt76x02_mcu_function_select(%struct.mt76x02_dev* %231, i32 %232, i32 1)
  %234 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %235 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @ieee80211_restart_hw(i32 %237)
  br label %248

239:                                              ; preds = %227
  %240 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %241 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @ieee80211_wake_queues(i32 %243)
  %245 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %246 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %245, i32 0, i32 0
  %247 = call i32 @mt76_txq_schedule_all(%struct.TYPE_6__* %246)
  br label %248

248:                                              ; preds = %239, %230
  ret void
}

declare dso_local i32 @ieee80211_stop_queues(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt76x02_reset_state(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x02_irq_disable(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_mcu_restart(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_queue_tx_cleanup(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_queue_rx_reset(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_mac_start(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_irq_enable(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @mt76x02_mcu_function_select(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @ieee80211_restart_hw(i32) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

declare dso_local i32 @mt76_txq_schedule_all(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
