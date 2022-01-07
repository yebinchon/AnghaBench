; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_sta_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_sta_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.ieee80211_sta = type { i32, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.iwl_mvm = type { i32, i32, i32, i32 }
%struct.iwl_mvm_vif = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.iwl_mvm_sta = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"station %pM state change %d->%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_STA_NONE = common dso_local global i32 0, align 4
@IEEE80211_STA_NOTEXIST = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"AP %pM beacon interval is %d, refusing due to firmware bug!\0A\00", align 1
@IWL_MVM_TDLS_STA_COUNT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"refusing TDLS sta\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@NL80211_TDLS_SETUP = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTH = common dso_local global i32 0, align 4
@IEEE80211_STA_ASSOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@iwlwifi_mod_params = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@IEEE80211_STA_AUTHORIZED = common dso_local global i32 0, align 4
@NL80211_TDLS_ENABLE_LINK = common dso_local global i32 0, align 4
@IWL_MVM_STATUS_HW_RESTART_REQUESTED = common dso_local global i32 0, align 4
@NL80211_TDLS_DISABLE_LINK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IWL_MVM_TDLS_FW_TID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i32)* @iwl_mvm_mac_sta_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_sta_state(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_mvm*, align 8
  %13 = alloca %struct.iwl_mvm_vif*, align 8
  %14 = alloca %struct.iwl_mvm_sta*, align 8
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %17 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %16)
  store %struct.iwl_mvm* %17, %struct.iwl_mvm** %12, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %19 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %18)
  store %struct.iwl_mvm_vif* %19, %struct.iwl_mvm_vif** %13, align 8
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %21 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %20)
  store %struct.iwl_mvm_sta* %21, %struct.iwl_mvm_sta** %14, align 8
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %27)
  %29 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %13, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %29, i32 0, i32 2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = icmp ne %struct.TYPE_9__* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON_ONCE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %5
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %447

40:                                               ; preds = %5
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %49, i32 0, i32 3
  %51 = call i32 @flush_work(i32* %50)
  br label %52

52:                                               ; preds = %48, %44, %40
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %140

62:                                               ; preds = %52
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %140

66:                                               ; preds = %62
  %67 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %68 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %66
  %73 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %74 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %76, 16
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %80 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %81 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %84 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @IWL_ERR(%struct.iwl_mvm* %79, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %15, align 4
  br label %408

90:                                               ; preds = %72, %66
  %91 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %90
  %96 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %97 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %95
  %101 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %102 = call i64 @iwl_mvm_tdls_sta_count(%struct.iwl_mvm* %101, i32* null)
  %103 = load i64, i64* @IWL_MVM_TDLS_STA_COUNT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %107 = call i32 @iwl_mvm_phy_ctx_count(%struct.iwl_mvm* %106)
  %108 = icmp sgt i32 %107, 1
  br i1 %108, label %109, label %114

109:                                              ; preds = %105, %100, %95
  %110 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %111 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* @EBUSY, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %15, align 4
  br label %408

114:                                              ; preds = %105, %90
  %115 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %116 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %117 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %118 = call i32 @iwl_mvm_add_sta(%struct.iwl_mvm* %115, %struct.ieee80211_vif* %116, %struct.ieee80211_sta* %117)
  store i32 %118, i32* %15, align 4
  %119 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %120 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %114
  %124 = load i32, i32* %15, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %128 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %129 = call i32 @iwl_mvm_recalc_tdls_state(%struct.iwl_mvm* %127, %struct.ieee80211_vif* %128, i32 1)
  %130 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %131 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %132 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %133 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @NL80211_TDLS_SETUP, align 4
  %136 = call i32 @iwl_mvm_tdls_check_trigger(%struct.iwl_mvm* %130, %struct.ieee80211_vif* %131, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %126, %123, %114
  %138 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %139 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  br label %407

140:                                              ; preds = %62, %52
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %140
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %150 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %149, i32 0, i32 0
  store i32 1, i32* %150, align 4
  %151 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %152 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %153 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %154 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @iwl_mvm_check_uapsd(%struct.iwl_mvm* %151, %struct.ieee80211_vif* %152, i32 %155)
  store i32 0, i32* %15, align 4
  br label %406

157:                                              ; preds = %144, %140
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %247

161:                                              ; preds = %157
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %247

165:                                              ; preds = %161
  %166 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %167 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %202

171:                                              ; preds = %165
  %172 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %173 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %177 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  store i64 %175, i64* %178, align 8
  %179 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %13, align 8
  %180 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %184 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %185 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %183, %struct.ieee80211_vif* %184, i32 0, i32* null)
  %186 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %187 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %171
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %191
  %195 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %196 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %197 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %198 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @iwl_mvm_cfg_he_sta(%struct.iwl_mvm* %195, %struct.ieee80211_vif* %196, i32 %199)
  br label %201

201:                                              ; preds = %194, %191, %171
  br label %232

202:                                              ; preds = %165
  %203 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %204 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %231

208:                                              ; preds = %202
  %209 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %210 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %214 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  store i64 %212, i64* %215, align 8
  %216 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %13, align 8
  %217 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %216, i32 0, i32 0
  store i32 0, i32* %217, align 8
  %218 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %219 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %208
  %224 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %225 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %226 = call i32 @iwl_mvm_check_he_obss_narrow_bw_ru(%struct.ieee80211_hw* %224, %struct.ieee80211_vif* %225)
  br label %227

227:                                              ; preds = %223, %208
  %228 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %229 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %230 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %228, %struct.ieee80211_vif* %229, i32 0, i32* null)
  br label %231

231:                                              ; preds = %227, %202
  br label %232

232:                                              ; preds = %231, %201
  %233 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %234 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %235 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %13, align 8
  %236 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %235, i32 0, i32 2
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @iwl_mvm_rs_rate_init(%struct.iwl_mvm* %233, %struct.ieee80211_sta* %234, i32 %241, i32 0)
  %243 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %244 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %245 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %246 = call i32 @iwl_mvm_update_sta(%struct.iwl_mvm* %243, %struct.ieee80211_vif* %244, %struct.ieee80211_sta* %245)
  store i32 %246, i32* %15, align 4
  br label %405

247:                                              ; preds = %161, %157
  %248 = load i32, i32* %10, align 4
  %249 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %293

251:                                              ; preds = %247
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %293

255:                                              ; preds = %251
  store i32 0, i32* %15, align 4
  %256 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %257 = call i32 @iwl_mvm_phy_ctx_count(%struct.iwl_mvm* %256)
  %258 = icmp sgt i32 %257, 1
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  %260 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %261 = call i32 @iwl_mvm_teardown_tdls_peers(%struct.iwl_mvm* %260)
  br label %262

262:                                              ; preds = %259, %255
  %263 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %264 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %262
  %268 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %269 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %270 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %271 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @NL80211_TDLS_ENABLE_LINK, align 4
  %274 = call i32 @iwl_mvm_tdls_check_trigger(%struct.iwl_mvm* %268, %struct.ieee80211_vif* %269, i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %267, %262
  %276 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %277 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %278 = call i32 @iwl_mvm_enable_beacon_filter(%struct.iwl_mvm* %276, %struct.ieee80211_vif* %277, i32 0)
  %279 = call i32 @WARN_ON(i32 %278)
  %280 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %281 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %282 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %280, %struct.ieee80211_vif* %281, i32 0, i32* null)
  %283 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %284 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %285 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %13, align 8
  %286 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %285, i32 0, i32 2
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @iwl_mvm_rs_rate_init(%struct.iwl_mvm* %283, %struct.ieee80211_sta* %284, i32 %291, i32 1)
  br label %404

293:                                              ; preds = %251, %247
  %294 = load i32, i32* %10, align 4
  %295 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %321

297:                                              ; preds = %293
  %298 = load i32, i32* %11, align 4
  %299 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %321

301:                                              ; preds = %297
  %302 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %303 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %304 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %302, %struct.ieee80211_vif* %303, i32 0, i32* null)
  %305 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %306 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %307 = call i32 @iwl_mvm_disable_beacon_filter(%struct.iwl_mvm* %305, %struct.ieee80211_vif* %306, i32 0)
  store i32 %307, i32* %15, align 4
  %308 = load i32, i32* %15, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %317

310:                                              ; preds = %301
  %311 = load i32, i32* @IWL_MVM_STATUS_HW_RESTART_REQUESTED, align 4
  %312 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %313 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %312, i32 0, i32 2
  %314 = call i64 @test_bit(i32 %311, i32* %313)
  %315 = icmp ne i64 %314, 0
  %316 = xor i1 %315, true
  br label %317

317:                                              ; preds = %310, %301
  %318 = phi i1 [ false, %301 ], [ %316, %310 ]
  %319 = zext i1 %318 to i32
  %320 = call i32 @WARN_ON(i32 %319)
  store i32 0, i32* %15, align 4
  br label %403

321:                                              ; preds = %297, %293
  %322 = load i32, i32* %10, align 4
  %323 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %344

325:                                              ; preds = %321
  %326 = load i32, i32* %11, align 4
  %327 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %344

329:                                              ; preds = %325
  %330 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %331 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %343

335:                                              ; preds = %329
  %336 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %13, align 8
  %337 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = add nsw i32 %338, -1
  store i32 %339, i32* %337, align 4
  %340 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %341 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %342 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %340, %struct.ieee80211_vif* %341, i32 0, i32* null)
  br label %343

343:                                              ; preds = %335, %329
  store i32 0, i32* %15, align 4
  br label %402

344:                                              ; preds = %325, %321
  %345 = load i32, i32* %10, align 4
  %346 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %347 = icmp eq i32 %345, %346
  br i1 %347, label %348, label %353

348:                                              ; preds = %344
  %349 = load i32, i32* %11, align 4
  %350 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %351 = icmp eq i32 %349, %350
  br i1 %351, label %352, label %353

352:                                              ; preds = %348
  store i32 0, i32* %15, align 4
  br label %401

353:                                              ; preds = %348, %344
  %354 = load i32, i32* %10, align 4
  %355 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %397

357:                                              ; preds = %353
  %358 = load i32, i32* %11, align 4
  %359 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %397

361:                                              ; preds = %357
  %362 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %363 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %364 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %365 = call i32 @iwl_mvm_rm_sta(%struct.iwl_mvm* %362, %struct.ieee80211_vif* %363, %struct.ieee80211_sta* %364)
  store i32 %365, i32* %15, align 4
  %366 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %367 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %381

370:                                              ; preds = %361
  %371 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %372 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %373 = call i32 @iwl_mvm_recalc_tdls_state(%struct.iwl_mvm* %371, %struct.ieee80211_vif* %372, i32 0)
  %374 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %375 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %376 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %377 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @NL80211_TDLS_DISABLE_LINK, align 4
  %380 = call i32 @iwl_mvm_tdls_check_trigger(%struct.iwl_mvm* %374, %struct.ieee80211_vif* %375, i32 %378, i32 %379)
  br label %381

381:                                              ; preds = %370, %361
  %382 = load i32, i32* %15, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %390

384:                                              ; preds = %381
  %385 = load i32, i32* @IWL_MVM_STATUS_HW_RESTART_REQUESTED, align 4
  %386 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %387 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %386, i32 0, i32 2
  %388 = call i64 @test_bit(i32 %385, i32* %387)
  %389 = icmp ne i64 %388, 0
  br label %390

390:                                              ; preds = %384, %381
  %391 = phi i1 [ false, %381 ], [ %389, %384 ]
  %392 = zext i1 %391 to i32
  %393 = call i64 @unlikely(i32 %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %390
  store i32 0, i32* %15, align 4
  br label %396

396:                                              ; preds = %395, %390
  br label %400

397:                                              ; preds = %357, %353
  %398 = load i32, i32* @EIO, align 4
  %399 = sub nsw i32 0, %398
  store i32 %399, i32* %15, align 4
  br label %400

400:                                              ; preds = %397, %396
  br label %401

401:                                              ; preds = %400, %352
  br label %402

402:                                              ; preds = %401, %343
  br label %403

403:                                              ; preds = %402, %317
  br label %404

404:                                              ; preds = %403, %275
  br label %405

405:                                              ; preds = %404, %232
  br label %406

406:                                              ; preds = %405, %148
  br label %407

407:                                              ; preds = %406, %137
  br label %408

408:                                              ; preds = %407, %109, %78
  %409 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %410 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %409, i32 0, i32 1
  %411 = call i32 @mutex_unlock(i32* %410)
  %412 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %413 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %445

416:                                              ; preds = %408
  %417 = load i32, i32* %15, align 4
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %445

419:                                              ; preds = %416
  %420 = load i32, i32* %10, align 4
  %421 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %422 = icmp eq i32 %420, %421
  br i1 %422, label %423, label %431

423:                                              ; preds = %419
  %424 = load i32, i32* %11, align 4
  %425 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %426 = icmp eq i32 %424, %425
  br i1 %426, label %427, label %431

427:                                              ; preds = %423
  %428 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %429 = load i32, i32* @IWL_MVM_TDLS_FW_TID, align 4
  %430 = call i32 @ieee80211_reserve_tid(%struct.ieee80211_sta* %428, i32 %429)
  br label %444

431:                                              ; preds = %423, %419
  %432 = load i32, i32* %10, align 4
  %433 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %434 = icmp eq i32 %432, %433
  br i1 %434, label %435, label %443

435:                                              ; preds = %431
  %436 = load i32, i32* %11, align 4
  %437 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %438 = icmp eq i32 %436, %437
  br i1 %438, label %439, label %443

439:                                              ; preds = %435
  %440 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %441 = load i32, i32* @IWL_MVM_TDLS_FW_TID, align 4
  %442 = call i32 @ieee80211_unreserve_tid(%struct.ieee80211_sta* %440, i32 %441)
  br label %443

443:                                              ; preds = %439, %435, %431
  br label %444

444:                                              ; preds = %443, %427
  br label %445

445:                                              ; preds = %444, %416, %408
  %446 = load i32, i32* %15, align 4
  store i32 %446, i32* %6, align 4
  br label %447

447:                                              ; preds = %445, %37
  %448 = load i32, i32* %6, align 4
  ret i32 %448
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32, i32) #1

declare dso_local i64 @iwl_mvm_tdls_sta_count(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @iwl_mvm_phy_ctx_count(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_add_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @iwl_mvm_recalc_tdls_state(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_tdls_check_trigger(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @iwl_mvm_check_uapsd(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32*) #1

declare dso_local i32 @iwl_mvm_cfg_he_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_check_he_obss_narrow_bw_ru(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_rs_rate_init(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @iwl_mvm_update_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @iwl_mvm_teardown_tdls_peers(%struct.iwl_mvm*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_enable_beacon_filter(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_disable_beacon_filter(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_mvm_rm_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ieee80211_reserve_tid(%struct.ieee80211_sta*, i32) #1

declare dso_local i32 @ieee80211_unreserve_tid(%struct.ieee80211_sta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
