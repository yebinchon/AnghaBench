; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i64, i64, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.iwl_trans_txq_scd_cfg = type { i32, i32, i32, i32, i32 }

@IWL_FRAME_LIMIT = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i32 0, align 4
@IWL_MVM_DQA_MIN_MGMT_QUEUE = common dso_local global i32 0, align 4
@IWL_MVM_DQA_MAX_MGMT_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Found free MGMT queue #%d\0A\00", align 1
@IEEE80211_INVAL_HW_QUEUE = common dso_local global i64 0, align 8
@IWL_MVM_QUEUE_RESERVED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Using reserved queue #%d\0A\00", align 1
@IWL_MVM_DQA_MIN_DATA_QUEUE = common dso_local global i32 0, align 4
@IWL_MVM_DQA_MAX_DATA_QUEUE = common dso_local global i32 0, align 4
@IWL_MVM_QUEUE_SHARED = common dso_local global i64 0, align 8
@IWL_MVM_QUEUE_READY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"No available queues for tid %d on sta_id %d\0A\00", align 1
@IWL_MVM_DQA_BSS_CLIENT_QUEUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Allocating %squeue #%d to sta %d on tid %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"shared \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Disabling aggs on queue %d\0A\00", align 1
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@STA_MODIFY_QUEUES = common dso_local global i32 0, align 4
@IWL_AGG_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i32)* @iwl_mvm_sta_alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_sta_alloc_queue(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  %11 = alloca %struct.iwl_trans_txq_scd_cfg, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %22 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %21)
  store %struct.iwl_mvm_sta* %22, %struct.iwl_mvm_sta** %10, align 8
  %23 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %11, i32 0, i32 0
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %11, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %11, i32 0, i32 2
  %27 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %11, i32 0, i32 3
  %31 = load i32, i32* @IWL_FRAME_LIMIT, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %11, i32 0, i32 4
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @iwl_mvm_mac_ac_to_tx_fifo(%struct.iwl_mvm* %33, i32 %34)
  store i32 %35, i32* %32, align 4
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %37 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @iwl_mvm_get_wd_timeout(%struct.iwl_mvm* %36, i32 %39, i32 0, i32 0)
  store i32 %40, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %41, i32 0, i32 2
  %43 = call i32 @lockdep_assert_held(i32* %42)
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %45 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %4
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %49 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @iwl_mvm_sta_alloc_queue_tvqm(%struct.iwl_mvm* %48, %struct.ieee80211_sta* %49, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %355

53:                                               ; preds = %4
  %54 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %54, i32 0, i32 2
  %56 = call i32 @spin_lock_bh(i32* %55)
  %57 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %19, align 8
  %60 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @IEEE80211_SEQ_TO_SN(i32 %67)
  store i32 %68, i32* %18, align 4
  %69 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %69, i32 0, i32 2
  %71 = call i32 @spin_unlock_bh(i32* %70)
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %53
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %77 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %78 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IWL_MVM_DQA_MIN_MGMT_QUEUE, align 4
  %81 = load i32, i32* @IWL_MVM_DQA_MAX_MGMT_QUEUE, align 4
  %82 = call i32 @iwl_mvm_find_free_queue(%struct.iwl_mvm* %76, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @IWL_MVM_DQA_MIN_MGMT_QUEUE, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %86, %75
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %127

94:                                               ; preds = %91
  %95 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %96 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @IEEE80211_INVAL_HW_QUEUE, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %94
  %101 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %102 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %105 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @IWL_MVM_QUEUE_RESERVED, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %100
  %113 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %114 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %13, align 4
  %117 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %118 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %117, i32 0, i32 1
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  store i32 1, i32* %123, align 8
  %124 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %125 = load i32, i32* %13, align 4
  %126 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %112, %100, %94, %91
  %128 = load i32, i32* %13, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %132 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %133 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @IWL_MVM_DQA_MIN_DATA_QUEUE, align 4
  %136 = load i32, i32* @IWL_MVM_DQA_MAX_DATA_QUEUE, align 4
  %137 = call i32 @iwl_mvm_find_free_queue(%struct.iwl_mvm* %131, i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %13, align 4
  br label %138

138:                                              ; preds = %130, %127
  %139 = load i32, i32* %13, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %143 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %144 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @iwl_mvm_inactivity_check(%struct.iwl_mvm* %142, i32 %145)
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %141, %138
  %148 = load i32, i32* %13, align 4
  %149 = icmp sle i32 %148, 0
  br i1 %149, label %150, label %167

150:                                              ; preds = %147
  %151 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %152 = load i64, i64* %19, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @iwl_mvm_get_shared_queue(%struct.iwl_mvm* %151, i64 %152, i32 %153)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %150
  store i32 1, i32* %16, align 4
  %158 = load i64, i64* @IWL_MVM_QUEUE_SHARED, align 8
  %159 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %160 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %159, i32 0, i32 1
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  store i64 %158, i64* %165, align 8
  br label %166

166:                                              ; preds = %157, %150
  br label %167

167:                                              ; preds = %166, %147
  %168 = load i32, i32* %13, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %167
  %171 = load i32, i32* %16, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %182, label %173

173:                                              ; preds = %170
  %174 = load i64, i64* @IWL_MVM_QUEUE_READY, align 8
  %175 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %176 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %175, i32 0, i32 1
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i64 %174, i64* %181, align 8
  br label %182

182:                                              ; preds = %173, %170, %167
  %183 = load i32, i32* %13, align 4
  %184 = icmp sle i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i64 @WARN_ON(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %182
  %189 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %190 = load i32, i32* %9, align 4
  %191 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %11, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @IWL_ERR(%struct.iwl_mvm* %189, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %190, i32 %192)
  %194 = load i32, i32* %13, align 4
  store i32 %194, i32* %5, align 4
  br label %355

195:                                              ; preds = %182
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* @IWL_MVM_DQA_MIN_DATA_QUEUE, align 4
  %198 = icmp sge i32 %196, %197
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* @IWL_MVM_DQA_BSS_CLIENT_QUEUE, align 4
  %202 = icmp eq i32 %200, %201
  br label %203

203:                                              ; preds = %199, %195
  %204 = phi i1 [ true, %195 ], [ %202, %199 ]
  %205 = zext i1 %204 to i32
  %206 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %11, i32 0, i32 1
  store i32 %205, i32* %206, align 4
  %207 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %208 = load i32, i32* %16, align 4
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %212 = load i32, i32* %13, align 4
  %213 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %214 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %207, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %211, i32 %212, i32 %215, i32 %216)
  %218 = load i32, i32* %16, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %235

220:                                              ; preds = %203
  %221 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %222 = load i32, i32* %13, align 4
  %223 = call i64 @iwl_mvm_get_queue_agg_tids(%struct.iwl_mvm* %221, i32 %222)
  store i64 %223, i64* %14, align 8
  %224 = load i64, i64* %14, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %220
  %227 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %228 = load i32, i32* %13, align 4
  %229 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %227, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %228)
  %230 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %231 = load i32, i32* %13, align 4
  %232 = load i64, i64* %14, align 8
  %233 = call i32 @iwl_mvm_invalidate_sta_queue(%struct.iwl_mvm* %230, i32 %231, i64 %232, i32 0)
  br label %234

234:                                              ; preds = %226, %220
  br label %235

235:                                              ; preds = %234, %203
  %236 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %237 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %238 = load i32, i32* %13, align 4
  %239 = load i32, i32* %18, align 4
  %240 = load i32, i32* %12, align 4
  %241 = call i32 @iwl_mvm_enable_txq(%struct.iwl_mvm* %236, %struct.ieee80211_sta* %237, i32 %238, i32 %239, %struct.iwl_trans_txq_scd_cfg* %11, i32 %240)
  store i32 %241, i32* %17, align 4
  %242 = load i32, i32* %16, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %235
  %245 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %246 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %13, align 4
  %249 = call i32 @iwl_trans_txq_set_shared_mode(i32 %247, i32 %248, i32 1)
  br label %250

250:                                              ; preds = %244, %235
  %251 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %252 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %251, i32 0, i32 2
  %253 = call i32 @spin_lock_bh(i32* %252)
  %254 = load i32, i32* %17, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %270

256:                                              ; preds = %250
  %257 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %258 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %257, i32 0, i32 3
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, 16
  store i32 %265, i32* %263, align 4
  %266 = load i32, i32* %18, align 4
  %267 = add nsw i32 %266, 1
  %268 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %269 = and i32 %267, %268
  store i32 %269, i32* %18, align 4
  br label %270

270:                                              ; preds = %256, %250
  %271 = load i32, i32* %13, align 4
  %272 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %273 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %272, i32 0, i32 3
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %273, align 8
  %275 = load i32, i32* %9, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 1
  store i32 %271, i32* %278, align 4
  %279 = load i32, i32* %13, align 4
  %280 = call i64 @BIT(i32 %279)
  %281 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %282 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = or i64 %283, %280
  store i64 %284, i64* %282, align 8
  %285 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %286 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %285, i32 0, i32 3
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %286, align 8
  %288 = load i32, i32* %9, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  store i32 %292, i32* %15, align 4
  %293 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %294 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* %13, align 4
  %297 = sext i32 %296 to i64
  %298 = icmp eq i64 %295, %297
  br i1 %298, label %299, label %303

299:                                              ; preds = %270
  %300 = load i64, i64* @IEEE80211_INVAL_HW_QUEUE, align 8
  %301 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %302 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %301, i32 0, i32 1
  store i64 %300, i64* %302, align 8
  br label %303

303:                                              ; preds = %299, %270
  %304 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %305 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %304, i32 0, i32 2
  %306 = call i32 @spin_unlock_bh(i32* %305)
  %307 = load i32, i32* %16, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %332, label %309

309:                                              ; preds = %303
  %310 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %311 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %312 = load i32, i32* @STA_MODIFY_QUEUES, align 4
  %313 = call i32 @iwl_mvm_sta_send_to_fw(%struct.iwl_mvm* %310, %struct.ieee80211_sta* %311, i32 1, i32 %312)
  store i32 %313, i32* %20, align 4
  %314 = load i32, i32* %20, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %309
  br label %348

317:                                              ; preds = %309
  %318 = load i32, i32* %15, align 4
  %319 = load i32, i32* @IWL_AGG_ON, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %331

321:                                              ; preds = %317
  %322 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %323 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %324 = load i32, i32* %9, align 4
  %325 = load i32, i32* %13, align 4
  %326 = call i32 @iwl_mvm_sta_tx_agg(%struct.iwl_mvm* %322, %struct.ieee80211_sta* %323, i32 %324, i32 %325, i32 1)
  store i32 %326, i32* %20, align 4
  %327 = load i32, i32* %20, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %321
  br label %348

330:                                              ; preds = %321
  br label %331

331:                                              ; preds = %330, %317
  br label %347

332:                                              ; preds = %303
  %333 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %334 = load i32, i32* %13, align 4
  %335 = load i32, i32* %9, align 4
  %336 = load i32, i32* %8, align 4
  %337 = load i32, i32* %18, align 4
  %338 = load i32, i32* %12, align 4
  %339 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %340 = load i32, i32* %9, align 4
  %341 = call i32 @iwl_mvm_txq_from_tid(%struct.ieee80211_sta* %339, i32 %340)
  %342 = call i32 @iwl_mvm_redirect_queue(%struct.iwl_mvm* %333, i32 %334, i32 %335, i32 %336, i32 %337, i32 %338, i32 0, i32 %341)
  store i32 %342, i32* %20, align 4
  %343 = load i32, i32* %20, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %332
  br label %348

346:                                              ; preds = %332
  br label %347

347:                                              ; preds = %346, %331
  store i32 0, i32* %5, align 4
  br label %355

348:                                              ; preds = %345, %329, %316
  %349 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %350 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %351 = load i32, i32* %13, align 4
  %352 = load i32, i32* %9, align 4
  %353 = call i32 @iwl_mvm_disable_txq(%struct.iwl_mvm* %349, %struct.ieee80211_sta* %350, i32 %351, i32 %352, i32 0)
  %354 = load i32, i32* %20, align 4
  store i32 %354, i32* %5, align 4
  br label %355

355:                                              ; preds = %348, %347, %188, %47
  %356 = load i32, i32* %5, align 4
  ret i32 %356
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @iwl_mvm_mac_ac_to_tx_fifo(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_get_wd_timeout(%struct.iwl_mvm*, i32, i32, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_sta_alloc_queue_tvqm(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @IEEE80211_SEQ_TO_SN(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iwl_mvm_find_free_queue(%struct.iwl_mvm*, i32, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @iwl_mvm_inactivity_check(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_get_shared_queue(%struct.iwl_mvm*, i64, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32, i32) #1

declare dso_local i64 @iwl_mvm_get_queue_agg_tids(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_invalidate_sta_queue(%struct.iwl_mvm*, i32, i64, i32) #1

declare dso_local i32 @iwl_mvm_enable_txq(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i32, %struct.iwl_trans_txq_scd_cfg*, i32) #1

declare dso_local i32 @iwl_trans_txq_set_shared_mode(i32, i32, i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @iwl_mvm_sta_send_to_fw(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @iwl_mvm_sta_tx_agg(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_redirect_queue(%struct.iwl_mvm*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_txq_from_tid(%struct.ieee80211_sta*, i32) #1

declare dso_local i32 @iwl_mvm_disable_txq(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
