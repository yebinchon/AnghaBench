; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_beacon_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_beacon_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ath5k_vif = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_beacon_update(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath5k_hw*, align 8
  %7 = alloca %struct.ath5k_vif*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  store %struct.ath5k_hw* %11, %struct.ath5k_hw** %6, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %13 = icmp ne %struct.ieee80211_vif* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %51

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %24 = call %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw* %22, %struct.ieee80211_vif* %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %51

30:                                               ; preds = %21
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to %struct.ath5k_vif*
  store %struct.ath5k_vif* %35, %struct.ath5k_vif** %7, align 8
  %36 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %37 = load %struct.ath5k_vif*, %struct.ath5k_vif** %7, align 8
  %38 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 @ath5k_txbuf_free_skb(%struct.ath5k_hw* %36, %struct.TYPE_3__* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = load %struct.ath5k_vif*, %struct.ath5k_vif** %7, align 8
  %43 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store %struct.sk_buff* %41, %struct.sk_buff** %45, align 8
  %46 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %47 = load %struct.ath5k_vif*, %struct.ath5k_vif** %7, align 8
  %48 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 @ath5k_beacon_setup(%struct.ath5k_hw* %46, %struct.TYPE_3__* %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %30, %27, %18
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath5k_txbuf_free_skb(%struct.ath5k_hw*, %struct.TYPE_3__*) #1

declare dso_local i32 @ath5k_beacon_setup(%struct.ath5k_hw*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
