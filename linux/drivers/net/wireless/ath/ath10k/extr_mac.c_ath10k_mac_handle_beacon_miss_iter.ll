; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_handle_beacon_miss_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_handle_beacon_miss_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64 }
%struct.ath10k_vif = type { i64, i32, i32, %struct.ath10k* }
%struct.ath10k = type { %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { i32 }

@ATH10K_CONNECTION_LOSS_HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @ath10k_mac_handle_beacon_miss_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_mac_handle_beacon_miss_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ath10k_vif*, align 8
  %9 = alloca %struct.ath10k*, align 8
  %10 = alloca %struct.ieee80211_hw*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %7, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %17, %struct.ath10k_vif** %8, align 8
  %18 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %19 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %18, i32 0, i32 3
  %20 = load %struct.ath10k*, %struct.ath10k** %19, align 8
  store %struct.ath10k* %20, %struct.ath10k** %9, align 8
  %21 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 0
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %22, align 8
  store %struct.ieee80211_hw* %23, %struct.ieee80211_hw** %10, align 8
  %24 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %25 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %45

31:                                               ; preds = %3
  %32 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %33 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %45

37:                                               ; preds = %31
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %39 = call i32 @ieee80211_beacon_loss(%struct.ieee80211_vif* %38)
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %41 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %42 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %41, i32 0, i32 1
  %43 = load i32, i32* @ATH10K_CONNECTION_LOSS_HZ, align 4
  %44 = call i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw* %40, i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %37, %36, %30
  ret void
}

declare dso_local i32 @ieee80211_beacon_loss(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
