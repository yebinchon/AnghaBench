; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hdl_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hdl_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, %struct.il_tx_queue* }
%struct.il_tx_queue = type { %struct.TYPE_10__, i32*, i32 }
%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.il_rx_buf = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_tx_info = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.il3945_tx_resp = type { i32, i32, i32 }

@.str = private unnamed_addr constant [72 x i8] c"Read idx for DMA queue txq_id (%d) idx %d is out of range [0-%d] %d %d\0A\00", align 1
@TX_STATUS_MSK = common dso_local global i32 0, align 4
@TX_STATUS_FAIL_PASSIVE_NO_RX = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IL_STOP_REASON_PASSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Stopped queues - RX waiting on passive channel\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IL_FIRST_OFDM_RATE = common dso_local global i64 0, align 8
@TX_STATUS_SUCCESS = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Tx queue %d Status %s (0x%08x) plcp rate %d retries %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Tx queue reclaim %d\0A\00", align 1
@TX_ABORT_REQUIRED_MSK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"TODO:  Implement Tx ABORT REQUIRED!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_rx_buf*)* @il3945_hdl_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_hdl_tx(%struct.il_priv* %0, %struct.il_rx_buf* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_buf*, align 8
  %5 = alloca %struct.il_rx_pkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.il_tx_queue*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca %struct.il3945_tx_resp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %4, align 8
  %15 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %16 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %15)
  store %struct.il_rx_pkt* %16, %struct.il_rx_pkt** %5, align 8
  %17 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %18 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @SEQ_TO_QUEUE(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @SEQ_TO_IDX(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 1
  %28 = load %struct.il_tx_queue*, %struct.il_tx_queue** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %28, i64 %30
  store %struct.il_tx_queue* %31, %struct.il_tx_queue** %9, align 8
  %32 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %33 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = bitcast i32* %36 to i8*
  %38 = bitcast i8* %37 to %struct.il3945_tx_resp*
  store %struct.il3945_tx_resp* %38, %struct.il3945_tx_resp** %11, align 8
  %39 = load %struct.il3945_tx_resp*, %struct.il3945_tx_resp** %11, align 8
  %40 = getelementptr inbounds %struct.il3945_tx_resp, %struct.il3945_tx_resp* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %45 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %43, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %2
  %50 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %51 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %50, i32 0, i32 0
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @il_queue_used(%struct.TYPE_10__* %51, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %49, %2
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %59 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %63 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %67 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i32 %61, i32 %65, i64 %69)
  br label %178

71:                                               ; preds = %49
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @TX_STATUS_MSK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @TX_STATUS_FAIL_PASSIVE_NO_RX, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %71
  %81 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %82 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %88 = load i32, i32* @IL_STOP_REASON_PASSIVE, align 4
  %89 = call i32 @il_stop_queues_by_reason(%struct.il_priv* %87, i32 %88)
  %90 = call i32 @D_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %86, %80, %71
  %92 = load i32, i32* @jiffies, align 4
  %93 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %94 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %96 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %99 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32 %103)
  store %struct.ieee80211_tx_info* %104, %struct.ieee80211_tx_info** %10, align 8
  %105 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %106 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %105)
  %107 = load %struct.il3945_tx_resp*, %struct.il3945_tx_resp** %11, align 8
  %108 = getelementptr inbounds %struct.il3945_tx_resp, %struct.il3945_tx_resp* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @il3945_hwrate_to_plcp_idx(i32 %109)
  store i32 %110, i32* %13, align 4
  %111 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %112 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %91
  %117 = load i64, i64* @IL_FIRST_OFDM_RATE, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = sub nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %13, align 4
  br label %122

122:                                              ; preds = %116, %91
  %123 = load %struct.il3945_tx_resp*, %struct.il3945_tx_resp** %11, align 8
  %124 = getelementptr inbounds %struct.il3945_tx_resp, %struct.il3945_tx_resp* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %128 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  store i32 %126, i32* %132, align 4
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 1
  %135 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %136 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  store i32 %134, i32* %140, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @TX_STATUS_MSK, align 4
  %143 = and i32 %141, %142
  %144 = load i32, i32* @TX_STATUS_SUCCESS, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %122
  %147 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  br label %149

148:                                              ; preds = %122
  br label %149

149:                                              ; preds = %148, %146
  %150 = phi i32 [ %147, %146 ], [ 0, %148 ]
  %151 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %152 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @il3945_get_tx_fail_reason(i32 %156)
  %158 = load i32, i32* %12, align 4
  %159 = load %struct.il3945_tx_resp*, %struct.il3945_tx_resp** %11, align 8
  %160 = getelementptr inbounds %struct.il3945_tx_resp, %struct.il3945_tx_resp* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.il3945_tx_resp*, %struct.il3945_tx_resp** %11, align 8
  %163 = getelementptr inbounds %struct.il3945_tx_resp, %struct.il3945_tx_resp* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @D_TX(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %155, i32 %157, i32 %158, i32 %161, i32 %164)
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @D_TX_REPLY(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %166)
  %168 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @il3945_tx_queue_reclaim(%struct.il_priv* %168, i32 %169, i32 %170)
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @TX_ABORT_REQUIRED_MSK, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %149
  %177 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %178

178:                                              ; preds = %55, %176, %149
  ret void
}

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @SEQ_TO_QUEUE(i32) #1

declare dso_local i32 @SEQ_TO_IDX(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @il_queue_used(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @il_stop_queues_by_reason(%struct.il_priv*, i32) #1

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @il3945_hwrate_to_plcp_idx(i32) #1

declare dso_local i32 @D_TX(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @il3945_get_tx_fail_reason(i32) #1

declare dso_local i32 @D_TX_REPLY(i8*, i32) #1

declare dso_local i32 @il3945_tx_queue_reclaim(%struct.il_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
