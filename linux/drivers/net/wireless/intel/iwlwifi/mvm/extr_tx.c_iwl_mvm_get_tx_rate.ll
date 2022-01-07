; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_get_tx_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_get_tx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.ieee80211_tx_info = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211_sta = type { i32 }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Got an HT rate (flags:0x%x/mcs:%d) for a non data frame\0A\00", align 1
@IWL_RATE_COUNT_LEGACY = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IWL_FIRST_OFDM_RATE = common dso_local global i64 0, align 8
@IWL_FIRST_CCK_RATE = common dso_local global i32 0, align 4
@IWL_LAST_CCK_RATE = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*)* @iwl_mvm_get_tx_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_get_tx_rate(%struct.iwl_mvm* %0, %struct.ieee80211_tx_info* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %18 = and i32 %16, %17
  %19 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @WARN_ONCE(i32 %18, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %32)
  %34 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %3
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @IWL_RATE_COUNT_LEGACY, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43, %3
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %58 = call i32 @rate_lowest_index(i32* %56, %struct.ieee80211_sta* %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %47, %43
  %60 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i64, i64* @IWL_FIRST_OFDM_RATE, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %65, %59
  %72 = load i32, i32* @IWL_FIRST_CCK_RATE, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUILD_BUG_ON(i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @iwl_mvm_mac80211_idx_to_hwrate(i32 %76)
  store i64 %77, i64* %8, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @IWL_FIRST_CCK_RATE, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %71
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @IWL_LAST_CCK_RATE, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %85, %81, %71
  %90 = load i64, i64* %8, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %91, %92
  ret i32 %93
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @rate_lowest_index(i32*, %struct.ieee80211_sta*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @iwl_mvm_mac80211_idx_to_hwrate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
