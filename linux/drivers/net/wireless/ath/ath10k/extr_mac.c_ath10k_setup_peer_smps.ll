; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_setup_peer_smps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_setup_peer_smps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_vif = type { i32 }
%struct.ieee80211_sta_ht_cap = type { i32, i32 }

@IEEE80211_HT_CAP_SM_PS = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SM_PS_SHIFT = common dso_local global i32 0, align 4
@ath10k_smps_map = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@WMI_PEER_SMPS_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_vif*, i32*, %struct.ieee80211_sta_ht_cap*)* @ath10k_setup_peer_smps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_setup_peer_smps(%struct.ath10k* %0, %struct.ath10k_vif* %1, i32* %2, %struct.ieee80211_sta_ht_cap* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ath10k_vif*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store %struct.ath10k_vif* %1, %struct.ath10k_vif** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.ieee80211_sta_ht_cap* %3, %struct.ieee80211_sta_ht_cap** %9, align 8
  %11 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

16:                                               ; preds = %4
  %17 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_HT_CAP_SM_PS, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @IEEE80211_HT_CAP_SM_PS_SHIFT, align 4
  %23 = load i32, i32* %10, align 4
  %24 = ashr i32 %23, %22
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32*, i32** @ath10k_smps_map, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = icmp sge i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %45

32:                                               ; preds = %16
  %33 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %34 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %35 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* @WMI_PEER_SMPS_STATE, align 4
  %39 = load i32*, i32** @ath10k_smps_map, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ath10k_wmi_peer_set_param(%struct.ath10k* %33, i32 %36, i32* %37, i32 %38, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %32, %29, %15
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ath10k_wmi_peer_set_param(%struct.ath10k*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
