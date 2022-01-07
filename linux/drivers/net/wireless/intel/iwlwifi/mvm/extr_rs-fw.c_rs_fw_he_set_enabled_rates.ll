; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs-fw.c_rs_fw_he_set_enabled_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs-fw.c_rs_fw_he_set_enabled_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32, %struct.ieee80211_sta_he_cap }
%struct.ieee80211_sta_he_cap = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ieee80211_supported_band = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.iwl_tlc_config_cmd = type { i8*** }

@IWL_TLC_NSS_MAX = common dso_local global i32 0, align 4
@IEEE80211_HE_MCS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@IWL_TLC_HT_BW_NONE_160 = common dso_local global i64 0, align 8
@IWL_TLC_HT_BW_160 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sta*, %struct.ieee80211_supported_band*, %struct.iwl_tlc_config_cmd*)* @rs_fw_he_set_enabled_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_fw_he_set_enabled_rates(%struct.ieee80211_sta* %0, %struct.ieee80211_supported_band* %1, %struct.iwl_tlc_config_cmd* %2) #0 {
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.iwl_tlc_config_cmd*, align 8
  %7 = alloca %struct.ieee80211_sta_he_cap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_sta* %0, %struct.ieee80211_sta** %4, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %5, align 8
  store %struct.iwl_tlc_config_cmd* %2, %struct.iwl_tlc_config_cmd** %6, align 8
  %17 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %17, i32 0, i32 1
  store %struct.ieee80211_sta_he_cap* %18, %struct.ieee80211_sta_he_cap** %7, align 8
  %19 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  store i32 %44, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %136, %3
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @IWL_TLC_NSS_MAX, align 4
  %54 = icmp slt i32 %52, %53
  br label %55

55:                                               ; preds = %51, %45
  %56 = phi i1 [ false, %45 ], [ %54, %51 ]
  br i1 %56, label %57, label %139

57:                                               ; preds = %55
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %12, align 4
  %60 = mul nsw i32 2, %59
  %61 = ashr i32 %58, %60
  %62 = and i32 %61, 3
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %12, align 4
  %65 = mul nsw i32 2, %64
  %66 = ashr i32 %63, %65
  %67 = and i32 %66, 3
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = mul nsw i32 2, %69
  %71 = ashr i32 %68, %70
  %72 = and i32 %71, 3
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %12, align 4
  %75 = mul nsw i32 2, %74
  %76 = ashr i32 %73, %75
  %77 = and i32 %76, 3
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @IEEE80211_HE_MCS_NOT_SUPPORTED, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %57
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @IEEE80211_HE_MCS_NOT_SUPPORTED, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81, %57
  %86 = load i32, i32* @IEEE80211_HE_MCS_NOT_SUPPORTED, align 4
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* @IEEE80211_HE_MCS_NOT_SUPPORTED, align 4
  store i32 %87, i32* %16, align 4
  br label %88

88:                                               ; preds = %85, %81
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %92, %88
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @rs_fw_he_ieee80211_mcs_to_rs_mcs(i32 %95)
  %97 = call i8* @cpu_to_le16(i32 %96)
  %98 = load %struct.iwl_tlc_config_cmd*, %struct.iwl_tlc_config_cmd** %6, align 8
  %99 = getelementptr inbounds %struct.iwl_tlc_config_cmd, %struct.iwl_tlc_config_cmd* %98, i32 0, i32 0
  %100 = load i8***, i8**** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8**, i8*** %100, i64 %102
  %104 = load i8**, i8*** %103, align 8
  %105 = load i64, i64* @IWL_TLC_HT_BW_NONE_160, align 8
  %106 = getelementptr inbounds i8*, i8** %104, i64 %105
  store i8* %97, i8** %106, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @IEEE80211_HE_MCS_NOT_SUPPORTED, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %94
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @IEEE80211_HE_MCS_NOT_SUPPORTED, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110, %94
  %115 = load i32, i32* @IEEE80211_HE_MCS_NOT_SUPPORTED, align 4
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* @IEEE80211_HE_MCS_NOT_SUPPORTED, align 4
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %114, %110
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %121, %117
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @rs_fw_he_ieee80211_mcs_to_rs_mcs(i32 %124)
  %126 = call i8* @cpu_to_le16(i32 %125)
  %127 = load %struct.iwl_tlc_config_cmd*, %struct.iwl_tlc_config_cmd** %6, align 8
  %128 = getelementptr inbounds %struct.iwl_tlc_config_cmd, %struct.iwl_tlc_config_cmd* %127, i32 0, i32 0
  %129 = load i8***, i8**** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8**, i8*** %129, i64 %131
  %133 = load i8**, i8*** %132, align 8
  %134 = load i64, i64* @IWL_TLC_HT_BW_160, align 8
  %135 = getelementptr inbounds i8*, i8** %133, i64 %134
  store i8* %126, i8** %135, align 8
  br label %136

136:                                              ; preds = %123
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %45

139:                                              ; preds = %55
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @rs_fw_he_ieee80211_mcs_to_rs_mcs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
