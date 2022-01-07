; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.mt76_dev*, %struct.mt76_queue*)*, i32 (%struct.mt76_dev*, i32, %struct.sk_buff*, %struct.mt76_wcid*, %struct.ieee80211_sta*)* }
%struct.mt76_queue = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.mt76_queue* }
%struct.ieee80211_sta = type { %struct.ieee80211_txq** }
%struct.ieee80211_txq = type { i64 }
%struct.mt76_wcid = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.mt76_txq = type { i64 }

@MT_TXQ_PSD = common dso_local global i32 0, align 4
@MT_TXQ_BE = common dso_local global i32 0, align 4
@MT_WCID_TX_INFO_SET = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_tx(%struct.mt76_dev* %0, %struct.ieee80211_sta* %1, %struct.mt76_wcid* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.mt76_dev*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.mt76_wcid*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca %struct.mt76_queue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_txq*, align 8
  %14 = alloca %struct.mt76_txq*, align 8
  %15 = alloca i64, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store %struct.mt76_wcid* %2, %struct.mt76_wcid** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %16)
  store %struct.ieee80211_tx_info* %17, %struct.ieee80211_tx_info** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %21, %struct.ieee80211_hdr** %10, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @MT_TXQ_PSD, align 4
  %26 = icmp sge i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load i32, i32* @MT_TXQ_BE, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %4
  %36 = load %struct.mt76_wcid*, %struct.mt76_wcid** %7, align 8
  %37 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MT_WCID_TX_INFO_SET, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %35
  %43 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %50 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ieee80211_get_tx_rates(i32 %46, %struct.ieee80211_sta* %47, %struct.sk_buff* %48, i32 %52, i32 1)
  br label %54

54:                                               ; preds = %42, %35
  %55 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %56 = icmp ne %struct.ieee80211_sta* %55, null
  br i1 %56, label %57, label %88

57:                                               ; preds = %54
  %58 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %59 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ieee80211_is_data_qos(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %57
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IEEE80211_QOS_CTL_TID_MASK, align 8
  %68 = and i64 %66, %67
  store i64 %68, i64* %15, align 8
  %69 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %69, i32 0, i32 0
  %71 = load %struct.ieee80211_txq**, %struct.ieee80211_txq*** %70, align 8
  %72 = load i64, i64* %15, align 8
  %73 = getelementptr inbounds %struct.ieee80211_txq*, %struct.ieee80211_txq** %71, i64 %72
  %74 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %73, align 8
  store %struct.ieee80211_txq* %74, %struct.ieee80211_txq** %13, align 8
  %75 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %13, align 8
  %76 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.mt76_txq*
  store %struct.mt76_txq* %78, %struct.mt76_txq** %14, align 8
  %79 = load %struct.mt76_txq*, %struct.mt76_txq** %14, align 8
  %80 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %63
  %84 = load %struct.mt76_txq*, %struct.mt76_txq** %14, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = call i32 @mt76_check_agg_ssn(%struct.mt76_txq* %84, %struct.sk_buff* %85)
  br label %87

87:                                               ; preds = %83, %63
  br label %88

88:                                               ; preds = %87, %57, %54
  %89 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %90 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %89, i32 0, i32 2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.mt76_queue*, %struct.mt76_queue** %95, align 8
  store %struct.mt76_queue* %96, %struct.mt76_queue** %11, align 8
  %97 = load %struct.mt76_queue*, %struct.mt76_queue** %11, align 8
  %98 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %97, i32 0, i32 3
  %99 = call i32 @spin_lock_bh(i32* %98)
  %100 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %101 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32 (%struct.mt76_dev*, i32, %struct.sk_buff*, %struct.mt76_wcid*, %struct.ieee80211_sta*)*, i32 (%struct.mt76_dev*, i32, %struct.sk_buff*, %struct.mt76_wcid*, %struct.ieee80211_sta*)** %103, align 8
  %105 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = load %struct.mt76_wcid*, %struct.mt76_wcid** %7, align 8
  %109 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %110 = call i32 %104(%struct.mt76_dev* %105, i32 %106, %struct.sk_buff* %107, %struct.mt76_wcid* %108, %struct.ieee80211_sta* %109)
  %111 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %112 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32 (%struct.mt76_dev*, %struct.mt76_queue*)*, i32 (%struct.mt76_dev*, %struct.mt76_queue*)** %114, align 8
  %116 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %117 = load %struct.mt76_queue*, %struct.mt76_queue** %11, align 8
  %118 = call i32 %115(%struct.mt76_dev* %116, %struct.mt76_queue* %117)
  %119 = load %struct.mt76_queue*, %struct.mt76_queue** %11, align 8
  %120 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.mt76_queue*, %struct.mt76_queue** %11, align 8
  %123 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 8
  %126 = icmp sgt i32 %121, %125
  br i1 %126, label %127, label %141

127:                                              ; preds = %88
  %128 = load %struct.mt76_queue*, %struct.mt76_queue** %11, align 8
  %129 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %127
  %133 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %134 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %137 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %136)
  %138 = call i32 @ieee80211_stop_queue(i32 %135, i32 %137)
  %139 = load %struct.mt76_queue*, %struct.mt76_queue** %11, align 8
  %140 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %139, i32 0, i32 2
  store i32 1, i32* %140, align 4
  br label %141

141:                                              ; preds = %132, %127, %88
  %142 = load %struct.mt76_queue*, %struct.mt76_queue** %11, align 8
  %143 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %142, i32 0, i32 3
  %144 = call i32 @spin_unlock_bh(i32* %143)
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_get_tx_rates(i32, %struct.ieee80211_sta*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @mt76_check_agg_ssn(%struct.mt76_txq*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ieee80211_stop_queue(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
