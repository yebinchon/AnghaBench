; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_coex.c_iwl_mvm_bt_notif_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_coex.c_iwl_mvm_bt_notif_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.iwl_mvm_vif = type { i64, i32, %struct.TYPE_13__, i32, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.iwl_bt_iterator_data = type { i32, i32, %struct.ieee80211_chanctx_conf*, i32, %struct.ieee80211_chanctx_conf*, %struct.iwl_mvm*, %struct.TYPE_17__* }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.iwl_mvm = type { %struct.TYPE_12__, %struct.TYPE_21__*, %struct.TYPE_20__, %struct.TYPE_16__*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@IEEE80211_SMPS_AUTOMATIC = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IWL_MVM_SMPS_REQ_BT_COEX = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_COEX_SCHEMA_2 = common dso_local global i32 0, align 4
@BT_VERY_HIGH_TRAFFIC = common dso_local global i64 0, align 8
@BT_HIGH_TRAFFIC = common dso_local global i64 0, align 8
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@BT_LOW_TRAFFIC = common dso_local global i64 0, align 8
@IEEE80211_SMPS_DYNAMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"mac %d: bt_activity_grading %d smps_req %d\0A\00", align 1
@BT_COEX_LOOSE_LUT = common dso_local global i64 0, align 8
@BT_OFF = common dso_local global i64 0, align 8
@IWL_MVM_BT_COEX_EN_RED_TXP_THRESH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't send BT_CONFIG cmd\0A\00", align 1
@IWL_MVM_BT_COEX_DIS_RED_TXP_THRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_bt_notif_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_bt_notif_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mvm_vif*, align 8
  %8 = alloca %struct.iwl_bt_iterator_data*, align 8
  %9 = alloca %struct.iwl_mvm*, align 8
  %10 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %16 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %15)
  store %struct.iwl_mvm_vif* %16, %struct.iwl_mvm_vif** %7, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.iwl_bt_iterator_data*
  store %struct.iwl_bt_iterator_data* %18, %struct.iwl_bt_iterator_data** %8, align 8
  %19 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %20 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %19, i32 0, i32 5
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %20, align 8
  store %struct.iwl_mvm* %21, %struct.iwl_mvm** %9, align 8
  %22 = load i32, i32* @IEEE80211_SMPS_AUTOMATIC, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %23, i32 0, i32 4
  %25 = call i32 @lockdep_assert_held(i32* %24)
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %37 [
    i32 128, label %29
    i32 129, label %30
  ]

29:                                               ; preds = %3
  br label %38

30:                                               ; preds = %3
  %31 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %390

36:                                               ; preds = %30
  br label %38

37:                                               ; preds = %3
  br label %390

38:                                               ; preds = %36, %29
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %41)
  store %struct.ieee80211_chanctx_conf* %42, %struct.ieee80211_chanctx_conf** %10, align 8
  %43 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %44 = icmp ne %struct.ieee80211_chanctx_conf* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %47 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %45, %38
  %55 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %56 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 128
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %61 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %62 = load i32, i32* @IWL_MVM_SMPS_REQ_BT_COEX, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @iwl_mvm_update_smps(%struct.iwl_mvm* %60, %struct.ieee80211_vif* %61, i32 %62, i32 %63)
  %65 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %66 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %67 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm* %65, i32 %68, i32 0)
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %71 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %72 = call i32 @iwl_mvm_bt_coex_enable_rssi_event(%struct.iwl_mvm* %70, %struct.ieee80211_vif* %71, i32 0, i32 0)
  br label %73

73:                                               ; preds = %59, %54
  br label %390

74:                                               ; preds = %45
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %76 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %75, i32 0, i32 3
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* @IWL_UCODE_TLV_CAPA_COEX_SCHEMA_2, align 4
  %80 = call i64 @fw_has_capa(i32* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i64, i64* @BT_VERY_HIGH_TRAFFIC, align 8
  store i64 %83, i64* %13, align 8
  br label %86

84:                                               ; preds = %74
  %85 = load i64, i64* @BT_HIGH_TRAFFIC, align 8
  store i64 %85, i64* %13, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %88 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %87, i32 0, i32 6
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @le32_to_cpu(i32 %91)
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %13, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  store i32 %97, i32* %11, align 4
  br label %105

98:                                               ; preds = %86
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* @BT_LOW_TRAFFIC, align 8
  %101 = icmp sge i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* @IEEE80211_SMPS_DYNAMIC, align 4
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %102, %98
  br label %105

105:                                              ; preds = %104, %96
  %106 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %107 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* @IEEE80211_SMPS_AUTOMATIC, align 4
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %111, %105
  %114 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %115 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %114, i32 0, i32 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  %117 = icmp ne %struct.TYPE_18__* %116, null
  br i1 %117, label %118, label %133

118:                                              ; preds = %113
  %119 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %120 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %124 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %123, i32 0, i32 4
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @BIT(i32 %127)
  %129 = and i32 %122, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %118
  %132 = load i32, i32* @IEEE80211_SMPS_AUTOMATIC, align 4
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %131, %118, %113
  %134 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %135 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %134, i32 0, i32 5
  %136 = load %struct.iwl_mvm*, %struct.iwl_mvm** %135, align 8
  %137 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %138 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %12, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @IWL_DEBUG_COEX(%struct.iwl_mvm* %136, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %139, i64 %140, i32 %141)
  %143 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %144 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 128
  br i1 %146, label %147, label %153

147:                                              ; preds = %133
  %148 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %149 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %150 = load i32, i32* @IWL_MVM_SMPS_REQ_BT_COEX, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @iwl_mvm_update_smps(%struct.iwl_mvm* %148, %struct.ieee80211_vif* %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %147, %133
  %154 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %155 = call i64 @iwl_mvm_vif_low_latency(%struct.iwl_mvm_vif* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %153
  %158 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %159 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  %160 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %161 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %160, i32 0, i32 4
  %162 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %161, align 8
  %163 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %164 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %163, i32 0, i32 2
  store %struct.ieee80211_chanctx_conf* %162, %struct.ieee80211_chanctx_conf** %164, align 8
  %165 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %166 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %167 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %166, i32 0, i32 4
  store %struct.ieee80211_chanctx_conf* %165, %struct.ieee80211_chanctx_conf** %167, align 8
  br label %168

168:                                              ; preds = %157, %153
  %169 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %170 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 129
  br i1 %172, label %173, label %244

173:                                              ; preds = %168
  %174 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %175 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %173
  br label %390

179:                                              ; preds = %173
  %180 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %181 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %182 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %181, i32 0, i32 4
  %183 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %182, align 8
  %184 = icmp eq %struct.ieee80211_chanctx_conf* %180, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %390

186:                                              ; preds = %179
  %187 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %188 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %200, label %191

191:                                              ; preds = %186
  %192 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %193 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %192, i32 0, i32 4
  %194 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %193, align 8
  %195 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %196 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %195, i32 0, i32 2
  store %struct.ieee80211_chanctx_conf* %194, %struct.ieee80211_chanctx_conf** %196, align 8
  %197 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %198 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %199 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %198, i32 0, i32 4
  store %struct.ieee80211_chanctx_conf* %197, %struct.ieee80211_chanctx_conf** %199, align 8
  br label %204

200:                                              ; preds = %186
  %201 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %202 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %203 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %202, i32 0, i32 2
  store %struct.ieee80211_chanctx_conf* %201, %struct.ieee80211_chanctx_conf** %203, align 8
  br label %204

204:                                              ; preds = %200, %191
  %205 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %206 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %205, i32 0, i32 4
  %207 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %206, align 8
  %208 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %209 = icmp eq %struct.ieee80211_chanctx_conf* %207, %208
  br i1 %209, label %210, label %223

210:                                              ; preds = %204
  %211 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %212 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %217 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %222 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %221, i32 0, i32 3
  store i32 %220, i32* %222, align 8
  br label %243

223:                                              ; preds = %204
  %224 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %225 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %224, i32 0, i32 2
  %226 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %225, align 8
  %227 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %228 = icmp eq %struct.ieee80211_chanctx_conf* %226, %227
  br i1 %228, label %229, label %242

229:                                              ; preds = %223
  %230 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %231 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %236 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %241 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %229, %223
  br label %243

243:                                              ; preds = %242, %210
  br label %390

244:                                              ; preds = %168
  %245 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %246 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %245, i32 0, i32 4
  %247 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %246, align 8
  %248 = icmp ne %struct.ieee80211_chanctx_conf* %247, null
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %251 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %250, i32 0, i32 4
  %252 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %251, align 8
  %253 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %254 = icmp eq %struct.ieee80211_chanctx_conf* %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %249, %244
  %256 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %257 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %258 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %257, i32 0, i32 4
  store %struct.ieee80211_chanctx_conf* %256, %struct.ieee80211_chanctx_conf** %258, align 8
  br label %269

259:                                              ; preds = %249
  %260 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %261 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %260, i32 0, i32 2
  %262 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %261, align 8
  %263 = icmp ne %struct.ieee80211_chanctx_conf* %262, null
  br i1 %263, label %268, label %264

264:                                              ; preds = %259
  %265 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %266 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %267 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %266, i32 0, i32 2
  store %struct.ieee80211_chanctx_conf* %265, %struct.ieee80211_chanctx_conf** %267, align 8
  br label %268

268:                                              ; preds = %264, %259
  br label %269

269:                                              ; preds = %268, %255
  %270 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %271 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %270, i32 0, i32 4
  %272 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %271, align 8
  %273 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %274 = icmp eq %struct.ieee80211_chanctx_conf* %272, %273
  br i1 %274, label %275, label %288

275:                                              ; preds = %269
  %276 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %277 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %282 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %287 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %286, i32 0, i32 3
  store i32 %285, i32* %287, align 8
  br label %308

288:                                              ; preds = %269
  %289 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %290 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %289, i32 0, i32 2
  %291 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %290, align 8
  %292 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %293 = icmp eq %struct.ieee80211_chanctx_conf* %291, %292
  br i1 %293, label %294, label %307

294:                                              ; preds = %288
  %295 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %296 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %301 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds i32, i32* %299, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %306 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %305, i32 0, i32 1
  store i32 %304, i32* %306, align 4
  br label %307

307:                                              ; preds = %294, %288
  br label %308

308:                                              ; preds = %307, %275
  %309 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %310 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %311 = call i64 @iwl_get_coex_type(%struct.iwl_mvm* %309, %struct.ieee80211_vif* %310)
  %312 = load i64, i64* @BT_COEX_LOOSE_LUT, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %335, label %314

314:                                              ; preds = %308
  %315 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %316 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %315, i32 0, i32 1
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %335, label %321

321:                                              ; preds = %314
  %322 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %323 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %335

327:                                              ; preds = %321
  %328 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %329 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = call i64 @le32_to_cpu(i32 %331)
  %333 = load i64, i64* @BT_OFF, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %344

335:                                              ; preds = %327, %321, %314, %308
  %336 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %337 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %338 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = call i64 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm* %336, i32 %339, i32 0)
  %341 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %342 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %343 = call i32 @iwl_mvm_bt_coex_enable_rssi_event(%struct.iwl_mvm* %341, %struct.ieee80211_vif* %342, i32 0, i32 0)
  br label %390

344:                                              ; preds = %327
  %345 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %346 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  store i32 %348, i32* %14, align 4
  %349 = load i32, i32* %14, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %352, label %351

351:                                              ; preds = %344
  store i32 -100, i32* %14, align 4
  br label %352

352:                                              ; preds = %351, %344
  %353 = load i32, i32* %14, align 4
  %354 = load i32, i32* @IWL_MVM_BT_COEX_EN_RED_TXP_THRESH, align 4
  %355 = sub nsw i32 0, %354
  %356 = icmp sgt i32 %353, %355
  br i1 %356, label %357, label %368

357:                                              ; preds = %352
  %358 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %359 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %360 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = call i64 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm* %358, i32 %361, i32 1)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %357
  %365 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %366 = call i32 @IWL_ERR(%struct.iwl_mvm* %365, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %367

367:                                              ; preds = %364, %357
  br label %385

368:                                              ; preds = %352
  %369 = load i32, i32* %14, align 4
  %370 = load i32, i32* @IWL_MVM_BT_COEX_DIS_RED_TXP_THRESH, align 4
  %371 = sub nsw i32 0, %370
  %372 = icmp slt i32 %369, %371
  br i1 %372, label %373, label %384

373:                                              ; preds = %368
  %374 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %375 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %376 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 8
  %378 = call i64 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm* %374, i32 %377, i32 0)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %373
  %381 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %382 = call i32 @IWL_ERR(%struct.iwl_mvm* %381, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %383

383:                                              ; preds = %380, %373
  br label %384

384:                                              ; preds = %383, %368
  br label %385

385:                                              ; preds = %384, %367
  %386 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %387 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %388 = load i32, i32* %14, align 4
  %389 = call i32 @iwl_mvm_bt_coex_enable_rssi_event(%struct.iwl_mvm* %386, %struct.ieee80211_vif* %387, i32 1, i32 %388)
  br label %390

390:                                              ; preds = %385, %335, %243, %185, %178, %73, %37, %35
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i32 @iwl_mvm_update_smps(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i64 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @iwl_mvm_bt_coex_enable_rssi_event(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @IWL_DEBUG_COEX(%struct.iwl_mvm*, i8*, i64, i64, i32) #1

declare dso_local i64 @iwl_mvm_vif_low_latency(%struct.iwl_mvm_vif*) #1

declare dso_local i64 @iwl_get_coex_type(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
