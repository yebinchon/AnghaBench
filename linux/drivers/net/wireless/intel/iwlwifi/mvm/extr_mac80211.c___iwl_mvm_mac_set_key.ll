; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c___iwl_mvm_mac_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c___iwl_mvm_mac_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.ieee80211_hw = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i32, i32, i32, i8* }
%struct.iwl_mvm_vif = type { %struct.ieee80211_key_conf**, i32 }
%struct.iwl_mvm = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.iwl_mvm_sta = type { i32* }
%struct.iwl_mvm_key_pn = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.ieee80211_key_seq = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@iwlwifi_mod_params = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"leave - hwcrypto disabled\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PUT_IV_SPACE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PUT_MIC_SPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Use SW encryption for TKIP\0A\00", align 1
@MFP_CAPABLE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@STA_KEY_IDX_INVALID = common dso_local global i8* null, align 8
@ENOSPC = common dso_local global i32 0, align 4
@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"skip invalid idx key programming during restart\0A\00", align 1
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i32 0, align 4
@IEEE80211_CCMP_PN_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"set hwcrypto key\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"set key failed\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"disable hwcrypto key\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @__iwl_mvm_mac_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iwl_mvm_mac_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.iwl_mvm_vif*, align 8
  %13 = alloca %struct.iwl_mvm*, align 8
  %14 = alloca %struct.iwl_mvm_sta*, align 8
  %15 = alloca %struct.iwl_mvm_key_pn*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.ieee80211_key_seq, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %24 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %23)
  store %struct.iwl_mvm_vif* %24, %struct.iwl_mvm_vif** %12, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %26 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %25)
  store %struct.iwl_mvm* %26, %struct.iwl_mvm** %13, align 8
  %27 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %28 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %16, align 4
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %5
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %34 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %519

37:                                               ; preds = %5
  %38 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %39 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %114 [
    i32 130, label %41
    i32 133, label %80
    i32 132, label %80
    i32 131, label %80
    i32 136, label %91
    i32 135, label %91
    i32 134, label %91
    i32 128, label %99
    i32 129, label %99
  ]

41:                                               ; preds = %37
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %52 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %53 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %57 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %58 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %79

61:                                               ; preds = %41
  %62 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %63 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_MIC_SPACE, align 4
  %69 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %70 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %78

73:                                               ; preds = %61
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %75 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %519

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %50
  br label %139

80:                                               ; preds = %37, %37, %37
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %82 = call i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %86 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %87 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %80
  br label %139

91:                                               ; preds = %37, %37, %37
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %93 = load i32, i32* @MFP_CAPABLE, align 4
  %94 = call i32 @ieee80211_hw_check(%struct.ieee80211_hw* %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @WARN_ON_ONCE(i32 %97)
  br label %139

99:                                               ; preds = %37, %37
  %100 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %101 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %139

106:                                              ; preds = %99
  %107 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %108 = call i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @EOPNOTSUPP, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %519

113:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %519

114:                                              ; preds = %37
  %115 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %116 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %114
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %121 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %126 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %119
  %130 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %131 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %132 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %138

135:                                              ; preds = %119, %114
  %136 = load i32, i32* @EOPNOTSUPP, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %6, align 4
  br label %519

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138, %105, %91, %90, %79
  %140 = load i32, i32* %8, align 4
  switch i32 %140, label %514 [
    i32 137, label %141
    i32 138, label %406
  ]

141:                                              ; preds = %139
  %142 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %143 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %141
  %148 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %149 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %239

153:                                              ; preds = %147, %141
  %154 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %155 = icmp ne %struct.ieee80211_sta* %154, null
  br i1 %155, label %239, label %156

156:                                              ; preds = %153
  %157 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %158 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 136
  br i1 %160, label %171, label %161

161:                                              ; preds = %156
  %162 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %163 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 135
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %168 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 134
  br i1 %170, label %171, label %174

171:                                              ; preds = %166, %161, %156
  %172 = load i32, i32* @EOPNOTSUPP, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %17, align 4
  br label %175

174:                                              ; preds = %166
  store i32 0, i32* %17, align 4
  br label %175

175:                                              ; preds = %174, %171
  %176 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %177 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 132
  br i1 %179, label %180, label %193

180:                                              ; preds = %175
  %181 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %182 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 131
  br i1 %184, label %185, label %193

185:                                              ; preds = %180
  %186 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %187 = call i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load i8*, i8** @STA_KEY_IDX_INVALID, align 8
  %191 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %192 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %191, i32 0, i32 3
  store i8* %190, i8** %192, align 8
  br label %517

193:                                              ; preds = %185, %180, %175
  %194 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %195 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %238, label %198

198:                                              ; preds = %193
  store i32 0, i32* %18, align 4
  br label %199

199:                                              ; preds = %224, %198
  %200 = load i32, i32* %18, align 4
  %201 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %202 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %201, i32 0, i32 0
  %203 = load %struct.ieee80211_key_conf**, %struct.ieee80211_key_conf*** %202, align 8
  %204 = call i32 @ARRAY_SIZE(%struct.ieee80211_key_conf** %203)
  %205 = icmp slt i32 %200, %204
  br i1 %205, label %206, label %227

206:                                              ; preds = %199
  %207 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %208 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %207, i32 0, i32 0
  %209 = load %struct.ieee80211_key_conf**, %struct.ieee80211_key_conf*** %208, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %209, i64 %211
  %213 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %212, align 8
  %214 = icmp ne %struct.ieee80211_key_conf* %213, null
  br i1 %214, label %223, label %215

215:                                              ; preds = %206
  %216 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %217 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %218 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %217, i32 0, i32 0
  %219 = load %struct.ieee80211_key_conf**, %struct.ieee80211_key_conf*** %218, align 8
  %220 = load i32, i32* %18, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %219, i64 %221
  store %struct.ieee80211_key_conf* %216, %struct.ieee80211_key_conf** %222, align 8
  br label %227

223:                                              ; preds = %206
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %18, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %18, align 4
  br label %199

227:                                              ; preds = %215, %199
  %228 = load i32, i32* %18, align 4
  %229 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %230 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %229, i32 0, i32 0
  %231 = load %struct.ieee80211_key_conf**, %struct.ieee80211_key_conf*** %230, align 8
  %232 = call i32 @ARRAY_SIZE(%struct.ieee80211_key_conf** %231)
  %233 = icmp sge i32 %228, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %227
  %235 = load i32, i32* @ENOSPC, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %17, align 4
  br label %237

237:                                              ; preds = %234, %227
  br label %517

238:                                              ; preds = %193
  br label %239

239:                                              ; preds = %238, %153, %147
  %240 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %241 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %242 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %241, i32 0, i32 1
  %243 = call i32 @test_bit(i32 %240, i32* %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %239
  %246 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %247 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %246, i32 0, i32 3
  %248 = load i8*, i8** %247, align 8
  %249 = load i8*, i8** @STA_KEY_IDX_INVALID, align 8
  %250 = icmp eq i8* %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %245
  %252 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %253 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %252, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %517

254:                                              ; preds = %245, %239
  %255 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %256 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %257 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %256, i32 0, i32 1
  %258 = call i32 @test_bit(i32 %255, i32* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %368, label %260

260:                                              ; preds = %254
  %261 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %262 = icmp ne %struct.ieee80211_sta* %261, null
  br i1 %262, label %263, label %368

263:                                              ; preds = %260
  %264 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %265 = call i32 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %368

267:                                              ; preds = %263
  %268 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %269 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %368

274:                                              ; preds = %267
  %275 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %276 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = icmp eq i32 %277, 133
  br i1 %278, label %289, label %279

279:                                              ; preds = %274
  %280 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %281 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, 132
  br i1 %283, label %289, label %284

284:                                              ; preds = %279
  %285 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %286 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = icmp eq i32 %287, 131
  br i1 %288, label %289, label %368

289:                                              ; preds = %284, %279, %274
  %290 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %291 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %290)
  store %struct.iwl_mvm_sta* %291, %struct.iwl_mvm_sta** %14, align 8
  %292 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %293 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %16, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @rcu_access_pointer(i32 %298)
  %300 = call i32 @WARN_ON(i32 %299)
  %301 = load %struct.iwl_mvm_key_pn*, %struct.iwl_mvm_key_pn** %15, align 8
  %302 = load i32, i32* %22, align 4
  %303 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %304 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %303, i32 0, i32 2
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @struct_size(%struct.iwl_mvm_key_pn* %301, i32 %302, i32 %307)
  %309 = load i32, i32* @GFP_KERNEL, align 4
  %310 = call %struct.iwl_mvm_key_pn* @kzalloc(i32 %308, i32 %309)
  store %struct.iwl_mvm_key_pn* %310, %struct.iwl_mvm_key_pn** %15, align 8
  %311 = load %struct.iwl_mvm_key_pn*, %struct.iwl_mvm_key_pn** %15, align 8
  %312 = icmp ne %struct.iwl_mvm_key_pn* %311, null
  br i1 %312, label %316, label %313

313:                                              ; preds = %289
  %314 = load i32, i32* @ENOMEM, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %17, align 4
  br label %517

316:                                              ; preds = %289
  store i32 0, i32* %21, align 4
  br label %317

317:                                              ; preds = %355, %316
  %318 = load i32, i32* %21, align 4
  %319 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %358

321:                                              ; preds = %317
  %322 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %323 = load i32, i32* %21, align 4
  %324 = call i32 @ieee80211_get_key_rx_seq(%struct.ieee80211_key_conf* %322, i32 %323, %struct.ieee80211_key_seq* %20)
  store i32 0, i32* %22, align 4
  br label %325

325:                                              ; preds = %351, %321
  %326 = load i32, i32* %22, align 4
  %327 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %328 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %327, i32 0, i32 2
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = icmp slt i32 %326, %331
  br i1 %332, label %333, label %354

333:                                              ; preds = %325
  %334 = load %struct.iwl_mvm_key_pn*, %struct.iwl_mvm_key_pn** %15, align 8
  %335 = getelementptr inbounds %struct.iwl_mvm_key_pn, %struct.iwl_mvm_key_pn* %334, i32 0, i32 0
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %335, align 8
  %337 = load i32, i32* %22, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %21, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %20, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @IEEE80211_CCMP_PN_LEN, align 4
  %350 = call i32 @memcpy(i32 %345, i32 %348, i32 %349)
  br label %351

351:                                              ; preds = %333
  %352 = load i32, i32* %22, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %22, align 4
  br label %325

354:                                              ; preds = %325
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %21, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %21, align 4
  br label %317

358:                                              ; preds = %317
  %359 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %360 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %16, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.iwl_mvm_key_pn*, %struct.iwl_mvm_key_pn** %15, align 8
  %367 = call i32 @rcu_assign_pointer(i32 %365, %struct.iwl_mvm_key_pn* %366)
  br label %368

368:                                              ; preds = %358, %284, %267, %263, %260, %254
  %369 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %370 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %371 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %370, i32 0, i32 1
  %372 = call i32 @test_bit(i32 %369, i32* %371)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %368
  %375 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %376 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %375, i32 0, i32 3
  %377 = load i8*, i8** %376, align 8
  store i8* %377, i8** %19, align 8
  br label %380

378:                                              ; preds = %368
  %379 = load i8*, i8** @STA_KEY_IDX_INVALID, align 8
  store i8* %379, i8** %19, align 8
  br label %380

380:                                              ; preds = %378, %374
  %381 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %382 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %381, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %383 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %384 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %385 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %386 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %387 = load i8*, i8** %19, align 8
  %388 = call i32 @iwl_mvm_set_sta_key(%struct.iwl_mvm* %383, %struct.ieee80211_vif* %384, %struct.ieee80211_sta* %385, %struct.ieee80211_key_conf* %386, i8* %387)
  store i32 %388, i32* %17, align 4
  %389 = load i32, i32* %17, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %405

391:                                              ; preds = %380
  %392 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %393 = call i32 @IWL_WARN(%struct.iwl_mvm* %392, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %394 = load i8*, i8** @STA_KEY_IDX_INVALID, align 8
  %395 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %396 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %395, i32 0, i32 3
  store i8* %394, i8** %396, align 8
  %397 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %398 = call i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %397)
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %391
  %401 = load i32, i32* @EOPNOTSUPP, align 4
  %402 = sub nsw i32 0, %401
  store i32 %402, i32* %17, align 4
  br label %404

403:                                              ; preds = %391
  store i32 0, i32* %17, align 4
  br label %404

404:                                              ; preds = %403, %400
  br label %405

405:                                              ; preds = %404, %380
  br label %517

406:                                              ; preds = %139
  %407 = load i32, i32* @ENOENT, align 4
  %408 = sub nsw i32 0, %407
  store i32 %408, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %409

409:                                              ; preds = %434, %406
  %410 = load i32, i32* %18, align 4
  %411 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %412 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %411, i32 0, i32 0
  %413 = load %struct.ieee80211_key_conf**, %struct.ieee80211_key_conf*** %412, align 8
  %414 = call i32 @ARRAY_SIZE(%struct.ieee80211_key_conf** %413)
  %415 = icmp slt i32 %410, %414
  br i1 %415, label %416, label %437

416:                                              ; preds = %409
  %417 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %418 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %417, i32 0, i32 0
  %419 = load %struct.ieee80211_key_conf**, %struct.ieee80211_key_conf*** %418, align 8
  %420 = load i32, i32* %18, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %419, i64 %421
  %423 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %422, align 8
  %424 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %425 = icmp eq %struct.ieee80211_key_conf* %423, %424
  br i1 %425, label %426, label %433

426:                                              ; preds = %416
  %427 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %428 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %427, i32 0, i32 0
  %429 = load %struct.ieee80211_key_conf**, %struct.ieee80211_key_conf*** %428, align 8
  %430 = load i32, i32* %18, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %429, i64 %431
  store %struct.ieee80211_key_conf* null, %struct.ieee80211_key_conf** %432, align 8
  store i32 0, i32* %17, align 4
  br label %433

433:                                              ; preds = %426, %416
  br label %434

434:                                              ; preds = %433
  %435 = load i32, i32* %18, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %18, align 4
  br label %409

437:                                              ; preds = %409
  %438 = load i32, i32* %17, align 4
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %437
  br label %517

441:                                              ; preds = %437
  %442 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %443 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %442, i32 0, i32 3
  %444 = load i8*, i8** %443, align 8
  %445 = load i8*, i8** @STA_KEY_IDX_INVALID, align 8
  %446 = icmp eq i8* %444, %445
  br i1 %446, label %447, label %448

447:                                              ; preds = %441
  store i32 0, i32* %17, align 4
  br label %517

448:                                              ; preds = %441
  %449 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %450 = icmp ne %struct.ieee80211_sta* %449, null
  br i1 %450, label %451, label %506

451:                                              ; preds = %448
  %452 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %453 = call i32 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm* %452)
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %506

455:                                              ; preds = %451
  %456 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %457 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %456, i32 0, i32 2
  %458 = load i32, i32* %457, align 8
  %459 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %460 = and i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %506

462:                                              ; preds = %455
  %463 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %464 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = icmp eq i32 %465, 133
  br i1 %466, label %477, label %467

467:                                              ; preds = %462
  %468 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %469 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = icmp eq i32 %470, 132
  br i1 %471, label %477, label %472

472:                                              ; preds = %467
  %473 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %474 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = icmp eq i32 %475, 131
  br i1 %476, label %477, label %506

477:                                              ; preds = %472, %467, %462
  %478 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %479 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %478)
  store %struct.iwl_mvm_sta* %479, %struct.iwl_mvm_sta** %14, align 8
  %480 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %481 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %480, i32 0, i32 0
  %482 = load i32*, i32** %481, align 8
  %483 = load i32, i32* %16, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %482, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %488 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %487, i32 0, i32 0
  %489 = call i32 @lockdep_is_held(i32* %488)
  %490 = call %struct.iwl_mvm_key_pn* @rcu_dereference_protected(i32 %486, i32 %489)
  store %struct.iwl_mvm_key_pn* %490, %struct.iwl_mvm_key_pn** %15, align 8
  %491 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %492 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %491, i32 0, i32 0
  %493 = load i32*, i32** %492, align 8
  %494 = load i32, i32* %16, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %493, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = call i32 @RCU_INIT_POINTER(i32 %497, i32* null)
  %499 = load %struct.iwl_mvm_key_pn*, %struct.iwl_mvm_key_pn** %15, align 8
  %500 = icmp ne %struct.iwl_mvm_key_pn* %499, null
  br i1 %500, label %501, label %505

501:                                              ; preds = %477
  %502 = load %struct.iwl_mvm_key_pn*, %struct.iwl_mvm_key_pn** %15, align 8
  %503 = load i32, i32* @rcu_head, align 4
  %504 = call i32 @kfree_rcu(%struct.iwl_mvm_key_pn* %502, i32 %503)
  br label %505

505:                                              ; preds = %501, %477
  br label %506

506:                                              ; preds = %505, %472, %455, %451, %448
  %507 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %508 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %507, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %509 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %510 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %511 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %512 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %513 = call i32 @iwl_mvm_remove_sta_key(%struct.iwl_mvm* %509, %struct.ieee80211_vif* %510, %struct.ieee80211_sta* %511, %struct.ieee80211_key_conf* %512)
  store i32 %513, i32* %17, align 4
  br label %517

514:                                              ; preds = %139
  %515 = load i32, i32* @EINVAL, align 4
  %516 = sub nsw i32 0, %515
  store i32 %516, i32* %17, align 4
  br label %517

517:                                              ; preds = %514, %506, %447, %440, %405, %313, %251, %237, %189
  %518 = load i32, i32* %17, align 4
  store i32 %518, i32* %6, align 4
  br label %519

519:                                              ; preds = %517, %135, %113, %110, %73, %32
  %520 = load i32, i32* %6, align 4
  ret i32 %520
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ieee80211_hw_check(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ieee80211_key_conf**) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local %struct.iwl_mvm_key_pn* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.iwl_mvm_key_pn*, i32, i32) #1

declare dso_local i32 @ieee80211_get_key_rx_seq(%struct.ieee80211_key_conf*, i32, %struct.ieee80211_key_seq*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.iwl_mvm_key_pn*) #1

declare dso_local i32 @iwl_mvm_set_sta_key(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*, i8*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_mvm*, i8*) #1

declare dso_local %struct.iwl_mvm_key_pn* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.iwl_mvm_key_pn*, i32) #1

declare dso_local i32 @iwl_mvm_remove_sta_key(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
