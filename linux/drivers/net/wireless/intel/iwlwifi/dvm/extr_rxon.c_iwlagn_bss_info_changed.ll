; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rxon.c_iwlagn_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rxon.c_iwlagn_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.ieee80211_bss_conf = type { i32, i32, i64, i64, i64, i32, i32, i64 }
%struct.iwl_priv = type { i32, i64, i32, i32, %struct.iwl_rxon_context*, %struct.TYPE_9__, i32, i32 }
%struct.iwl_rxon_context = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@BSS_CHANGED_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"leave - not ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"leave - vif is NULL\0A\00", align 1
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_QOS = common dso_local global i32 0, align 4
@RXON_FLG_SHORT_PREAMBLE_MSK = common dso_local global i32 0, align 4
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@RXON_FILTER_ASSOC_MSK = common dso_local global i32 0, align 4
@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@IEEE80211_HT_OP_MODE_PROTECTION = common dso_local global i32 0, align 4
@IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@RXON_FLG_TGG_PROTECT_MSK = common dso_local global i32 0, align 4
@RXON_FLG_SELF_CTS_EN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@RXON_FILTER_BCON_AWARE_MSK = common dso_local global i32 0, align 4
@IWL_CHAIN_NOISE_DONE = common dso_local global i64 0, align 8
@BSS_CHANGED_IBSS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to %s IBSS station %pM\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Error updating beacon\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwlagn_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_priv*, align 8
  %10 = alloca %struct.iwl_rxon_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %13)
  store %struct.iwl_priv* %14, %struct.iwl_priv** %9, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %16 = call %struct.iwl_rxon_context* @iwl_rxon_ctx_from_vif(%struct.ieee80211_vif* %15)
  store %struct.iwl_rxon_context* %16, %struct.iwl_rxon_context** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %18 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %17, i32 0, i32 3
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @BSS_CHANGED_IDLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %31 = call i32 @iwlagn_lift_passive_no_rx(%struct.iwl_priv* %30)
  br label %32

32:                                               ; preds = %29, %24, %4
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %34 = call i32 @iwl_is_ready(%struct.iwl_priv* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %42 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %44 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %43, i32 0, i32 3
  %45 = call i32 @mutex_unlock(i32* %44)
  br label %402

46:                                               ; preds = %32
  %47 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %48 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %57 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %59 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %58, i32 0, i32 3
  %60 = call i32 @mutex_unlock(i32* %59)
  br label %402

61:                                               ; preds = %46
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @BSS_CHANGED_QOS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %74 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %77 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %80 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %81 = call i32 @iwlagn_update_qos(%struct.iwl_priv* %79, %struct.iwl_rxon_context* %80)
  br label %82

82:                                               ; preds = %72, %67
  %83 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @cpu_to_le16(i32 %86)
  %88 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %89 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 4
  %91 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %92 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %82
  %97 = load i32, i32* @RXON_FLG_SHORT_PREAMBLE_MSK, align 4
  %98 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %99 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %97
  store i32 %102, i32* %100, align 4
  br label %111

103:                                              ; preds = %82
  %104 = load i32, i32* @RXON_FLG_SHORT_PREAMBLE_MSK, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %107 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, %105
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %103, %96
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %153

116:                                              ; preds = %111
  %117 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %118 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %116
  %122 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %123 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %126 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %125, i32 0, i32 7
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %128 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %129 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %127
  store i32 %132, i32* %130, align 4
  br label %150

133:                                              ; preds = %116
  %134 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %135 = xor i32 %134, -1
  %136 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %137 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, %135
  store i32 %140, i32* %138, align 4
  %141 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %142 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %133
  %147 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %148 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  br label %149

149:                                              ; preds = %146, %133
  br label %150

150:                                              ; preds = %149, %121
  %151 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %152 = call i32 @iwlagn_bt_coex_rssi_monitor(%struct.iwl_priv* %151)
  br label %153

153:                                              ; preds = %150, %111
  %154 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %155 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %188

159:                                              ; preds = %153
  %160 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %161 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @IEEE80211_HT_OP_MODE_PROTECTION, align 4
  %164 = and i32 %162, %163
  %165 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %166 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 8
  %168 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %169 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %178 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  %180 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %181 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %182 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %183 = call i32 @iwlagn_check_needed_chains(%struct.iwl_priv* %180, %struct.iwl_rxon_context* %181, %struct.ieee80211_bss_conf* %182)
  %184 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %185 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %186 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %185, i32 0, i32 6
  %187 = call i32 @iwl_set_rxon_ht(%struct.iwl_priv* %184, i32* %186)
  br label %188

188:                                              ; preds = %159, %153
  %189 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %190 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %191 = call i32 @iwlagn_set_rxon_chain(%struct.iwl_priv* %189, %struct.iwl_rxon_context* %190)
  %192 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %193 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %188
  %197 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %198 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %196
  %203 = load i32, i32* @RXON_FLG_TGG_PROTECT_MSK, align 4
  %204 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %205 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %203
  store i32 %208, i32* %206, align 4
  br label %217

209:                                              ; preds = %196, %188
  %210 = load i32, i32* @RXON_FLG_TGG_PROTECT_MSK, align 4
  %211 = xor i32 %210, -1
  %212 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %213 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %215, %211
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %209, %202
  %218 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %219 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %217
  %223 = load i32, i32* @RXON_FLG_SELF_CTS_EN, align 4
  %224 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %225 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %223
  store i32 %228, i32* %226, align 4
  br label %237

229:                                              ; preds = %217
  %230 = load i32, i32* @RXON_FLG_SELF_CTS_EN, align 4
  %231 = xor i32 %230, -1
  %232 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %233 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = and i32 %235, %231
  store i32 %236, i32* %234, align 4
  br label %237

237:                                              ; preds = %229, %222
  %238 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %239 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %243 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @ETH_ALEN, align 4
  %246 = call i32 @memcpy(i32 %241, i32 %244, i32 %245)
  %247 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %248 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %258, label %252

252:                                              ; preds = %237
  %253 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %254 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %285

258:                                              ; preds = %252, %237
  %259 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %260 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %274

264:                                              ; preds = %258
  %265 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %266 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %267 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %269, %265
  store i32 %270, i32* %268, align 4
  %271 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %272 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %273 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %272, i32 0, i32 4
  store %struct.iwl_rxon_context* %271, %struct.iwl_rxon_context** %273, align 8
  br label %284

274:                                              ; preds = %258
  %275 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %276 = xor i32 %275, -1
  %277 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %278 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, %276
  store i32 %281, i32* %279, align 4
  %282 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %283 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %282, i32 0, i32 4
  store %struct.iwl_rxon_context* null, %struct.iwl_rxon_context** %283, align 8
  br label %284

284:                                              ; preds = %274, %264
  br label %285

285:                                              ; preds = %284, %252
  %286 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %287 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %312

291:                                              ; preds = %285
  %292 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %293 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %292, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %303, label %296

296:                                              ; preds = %291
  %297 = load i32, i32* @RXON_FILTER_BCON_AWARE_MSK, align 4
  %298 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %299 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = or i32 %301, %297
  store i32 %302, i32* %300, align 4
  br label %311

303:                                              ; preds = %291
  %304 = load i32, i32* @RXON_FILTER_BCON_AWARE_MSK, align 4
  %305 = xor i32 %304, -1
  %306 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %307 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %309, %305
  store i32 %310, i32* %308, align 4
  br label %311

311:                                              ; preds = %303, %296
  br label %312

312:                                              ; preds = %311, %285
  %313 = load i32, i32* %12, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %322, label %315

315:                                              ; preds = %312
  %316 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %317 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %316, i32 0, i32 2
  %318 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %319 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %318, i32 0, i32 1
  %320 = call i64 @memcmp(%struct.TYPE_10__* %317, i32* %319, i32 16)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %315, %312
  %323 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %324 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %325 = call i32 @iwlagn_commit_rxon(%struct.iwl_priv* %323, %struct.iwl_rxon_context* %324)
  br label %326

326:                                              ; preds = %322, %315
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %351

331:                                              ; preds = %326
  %332 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %333 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %332, i32 0, i32 3
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %351

336:                                              ; preds = %331
  %337 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %338 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %337, i32 0, i32 5
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @IWL_CHAIN_NOISE_DONE, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %346

343:                                              ; preds = %336
  %344 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %345 = call i32 @iwl_power_update_mode(%struct.iwl_priv* %344, i32 0)
  br label %346

346:                                              ; preds = %343, %336
  %347 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %348 = call i32 @iwlagn_chain_noise_reset(%struct.iwl_priv* %347)
  %349 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %350 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %349, i32 0, i32 2
  store i32 1, i32* %350, align 8
  br label %351

351:                                              ; preds = %346, %331, %326
  %352 = load i32, i32* %8, align 4
  %353 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %378

356:                                              ; preds = %351
  %357 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %358 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %359 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %360 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %359, i32 0, i32 2
  %361 = load i64, i64* %360, align 8
  %362 = call i32 @iwlagn_manage_ibss_station(%struct.iwl_priv* %357, %struct.ieee80211_vif* %358, i64 %361)
  store i32 %362, i32* %11, align 4
  %363 = load i32, i32* %11, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %377

365:                                              ; preds = %356
  %366 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %367 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %368 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  %371 = zext i1 %370 to i64
  %372 = select i1 %370, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %373 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %374 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %366, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %372, i32 %375)
  br label %377

377:                                              ; preds = %365, %356
  br label %378

378:                                              ; preds = %377, %351
  %379 = load i32, i32* %8, align 4
  %380 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %398

383:                                              ; preds = %378
  %384 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %385 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %384, i32 0, i32 4
  %386 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %385, align 8
  %387 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  %388 = icmp eq %struct.iwl_rxon_context* %386, %387
  br i1 %388, label %389, label %398

389:                                              ; preds = %383
  %390 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %391 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %392 = call i64 @iwlagn_update_beacon(%struct.iwl_priv* %390, %struct.ieee80211_vif* %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %397

394:                                              ; preds = %389
  %395 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %396 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %395, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %397

397:                                              ; preds = %394, %389
  br label %398

398:                                              ; preds = %397, %383, %378
  %399 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %400 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %399, i32 0, i32 3
  %401 = call i32 @mutex_unlock(i32* %400)
  br label %402

402:                                              ; preds = %398, %55, %40
  ret void
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_rxon_context* @iwl_rxon_ctx_from_vif(%struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwlagn_lift_passive_no_rx(%struct.iwl_priv*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iwl_is_ready(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iwlagn_update_qos(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @iwlagn_bt_coex_rssi_monitor(%struct.iwl_priv*) #1

declare dso_local i32 @iwlagn_check_needed_chains(%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.ieee80211_bss_conf*) #1

declare dso_local i32 @iwl_set_rxon_ht(%struct.iwl_priv*, i32*) #1

declare dso_local i32 @iwlagn_set_rxon_chain(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @memcmp(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @iwlagn_commit_rxon(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @iwl_power_update_mode(%struct.iwl_priv*, i32) #1

declare dso_local i32 @iwlagn_chain_noise_reset(%struct.iwl_priv*) #1

declare dso_local i32 @iwlagn_manage_ibss_station(%struct.iwl_priv*, %struct.ieee80211_vif*, i64) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i64 @iwlagn_update_beacon(%struct.iwl_priv*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
