; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_lmac_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_lmac_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_mvm_scan_params = type { i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_vif = type { i64 }

@IWL_MVM_LMAC_SCAN_FLAG_PASSIVE = common dso_local global i32 0, align 4
@IWL_MVM_LMAC_SCAN_FLAG_PRE_CONNECTION = common dso_local global i32 0, align 4
@IWL_MVM_LMAC_SCAN_FLAG_FRAGMENTED = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_WFA_TPC_REP_IE_SUPPORT = common dso_local global i32 0, align 4
@IWL_MVM_LMAC_SCAN_FLAGS_RRM_ENABLED = common dso_local global i32 0, align 4
@IWL_MVM_LMAC_SCAN_FLAG_PASS_ALL = common dso_local global i32 0, align 4
@IWL_MVM_LMAC_SCAN_FLAG_MATCH = common dso_local global i32 0, align 4
@SCHED_SCAN_PASS_ALL_ENABLED = common dso_local global i64 0, align 8
@IWL_MVM_LMAC_SCAN_FLAG_ITER_COMPLETE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@IWL_MVM_LMAC_SCAN_FLAG_EXTENDED_DWELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_mvm_scan_params*, %struct.ieee80211_vif*)* @iwl_mvm_scan_lmac_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_scan_lmac_flags(%struct.iwl_mvm* %0, %struct.iwl_mvm_scan_params* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_mvm_scan_params*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm_scan_params* %1, %struct.iwl_mvm_scan_params** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @IWL_MVM_LMAC_SCAN_FLAG_PASSIVE, align 4
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @IWL_MVM_LMAC_SCAN_FLAG_PRE_CONNECTION, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %21, %16
  %34 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @iwl_mvm_is_scan_fragmented(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @IWL_MVM_LMAC_SCAN_FLAG_FRAGMENTED, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %45 = call i64 @iwl_mvm_rrm_scan_needed(%struct.iwl_mvm* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* @IWL_UCODE_TLV_CAPA_WFA_TPC_REP_IE_SUPPORT, align 4
  %53 = call i64 @fw_has_capa(i32* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32, i32* @IWL_MVM_LMAC_SCAN_FLAGS_RRM_ENABLED, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %47, %43
  %60 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @IWL_MVM_LMAC_SCAN_FLAG_PASS_ALL, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @IWL_MVM_LMAC_SCAN_FLAG_MATCH, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %64
  %73 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SCHED_SCAN_PASS_ALL_ENABLED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* @IWL_MVM_LMAC_SCAN_FLAG_ITER_COMPLETE, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %78, %72
  %83 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %84 = call i64 @iwl_mvm_is_regular_scan(%struct.iwl_mvm_scan_params* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %88 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %94 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @iwl_mvm_is_scan_fragmented(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* @IWL_MVM_LMAC_SCAN_FLAG_EXTENDED_DWELL, align 4
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %98, %92, %86, %82
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i64 @iwl_mvm_is_scan_fragmented(i32) #1

declare dso_local i64 @iwl_mvm_rrm_scan_needed(%struct.iwl_mvm*) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i64 @iwl_mvm_is_regular_scan(%struct.iwl_mvm_scan_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
