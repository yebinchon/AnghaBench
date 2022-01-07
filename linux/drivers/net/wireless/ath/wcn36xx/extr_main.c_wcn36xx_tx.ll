; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wcn36xx* }
%struct.wcn36xx = type { i32 }
%struct.ieee80211_tx_control = type { i64 }
%struct.sk_buff = type { i32 }
%struct.wcn36xx_sta = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @wcn36xx_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wcn36xx*, align 8
  %8 = alloca %struct.wcn36xx_sta*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.wcn36xx*, %struct.wcn36xx** %10, align 8
  store %struct.wcn36xx* %11, %struct.wcn36xx** %7, align 8
  store %struct.wcn36xx_sta* null, %struct.wcn36xx_sta** %8, align 8
  %12 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(i64 %19)
  store %struct.wcn36xx_sta* %20, %struct.wcn36xx_sta** %8, align 8
  br label %21

21:                                               ; preds = %16, %3
  %22 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %23 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i64 @wcn36xx_start_tx(%struct.wcn36xx* %22, %struct.wcn36xx_sta* %23, %struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %29 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @ieee80211_free_txskb(i32 %30, %struct.sk_buff* %31)
  br label %33

33:                                               ; preds = %27, %21
  ret void
}

declare dso_local %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(i64) #1

declare dso_local i64 @wcn36xx_start_tx(%struct.wcn36xx*, %struct.wcn36xx_sta*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_free_txskb(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
