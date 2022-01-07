; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_tx_agg_oper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_tx_agg_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i32 }
%struct.iwl_mvm_sta = type { %struct.TYPE_7__, i32, i32, i32, i32, %struct.iwl_mvm_tid_data* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.iwl_mvm_tid_data = type { i64, i32, i32, i32 }
%struct.iwl_trans_txq_scd_cfg = type { i64, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i32 0, align 4
@IWL_AGG_ON = common dso_local global i32 0, align 4
@IWL_FRAME_LIMIT = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iwl_mvm_ac_to_tx_fifo = common dso_local global i32* null, align 8
@tid_to_mac80211_ac = common dso_local global i64* null, align 8
@IWL_MVM_QUEUE_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Error draining queue before reconfig\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Error reconfiguring TXQ #%d\0A\00", align 1
@IWL_MVM_QUEUE_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Tx aggregation enabled on ra = %pM tid = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_sta_tx_agg_oper(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.iwl_mvm_sta*, align 8
  %15 = alloca %struct.iwl_mvm_tid_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.iwl_trans_txq_scd_cfg, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %8, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %24 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %23)
  store %struct.iwl_mvm_sta* %24, %struct.iwl_mvm_sta** %14, align 8
  %25 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %25, i32 0, i32 5
  %27 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %27, i64 %28
  store %struct.iwl_mvm_tid_data* %29, %struct.iwl_mvm_tid_data** %15, align 8
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %32 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @iwl_mvm_get_wd_timeout(%struct.iwl_mvm* %30, %struct.ieee80211_vif* %31, i32 %34, i32 0)
  store i32 %35, i32* %16, align 4
  store i32 1, i32* %19, align 4
  %36 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %22, i32 0, i32 0
  %37 = load i64, i64* %11, align 8
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %22, i32 0, i32 1
  %39 = load i64, i64* %12, align 8
  store i64 %39, i64* %38, align 8
  %40 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %22, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %22, i32 0, i32 3
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %22, i32 0, i32 4
  %43 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %42, align 8
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %47 = call i32 @iwl_mvm_has_tlc_offload(%struct.iwl_mvm* %46)
  %48 = call i64 @WARN_ON_ONCE(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %6
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %244

53:                                               ; preds = %6
  %54 = load i32, i32* @BITS_PER_BYTE, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 4, %55
  %57 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ne i64 %56, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUILD_BUG_ON(i32 %60)
  %62 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %62, i32 0, i32 3
  %64 = call i32 @spin_lock_bh(i32* %63)
  %65 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %15, align 8
  %66 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %21, align 8
  %68 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %15, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* @IWL_AGG_ON, align 4
  %72 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %15, align 8
  %73 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load i64, i64* %11, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @BIT(i32 %75)
  %77 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %78 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %15, align 8
  %82 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %81, i32 0, i32 0
  store i64 65535, i64* %82, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %15, align 8
  %85 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %87 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %86, i32 0, i32 3
  %88 = call i32 @spin_unlock_bh(i32* %87)
  %89 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %90 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %53
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @IWL_FRAME_LIMIT, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* @ENOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  br label %244

99:                                               ; preds = %92
  %100 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %101 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @iwl_mvm_sta_tx_agg(%struct.iwl_mvm* %100, %struct.ieee80211_sta* %101, i64 %102, i32 %103, i32 1)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %7, align 4
  br label %244

110:                                              ; preds = %99
  br label %216

111:                                              ; preds = %53
  %112 = load i32*, i32** @iwl_mvm_ac_to_tx_fifo, align 8
  %113 = load i64*, i64** @tid_to_mac80211_ac, align 8
  %114 = load i64, i64* %11, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %22, i32 0, i32 3
  store i32 %118, i32* %119, align 4
  %120 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %121 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %120, i32 0, i32 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = load i32, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %20, align 4
  %128 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %129 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* @IWL_MVM_QUEUE_READY, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %111
  store i32 0, i32* %19, align 4
  br label %140

140:                                              ; preds = %139, %111
  %141 = load i32, i32* %19, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %180, label %143

143:                                              ; preds = %140
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* @IWL_FRAME_LIMIT, align 8
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %147, label %180

147:                                              ; preds = %143
  %148 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %149 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %17, align 4
  %152 = call i32 @BIT(i32 %151)
  %153 = call i32 @iwl_trans_wait_tx_queues_empty(i32 %150, i32 %152)
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %158 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %157, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %159 = load i32, i32* %18, align 4
  store i32 %159, i32* %7, align 4
  br label %244

160:                                              ; preds = %147
  %161 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %162 = load i32, i32* %17, align 4
  %163 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %22, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %166 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i64, i64* %11, align 8
  %169 = load i64, i64* %12, align 8
  %170 = load i64, i64* %21, align 8
  %171 = call i32 @iwl_mvm_reconfig_scd(%struct.iwl_mvm* %161, i32 %162, i32 %164, i32 %167, i64 %168, i64 %169, i64 %170)
  store i32 %171, i32* %18, align 4
  %172 = load i32, i32* %18, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %160
  %175 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %176 = load i32, i32* %17, align 4
  %177 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %18, align 4
  store i32 %178, i32* %7, align 4
  br label %244

179:                                              ; preds = %160
  br label %180

180:                                              ; preds = %179, %143, %140
  %181 = load i32, i32* %19, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %180
  %184 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %185 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %186 = load i32, i32* %17, align 4
  %187 = load i64, i64* %21, align 8
  %188 = load i32, i32* %16, align 4
  %189 = call i32 @iwl_mvm_enable_txq(%struct.iwl_mvm* %184, %struct.ieee80211_sta* %185, i32 %186, i64 %187, %struct.iwl_trans_txq_scd_cfg* %22, i32 %188)
  br label %190

190:                                              ; preds = %183, %180
  %191 = load i32, i32* %20, align 4
  %192 = load i32, i32* @IWL_MVM_QUEUE_SHARED, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %206

194:                                              ; preds = %190
  %195 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %196 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %197 = load i64, i64* %11, align 8
  %198 = load i32, i32* %17, align 4
  %199 = call i32 @iwl_mvm_sta_tx_agg(%struct.iwl_mvm* %195, %struct.ieee80211_sta* %196, i64 %197, i32 %198, i32 1)
  store i32 %199, i32* %18, align 4
  %200 = load i32, i32* %18, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %194
  %203 = load i32, i32* @EIO, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %7, align 4
  br label %244

205:                                              ; preds = %194
  br label %206

206:                                              ; preds = %205, %190
  %207 = load i64, i64* @IWL_MVM_QUEUE_READY, align 8
  %208 = trunc i64 %207 to i32
  %209 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %210 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %209, i32 0, i32 0
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %210, align 8
  %212 = load i32, i32* %17, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  store i32 %208, i32* %215, align 4
  br label %216

216:                                              ; preds = %206, %110
  %217 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %218 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i64, i64* %12, align 8
  %221 = call i32 @min(i32 %219, i64 %220)
  %222 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %223 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %225 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %228 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  store i32 %226, i32* %231, align 8
  %232 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %233 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %234 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i64, i64* %11, align 8
  %237 = call i32 @IWL_DEBUG_HT(%struct.iwl_mvm* %232, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %235, i64 %236)
  %238 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %239 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %14, align 8
  %240 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = call i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm* %238, %struct.TYPE_8__* %242)
  store i32 %243, i32* %7, align 4
  br label %244

244:                                              ; preds = %216, %202, %174, %156, %107, %96, %50
  %245 = load i32, i32* %7, align 4
  ret i32 %245
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @iwl_mvm_get_wd_timeout(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iwl_mvm_has_tlc_offload(%struct.iwl_mvm*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_sta_tx_agg(%struct.iwl_mvm*, %struct.ieee80211_sta*, i64, i32, i32) #1

declare dso_local i32 @iwl_trans_wait_tx_queues_empty(i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @iwl_mvm_reconfig_scd(%struct.iwl_mvm*, i32, i32, i32, i64, i64, i64) #1

declare dso_local i32 @iwl_mvm_enable_txq(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i64, %struct.iwl_trans_txq_scd_cfg*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @IWL_DEBUG_HT(%struct.iwl_mvm*, i8*, i32, i64) #1

declare dso_local i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
