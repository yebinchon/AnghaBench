; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_sta_set_txpwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_sta_set_txpwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ath10k_vif = type { i32 }

@NL80211_TX_POWER_AUTOMATIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ATH10K_TX_POWER_MAX_VAL = common dso_local global i64 0, align 8
@ATH10K_TX_POWER_MIN_VAL = common dso_local global i64 0, align 8
@WMI_PEER_USE_FIXED_PWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to set tx power for station ret: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @ath10k_sta_set_txpwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sta_set_txpwr(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca %struct.ath10k_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.ath10k*, %struct.ath10k** %13, align 8
  store %struct.ath10k* %14, %struct.ath10k** %8, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %19, %struct.ath10k_vif** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_TX_POWER_AUTOMATIC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %38

27:                                               ; preds = %3
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %75

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %26
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @ATH10K_TX_POWER_MAX_VAL, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @ATH10K_TX_POWER_MIN_VAL, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %75

49:                                               ; preds = %42
  %50 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %51 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %54 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %55 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @WMI_PEER_USE_FIXED_PWR, align 4
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @ath10k_wmi_peer_set_param(%struct.ath10k* %53, i32 %56, i32 %59, i32 %60, i64 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %49
  %66 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @ath10k_warn(%struct.ath10k* %66, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %70

69:                                               ; preds = %49
  br label %70

70:                                               ; preds = %69, %65
  %71 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %72 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %70, %46, %34
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath10k_wmi_peer_set_param(%struct.ath10k*, i32, i32, i32, i64) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
