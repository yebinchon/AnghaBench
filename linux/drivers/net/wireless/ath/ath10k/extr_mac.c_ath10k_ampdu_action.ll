; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_ampdu_params = type { i32, i32, %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i32 }
%struct.ath10k_vif = type { i32 }

@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"mac ampdu vdev_id %i sta %pM tid %hu action %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_ampdu_params*)* @ath10k_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_ampdu_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_ampdu_params*, align 8
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca %struct.ath10k_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_ampdu_params* %2, %struct.ieee80211_ampdu_params** %7, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.ath10k*, %struct.ath10k** %14, align 8
  store %struct.ath10k* %15, %struct.ath10k** %8, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %20, %struct.ath10k_vif** %9, align 8
  %21 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %21, i32 0, i32 2
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %22, align 8
  store %struct.ieee80211_sta* %23, %struct.ieee80211_sta** %10, align 8
  %24 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %31 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %32 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %33 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @ath10k_dbg(%struct.ath10k* %30, i32 %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %11, align 4
  switch i32 %41, label %46 [
    i32 134, label %42
    i32 133, label %42
    i32 131, label %43
    i32 130, label %43
    i32 129, label %43
    i32 128, label %43
    i32 132, label %43
  ]

42:                                               ; preds = %3, %3
  store i32 0, i32* %4, align 4
  br label %49

43:                                               ; preds = %3, %3, %3, %3, %3
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %43, %42
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
