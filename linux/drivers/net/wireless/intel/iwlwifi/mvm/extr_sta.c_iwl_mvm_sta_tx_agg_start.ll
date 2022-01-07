; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_tx_agg_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_tx_agg_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_6__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i32, i32, %struct.iwl_mvm_tid_data* }
%struct.iwl_mvm_tid_data = type { i64, i64, i64, i64, i32 }

@IWL_MAX_TID_COUNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IWL_AGG_QUEUED = common dso_local global i64 0, align 8
@IWL_AGG_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Start AGG when state is not IWL_AGG_QUEUED or IWL_AGG_OFF %d!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IWL_MVM_INVALID_QUEUE = common dso_local global i64 0, align 8
@tid_to_mac80211_ac = common dso_local global i32* null, align 8
@IWL_MVM_DQA_MIN_DATA_QUEUE = common dso_local global i32 0, align 4
@IWL_MVM_DQA_MAX_DATA_QUEUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to allocate agg queue\0A\00", align 1
@IWL_MVM_QUEUE_RESERVED = common dso_local global i64 0, align 8
@IWL_MAX_HW_QUEUES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"tid_id %d out of range (0, %d)!\0A\00", align 1
@IWL_MVM_QUEUE_SHARED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Can't start tid %d agg on shared queue!\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"AGG for tid %d will be on queue #%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"Start AGG: sta %d tid %d queue %d - ssn = %d, next_recl = %d\0A\00", align 1
@IWL_AGG_STARTING = common dso_local global i64 0, align 8
@IWL_EMPTYING_HW_QUEUE_ADDBA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_sta_tx_agg_start(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.iwl_mvm_sta*, align 8
  %13 = alloca %struct.iwl_mvm_tid_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %19 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %18)
  store %struct.iwl_mvm_sta* %19, %struct.iwl_mvm_sta** %12, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %22 = icmp uge i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %243

29:                                               ; preds = %5
  %30 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %30, i32 0, i32 2
  %32 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %32, i64 %33
  %35 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IWL_AGG_QUEUED, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %29
  %40 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %40, i32 0, i32 2
  %42 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %42, i64 %43
  %45 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IWL_AGG_OFF, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %39
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %51 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %51, i32 0, i32 2
  %53 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %53, i64 %54
  %56 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %50, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %243

61:                                               ; preds = %39, %29
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %62, i32 0, i32 2
  %64 = call i32 @lockdep_assert_held(i32* %63)
  %65 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %66 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %65, i32 0, i32 2
  %67 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %67, i64 %68
  %70 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IWL_MVM_INVALID_QUEUE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %61
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %76 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load i32*, i32** @tid_to_mac80211_ac, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %17, align 4
  %83 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %84 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @iwl_mvm_sta_alloc_queue_tvqm(%struct.iwl_mvm* %83, %struct.ieee80211_sta* %84, i32 %85, i64 %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* %6, align 4
  br label %243

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92, %74, %61
  %94 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %95 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %94, i32 0, i32 0
  %96 = call i32 @spin_lock_bh(i32* %95)
  %97 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %98 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %97, i32 0, i32 2
  %99 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %98, align 8
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %99, i64 %100
  %102 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %15, align 8
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* @IWL_MVM_INVALID_QUEUE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %130

107:                                              ; preds = %93
  %108 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %109 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %110 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IWL_MVM_DQA_MIN_DATA_QUEUE, align 4
  %113 = load i32, i32* @IWL_MVM_DQA_MAX_DATA_QUEUE, align 4
  %114 = call i32 @iwl_mvm_find_free_queue(%struct.iwl_mvm* %108, i32 %111, i32 %112, i32 %113)
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %107
  %118 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %119 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %238

120:                                              ; preds = %107
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %15, align 8
  %123 = load i64, i64* @IWL_MVM_QUEUE_RESERVED, align 8
  %124 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %125 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i64, i64* %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i64 %123, i64* %129, align 8
  br label %166

130:                                              ; preds = %93
  %131 = load i64, i64* %15, align 8
  %132 = load i64, i64* @IWL_MAX_HW_QUEUES, align 8
  %133 = icmp uge i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i64 @WARN_ON(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  %138 = load i32, i32* @ENXIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %16, align 4
  %140 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* @IWL_MAX_HW_QUEUES, align 8
  %143 = sub i64 %142, 1
  %144 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %141, i64 %143)
  br label %238

145:                                              ; preds = %130
  %146 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %147 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i64, i64* %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @IWL_MVM_QUEUE_SHARED, align 8
  %154 = icmp eq i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %145
  %159 = load i32, i32* @ENXIO, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %16, align 4
  %161 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %162 = load i64, i64* %10, align 8
  %163 = call i32 (%struct.iwl_mvm*, i8*, i64, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %161, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %162)
  br label %238

164:                                              ; preds = %145
  br label %165

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165, %120
  %167 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %168 = load i64, i64* %10, align 8
  %169 = load i64, i64* %15, align 8
  %170 = call i32 (%struct.iwl_mvm*, i8*, i64, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %167, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %168, i64 %169)
  %171 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %172 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %171, i32 0, i32 2
  %173 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %172, align 8
  %174 = load i64, i64* %10, align 8
  %175 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %173, i64 %174
  store %struct.iwl_mvm_tid_data* %175, %struct.iwl_mvm_tid_data** %13, align 8
  %176 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %177 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i64 @IEEE80211_SEQ_TO_SN(i32 %178)
  %180 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %181 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %180, i32 0, i32 2
  store i64 %179, i64* %181, align 8
  %182 = load i64, i64* %15, align 8
  %183 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %184 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %183, i32 0, i32 1
  store i64 %182, i64* %184, align 8
  %185 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %186 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i64*, i64** %11, align 8
  store i64 %187, i64* %188, align 8
  %189 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %190 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %191 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* %10, align 8
  %195 = load i64, i64* %15, align 8
  %196 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %197 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %200 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = call i32 (%struct.iwl_mvm*, i8*, i64, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %189, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i64 %193, i64 %194, i64 %195, i64 %198, i64 %201)
  %203 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %204 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %14, align 8
  %206 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %207 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %206, i32 0, i32 0
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %166
  %215 = load i64, i64* %14, align 8
  %216 = and i64 %215, 255
  store i64 %216, i64* %14, align 8
  br label %217

217:                                              ; preds = %214, %166
  %218 = load i64, i64* %14, align 8
  %219 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %220 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %218, %221
  br i1 %222, label %223, label %233

223:                                              ; preds = %217
  %224 = load i64, i64* @IWL_AGG_STARTING, align 8
  %225 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %226 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %225, i32 0, i32 0
  store i64 %224, i64* %226, align 8
  %227 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %228 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %229 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i64, i64* %10, align 8
  %232 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %227, i32 %230, i64 %231)
  br label %237

233:                                              ; preds = %217
  %234 = load i64, i64* @IWL_EMPTYING_HW_QUEUE_ADDBA, align 8
  %235 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %236 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %235, i32 0, i32 0
  store i64 %234, i64* %236, align 8
  br label %237

237:                                              ; preds = %233, %223
  store i32 0, i32* %16, align 4
  br label %238

238:                                              ; preds = %237, %158, %137, %117
  %239 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %240 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %239, i32 0, i32 0
  %241 = call i32 @spin_unlock_bh(i32* %240)
  %242 = load i32, i32* %16, align 4
  store i32 %242, i32* %6, align 4
  br label %243

243:                                              ; preds = %238, %90, %49, %26
  %244 = load i32, i32* %6, align 4
  ret i32 %244
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_sta_alloc_queue_tvqm(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iwl_mvm_find_free_queue(%struct.iwl_mvm*, i32, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm*, i8*, i64, ...) #1

declare dso_local i64 @IEEE80211_SEQ_TO_SN(i32) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
