; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_vht_highest_rx_mcs_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_vht_highest_rx_mcs_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta_vht_cap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_VHT_MCS_SUPPORT_0_7 = common dso_local global i32 0, align 4
@IWL_RATE_MCS_7_INDEX = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_SUPPORT_0_8 = common dso_local global i32 0, align 4
@IWL_RATE_MCS_8_INDEX = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_SUPPORT_0_9 = common dso_local global i32 0, align 4
@IWL_RATE_MCS_9_INDEX = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sta_vht_cap*, i32)* @rs_vht_highest_rx_mcs_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_vht_highest_rx_mcs_index(%struct.ieee80211_sta_vht_cap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_sta_vht_cap* %0, %struct.ieee80211_sta_vht_cap** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le16_to_cpu(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %12, 1
  %14 = mul nsw i32 2, %13
  %15 = shl i32 3, %14
  %16 = and i32 %11, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 1
  %19 = mul nsw i32 2, %18
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_7, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @IWL_RATE_MCS_7_INDEX, align 4
  store i32 %26, i32* %3, align 4
  br label %47

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_8, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @IWL_RATE_MCS_8_INDEX, align 4
  store i32 %32, i32* %3, align 4
  br label %47

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_9, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @IWL_RATE_MCS_9_INDEX, align 4
  store i32 %38, i32* %3, align 4
  br label %47

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %44 = icmp ne i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON_ONCE(i32 %45)
  store i32 -1, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %37, %31, %25
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
