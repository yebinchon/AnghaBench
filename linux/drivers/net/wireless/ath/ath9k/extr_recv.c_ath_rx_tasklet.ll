; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_rx_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_rx_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_4__, %struct.ath_hw*, i32, i32, %struct.ieee80211_hw* }
%struct.TYPE_4__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i64 }
%struct.ath_hw = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ieee80211_hw = type { i32 }
%struct.ath_rxbuf = type { i32, i32, %struct.sk_buff* }
%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i64 }
%struct.ath_common = type { i32 }
%struct.ath_rx_status = type { i32, i32, i32, i32, i64 }
%struct.ieee80211_hdr = type { i32 }

@ATH9K_HW_CAP_EDMA = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ATH9K_RX_QUEUE_HP = common dso_local global i32 0, align 4
@ATH9K_RX_QUEUE_LP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@rx_oom_err = common dso_local global i32 0, align 4
@rx_frags = common dso_local global i32 0, align 4
@rx_too_many_frags_err = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@PS_WAIT_FOR_BEACON = common dso_local global i32 0, align 4
@PS_WAIT_FOR_CAB = common dso_local global i32 0, align 4
@PS_WAIT_FOR_PSPOLL_DATA = common dso_local global i32 0, align 4
@ATH9K_INT_RXEOL = common dso_local global i32 0, align 4
@ATH9K_INT_RXORN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_rx_tasklet(%struct.ath_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_rxbuf*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ieee80211_rx_status*, align 8
  %12 = alloca %struct.ath_hw*, align 8
  %13 = alloca %struct.ath_common*, align 8
  %14 = alloca %struct.ieee80211_hw*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ath_rx_status, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.ieee80211_hdr*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %27 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 2
  %29 = load %struct.ath_hw*, %struct.ath_hw** %28, align 8
  store %struct.ath_hw* %29, %struct.ath_hw** %12, align 8
  %30 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %31 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %30)
  store %struct.ath_common* %31, %struct.ath_common** %13, align 8
  %32 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %33 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %32, i32 0, i32 5
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %33, align 8
  store %struct.ieee80211_hw* %34, %struct.ieee80211_hw** %14, align 8
  %35 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 512, i32* %23, align 4
  %45 = load i32, i32* %18, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  %48 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  store i32 %48, i32* %19, align 4
  br label %51

49:                                               ; preds = %3
  %50 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %50, i32* %19, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @ATH9K_RX_QUEUE_HP, align 4
  br label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @ATH9K_RX_QUEUE_LP, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %17, align 4
  %60 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %61 = call i32 @ath9k_hw_gettsf64(%struct.ath_hw* %60)
  store i32 %61, i32* %20, align 4
  br label %62

62:                                               ; preds = %399, %58
  store i32 0, i32* %25, align 4
  %63 = bitcast %struct.ath_rx_status* %16 to %struct.ieee80211_rx_status*
  %64 = call i32 @memset(%struct.ieee80211_rx_status* %63, i32 0, i32 24)
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %69 = bitcast %struct.ath_rx_status* %16 to %struct.ieee80211_rx_status*
  %70 = load i32, i32* %17, align 4
  %71 = call %struct.ath_rxbuf* @ath_edma_get_next_rx_buf(%struct.ath_softc* %68, %struct.ieee80211_rx_status* %69, i32 %70)
  store %struct.ath_rxbuf* %71, %struct.ath_rxbuf** %7, align 8
  br label %76

72:                                               ; preds = %62
  %73 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %74 = bitcast %struct.ath_rx_status* %16 to %struct.ieee80211_rx_status*
  %75 = call %struct.ath_rxbuf* @ath_get_next_rx_buf(%struct.ath_softc* %73, %struct.ieee80211_rx_status* %74)
  store %struct.ath_rxbuf* %75, %struct.ath_rxbuf** %7, align 8
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %7, align 8
  %78 = icmp ne %struct.ath_rxbuf* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  br label %400

80:                                               ; preds = %76
  %81 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %7, align 8
  %82 = getelementptr inbounds %struct.ath_rxbuf, %struct.ath_rxbuf* %81, i32 0, i32 2
  %83 = load %struct.sk_buff*, %struct.sk_buff** %82, align 8
  store %struct.sk_buff* %83, %struct.sk_buff** %8, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = icmp ne %struct.sk_buff* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  br label %399

87:                                               ; preds = %80
  %88 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %89 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load %struct.sk_buff*, %struct.sk_buff** %90, align 8
  %92 = icmp ne %struct.sk_buff* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %95 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load %struct.sk_buff*, %struct.sk_buff** %96, align 8
  store %struct.sk_buff* %97, %struct.sk_buff** %10, align 8
  br label %100

98:                                               ; preds = %87
  %99 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %99, %struct.sk_buff** %10, align 8
  br label %100

100:                                              ; preds = %98, %93
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %102 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %101)
  store %struct.ieee80211_rx_status* %102, %struct.ieee80211_rx_status** %11, align 8
  %103 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %104 = call i32 @memset(%struct.ieee80211_rx_status* %103, i32 0, i32 24)
  %105 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %107 = bitcast %struct.ath_rx_status* %16 to %struct.ieee80211_rx_status*
  %108 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %109 = load i32, i32* %20, align 4
  %110 = call i32 @ath9k_rx_skb_preprocess(%struct.ath_softc* %105, %struct.sk_buff* %106, %struct.ieee80211_rx_status* %107, %struct.ieee80211_rx_status* %108, i32* %25, i32 %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  br label %349

114:                                              ; preds = %100
  %115 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %116 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %117 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @GFP_ATOMIC, align 4
  %120 = call %struct.sk_buff* @ath_rxbuf_alloc(%struct.ath_common* %115, i32 %118, i32 %119)
  store %struct.sk_buff* %120, %struct.sk_buff** %9, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %122 = icmp ne %struct.sk_buff* %121, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %114
  %124 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %125 = load i32, i32* @rx_oom_err, align 4
  %126 = call i32 @RX_STAT_INC(%struct.ath_softc* %124, i32 %125)
  br label %349

127:                                              ; preds = %114
  %128 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %129 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %135 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %19, align 4
  %138 = call i32 @dma_map_single(i32 %130, i64 %133, i32 %136, i32 %137)
  store i32 %138, i32* %22, align 4
  %139 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %140 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %22, align 4
  %143 = call i32 @dma_mapping_error(i32 %141, i32 %142)
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %127
  %147 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %148 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %147)
  br label %349

149:                                              ; preds = %127
  %150 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %151 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %7, align 8
  %154 = getelementptr inbounds %struct.ath_rxbuf, %struct.ath_rxbuf* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %157 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @dma_unmap_single(i32 %152, i32 %155, i32 %158, i32 %159)
  %161 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %162 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %7, align 8
  %163 = getelementptr inbounds %struct.ath_rxbuf, %struct.ath_rxbuf* %162, i32 0, i32 2
  store %struct.sk_buff* %161, %struct.sk_buff** %163, align 8
  %164 = load i32, i32* %22, align 4
  %165 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %7, align 8
  %166 = getelementptr inbounds %struct.ath_rxbuf, %struct.ath_rxbuf* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %168 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %16, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %171 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %169, %173
  %175 = call i32 @skb_put(%struct.sk_buff* %167, i32 %174)
  %176 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %177 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %149
  %182 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %183 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %184 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @skb_pull(%struct.sk_buff* %182, i32 %186)
  br label %188

188:                                              ; preds = %181, %149
  %189 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %16, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %199, label %192

192:                                              ; preds = %188
  %193 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %195 = bitcast %struct.ath_rx_status* %16 to %struct.ieee80211_rx_status*
  %196 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %197 = load i32, i32* %25, align 4
  %198 = call i32 @ath9k_cmn_rx_skb_postprocess(%struct.ath_common* %193, %struct.sk_buff* %194, %struct.ieee80211_rx_status* %195, %struct.ieee80211_rx_status* %196, i32 %197)
  br label %199

199:                                              ; preds = %192, %188
  %200 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %16, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %228

203:                                              ; preds = %199
  %204 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %205 = load i32, i32* @rx_frags, align 4
  %206 = call i32 @RX_STAT_INC(%struct.ath_softc* %204, i32 %205)
  %207 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %208 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load %struct.sk_buff*, %struct.sk_buff** %209, align 8
  %211 = icmp ne %struct.sk_buff* %210, null
  br i1 %211, label %212, label %223

212:                                              ; preds = %203
  %213 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %214 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  %216 = load %struct.sk_buff*, %struct.sk_buff** %215, align 8
  %217 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %216)
  %218 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %219 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %218)
  %220 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %221 = load i32, i32* @rx_too_many_frags_err, align 4
  %222 = call i32 @RX_STAT_INC(%struct.ath_softc* %220, i32 %221)
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %223

223:                                              ; preds = %212, %203
  %224 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %225 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %226 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 1
  store %struct.sk_buff* %224, %struct.sk_buff** %227, align 8
  br label %365

228:                                              ; preds = %199
  %229 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %230 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = load %struct.sk_buff*, %struct.sk_buff** %231, align 8
  %233 = icmp ne %struct.sk_buff* %232, null
  br i1 %233, label %234, label %269

234:                                              ; preds = %228
  %235 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %236 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %239 = call i32 @skb_tailroom(%struct.sk_buff* %238)
  %240 = sub nsw i32 %237, %239
  store i32 %240, i32* %26, align 4
  %241 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %242 = load i32, i32* %26, align 4
  %243 = load i32, i32* @GFP_ATOMIC, align 4
  %244 = call i64 @pskb_expand_head(%struct.sk_buff* %241, i32 0, i32 %242, i32 %243)
  %245 = icmp slt i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %234
  %247 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %248 = call i32 @dev_kfree_skb(%struct.sk_buff* %247)
  %249 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %250 = load i32, i32* @rx_oom_err, align 4
  %251 = call i32 @RX_STAT_INC(%struct.ath_softc* %249, i32 %250)
  br label %349

252:                                              ; preds = %234
  %253 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %254 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %255, align 8
  %256 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %257 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %258 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %259 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @skb_put(%struct.sk_buff* %257, i32 %260)
  %262 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %263 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %256, i32 %261, i32 %264)
  %266 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %267 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %266)
  %268 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %268, %struct.sk_buff** %8, align 8
  br label %269

269:                                              ; preds = %252, %228
  %270 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %271 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %269
  %277 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %278 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %279 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = sub nsw i32 %280, 8
  %282 = call i32 @skb_trim(%struct.sk_buff* %277, i32 %281)
  br label %283

283:                                              ; preds = %276, %269
  %284 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %285 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %284, i32 0, i32 3
  %286 = load i64, i64* %21, align 8
  %287 = call i32 @spin_lock_irqsave(i32* %285, i64 %286)
  %288 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %289 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %292 = load i32, i32* @PS_WAIT_FOR_CAB, align 4
  %293 = or i32 %291, %292
  %294 = load i32, i32* @PS_WAIT_FOR_PSPOLL_DATA, align 4
  %295 = or i32 %293, %294
  %296 = and i32 %290, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %302, label %298

298:                                              ; preds = %283
  %299 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %300 = call i64 @ath9k_check_auto_sleep(%struct.ath_softc* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %298, %283
  %303 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %304 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %305 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %16, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @ath_rx_ps(%struct.ath_softc* %303, %struct.sk_buff* %304, i32 %306)
  br label %308

308:                                              ; preds = %302, %298
  %309 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %310 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %309, i32 0, i32 3
  %311 = load i64, i64* %21, align 8
  %312 = call i32 @spin_unlock_irqrestore(i32* %310, i64 %311)
  %313 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %314 = bitcast %struct.ath_rx_status* %16 to %struct.ieee80211_rx_status*
  %315 = call i32 @ath9k_antenna_check(%struct.ath_softc* %313, %struct.ieee80211_rx_status* %314)
  %316 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %317 = bitcast %struct.ath_rx_status* %16 to %struct.ieee80211_rx_status*
  %318 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %319 = call i32 @ath9k_apply_ampdu_details(%struct.ath_softc* %316, %struct.ieee80211_rx_status* %317, %struct.ieee80211_rx_status* %318)
  %320 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %321 = bitcast %struct.ath_rx_status* %16 to %struct.ieee80211_rx_status*
  %322 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %323 = call i32 @ath_debug_rate_stats(%struct.ath_softc* %320, %struct.ieee80211_rx_status* %321, %struct.sk_buff* %322)
  %324 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %325 = bitcast %struct.ath_rx_status* %16 to %struct.ieee80211_rx_status*
  %326 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %327 = call i32 @ath_rx_count_airtime(%struct.ath_softc* %324, %struct.ieee80211_rx_status* %325, %struct.sk_buff* %326)
  %328 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %329 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = inttoptr i64 %330 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %331, %struct.ieee80211_hdr** %24, align 8
  %332 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %24, align 8
  %333 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i64 @ieee80211_is_ack(i32 %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %345

337:                                              ; preds = %308
  %338 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %339 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %338, i32 0, i32 2
  %340 = load %struct.ath_hw*, %struct.ath_hw** %339, align 8
  %341 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %342 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %16, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @ath_dynack_sample_ack_ts(%struct.ath_hw* %340, %struct.sk_buff* %341, i32 %343)
  br label %345

345:                                              ; preds = %337, %308
  %346 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %14, align 8
  %347 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %348 = call i32 @ieee80211_rx(%struct.ieee80211_hw* %346, %struct.sk_buff* %347)
  br label %349

349:                                              ; preds = %345, %246, %146, %123, %113
  %350 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %351 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 1
  %353 = load %struct.sk_buff*, %struct.sk_buff** %352, align 8
  %354 = icmp ne %struct.sk_buff* %353, null
  br i1 %354, label %355, label %364

355:                                              ; preds = %349
  %356 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %357 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 1
  %359 = load %struct.sk_buff*, %struct.sk_buff** %358, align 8
  %360 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %359)
  %361 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %362 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %363, align 8
  br label %364

364:                                              ; preds = %355, %349
  br label %365

365:                                              ; preds = %364, %223
  %366 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %7, align 8
  %367 = getelementptr inbounds %struct.ath_rxbuf, %struct.ath_rxbuf* %366, i32 0, i32 0
  %368 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %369 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 0
  %371 = call i32 @list_add_tail(i32* %367, i32* %370)
  %372 = load i32, i32* %18, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %385, label %374

374:                                              ; preds = %365
  %375 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %376 = load %struct.ath_rxbuf*, %struct.ath_rxbuf** %7, align 8
  %377 = load i32, i32* %5, align 4
  %378 = call i32 @ath_rx_buf_relink(%struct.ath_softc* %375, %struct.ath_rxbuf* %376, i32 %377)
  %379 = load i32, i32* %5, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %384, label %381

381:                                              ; preds = %374
  %382 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %383 = call i32 @ath9k_hw_rxena(%struct.ath_hw* %382)
  br label %384

384:                                              ; preds = %381, %374
  br label %393

385:                                              ; preds = %365
  %386 = load i32, i32* %5, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %392, label %388

388:                                              ; preds = %385
  %389 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %390 = load i32, i32* %17, align 4
  %391 = call i32 @ath_rx_edma_buf_link(%struct.ath_softc* %389, i32 %390)
  br label %392

392:                                              ; preds = %388, %385
  br label %393

393:                                              ; preds = %392, %384
  %394 = load i32, i32* %23, align 4
  %395 = add i32 %394, -1
  store i32 %395, i32* %23, align 4
  %396 = icmp ne i32 %394, 0
  br i1 %396, label %398, label %397

397:                                              ; preds = %393
  br label %400

398:                                              ; preds = %393
  br label %399

399:                                              ; preds = %398, %86
  br i1 true, label %62, label %400

400:                                              ; preds = %399, %397, %79
  %401 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %402 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @ATH9K_INT_RXEOL, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %417, label %407

407:                                              ; preds = %400
  %408 = load i32, i32* @ATH9K_INT_RXEOL, align 4
  %409 = load i32, i32* @ATH9K_INT_RXORN, align 4
  %410 = or i32 %408, %409
  %411 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %412 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = or i32 %413, %410
  store i32 %414, i32* %412, align 4
  %415 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %416 = call i32 @ath9k_hw_set_interrupts(%struct.ath_hw* %415)
  br label %417

417:                                              ; preds = %407, %400
  ret i32 0
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_gettsf64(%struct.ath_hw*) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local %struct.ath_rxbuf* @ath_edma_get_next_rx_buf(%struct.ath_softc*, %struct.ieee80211_rx_status*, i32) #1

declare dso_local %struct.ath_rxbuf* @ath_get_next_rx_buf(%struct.ath_softc*, %struct.ieee80211_rx_status*) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ath9k_rx_skb_preprocess(%struct.ath_softc*, %struct.sk_buff*, %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status*, i32*, i32) #1

declare dso_local %struct.sk_buff* @ath_rxbuf_alloc(%struct.ath_common*, i32, i32) #1

declare dso_local i32 @RX_STAT_INC(%struct.ath_softc*, i32) #1

declare dso_local i32 @dma_map_single(i32, i64, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ath9k_cmn_rx_skb_postprocess(%struct.ath_common*, %struct.sk_buff*, %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ath9k_check_auto_sleep(%struct.ath_softc*) #1

declare dso_local i32 @ath_rx_ps(%struct.ath_softc*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ath9k_antenna_check(%struct.ath_softc*, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @ath9k_apply_ampdu_details(%struct.ath_softc*, %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @ath_debug_rate_stats(%struct.ath_softc*, %struct.ieee80211_rx_status*, %struct.sk_buff*) #1

declare dso_local i32 @ath_rx_count_airtime(%struct.ath_softc*, %struct.ieee80211_rx_status*, %struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_ack(i32) #1

declare dso_local i32 @ath_dynack_sample_ack_ts(%struct.ath_hw*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_rx(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ath_rx_buf_relink(%struct.ath_softc*, %struct.ath_rxbuf*, i32) #1

declare dso_local i32 @ath9k_hw_rxena(%struct.ath_hw*) #1

declare dso_local i32 @ath_rx_edma_buf_link(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_hw_set_interrupts(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
