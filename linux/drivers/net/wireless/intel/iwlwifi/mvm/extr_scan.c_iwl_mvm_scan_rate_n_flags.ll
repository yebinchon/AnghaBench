; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_rate_n_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_rate_n_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }

@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@IWL_RATE_1M_PLCP = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@IWL_RATE_6M_PLCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32, i32)* @iwl_mvm_scan_rate_n_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_scan_rate_n_flags(%struct.iwl_mvm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 0
  %12 = call i32 @iwl_mvm_toggle_tx_ant(%struct.iwl_mvm* %9, i32* %11)
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @IWL_RATE_1M_PLCP, align 4
  %27 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @cpu_to_le32(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %37

32:                                               ; preds = %22, %3
  %33 = load i32, i32* @IWL_RATE_6M_PLCP, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @cpu_to_le32(i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %32, %25
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @iwl_mvm_toggle_tx_ant(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
