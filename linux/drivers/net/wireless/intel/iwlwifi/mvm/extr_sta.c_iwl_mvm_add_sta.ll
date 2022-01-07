; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_add_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_add_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i64, i32*, i32 }
%struct.iwl_mvm_vif = type { i32, i32, i32 }
%struct.iwl_mvm_sta = type { i32, i32, i32, i32, %struct.TYPE_11__, %struct.iwl_mvm_rxq_dup_data*, i64, %struct.TYPE_12__*, i64, i32, i64, i32, %struct.ieee80211_vif*, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.iwl_mvm_rxq_dup_data = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.iwl_mvm_int_sta = type { i32, i32 }
%struct.iwl_mvm_txq = type { i32, i32, i8* }

@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@IWL_MVM_INVALID_STA = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@STA_MODIFY_QUEUES = common dso_local global i32 0, align 4
@LINK_QUAL_AGG_FRAME_LIMIT_DEF = common dso_local global i32 0, align 4
@LINK_QUAL_AGG_FRAME_LIMIT_GEN2_DEF = common dso_local global i32 0, align 4
@IWL_STA_TDLS_LINK = common dso_local global i32 0, align 4
@IWL_STA_LINK = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i32 0, align 4
@IWL_MVM_INVALID_QUEUE = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_add_sta(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca %struct.iwl_mvm_sta*, align 8
  %10 = alloca %struct.iwl_mvm_rxq_dup_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iwl_mvm_int_sta, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.iwl_mvm_txq*, align 8
  %19 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %20)
  store %struct.iwl_mvm_vif* %21, %struct.iwl_mvm_vif** %8, align 8
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %23 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %22)
  store %struct.iwl_mvm_sta* %23, %struct.iwl_mvm_sta** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 3
  %26 = call i32 @lockdep_assert_held(i32* %25)
  %27 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %28, i32 0, i32 2
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %3
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %35 = call i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif* %34)
  %36 = call i32 @iwl_mvm_find_free_sta_id(%struct.iwl_mvm* %33, i32 %35)
  store i32 %36, i32* %13, align 4
  br label %41

37:                                               ; preds = %3
  %38 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @IWL_MVM_INVALID_STA, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %346

48:                                               ; preds = %41
  %49 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %49, i32 0, i32 14
  %51 = call i32 @spin_lock_init(i32* %50)
  %52 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %53, i32 0, i32 2
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %90

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %16, i32 0, i32 0
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %16, i32 0, i32 1
  %61 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %60, align 4
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %65 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @iwl_mvm_add_int_sta_common(%struct.iwl_mvm* %64, %struct.iwl_mvm_int_sta* %16, i32 %67, i32 %70, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %57
  br label %344

78:                                               ; preds = %57
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %80 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %81 = call i32 @iwl_mvm_realloc_queues_after_restart(%struct.iwl_mvm* %79, %struct.ieee80211_sta* %80)
  store i32 1, i32* %14, align 4
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %83 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @STA_MODIFY_QUEUES, align 4
  br label %88

88:                                               ; preds = %86, %85
  %89 = phi i32 [ 0, %85 ], [ %87, %86 ]
  store i32 %89, i32* %15, align 4
  br label %294

90:                                               ; preds = %48
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %93 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %95 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %98 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @FW_CMD_ID_AND_COLOR(i32 %96, i32 %99)
  %101 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %102 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %101, i32 0, i32 13
  store i32 %100, i32* %102, align 8
  %103 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %104 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %105 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %104, i32 0, i32 12
  store %struct.ieee80211_vif* %103, %struct.ieee80211_vif** %105, align 8
  %106 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %90
  %115 = load i32, i32* @LINK_QUAL_AGG_FRAME_LIMIT_DEF, align 4
  %116 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %117 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %116, i32 0, i32 11
  store i32 %115, i32* %117, align 8
  br label %122

118:                                              ; preds = %90
  %119 = load i32, i32* @LINK_QUAL_AGG_FRAME_LIMIT_GEN2_DEF, align 4
  %120 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %121 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %120, i32 0, i32 11
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %124 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %123, i32 0, i32 10
  store i64 0, i64* %124, align 8
  %125 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %126 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %128 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %122
  %132 = load i32, i32* @IWL_STA_TDLS_LINK, align 4
  br label %135

133:                                              ; preds = %122
  %134 = load i32, i32* @IWL_STA_LINK, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  %137 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %138 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %137, i32 0, i32 9
  store i32 %136, i32* %138, align 8
  %139 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %140 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %139, i32 0, i32 2
  store i32 65535, i32* %140, align 8
  %141 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %142 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %141, i32 0, i32 8
  store i64 0, i64* %142, align 8
  store i32 0, i32* %11, align 4
  br label %143

143:                                              ; preds = %179, %135
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  %146 = icmp sle i32 %144, %145
  br i1 %146, label %147, label %182

147:                                              ; preds = %143
  %148 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %149 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %148, i32 0, i32 7
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  store i32 %155, i32* %17, align 4
  %156 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %157 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %156, i32 0, i32 7
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i64 %160
  %162 = call i32 @memset(%struct.TYPE_12__* %161, i32 0, i32 16)
  %163 = load i32, i32* %17, align 4
  %164 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %165 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %164, i32 0, i32 7
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  store i32 %163, i32* %170, align 8
  %171 = load i8*, i8** @IWL_MVM_INVALID_QUEUE, align 8
  %172 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %173 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %172, i32 0, i32 7
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  store i8* %171, i8** %178, align 8
  br label %179

179:                                              ; preds = %147
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %143

182:                                              ; preds = %143
  store i32 0, i32* %11, align 4
  br label %183

183:                                              ; preds = %208, %182
  %184 = load i32, i32* %11, align 4
  %185 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %186 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @ARRAY_SIZE(i32* %187)
  %189 = icmp slt i32 %184, %188
  br i1 %189, label %190, label %211

190:                                              ; preds = %183
  %191 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %192 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call %struct.iwl_mvm_txq* @iwl_mvm_txq_from_mac80211(i32 %197)
  store %struct.iwl_mvm_txq* %198, %struct.iwl_mvm_txq** %18, align 8
  %199 = load i8*, i8** @IWL_MVM_INVALID_QUEUE, align 8
  %200 = load %struct.iwl_mvm_txq*, %struct.iwl_mvm_txq** %18, align 8
  %201 = getelementptr inbounds %struct.iwl_mvm_txq, %struct.iwl_mvm_txq* %200, i32 0, i32 2
  store i8* %199, i8** %201, align 8
  %202 = load %struct.iwl_mvm_txq*, %struct.iwl_mvm_txq** %18, align 8
  %203 = getelementptr inbounds %struct.iwl_mvm_txq, %struct.iwl_mvm_txq* %202, i32 0, i32 1
  %204 = call i32 @INIT_LIST_HEAD(i32* %203)
  %205 = load %struct.iwl_mvm_txq*, %struct.iwl_mvm_txq** %18, align 8
  %206 = getelementptr inbounds %struct.iwl_mvm_txq, %struct.iwl_mvm_txq* %205, i32 0, i32 0
  %207 = call i32 @atomic_set(i32* %206, i32 0)
  br label %208

208:                                              ; preds = %190
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %11, align 4
  br label %183

211:                                              ; preds = %183
  %212 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %213 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %212, i32 0, i32 6
  store i64 0, i64* %213, align 8
  %214 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %215 = call i64 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %260

217:                                              ; preds = %211
  %218 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %219 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %220 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %219, i32 0, i32 2
  %221 = call i64 @test_bit(i32 %218, i32* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %260, label %223

223:                                              ; preds = %217
  %224 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %225 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %224, i32 0, i32 1
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @GFP_KERNEL, align 4
  %230 = call %struct.iwl_mvm_rxq_dup_data* @kcalloc(i32 %228, i32 8, i32 %229)
  store %struct.iwl_mvm_rxq_dup_data* %230, %struct.iwl_mvm_rxq_dup_data** %10, align 8
  %231 = load %struct.iwl_mvm_rxq_dup_data*, %struct.iwl_mvm_rxq_dup_data** %10, align 8
  %232 = icmp ne %struct.iwl_mvm_rxq_dup_data* %231, null
  br i1 %232, label %236, label %233

233:                                              ; preds = %223
  %234 = load i32, i32* @ENOMEM, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %4, align 4
  br label %346

236:                                              ; preds = %223
  store i32 0, i32* %19, align 4
  br label %237

237:                                              ; preds = %253, %236
  %238 = load i32, i32* %19, align 4
  %239 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %240 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %239, i32 0, i32 1
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp slt i32 %238, %243
  br i1 %244, label %245, label %256

245:                                              ; preds = %237
  %246 = load %struct.iwl_mvm_rxq_dup_data*, %struct.iwl_mvm_rxq_dup_data** %10, align 8
  %247 = load i32, i32* %19, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.iwl_mvm_rxq_dup_data, %struct.iwl_mvm_rxq_dup_data* %246, i64 %248
  %250 = getelementptr inbounds %struct.iwl_mvm_rxq_dup_data, %struct.iwl_mvm_rxq_dup_data* %249, i32 0, i32 0
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %250, align 8
  %252 = call i32 @memset(%struct.TYPE_12__* %251, i32 255, i32 8)
  br label %253

253:                                              ; preds = %245
  %254 = load i32, i32* %19, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %19, align 4
  br label %237

256:                                              ; preds = %237
  %257 = load %struct.iwl_mvm_rxq_dup_data*, %struct.iwl_mvm_rxq_dup_data** %10, align 8
  %258 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %259 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %258, i32 0, i32 5
  store %struct.iwl_mvm_rxq_dup_data* %257, %struct.iwl_mvm_rxq_dup_data** %259, align 8
  br label %260

260:                                              ; preds = %256, %217, %211
  %261 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %262 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %274, label %264

264:                                              ; preds = %260
  %265 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %266 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %267 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %268 = call i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif* %267)
  %269 = call i32 @iwl_mvm_reserve_sta_stream(%struct.iwl_mvm* %265, %struct.ieee80211_sta* %266, i32 %268)
  store i32 %269, i32* %12, align 4
  %270 = load i32, i32* %12, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %264
  br label %344

273:                                              ; preds = %264
  br label %274

274:                                              ; preds = %273, %260
  %275 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %276 = call i64 @iwl_mvm_has_tlc_offload(%struct.iwl_mvm* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %274
  %279 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %280 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %281 = call i32 @iwl_mvm_rs_add_sta(%struct.iwl_mvm* %279, %struct.iwl_mvm_sta* %280)
  br label %289

282:                                              ; preds = %274
  %283 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %284 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %283, i32 0, i32 4
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 0
  %288 = call i32 @spin_lock_init(i32* %287)
  br label %289

289:                                              ; preds = %282, %278
  %290 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %291 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %292 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %291, i32 0, i32 3
  %293 = call i32 @iwl_mvm_toggle_tx_ant(%struct.iwl_mvm* %290, i32* %292)
  br label %294

294:                                              ; preds = %289, %88
  %295 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %296 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %297 = load i32, i32* %14, align 4
  %298 = load i32, i32* %15, align 4
  %299 = call i32 @iwl_mvm_sta_send_to_fw(%struct.iwl_mvm* %295, %struct.ieee80211_sta* %296, i32 %297, i32 %298)
  store i32 %299, i32* %12, align 4
  %300 = load i32, i32* %12, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %294
  br label %344

303:                                              ; preds = %294
  %304 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %305 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %334

309:                                              ; preds = %303
  %310 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %311 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %325, label %314

314:                                              ; preds = %309
  %315 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %316 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @IWL_MVM_INVALID_STA, align 4
  %319 = icmp ne i32 %317, %318
  %320 = zext i1 %319 to i32
  %321 = call i32 @WARN_ON(i32 %320)
  %322 = load i32, i32* %13, align 4
  %323 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %324 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %323, i32 0, i32 0
  store i32 %322, i32* %324, align 4
  br label %333

325:                                              ; preds = %309
  %326 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %327 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @IWL_MVM_INVALID_STA, align 4
  %330 = icmp eq i32 %328, %329
  %331 = zext i1 %330 to i32
  %332 = call i32 @WARN_ON(i32 %331)
  br label %333

333:                                              ; preds = %325, %314
  br label %334

334:                                              ; preds = %333, %303
  %335 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %336 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %335, i32 0, i32 0
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %13, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %343 = call i32 @rcu_assign_pointer(i32 %341, %struct.ieee80211_sta* %342)
  store i32 0, i32* %4, align 4
  br label %346

344:                                              ; preds = %302, %272, %77
  %345 = load i32, i32* %12, align 4
  store i32 %345, i32* %4, align 4
  br label %346

346:                                              ; preds = %344, %334, %233, %45
  %347 = load i32, i32* %4, align 4
  ret i32 %347
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_mvm_find_free_sta_id(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @iwl_mvm_add_int_sta_common(%struct.iwl_mvm*, %struct.iwl_mvm_int_sta*, i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_realloc_queues_after_restart(%struct.iwl_mvm*, %struct.ieee80211_sta*) #1

declare dso_local i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.iwl_mvm_txq* @iwl_mvm_txq_from_mac80211(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm*) #1

declare dso_local %struct.iwl_mvm_rxq_dup_data* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_reserve_sta_stream(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32) #1

declare dso_local i64 @iwl_mvm_has_tlc_offload(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_rs_add_sta(%struct.iwl_mvm*, %struct.iwl_mvm_sta*) #1

declare dso_local i32 @iwl_mvm_toggle_tx_ant(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @iwl_mvm_sta_send_to_fw(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
