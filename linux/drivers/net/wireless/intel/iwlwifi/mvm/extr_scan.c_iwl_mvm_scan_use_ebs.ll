; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_use_ebs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_use_ebs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iwl_ucode_capabilities }
%struct.iwl_ucode_capabilities = type { i32 }
%struct.ieee80211_vif = type { i64 }

@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_FLAGS_EBS_SUPPORT = common dso_local global i32 0, align 4
@IWL_MVM_ENABLE_EBS = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*)* @iwl_mvm_scan_use_ebs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_scan_use_ebs(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_ucode_capabilities*, align 8
  %6 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.iwl_ucode_capabilities* %10, %struct.iwl_ucode_capabilities** %5, align 8
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %12 = call i64 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %16 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %17 = call i32 @iwl_mvm_low_latency_band(%struct.iwl_mvm* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %20 = call i32 @iwl_mvm_low_latency(%struct.iwl_mvm* %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = load %struct.iwl_ucode_capabilities*, %struct.iwl_ucode_capabilities** %5, align 8
  %23 = getelementptr inbounds %struct.iwl_ucode_capabilities, %struct.iwl_ucode_capabilities* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IWL_UCODE_TLV_FLAGS_EBS_SUPPORT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %21
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load i64, i64* @IWL_MVM_ENABLE_EBS, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %47 = call i64 @iwl_mvm_is_frag_ebs_supported(%struct.iwl_mvm* %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ true, %42 ], [ %48, %45 ]
  br label %51

51:                                               ; preds = %49, %36, %33, %28, %21
  %52 = phi i1 [ false, %36 ], [ false, %33 ], [ false, %28 ], [ false, %21 ], [ %50, %49 ]
  %53 = zext i1 %52 to i32
  ret i32 %53
}

declare dso_local i64 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_low_latency_band(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_low_latency(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_is_frag_ebs_supported(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
