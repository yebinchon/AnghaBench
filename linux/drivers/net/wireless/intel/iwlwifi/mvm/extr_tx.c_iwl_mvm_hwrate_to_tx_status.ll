; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_hwrate_to_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_hwrate_to_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32 }

@RATE_MCS_ANT_ABC_MSK = common dso_local global i32 0, align 4
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ieee80211_tx_info*)* @iwl_mvm_hwrate_to_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_hwrate_to_tx_status(i32 %0, %struct.ieee80211_tx_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_tx_info*, align 8
  %5 = alloca %struct.ieee80211_tx_rate*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %4, align 8
  %6 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %8, align 8
  %10 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %9, i64 0
  store %struct.ieee80211_tx_rate* %10, %struct.ieee80211_tx_rate** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @RATE_MCS_ANT_ABC_MSK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %15 = ashr i32 %13, %14
  %16 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %24 = call i32 @iwl_mvm_hwrate_to_tx_rate(i32 %19, i32 %22, %struct.ieee80211_tx_rate* %23)
  ret void
}

declare dso_local i32 @iwl_mvm_hwrate_to_tx_rate(i32, i32, %struct.ieee80211_tx_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
