; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_get_tx_ant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_get_tx_ant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_tx_info = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, i32)* @iwl_mvm_get_tx_ant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_get_tx_ant(%struct.iwl_mvm* %0, %struct.ieee80211_tx_info* %1, %struct.ieee80211_sta* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %4
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %18 = call i32 @iwl_mvm_bt_coex_is_shared_ant_avail(%struct.iwl_mvm* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %27 = shl i32 %25, %26
  store i32 %27, i32* %5, align 4
  br label %51

28:                                               ; preds = %16, %4
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %30 = icmp ne %struct.ieee80211_sta* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @ieee80211_is_data(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %37 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %36)
  store %struct.iwl_mvm_sta* %37, %struct.iwl_mvm_sta** %10, align 8
  %38 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %43 = shl i32 %41, %42
  store i32 %43, i32* %5, align 4
  br label %51

44:                                               ; preds = %31, %28
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @BIT(i32 %47)
  %49 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %50 = shl i32 %48, %49
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %44, %35, %20
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @iwl_mvm_bt_coex_is_shared_ant_avail(%struct.iwl_mvm*) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
