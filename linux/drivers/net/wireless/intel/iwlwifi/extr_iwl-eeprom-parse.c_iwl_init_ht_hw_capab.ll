; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-eeprom-parse.c_iwl_init_ht_hw_capab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-eeprom-parse.c_iwl_init_ht_hw_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.iwl_trans = type { %struct.TYPE_5__*, %struct.iwl_cfg* }
%struct.TYPE_5__ = type { i64 }
%struct.iwl_cfg = type { %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i32, i64, i64, i64 }
%struct.iwl_nvm_data = type { i64, i32 }
%struct.ieee80211_sta_ht_cap = type { i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32, i32 }

@iwlwifi_mod_params = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@IWL_DISABLE_HT_ALL = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_DSSSCCK40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@IWL_AMSDU_DEF = common dso_local global i64 0, align 8
@IWL_AMSDU_8K = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_HT_MPDU_DENSITY_4 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_GRN_FLD = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@MAX_BIT_RATE_20_MHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@MAX_BIT_RATE_40_MHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_RX_HIGHEST_MASK = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_DEFINED = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_RX_DIFF = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_init_ht_hw_capab(%struct.iwl_trans* %0, %struct.iwl_nvm_data* %1, %struct.ieee80211_sta_ht_cap* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.iwl_trans*, align 8
  %8 = alloca %struct.iwl_nvm_data*, align 8
  %9 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iwl_cfg*, align 8
  %14 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %7, align 8
  store %struct.iwl_nvm_data* %1, %struct.iwl_nvm_data** %8, align 8
  store %struct.ieee80211_sta_ht_cap* %2, %struct.ieee80211_sta_ht_cap** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %15, i32 0, i32 1
  %17 = load %struct.iwl_cfg*, %struct.iwl_cfg** %16, align 8
  store %struct.iwl_cfg* %17, %struct.iwl_cfg** %13, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @hweight8(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.iwl_cfg*, %struct.iwl_cfg** %13, align 8
  %21 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i32 1, i32* %12, align 4
  br label %28

25:                                               ; preds = %6
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @hweight8(i32 %26)
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %25, %24
  %29 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %30 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %35 = load i32, i32* @IWL_DISABLE_HT_ALL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.iwl_cfg*, %struct.iwl_cfg** %13, align 8
  %40 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38, %33, %28
  %44 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %223

46:                                               ; preds = %38
  %47 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %48 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %46
  %53 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load i32, i32* @IEEE80211_HT_CAP_DSSSCCK40, align 4
  %56 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.iwl_cfg*, %struct.iwl_cfg** %13, align 8
  %59 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %52
  %65 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC_SHIFT, align 4
  %66 = shl i32 1, %65
  %67 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %68 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %75 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %76 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %64
  br label %80

80:                                               ; preds = %79, %52
  %81 = load %struct.iwl_cfg*, %struct.iwl_cfg** %13, align 8
  %82 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %89 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %90 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %80
  %94 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %95 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iwlwifi_mod_params, i32 0, i32 1), align 8
  %102 = load i64, i64* @IWL_AMSDU_DEF, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %100, %93
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iwlwifi_mod_params, i32 0, i32 1), align 8
  %106 = load i64, i64* @IWL_AMSDU_8K, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %104, %100
  %109 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %110 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %111 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %104
  %115 = load %struct.iwl_cfg*, %struct.iwl_cfg** %13, align 8
  %116 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %119 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @IEEE80211_HT_MPDU_DENSITY_4, align 4
  %121 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %122 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %124 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 255, i32* %127, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp sge i32 %128, 2
  br i1 %129, label %130, label %136

130:                                              ; preds = %114
  %131 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %132 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 255, i32* %135, align 4
  br label %136

136:                                              ; preds = %130, %114
  %137 = load i32, i32* %12, align 4
  %138 = icmp sge i32 %137, 3
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %141 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  store i32 255, i32* %144, align 4
  br label %145

145:                                              ; preds = %139, %136
  %146 = load %struct.iwl_cfg*, %struct.iwl_cfg** %13, align 8
  %147 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %146, i32 0, i32 0
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %145
  %153 = load i32, i32* @IEEE80211_HT_CAP_GRN_FLD, align 4
  %154 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %155 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %152, %145
  %159 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %160 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %161 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* @MAX_BIT_RATE_20_MHZ, align 4
  store i32 %164, i32* %14, align 4
  %165 = load %struct.iwl_cfg*, %struct.iwl_cfg** %13, align 8
  %166 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %165, i32 0, i32 0
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @BIT(i32 %170)
  %172 = and i32 %169, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %158
  %175 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %176 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %177 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %181 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %182 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* @MAX_BIT_RATE_40_MHZ, align 4
  store i32 %185, i32* %14, align 4
  br label %186

186:                                              ; preds = %174, %158
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %14, align 4
  %189 = mul nsw i32 %188, %187
  store i32 %189, i32* %14, align 4
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* @IEEE80211_HT_MCS_RX_HIGHEST_MASK, align 4
  %192 = xor i32 %191, -1
  %193 = and i32 %190, %192
  %194 = call i32 @WARN_ON(i32 %193)
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @cpu_to_le16(i32 %195)
  %197 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %198 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 2
  store i32 %196, i32* %199, align 4
  %200 = load i32, i32* @IEEE80211_HT_MCS_TX_DEFINED, align 4
  %201 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %202 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  store i32 %200, i32* %203, align 8
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %223

207:                                              ; preds = %186
  %208 = load i32, i32* @IEEE80211_HT_MCS_TX_RX_DIFF, align 4
  %209 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %210 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %208
  store i32 %213, i32* %211, align 8
  %214 = load i32, i32* %11, align 4
  %215 = sub nsw i32 %214, 1
  %216 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT, align 4
  %217 = shl i32 %215, %216
  %218 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %9, align 8
  %219 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %217
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %43, %207, %186
  ret void
}

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
