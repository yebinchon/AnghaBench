; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_op_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_op_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar9170* }
%struct.ar9170 = type { i32, i32, i32* }
%struct.ieee80211_tx_control = type { %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32 }
%struct.carl9170_sta_info = type { i32 }

@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @carl9170_op_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ar9170*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.carl9170_sta_info*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.ar9170*, %struct.ar9170** %15, align 8
  store %struct.ar9170* %16, %struct.ar9170** %7, align 8
  %17 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %17, i32 0, i32 0
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %18, align 8
  store %struct.ieee80211_sta* %19, %struct.ieee80211_sta** %9, align 8
  %20 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %21 = call i32 @IS_STARTED(%struct.ar9170* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %99

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %29)
  store %struct.ieee80211_tx_info* %30, %struct.ieee80211_tx_info** %8, align 8
  %31 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %33, align 8
  store %struct.ieee80211_vif* %34, %struct.ieee80211_vif** %10, align 8
  %35 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %36 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @carl9170_tx_prepare(%struct.ar9170* %35, %struct.ieee80211_sta* %36, %struct.sk_buff* %37)
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %99

42:                                               ; preds = %28
  %43 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i32 @carl9170_tx_accounting(%struct.ar9170* %43, %struct.sk_buff* %44)
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %47 = icmp ne %struct.ieee80211_sta* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = bitcast i8* %52 to %struct.carl9170_sta_info*
  store %struct.carl9170_sta_info* %53, %struct.carl9170_sta_info** %12, align 8
  %54 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %12, align 8
  %55 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %54, i32 0, i32 0
  %56 = call i32 @atomic_inc(i32* %55)
  br label %57

57:                                               ; preds = %48, %42
  %58 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %66 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %69 = call i32 @carl9170_tx_ampdu_queue(%struct.ar9170* %65, %struct.ieee80211_sta* %66, %struct.sk_buff* %67, %struct.ieee80211_tx_info* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %74 = call i32 @carl9170_tx_ampdu(%struct.ar9170* %73)
  br label %75

75:                                               ; preds = %72, %64
  br label %96

76:                                               ; preds = %57
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %77)
  store i32 %78, i32* %13, align 4
  %79 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %80 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %81 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = call i32 @carl9170_tx_get_rates(%struct.ar9170* %79, %struct.ieee80211_vif* %80, %struct.ieee80211_sta* %81, %struct.sk_buff* %82)
  %84 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %85 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = call i32 @carl9170_tx_apply_rateset(%struct.ar9170* %84, %struct.ieee80211_tx_info* %85, %struct.sk_buff* %86)
  %88 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %89 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = call i32 @skb_queue_tail(i32* %93, %struct.sk_buff* %94)
  br label %96

96:                                               ; preds = %76, %75
  %97 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %98 = call i32 @carl9170_tx(%struct.ar9170* %97)
  br label %109

99:                                               ; preds = %41, %27
  %100 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %101 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %105 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = call i32 @ieee80211_free_txskb(i32 %106, %struct.sk_buff* %107)
  br label %109

109:                                              ; preds = %99, %96
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_STARTED(%struct.ar9170*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @carl9170_tx_prepare(%struct.ar9170*, %struct.ieee80211_sta*, %struct.sk_buff*) #1

declare dso_local i32 @carl9170_tx_accounting(%struct.ar9170*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @carl9170_tx_ampdu_queue(%struct.ar9170*, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @carl9170_tx_ampdu(%struct.ar9170*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @carl9170_tx_get_rates(%struct.ar9170*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.sk_buff*) #1

declare dso_local i32 @carl9170_tx_apply_rateset(%struct.ar9170*, %struct.ieee80211_tx_info*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @carl9170_tx(%struct.ar9170*) #1

declare dso_local i32 @ieee80211_free_txskb(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
