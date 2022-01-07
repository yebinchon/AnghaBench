; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_mvm_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_mvm_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.iwl_mvm = type { i32, i32, i32, i8*, i8*, %struct.TYPE_27__*, %struct.TYPE_26__, i32*, %struct.TYPE_25__*, i32, %struct.TYPE_23__, i32*, %struct.TYPE_17__*, i32, %struct.TYPE_18__, i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.cfg80211_chan_def = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to start RT ucode: %d\0A\00", align 1
@ERFKILL = common dso_local global i32 0, align 4
@FW_DBG_TRIGGER_DRIVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to initialize Smart Fifo\0A\00", align 1
@FW_DBG_INVALID = common dso_local global i32 0, align 4
@FW_DBG_START_FROM_ALIVE = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_22000 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to configure RX queues: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to configure RSS queues: %d\0A\00", align 1
@IWL_MVM_INVALID_STA = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_DQA_SUPPORT = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@NUM_PHY_CTX = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_SET_LTR_GEN2 = common dso_local global i32 0, align 4
@IWL_MVM_STATUS_HW_CTKILL = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_UMAC_SCAN = common dso_local global i32 0, align 4
@IWL_SCAN_TYPE_NOT_SET = common dso_local global i8* null, align 8
@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@ERROR_RECOVERY_UPDATE_DB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"ECKV table doesn't exist in BIOS\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"BIOS contains WGDS but no WRDS\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"RT uCode started.\0A\00", align 1
@iwlmvm_mod_params = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@CTDP_CMD_OPERATION_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_up(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.cfg80211_chan_def, align 4
  %8 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_supported_band* null, %struct.ieee80211_supported_band** %8, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 15
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 12
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %15 = call i32 @iwl_trans_start_hw(%struct.TYPE_17__* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %383

20:                                               ; preds = %1
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %22 = call i32 @iwl_mvm_load_rt_fw(%struct.iwl_mvm* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ERFKILL, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %34, i32 0, i32 14
  %36 = load i32, i32* @FW_DBG_TRIGGER_DRIVER, align 4
  %37 = call i32 @iwl_fw_dbg_error_collect(%struct.TYPE_18__* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %25
  br label %372

39:                                               ; preds = %20
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %40, i32 0, i32 14
  %42 = call i32 @iwl_get_shared_mem_conf(%struct.TYPE_18__* %41)
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %44 = call i32 @iwl_mvm_sf_update(%struct.iwl_mvm* %43, i32* null, i32 0)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %49 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %39
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %51, i32 0, i32 12
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = call i32 @iwl_trans_dbg_ini_valid(%struct.TYPE_17__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %80, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @FW_DBG_INVALID, align 4
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %58, i32 0, i32 14
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %62, i32 0, i32 5
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %56
  %70 = load i32, i32* @FW_DBG_START_FROM_ALIVE, align 4
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %71, i32 0, i32 14
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %56
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %76, i32 0, i32 14
  %78 = load i32, i32* @FW_DBG_START_FROM_ALIVE, align 4
  %79 = call i32 @iwl_fw_start_dbg_conf(%struct.TYPE_18__* %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %50
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %83 = call i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm* %82)
  %84 = call i32 @iwl_send_tx_ant_cfg(%struct.iwl_mvm* %81, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %372

88:                                               ; preds = %80
  %89 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %90 = call i32 @iwl_mvm_has_unified_ucode(%struct.iwl_mvm* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %88
  %93 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %94 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %93, i32 0, i32 13
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @iwl_send_phy_db_data(i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %372

100:                                              ; preds = %92
  %101 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %102 = call i32 @iwl_send_phy_cfg_cmd(%struct.iwl_mvm* %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %372

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %88
  %108 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %109 = call i32 @iwl_mvm_send_bt_init_conf(%struct.iwl_mvm* %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %372

113:                                              ; preds = %107
  %114 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %115 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %114, i32 0, i32 12
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @IWL_DEVICE_FAMILY_22000, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %113
  %124 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %125 = call i32 @iwl_configure_rxq(%struct.iwl_mvm* %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  br label %372

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132, %113
  %134 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %135 = call i64 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %139 = call i32 @iwl_send_rss_cfg_cmd(%struct.iwl_mvm* %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %144 = load i32, i32* %4, align 4
  %145 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  br label %372

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %146, %133
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %164, %147
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %151 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %150, i32 0, i32 11
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @ARRAY_SIZE(i32* %152)
  %154 = icmp slt i32 %149, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %148
  %156 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %157 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %156, i32 0, i32 11
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @RCU_INIT_POINTER(i32 %162, i32* null)
  br label %164

164:                                              ; preds = %155
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %5, align 4
  br label %148

167:                                              ; preds = %148
  %168 = load i32, i32* @IWL_MVM_INVALID_STA, align 4
  %169 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %170 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %169, i32 0, i32 10
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  store i32 %168, i32* %172, align 4
  %173 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %174 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %173, i32 0, i32 9
  %175 = call i32 @memset(i32* %174, i32 255, i32 4)
  %176 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %177 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %176, i32 0, i32 5
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 0
  %180 = load i32, i32* @IWL_UCODE_TLV_CAPA_DQA_SUPPORT, align 4
  %181 = call i64 @fw_has_capa(i32* %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %167
  %184 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %185 = call i32 @iwl_mvm_send_dqa_cmd(%struct.iwl_mvm* %184)
  store i32 %185, i32* %4, align 4
  %186 = load i32, i32* %4, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %372

189:                                              ; preds = %183
  br label %190

190:                                              ; preds = %189, %167
  %191 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %192 = call i32 @iwl_mvm_add_aux_sta(%struct.iwl_mvm* %191)
  store i32 %192, i32* %4, align 4
  %193 = load i32, i32* %4, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %372

196:                                              ; preds = %190
  store i32 0, i32* %5, align 4
  br label %197

197:                                              ; preds = %206, %196
  %198 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %199 = icmp ne %struct.ieee80211_supported_band* %198, null
  br i1 %199, label %204, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %203 = icmp slt i32 %201, %202
  br label %204

204:                                              ; preds = %200, %197
  %205 = phi i1 [ false, %197 ], [ %203, %200 ]
  br i1 %205, label %206, label %219

206:                                              ; preds = %204
  %207 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %208 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %207, i32 0, i32 8
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 0
  %213 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %212, align 8
  %214 = load i32, i32* %5, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %5, align 4
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %213, i64 %216
  %218 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %217, align 8
  store %struct.ieee80211_supported_band* %218, %struct.ieee80211_supported_band** %8, align 8
  br label %197

219:                                              ; preds = %204
  %220 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %221 = icmp ne %struct.ieee80211_supported_band* %220, null
  %222 = xor i1 %221, true
  %223 = zext i1 %222 to i32
  %224 = call i64 @WARN_ON_ONCE(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %219
  br label %372

227:                                              ; preds = %219
  %228 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %229 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %228, i32 0, i32 0
  %230 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %229, align 8
  %231 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %230, i64 0
  store %struct.ieee80211_channel* %231, %struct.ieee80211_channel** %6, align 8
  %232 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %233 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %234 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %7, %struct.ieee80211_channel* %232, i32 %233)
  store i32 0, i32* %5, align 4
  br label %235

235:                                              ; preds = %252, %227
  %236 = load i32, i32* %5, align 4
  %237 = load i32, i32* @NUM_PHY_CTX, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %255

239:                                              ; preds = %235
  %240 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %241 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %242 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %241, i32 0, i32 7
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = call i32 @iwl_mvm_phy_ctxt_add(%struct.iwl_mvm* %240, i32* %246, %struct.cfg80211_chan_def* %7, i32 1, i32 1)
  store i32 %247, i32* %4, align 4
  %248 = load i32, i32* %4, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %239
  br label %372

251:                                              ; preds = %239
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %5, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %5, align 4
  br label %235

255:                                              ; preds = %235
  %256 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %257 = call i64 @iwl_mvm_is_tt_in_fw(%struct.iwl_mvm* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  %260 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %261 = call i32 @iwl_mvm_send_temp_report_ths_cmd(%struct.iwl_mvm* %260)
  br label %265

262:                                              ; preds = %255
  %263 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %264 = call i32 @iwl_mvm_tt_tx_backoff(%struct.iwl_mvm* %263, i32 0)
  br label %265

265:                                              ; preds = %262, %259
  %266 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %267 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %266, i32 0, i32 5
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %268, i32 0, i32 0
  %270 = load i32, i32* @IWL_UCODE_TLV_CAPA_SET_LTR_GEN2, align 4
  %271 = call i64 @fw_has_capa(i32* %269, i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %265
  %274 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %275 = call i32 @iwl_mvm_config_ltr(%struct.iwl_mvm* %274)
  %276 = call i32 @WARN_ON(i32 %275)
  br label %277

277:                                              ; preds = %273, %265
  %278 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %279 = call i32 @iwl_mvm_power_update_device(%struct.iwl_mvm* %278)
  store i32 %279, i32* %4, align 4
  %280 = load i32, i32* %4, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  br label %372

283:                                              ; preds = %277
  %284 = load i32, i32* @IWL_MVM_STATUS_HW_CTKILL, align 4
  %285 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %286 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %285, i32 0, i32 2
  %287 = call i64 @test_bit(i32 %284, i32* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %283
  %290 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %291 = call i32 @iwl_mvm_init_mcc(%struct.iwl_mvm* %290)
  store i32 %291, i32* %4, align 4
  %292 = load i32, i32* %4, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  br label %372

295:                                              ; preds = %289
  br label %296

296:                                              ; preds = %295, %283
  %297 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %298 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %297, i32 0, i32 5
  %299 = load %struct.TYPE_27__*, %struct.TYPE_27__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %299, i32 0, i32 0
  %301 = load i32, i32* @IWL_UCODE_TLV_CAPA_UMAC_SCAN, align 4
  %302 = call i64 @fw_has_capa(i32* %300, i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %317

304:                                              ; preds = %296
  %305 = load i8*, i8** @IWL_SCAN_TYPE_NOT_SET, align 8
  %306 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %307 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %306, i32 0, i32 4
  store i8* %305, i8** %307, align 8
  %308 = load i8*, i8** @IWL_SCAN_TYPE_NOT_SET, align 8
  %309 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %310 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %309, i32 0, i32 3
  store i8* %308, i8** %310, align 8
  %311 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %312 = call i32 @iwl_mvm_config_scan(%struct.iwl_mvm* %311)
  store i32 %312, i32* %4, align 4
  %313 = load i32, i32* %4, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %304
  br label %372

316:                                              ; preds = %304
  br label %317

317:                                              ; preds = %316, %296
  %318 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %319 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %320 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %319, i32 0, i32 2
  %321 = call i64 @test_bit(i32 %318, i32* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %317
  %324 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %325 = load i32, i32* @ERROR_RECOVERY_UPDATE_DB, align 4
  %326 = call i32 @iwl_mvm_send_recovery_cmd(%struct.iwl_mvm* %324, i32 %325)
  br label %327

327:                                              ; preds = %323, %317
  %328 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %329 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %332 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %331, i32 0, i32 0
  %333 = call i64 @iwl_acpi_get_eckv(i32 %330, i32* %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %327
  %336 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %337 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %336, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %338

338:                                              ; preds = %335, %327
  %339 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %340 = call i32 @iwl_mvm_ppag_init(%struct.iwl_mvm* %339)
  store i32 %340, i32* %4, align 4
  %341 = load i32, i32* %4, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %338
  br label %372

344:                                              ; preds = %338
  %345 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %346 = call i32 @iwl_mvm_sar_init(%struct.iwl_mvm* %345)
  store i32 %346, i32* %4, align 4
  %347 = load i32, i32* %4, align 4
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %344
  %350 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %351 = call i32 @iwl_mvm_sar_geo_init(%struct.iwl_mvm* %350)
  store i32 %351, i32* %4, align 4
  br label %363

352:                                              ; preds = %344
  %353 = load i32, i32* %4, align 4
  %354 = icmp sgt i32 %353, 0
  br i1 %354, label %355, label %362

355:                                              ; preds = %352
  %356 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %357 = call i32 @iwl_mvm_sar_get_wgds_table(%struct.iwl_mvm* %356)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %362, label %359

359:                                              ; preds = %355
  %360 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %361 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %360, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %362

362:                                              ; preds = %359, %355, %352
  br label %363

363:                                              ; preds = %362, %349
  %364 = load i32, i32* %4, align 4
  %365 = icmp slt i32 %364, 0
  br i1 %365, label %366, label %367

366:                                              ; preds = %363
  br label %372

367:                                              ; preds = %363
  %368 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %369 = call i32 @iwl_mvm_leds_sync(%struct.iwl_mvm* %368)
  %370 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %371 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %370, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %383

372:                                              ; preds = %366, %343, %315, %294, %282, %250, %226, %195, %188, %142, %128, %112, %105, %99, %87, %38
  %373 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @iwlmvm_mod_params, i32 0, i32 0), align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %372
  %376 = load i32, i32* %4, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %381, label %378

378:                                              ; preds = %375, %372
  %379 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %380 = call i32 @iwl_mvm_stop_device(%struct.iwl_mvm* %379)
  br label %381

381:                                              ; preds = %378, %375
  %382 = load i32, i32* %4, align 4
  store i32 %382, i32* %2, align 4
  br label %383

383:                                              ; preds = %381, %367, %18
  %384 = load i32, i32* %2, align 4
  ret i32 %384
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_trans_start_hw(%struct.TYPE_17__*) #1

declare dso_local i32 @iwl_mvm_load_rt_fw(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @iwl_fw_dbg_error_collect(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @iwl_get_shared_mem_conf(%struct.TYPE_18__*) #1

declare dso_local i32 @iwl_mvm_sf_update(%struct.iwl_mvm*, i32*, i32) #1

declare dso_local i32 @iwl_trans_dbg_ini_valid(%struct.TYPE_17__*) #1

declare dso_local i32 @iwl_fw_start_dbg_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @iwl_send_tx_ant_cfg(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_has_unified_ucode(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_send_phy_db_data(i32) #1

declare dso_local i32 @iwl_send_phy_cfg_cmd(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_send_bt_init_conf(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_configure_rxq(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_send_rss_cfg_cmd(%struct.iwl_mvm*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_send_dqa_cmd(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_add_aux_sta(%struct.iwl_mvm*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_add(%struct.iwl_mvm*, i32*, %struct.cfg80211_chan_def*, i32, i32) #1

declare dso_local i64 @iwl_mvm_is_tt_in_fw(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_send_temp_report_ths_cmd(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_tt_tx_backoff(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_config_ltr(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_power_update_device(%struct.iwl_mvm*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_mvm_init_mcc(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_config_scan(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_send_recovery_cmd(%struct.iwl_mvm*, i32) #1

declare dso_local i64 @iwl_acpi_get_eckv(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_mvm_ppag_init(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_sar_init(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_sar_geo_init(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_sar_get_wgds_table(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_leds_sync(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_stop_device(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
