; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_fits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_fits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_scan_ies = type { i64, i64* }

@PROBE_OPTION_MAX = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32, %struct.ieee80211_scan_ies*, i32)* @iwl_mvm_scan_fits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_scan_fits(%struct.iwl_mvm* %0, i32 %1, %struct.ieee80211_scan_ies* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_scan_ies*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ieee80211_scan_ies* %2, %struct.ieee80211_scan_ies** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @PROBE_OPTION_MAX, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %13, %19
  %21 = zext i1 %20 to i32
  %22 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %24, %30
  %32 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %31, %37
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %40 = call i64 @iwl_mvm_max_scan_ie_fw_cmd_room(%struct.iwl_mvm* %39)
  %41 = icmp sle i64 %38, %40
  %42 = zext i1 %41 to i32
  %43 = and i32 %21, %42
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %12, %4
  %46 = phi i1 [ false, %4 ], [ %44, %12 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

declare dso_local i64 @iwl_mvm_max_scan_ie_fw_cmd_room(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
