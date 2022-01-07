; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs-fw.c_rs_fw_get_config_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs-fw.c_rs_fw_get_config_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.ieee80211_sta = type { %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_he_cap = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32* }
%struct.ieee80211_sta_vht_cap = type { i32, i32 }
%struct.ieee80211_sta_ht_cap = type { i32 }
%struct.ieee80211_supported_band = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32* }

@IEEE80211_HE_PHY_CAP2_STBC_RX_UNDER_80MHZ = common dso_local global i32 0, align 4
@IWL_TLC_MNG_CFG_FLAGS_STBC_MSK = common dso_local global i32 0, align 4
@IEEE80211_HE_PHY_CAP7_STBC_RX_ABOVE_80MHZ = common dso_local global i32 0, align 4
@IWL_TLC_MNG_CFG_FLAGS_HE_STBC_160MHZ_MSK = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RXSTBC_MASK = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RXLDPC = common dso_local global i32 0, align 4
@IWL_TLC_MNG_CFG_FLAGS_LDPC_MSK = common dso_local global i32 0, align 4
@IEEE80211_HE_PHY_CAP1_LDPC_CODING_IN_PAYLOAD = common dso_local global i32 0, align 4
@IEEE80211_HE_PHY_CAP3_DCM_MAX_CONST_RX_MASK = common dso_local global i32 0, align 4
@IWL_TLC_MNG_CFG_FLAGS_HE_DCM_NSS_1_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.ieee80211_supported_band*)* @rs_fw_get_config_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_fw_get_config_flags(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.ieee80211_supported_band* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %8 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %9 = alloca %struct.ieee80211_sta_he_cap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store %struct.ieee80211_supported_band* %2, %struct.ieee80211_supported_band** %6, align 8
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %12, i32 0, i32 2
  store %struct.ieee80211_sta_ht_cap* %13, %struct.ieee80211_sta_ht_cap** %7, align 8
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %14, i32 0, i32 1
  store %struct.ieee80211_sta_vht_cap* %15, %struct.ieee80211_sta_vht_cap** %8, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %16, i32 0, i32 0
  store %struct.ieee80211_sta_he_cap* %17, %struct.ieee80211_sta_he_cap** %9, align 8
  %18 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %91

29:                                               ; preds = %3
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %31 = call i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm* %30)
  %32 = call i32 @num_of_ant(i32 %31)
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %91

34:                                               ; preds = %29
  %35 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %9, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %34
  %40 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IEEE80211_HE_PHY_CAP2_STBC_RX_UNDER_80MHZ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32, i32* @IWL_TLC_MNG_CFG_FLAGS_STBC_MSK, align 4
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %49, %39
  %54 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %9, align 8
  %55 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 7
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IEEE80211_HE_PHY_CAP7_STBC_RX_ABOVE_80MHZ, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load i32, i32* @IWL_TLC_MNG_CFG_FLAGS_HE_STBC_160MHZ_MSK, align 4
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %63, %53
  br label %90

68:                                               ; preds = %34
  %69 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %80 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IEEE80211_VHT_CAP_RXSTBC_MASK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78, %68
  %86 = load i32, i32* @IWL_TLC_MNG_CFG_FLAGS_STBC_MSK, align 4
  %87 = load i32, i32* %11, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %85, %78, %75
  br label %90

90:                                               ; preds = %89, %67
  br label %91

91:                                               ; preds = %90, %29, %3
  %92 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %93 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %91
  %101 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %102 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %107
  %111 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %112 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IEEE80211_VHT_CAP_RXLDPC, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110, %100
  %118 = load i32, i32* @IWL_TLC_MNG_CFG_FLAGS_LDPC_MSK, align 4
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %117, %110, %107, %91
  %122 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %123 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %122, i32 0, i32 0
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = icmp ne %struct.TYPE_11__* %124, null
  br i1 %125, label %126, label %152

126:                                              ; preds = %121
  %127 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %128 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %127, i32 0, i32 0
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %126
  %135 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %136 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %135, i32 0, i32 0
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @IEEE80211_HE_PHY_CAP1_LDPC_CODING_IN_PAYLOAD, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %134
  %148 = load i32, i32* @IWL_TLC_MNG_CFG_FLAGS_LDPC_MSK, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %11, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %147, %134, %126, %121
  %153 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %9, align 8
  %154 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %152
  %158 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %9, align 8
  %159 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @IEEE80211_HE_PHY_CAP3_DCM_MAX_CONST_RX_MASK, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %157
  %168 = load i32, i32* @IWL_TLC_MNG_CFG_FLAGS_HE_DCM_NSS_1_MSK, align 4
  %169 = load i32, i32* %11, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %11, align 4
  br label %171

171:                                              ; preds = %167, %157, %152
  %172 = load i32, i32* %11, align 4
  ret i32 %172
}

declare dso_local i32 @num_of_ant(i32) #1

declare dso_local i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
