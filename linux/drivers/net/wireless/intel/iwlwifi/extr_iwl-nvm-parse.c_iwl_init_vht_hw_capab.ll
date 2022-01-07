; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_init_vht_hw_capab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_init_vht_hw_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.iwl_trans = type { %struct.TYPE_6__*, %struct.iwl_cfg* }
%struct.TYPE_6__ = type { i32 }
%struct.iwl_cfg = type { i64, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.iwl_nvm_data = type { i64, i64 }
%struct.ieee80211_sta_vht_cap = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@IEEE80211_VHT_MAX_AMPDU_1024K = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_80 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RXSTBC_1 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_BEAMFORMEE_STS_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_160 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RXLDPC = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_TXSTBC = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_TX_ANTENNA_PATTERN = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_11454 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_3895 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"RB size of 2K is not supported by this device\0A\00", align 1
@IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_7991 = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_SUPPORT_0_9 = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RX_ANTENNA_PATTERN = common dso_local global i32 0, align 4
@IEEE80211_VHT_EXT_NSS_BW_CAPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_nvm_data*, %struct.ieee80211_sta_vht_cap*, i32, i32)* @iwl_init_vht_hw_capab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_init_vht_hw_capab(%struct.iwl_trans* %0, %struct.iwl_nvm_data* %1, %struct.ieee80211_sta_vht_cap* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca %struct.iwl_nvm_data*, align 8
  %8 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_cfg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store %struct.iwl_nvm_data* %1, %struct.iwl_nvm_data** %7, align 8
  store %struct.ieee80211_sta_vht_cap* %2, %struct.ieee80211_sta_vht_cap** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %15, i32 0, i32 1
  %17 = load %struct.iwl_cfg*, %struct.iwl_cfg** %16, align 8
  store %struct.iwl_cfg* %17, %struct.iwl_cfg** %11, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @num_of_ant(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @num_of_ant(i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.iwl_cfg*, %struct.iwl_cfg** %11, align 8
  %23 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @IEEE80211_VHT_MAX_AMPDU_1024K, align 4
  %29 = zext i32 %28 to i64
  br label %30

30:                                               ; preds = %27, %26
  %31 = phi i64 [ %24, %26 ], [ %29, %27 ]
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %14, align 4
  %33 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_80, align 4
  %36 = load i32, i32* @IEEE80211_VHT_CAP_RXSTBC_1, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @IEEE80211_VHT_CAP_BEAMFORMEE_STS_SHIFT, align 4
  %41 = shl i32 3, %40
  %42 = or i32 %39, %41
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %42, %45
  %47 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %50 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %30
  %54 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ, align 4
  %55 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_160, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %53, %30
  %62 = load %struct.iwl_cfg*, %struct.iwl_cfg** %11, align 8
  %63 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE, align 4
  %68 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.iwl_cfg*, %struct.iwl_cfg** %11, align 8
  %74 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, i32* @IEEE80211_VHT_CAP_RXLDPC, align 4
  %81 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %82 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %72
  %86 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %87 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %91

91:                                               ; preds = %90, %85
  %92 = load i32, i32* %13, align 4
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* @IEEE80211_VHT_CAP_TXSTBC, align 4
  %96 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %97 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %106

100:                                              ; preds = %91
  %101 = load i32, i32* @IEEE80211_VHT_CAP_TX_ANTENNA_PATTERN, align 4
  %102 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %103 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %94
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  switch i32 %107, label %162 [
    i32 128, label %108
    i32 131, label %128
    i32 130, label %144
    i32 129, label %150
    i32 132, label %156
  ]

108:                                              ; preds = %106
  %109 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %110 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load i32, i32* @IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_11454, align 4
  %117 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %118 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %127

121:                                              ; preds = %108
  %122 = load i32, i32* @IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_3895, align 4
  %123 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %124 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %115
  br label %163

128:                                              ; preds = %106
  %129 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %130 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load i32, i32* @IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_11454, align 4
  %137 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %138 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %143

141:                                              ; preds = %128
  %142 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %135
  br label %163

144:                                              ; preds = %106
  %145 = load i32, i32* @IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_3895, align 4
  %146 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %147 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %163

150:                                              ; preds = %106
  %151 = load i32, i32* @IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_7991, align 4
  %152 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %153 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %163

156:                                              ; preds = %106
  %157 = load i32, i32* @IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_11454, align 4
  %158 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %159 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %163

162:                                              ; preds = %106
  br label %163

163:                                              ; preds = %162, %156, %150, %144, %143, %127
  %164 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_9, align 4
  %165 = shl i32 %164, 0
  %166 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_9, align 4
  %167 = shl i32 %166, 2
  %168 = or i32 %165, %167
  %169 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %170 = shl i32 %169, 4
  %171 = or i32 %168, %170
  %172 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %173 = shl i32 %172, 6
  %174 = or i32 %171, %173
  %175 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %176 = shl i32 %175, 8
  %177 = or i32 %174, %176
  %178 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %179 = shl i32 %178, 10
  %180 = or i32 %177, %179
  %181 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %182 = shl i32 %181, 12
  %183 = or i32 %180, %182
  %184 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %185 = shl i32 %184, 14
  %186 = or i32 %183, %185
  %187 = call i32 @cpu_to_le16(i32 %186)
  %188 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %189 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 1
  store i32 %187, i32* %190, align 4
  %191 = load i32, i32* %12, align 4
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %198, label %193

193:                                              ; preds = %163
  %194 = load %struct.iwl_cfg*, %struct.iwl_cfg** %11, align 8
  %195 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %193, %163
  %199 = load i32, i32* @IEEE80211_VHT_CAP_RX_ANTENNA_PATTERN, align 4
  %200 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %201 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 4
  %204 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %205 = shl i32 %204, 2
  %206 = call i32 @cpu_to_le16(i32 %205)
  %207 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %208 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %206
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %198, %193
  %213 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %214 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %218 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 2
  store i32 %216, i32* %219, align 4
  %220 = load i32, i32* @IEEE80211_VHT_EXT_NSS_BW_CAPABLE, align 4
  %221 = call i32 @cpu_to_le16(i32 %220)
  %222 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %8, align 8
  %223 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %221
  store i32 %226, i32* %224, align 4
  ret void
}

declare dso_local i32 @num_of_ant(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
