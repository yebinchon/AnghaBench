; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_generate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_buf = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { %struct.TYPE_10__*, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.ath_txq* }
%struct.ath_txq = type { i32, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ath_common = type { i32 }
%struct.ath_vif = type { i32, %struct.ath_buf* }
%struct.ieee80211_tx_info = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"dma_mapping_error on beaconing\0A\00", align 1
@BEACON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Flushing previous cabq traffic\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ath_buf* (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ath9k_beacon_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ath_buf* @ath9k_beacon_generate(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ath_buf*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca %struct.ath_buf*, align 8
  %9 = alloca %struct.ath_vif*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ath_txq*, align 8
  %12 = alloca %struct.ieee80211_tx_info*, align 8
  %13 = alloca %struct.ieee80211_mgmt*, align 8
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.ath_softc*, %struct.ath_softc** %16, align 8
  store %struct.ath_softc* %17, %struct.ath_softc** %6, align 8
  %18 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.ath_common* @ath9k_hw_common(i32 %20)
  store %struct.ath_common* %21, %struct.ath_common** %7, align 8
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.ath_vif*
  store %struct.ath_vif* %26, %struct.ath_vif** %9, align 8
  %27 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.ath_txq*, %struct.ath_txq** %29, align 8
  store %struct.ath_txq* %30, %struct.ath_txq** %11, align 8
  %31 = load %struct.ath_vif*, %struct.ath_vif** %9, align 8
  %32 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %31, i32 0, i32 1
  %33 = load %struct.ath_buf*, %struct.ath_buf** %32, align 8
  %34 = icmp eq %struct.ath_buf* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store %struct.ath_buf* null, %struct.ath_buf** %3, align 8
  br label %183

36:                                               ; preds = %2
  %37 = load %struct.ath_vif*, %struct.ath_vif** %9, align 8
  %38 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %37, i32 0, i32 1
  %39 = load %struct.ath_buf*, %struct.ath_buf** %38, align 8
  store %struct.ath_buf* %39, %struct.ath_buf** %8, align 8
  %40 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %41 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %40, i32 0, i32 1
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %10, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %45, label %63

45:                                               ; preds = %36
  %46 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %47 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %50 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DMA_TO_DEVICE, align 4
  %56 = call i32 @dma_unmap_single(i32 %48, i64 %51, i32 %54, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %57)
  %59 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %60 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %62 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %61, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %62, align 8
  br label %63

63:                                               ; preds = %45, %36
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %66 = call %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw* %64, %struct.ieee80211_vif* %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %10, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = icmp eq %struct.sk_buff* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store %struct.ath_buf* null, %struct.ath_buf** %3, align 8
  br label %183

70:                                               ; preds = %63
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %73 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %72, i32 0, i32 1
  store %struct.sk_buff* %71, %struct.sk_buff** %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %77, %struct.ieee80211_mgmt** %13, align 8
  %78 = load %struct.ath_vif*, %struct.ath_vif** %9, align 8
  %79 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %82 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %86 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %85)
  store %struct.ieee80211_tx_info* %86, %struct.ieee80211_tx_info** %12, align 8
  %87 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %89 = call i32 @ath_assign_seq(%struct.ath_common* %87, %struct.sk_buff* %88)
  %90 = call i64 (...) @ath9k_is_chanctx_enabled()
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %70
  %93 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %94 = load %struct.ath_vif*, %struct.ath_vif** %9, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %96 = call i32 @ath9k_beacon_add_noa(%struct.ath_softc* %93, %struct.ath_vif* %94, %struct.sk_buff* %95)
  br label %97

97:                                               ; preds = %92, %70
  %98 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %99 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @DMA_TO_DEVICE, align 4
  %108 = call i64 @dma_map_single(i32 %100, i64 %103, i32 %106, i32 %107)
  %109 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %110 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %112 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %115 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @dma_mapping_error(i32 %113, i64 %116)
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %97
  %121 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %122 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %121)
  %123 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %124 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %123, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %124, align 8
  %125 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %126 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %128 = call i32 @ath_err(%struct.ath_common* %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.ath_buf* null, %struct.ath_buf** %3, align 8
  br label %183

129:                                              ; preds = %97
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %131 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %132 = call %struct.sk_buff* @ieee80211_get_buffered_bc(%struct.ieee80211_hw* %130, %struct.ieee80211_vif* %131)
  store %struct.sk_buff* %132, %struct.sk_buff** %10, align 8
  %133 = load %struct.ath_txq*, %struct.ath_txq** %11, align 8
  %134 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %133, i32 0, i32 1
  %135 = call i32 @spin_lock_bh(i32* %134)
  %136 = load %struct.ath_txq*, %struct.ath_txq** %11, align 8
  %137 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %14, align 4
  %139 = load %struct.ath_txq*, %struct.ath_txq** %11, align 8
  %140 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %139, i32 0, i32 1
  %141 = call i32 @spin_unlock_bh(i32* %140)
  %142 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %143 = icmp ne %struct.sk_buff* %142, null
  br i1 %143, label %144, label %162

144:                                              ; preds = %129
  %145 = load i32, i32* %14, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %144
  %148 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %149 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %148, i32 0, i32 0
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %152, 1
  br i1 %153, label %154, label %161

154:                                              ; preds = %147
  %155 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %156 = load i32, i32* @BEACON, align 4
  %157 = call i32 @ath_dbg(%struct.ath_common* %155, i32 %156, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %158 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %159 = load %struct.ath_txq*, %struct.ath_txq** %11, align 8
  %160 = call i32 @ath_draintxq(%struct.ath_softc* %158, %struct.ath_txq* %159)
  br label %161

161:                                              ; preds = %154, %147
  br label %162

162:                                              ; preds = %161, %144, %129
  %163 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %164 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %165 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %166 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %167 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i64 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ath9k_beacon_setup(%struct.ath_softc* %163, %struct.ieee80211_vif* %164, %struct.ath_buf* %165, i32 %172)
  %174 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %175 = icmp ne %struct.sk_buff* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %162
  %177 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %178 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %180 = call i32 @ath_tx_cabq(%struct.ieee80211_hw* %177, %struct.ieee80211_vif* %178, %struct.sk_buff* %179)
  br label %181

181:                                              ; preds = %176, %162
  %182 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  store %struct.ath_buf* %182, %struct.ath_buf** %3, align 8
  br label %183

183:                                              ; preds = %181, %120, %69, %35
  %184 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  ret %struct.ath_buf* %184
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ath_assign_seq(%struct.ath_common*, %struct.sk_buff*) #1

declare dso_local i64 @ath9k_is_chanctx_enabled(...) #1

declare dso_local i32 @ath9k_beacon_add_noa(%struct.ath_softc*, %struct.ath_vif*, %struct.sk_buff*) #1

declare dso_local i64 @dma_map_single(i32, i64, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local %struct.sk_buff* @ieee80211_get_buffered_bc(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ath_draintxq(%struct.ath_softc*, %struct.ath_txq*) #1

declare dso_local i32 @ath9k_beacon_setup(%struct.ath_softc*, %struct.ieee80211_vif*, %struct.ath_buf*, i32) #1

declare dso_local i32 @ath_tx_cabq(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
