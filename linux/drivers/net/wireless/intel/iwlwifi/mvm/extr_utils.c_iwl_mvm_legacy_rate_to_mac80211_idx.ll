; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_legacy_rate_to_mac80211_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_legacy_rate_to_mac80211_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RATE_LEGACY_RATE_MSK = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@IWL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@IWL_RATE_COUNT_LEGACY = common dso_local global i32 0, align 4
@fw_rate_idx_to_plcp = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @RATE_LEGACY_RATE_MSK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @IWL_FIRST_OFDM_RATE, align 4
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %36, %17
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @IWL_RATE_COUNT_LEGACY, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i32*, i32** @fw_rate_idx_to_plcp, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %19

39:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
