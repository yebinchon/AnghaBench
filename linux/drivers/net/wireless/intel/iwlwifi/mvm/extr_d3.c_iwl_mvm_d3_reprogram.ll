; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_d3_reprogram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_d3_reprogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32* }
%struct.ieee80211_vif = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_vif = type { i32, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211_chanctx_conf = type { i32, i32, %struct.cfg80211_chan_def }
%struct.cfg80211_chan_def = type { i32 }
%struct.iwl_binding_cmd_v1 = type { i8**, i8*, i8*, i8* }
%struct.iwl_time_quota_cmd = type { i32 }
%struct.iwl_time_quota_data = type { i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@FW_CTXT_ACTION_ADD = common dso_local global i32 0, align 4
@MAX_MACS_IN_BINDING = common dso_local global i32 0, align 4
@FW_CTXT_INVALID = common dso_local global i32 0, align 4
@BINDING_CONTEXT_CMD = common dso_local global i32 0, align 4
@IWL_BINDING_CMD_SIZE_V1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to add binding: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Binding command failed: %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IWL_MVM_MAX_QUOTA = common dso_local global i32 0, align 4
@MAX_BINDINGS = common dso_local global i32 0, align 4
@TIME_QUOTA_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to send quota: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to initialize D3 LAR information\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @iwl_mvm_d3_reprogram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_d3_reprogram(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cfg80211_chan_def, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.iwl_binding_cmd_v1, align 8
  %16 = alloca %struct.iwl_time_quota_cmd, align 4
  %17 = alloca %struct.iwl_time_quota_data*, align 8
  %18 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %20 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %19)
  store %struct.iwl_mvm_vif* %20, %struct.iwl_mvm_vif** %8, align 8
  %21 = bitcast %struct.iwl_binding_cmd_v1* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 32, i1 false)
  %22 = bitcast %struct.iwl_time_quota_cmd* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %24 = call i32 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm* %23)
  %25 = call i64 @WARN_ON_ONCE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %271

30:                                               ; preds = %3
  %31 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %271

42:                                               ; preds = %30
  %43 = call i32 (...) @rcu_read_lock()
  %44 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %46)
  store %struct.ieee80211_chanctx_conf* %47, %struct.ieee80211_chanctx_conf** %9, align 8
  %48 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %9, align 8
  %49 = icmp ne %struct.ieee80211_chanctx_conf* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @WARN_ON(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = call i32 (...) @rcu_read_unlock()
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %271

58:                                               ; preds = %42
  %59 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %9, align 8
  %60 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %59, i32 0, i32 2
  %61 = bitcast %struct.cfg80211_chan_def* %12 to i8*
  %62 = bitcast %struct.cfg80211_chan_def* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  %63 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  %66 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %11, align 4
  %69 = call i32 (...) @rcu_read_unlock()
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %71 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @iwl_mvm_phy_ctxt_add(%struct.iwl_mvm* %70, %struct.TYPE_4__* %73, %struct.cfg80211_chan_def* %12, i32 %74, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %58
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %4, align 4
  br label %271

81:                                               ; preds = %58
  %82 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %83 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %85 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i64 @WARN_ON(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %271

96:                                               ; preds = %81
  %97 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %98 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %99 = call i32 @iwl_mvm_mac_ctxt_add(%struct.iwl_mvm* %97, %struct.ieee80211_vif* %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %4, align 4
  br label %271

104:                                              ; preds = %96
  %105 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %106 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %105, i32 0, i32 2
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %111 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @FW_CMD_ID_AND_COLOR(i32 %109, i32 %114)
  %116 = call i8* @cpu_to_le32(i32 %115)
  %117 = getelementptr inbounds %struct.iwl_binding_cmd_v1, %struct.iwl_binding_cmd_v1* %15, i32 0, i32 3
  store i8* %116, i8** %117, align 8
  %118 = load i32, i32* @FW_CTXT_ACTION_ADD, align 4
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = getelementptr inbounds %struct.iwl_binding_cmd_v1, %struct.iwl_binding_cmd_v1* %15, i32 0, i32 2
  store i8* %119, i8** %120, align 8
  %121 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %122 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %121, i32 0, i32 2
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %126, i32 0, i32 2
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @FW_CMD_ID_AND_COLOR(i32 %125, i32 %130)
  %132 = call i8* @cpu_to_le32(i32 %131)
  %133 = getelementptr inbounds %struct.iwl_binding_cmd_v1, %struct.iwl_binding_cmd_v1* %15, i32 0, i32 1
  store i8* %132, i8** %133, align 8
  %134 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %135 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %138 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @FW_CMD_ID_AND_COLOR(i32 %136, i32 %139)
  %141 = call i8* @cpu_to_le32(i32 %140)
  %142 = getelementptr inbounds %struct.iwl_binding_cmd_v1, %struct.iwl_binding_cmd_v1* %15, i32 0, i32 0
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 0
  store i8* %141, i8** %144, align 8
  store i32 1, i32* %14, align 4
  br label %145

145:                                              ; preds = %157, %104
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* @MAX_MACS_IN_BINDING, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %145
  %150 = load i32, i32* @FW_CTXT_INVALID, align 4
  %151 = call i8* @cpu_to_le32(i32 %150)
  %152 = getelementptr inbounds %struct.iwl_binding_cmd_v1, %struct.iwl_binding_cmd_v1* %15, i32 0, i32 0
  %153 = load i8**, i8*** %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  store i8* %151, i8** %156, align 8
  br label %157

157:                                              ; preds = %149
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %145

160:                                              ; preds = %145
  store i32 0, i32* %18, align 4
  %161 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %162 = load i32, i32* @BINDING_CONTEXT_CMD, align 4
  %163 = load i32, i32* @IWL_BINDING_CMD_SIZE_V1, align 4
  %164 = call i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm* %161, i32 %162, i32 %163, %struct.iwl_binding_cmd_v1* %15, i32* %18)
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %160
  %168 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %169 = load i32, i32* %13, align 4
  %170 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %168, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %13, align 4
  store i32 %171, i32* %4, align 4
  br label %271

172:                                              ; preds = %160
  %173 = load i32, i32* %18, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %177 = load i32, i32* %18, align 4
  %178 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %176, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* @EIO, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %4, align 4
  br label %271

181:                                              ; preds = %172
  %182 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %183 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %184 = call i32 @iwl_mvm_sta_send_to_fw(%struct.iwl_mvm* %182, %struct.ieee80211_sta* %183, i32 0, i32 0)
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load i32, i32* %13, align 4
  store i32 %188, i32* %4, align 4
  br label %271

189:                                              ; preds = %181
  %190 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %191 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %194 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %199 = call i32 @rcu_assign_pointer(i32 %197, %struct.ieee80211_sta* %198)
  %200 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %201 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %202 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %200, %struct.ieee80211_vif* %201, i32 0, i32* null)
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* %13, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %189
  %206 = load i32, i32* %13, align 4
  store i32 %206, i32* %4, align 4
  br label %271

207:                                              ; preds = %189
  %208 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %209 = call %struct.iwl_time_quota_data* @iwl_mvm_quota_cmd_get_quota(%struct.iwl_mvm* %208, %struct.iwl_time_quota_cmd* %16, i32 0)
  store %struct.iwl_time_quota_data* %209, %struct.iwl_time_quota_data** %17, align 8
  %210 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %211 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %210, i32 0, i32 2
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %216 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %215, i32 0, i32 2
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @FW_CMD_ID_AND_COLOR(i32 %214, i32 %219)
  %221 = call i8* @cpu_to_le32(i32 %220)
  %222 = load %struct.iwl_time_quota_data*, %struct.iwl_time_quota_data** %17, align 8
  %223 = getelementptr inbounds %struct.iwl_time_quota_data, %struct.iwl_time_quota_data* %222, i32 0, i32 0
  store i8* %221, i8** %223, align 8
  %224 = load i32, i32* @IWL_MVM_MAX_QUOTA, align 4
  %225 = call i8* @cpu_to_le32(i32 %224)
  %226 = load %struct.iwl_time_quota_data*, %struct.iwl_time_quota_data** %17, align 8
  %227 = getelementptr inbounds %struct.iwl_time_quota_data, %struct.iwl_time_quota_data* %226, i32 0, i32 2
  store i8* %225, i8** %227, align 8
  %228 = load i32, i32* @IWL_MVM_MAX_QUOTA, align 4
  %229 = call i8* @cpu_to_le32(i32 %228)
  %230 = load %struct.iwl_time_quota_data*, %struct.iwl_time_quota_data** %17, align 8
  %231 = getelementptr inbounds %struct.iwl_time_quota_data, %struct.iwl_time_quota_data* %230, i32 0, i32 1
  store i8* %229, i8** %231, align 8
  store i32 1, i32* %14, align 4
  br label %232

232:                                              ; preds = %244, %207
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* @MAX_BINDINGS, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %247

236:                                              ; preds = %232
  %237 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %238 = load i32, i32* %14, align 4
  %239 = call %struct.iwl_time_quota_data* @iwl_mvm_quota_cmd_get_quota(%struct.iwl_mvm* %237, %struct.iwl_time_quota_cmd* %16, i32 %238)
  store %struct.iwl_time_quota_data* %239, %struct.iwl_time_quota_data** %17, align 8
  %240 = load i32, i32* @FW_CTXT_INVALID, align 4
  %241 = call i8* @cpu_to_le32(i32 %240)
  %242 = load %struct.iwl_time_quota_data*, %struct.iwl_time_quota_data** %17, align 8
  %243 = getelementptr inbounds %struct.iwl_time_quota_data, %struct.iwl_time_quota_data* %242, i32 0, i32 0
  store i8* %241, i8** %243, align 8
  br label %244

244:                                              ; preds = %236
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %14, align 4
  br label %232

247:                                              ; preds = %232
  %248 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %249 = load i32, i32* @TIME_QUOTA_CMD, align 4
  %250 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %251 = call i32 @iwl_mvm_quota_cmd_size(%struct.iwl_mvm* %250)
  %252 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %248, i32 %249, i32 0, i32 %251, %struct.iwl_time_quota_cmd* %16)
  store i32 %252, i32* %13, align 4
  %253 = load i32, i32* %13, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %247
  %256 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %257 = load i32, i32* %13, align 4
  %258 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %255, %247
  %260 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %261 = call i64 @iwl_mvm_is_lar_supported(%struct.iwl_mvm* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %259
  %264 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %265 = call i64 @iwl_mvm_init_fw_regd(%struct.iwl_mvm* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %263
  %268 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %269 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %268, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %270

270:                                              ; preds = %267, %263, %259
  store i32 0, i32* %4, align 4
  br label %271

271:                                              ; preds = %270, %205, %187, %175, %167, %102, %93, %79, %54, %39, %27
  %272 = load i32, i32* %4, align 4
  ret i32 %272
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @iwl_mvm_phy_ctxt_add(%struct.iwl_mvm*, %struct.TYPE_4__*, %struct.cfg80211_chan_def*, i32, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_add(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm*, i32, i32, %struct.iwl_binding_cmd_v1*, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @iwl_mvm_sta_send_to_fw(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ieee80211_sta*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32*) #1

declare dso_local %struct.iwl_time_quota_data* @iwl_mvm_quota_cmd_get_quota(%struct.iwl_mvm*, %struct.iwl_time_quota_cmd*, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_time_quota_cmd*) #1

declare dso_local i32 @iwl_mvm_quota_cmd_size(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_is_lar_supported(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_init_fw_regd(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
