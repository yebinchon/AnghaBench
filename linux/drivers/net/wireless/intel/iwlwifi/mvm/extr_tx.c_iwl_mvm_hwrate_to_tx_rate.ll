; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_hwrate_to_tx_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_hwrate_to_tx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_rate = type { i32, i32 }

@RATE_HT_MCS_GF_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_GREEN_FIELD = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_160_MHZ_WIDTH = common dso_local global i32 0, align 4
@RATE_MCS_SGI_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@RATE_HT_MCS_INDEX_MSK = common dso_local global i32 0, align 4
@RATE_MCS_VHT_MSK = common dso_local global i32 0, align 4
@RATE_VHT_MCS_RATE_CODE_MSK = common dso_local global i32 0, align 4
@RATE_VHT_MCS_NSS_MSK = common dso_local global i32 0, align 4
@RATE_VHT_MCS_NSS_POS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_hwrate_to_tx_rate(i32 %0, i32 %1, %struct.ieee80211_tx_rate* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_tx_rate*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ieee80211_tx_rate* %2, %struct.ieee80211_tx_rate** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @RATE_HT_MCS_GF_MSK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* @IEEE80211_TX_RC_GREEN_FIELD, align 4
  %13 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %11, %3
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @RATE_MCS_CHAN_WIDTH_MSK, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %40 [
    i32 130, label %21
    i32 129, label %22
    i32 128, label %28
    i32 131, label %34
  ]

21:                                               ; preds = %17
  br label %40

22:                                               ; preds = %17
  %23 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %24 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %40

28:                                               ; preds = %17
  %29 = load i32, i32* @IEEE80211_TX_RC_80_MHZ_WIDTH, align 4
  %30 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %40

34:                                               ; preds = %17
  %35 = load i32, i32* @IEEE80211_TX_RC_160_MHZ_WIDTH, align 4
  %36 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %17, %34, %28, %22, %21
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %47 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %58 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @RATE_HT_MCS_INDEX_MSK, align 4
  %64 = and i32 %62, %63
  %65 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %66 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %96

67:                                               ; preds = %51
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @RATE_MCS_VHT_MSK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @RATE_VHT_MCS_RATE_CODE_MSK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @RATE_VHT_MCS_NSS_MSK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @RATE_VHT_MCS_NSS_POS, align 4
  %81 = ashr i32 %79, %80
  %82 = add nsw i32 %81, 1
  %83 = call i32 @ieee80211_rate_set_vht(%struct.ieee80211_tx_rate* %73, i32 %76, i32 %82)
  %84 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %85 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %86 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %95

89:                                               ; preds = %67
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32 %90, i32 %91)
  %93 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %94 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %72
  br label %96

96:                                               ; preds = %95, %56
  ret void
}

declare dso_local i32 @ieee80211_rate_set_vht(%struct.ieee80211_tx_rate*, i32, i32) #1

declare dso_local i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
