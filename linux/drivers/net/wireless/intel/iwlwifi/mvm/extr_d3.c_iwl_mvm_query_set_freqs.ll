; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_query_set_freqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_query_set_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_mvm_nd_query_results = type { i64 }
%struct.cfg80211_wowlan_nd_match = type { i32, i32* }
%struct.iwl_scan_offload_profile_match = type { i32* }
%struct.iwl_scan_offload_profile_match_v1 = type { i32* }

@IWL_UCODE_TLV_API_SCAN_OFFLOAD_CHANS = common dso_local global i32 0, align 4
@SCAN_OFFLOAD_MATCHING_CHANNELS_LEN = common dso_local global i32 0, align 4
@SCAN_OFFLOAD_MATCHING_CHANNELS_LEN_V1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_mvm_nd_query_results*, %struct.cfg80211_wowlan_nd_match*, i32)* @iwl_mvm_query_set_freqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_query_set_freqs(%struct.iwl_mvm* %0, %struct.iwl_mvm_nd_query_results* %1, %struct.cfg80211_wowlan_nd_match* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_nd_query_results*, align 8
  %7 = alloca %struct.cfg80211_wowlan_nd_match*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_scan_offload_profile_match*, align 8
  %11 = alloca %struct.iwl_scan_offload_profile_match_v1*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.iwl_mvm_nd_query_results* %1, %struct.iwl_mvm_nd_query_results** %6, align 8
  store %struct.cfg80211_wowlan_nd_match* %2, %struct.cfg80211_wowlan_nd_match** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* @IWL_UCODE_TLV_API_SCAN_OFFLOAD_CHANS, align 4
  %17 = call i64 @fw_has_api(i32* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %70

19:                                               ; preds = %4
  %20 = load %struct.iwl_mvm_nd_query_results*, %struct.iwl_mvm_nd_query_results** %6, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_nd_query_results, %struct.iwl_mvm_nd_query_results* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.iwl_scan_offload_profile_match*
  store %struct.iwl_scan_offload_profile_match* %23, %struct.iwl_scan_offload_profile_match** %10, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %66, %19
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @SCAN_OFFLOAD_MATCHING_CHANNELS_LEN, align 4
  %27 = mul nsw i32 %26, 8
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %69

29:                                               ; preds = %24
  %30 = load %struct.iwl_scan_offload_profile_match*, %struct.iwl_scan_offload_profile_match** %10, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.iwl_scan_offload_profile_match, %struct.iwl_scan_offload_profile_match* %30, i64 %32
  %34 = getelementptr inbounds %struct.iwl_scan_offload_profile_match, %struct.iwl_scan_offload_profile_match* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sdiv i32 %36, 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = srem i32 %41, 8
  %43 = call i32 @BIT(i32 %42)
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %29
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %49, i64 %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cfg80211_wowlan_nd_match*, %struct.cfg80211_wowlan_nd_match** %7, align 8
  %57 = getelementptr inbounds %struct.cfg80211_wowlan_nd_match, %struct.cfg80211_wowlan_nd_match* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.cfg80211_wowlan_nd_match*, %struct.cfg80211_wowlan_nd_match** %7, align 8
  %60 = getelementptr inbounds %struct.cfg80211_wowlan_nd_match, %struct.cfg80211_wowlan_nd_match* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  store i32 %55, i32* %64, align 4
  br label %65

65:                                               ; preds = %46, %29
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %24

69:                                               ; preds = %24
  br label %121

70:                                               ; preds = %4
  %71 = load %struct.iwl_mvm_nd_query_results*, %struct.iwl_mvm_nd_query_results** %6, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm_nd_query_results, %struct.iwl_mvm_nd_query_results* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.iwl_scan_offload_profile_match_v1*
  store %struct.iwl_scan_offload_profile_match_v1* %74, %struct.iwl_scan_offload_profile_match_v1** %11, align 8
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %117, %70
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @SCAN_OFFLOAD_MATCHING_CHANNELS_LEN_V1, align 4
  %78 = mul nsw i32 %77, 8
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %120

80:                                               ; preds = %75
  %81 = load %struct.iwl_scan_offload_profile_match_v1*, %struct.iwl_scan_offload_profile_match_v1** %11, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.iwl_scan_offload_profile_match_v1, %struct.iwl_scan_offload_profile_match_v1* %81, i64 %83
  %85 = getelementptr inbounds %struct.iwl_scan_offload_profile_match_v1, %struct.iwl_scan_offload_profile_match_v1* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sdiv i32 %87, 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = srem i32 %92, 8
  %94 = call i32 @BIT(i32 %93)
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %80
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %99 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %100, i64 %102
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.cfg80211_wowlan_nd_match*, %struct.cfg80211_wowlan_nd_match** %7, align 8
  %108 = getelementptr inbounds %struct.cfg80211_wowlan_nd_match, %struct.cfg80211_wowlan_nd_match* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.cfg80211_wowlan_nd_match*, %struct.cfg80211_wowlan_nd_match** %7, align 8
  %111 = getelementptr inbounds %struct.cfg80211_wowlan_nd_match, %struct.cfg80211_wowlan_nd_match* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %109, i64 %114
  store i32 %106, i32* %115, align 4
  br label %116

116:                                              ; preds = %97, %80
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %75

120:                                              ; preds = %75
  br label %121

121:                                              ; preds = %120, %69
  ret void
}

declare dso_local i64 @fw_has_api(i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
