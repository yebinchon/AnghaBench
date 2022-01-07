; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_tx_mpdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_tx_mpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32* }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.iwl_mvm_sta = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.iwl_device_cmd = type { i64 }
%struct.iwl_tx_cmd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@IWL_MAX_TID_COUNT = common dso_local global i64 0, align 8
@IWL_MVM_NON_TRANSMITTING_AP = common dso_local global i64 0, align 8
@IWL_MVM_INVALID_STA = common dso_local global i64 0, align 8
@IEEE80211_TX_STATUS_EOSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Invalid TID %d\00", align 1
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IWL_AGG_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Invalid internal agg state %d for TID %d\00", align 1
@IEEE80211_SCTL_SEQ = common dso_local global i64 0, align 8
@IEEE80211_SCTL_FRAG = common dso_local global i64 0, align 8
@IWL_TID_NON_QOS = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_SEND_AFTER_DTIM = common dso_local global i32 0, align 4
@IWL_MVM_INVALID_QUEUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"Invalid TXQ id\00", align 1
@jiffies = common dso_local global i32 0, align 4
@IWL_MVM_QUEUE_SHARED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"TX to [%d|%d] Q:%d - seq: 0x%x len %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"TX to [%d|%d] dropped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.sk_buff*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*)* @iwl_mvm_tx_mpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_tx_mpdu(%struct.iwl_mvm* %0, %struct.sk_buff* %1, %struct.ieee80211_tx_info* %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca %struct.iwl_mvm_sta*, align 8
  %12 = alloca %struct.iwl_device_cmd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.iwl_tx_cmd*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %23, %struct.ieee80211_hdr** %10, align 8
  store i64 0, i64* %14, align 8
  %24 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  store i64 %24, i64* %15, align 8
  store i32 0, i32* %17, align 4
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %26 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %25)
  store %struct.iwl_mvm_sta* %26, %struct.iwl_mvm_sta** %11, align 8
  %27 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @ieee80211_hdrlen(i32 %30)
  store i32 %31, i32* %18, align 4
  %32 = load i64, i64* @IWL_MVM_NON_TRANSMITTING_AP, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @ieee80211_is_probe_resp(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %334

39:                                               ; preds = %34, %4
  %40 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %41 = icmp ne %struct.iwl_mvm_sta* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ON_ONCE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %334

47:                                               ; preds = %39
  %48 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IWL_MVM_INVALID_STA, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @WARN_ON_ONCE(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 -1, i32* %5, align 4
  br label %334

57:                                               ; preds = %47
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @ieee80211_is_probe_resp(i32 %58)
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = call i32 @iwl_mvm_probe_resp_set_noa(%struct.iwl_mvm* %63, %struct.sk_buff* %64)
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %70 = load i32, i32* %18, align 4
  %71 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %72 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %73 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call %struct.iwl_device_cmd* @iwl_mvm_set_tx_params(%struct.iwl_mvm* %67, %struct.sk_buff* %68, %struct.ieee80211_tx_info* %69, i32 %70, %struct.ieee80211_sta* %71, i64 %74)
  store %struct.iwl_device_cmd* %75, %struct.iwl_device_cmd** %12, align 8
  %76 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %77 = icmp ne %struct.iwl_device_cmd* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %66
  br label %327

79:                                               ; preds = %66
  %80 = load i32, i32* @IEEE80211_TX_STATUS_EOSP, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %83 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %87 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %86, i32 0, i32 1
  %88 = call i32 @spin_lock(i32* %87)
  %89 = load i32, i32* %13, align 4
  %90 = call i64 @ieee80211_is_data_qos(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %179

92:                                               ; preds = %79
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @ieee80211_is_qos_nullfunc(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %179, label %96

96:                                               ; preds = %92
  %97 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %98 = call i64 @ieee80211_get_tid(%struct.ieee80211_hdr* %97)
  store i64 %98, i64* %15, align 8
  %99 = load i64, i64* %15, align 8
  %100 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %101 = icmp uge i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i64, i64* %15, align 8
  %104 = call i64 (i32, i8*, ...) @WARN_ONCE(i32 %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %318

107:                                              ; preds = %96
  %108 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %109 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %112 = and i32 %110, %111
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %17, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %107
  %116 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %117 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %116, i32 0, i32 2
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i64, i64* %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @IWL_AGG_ON, align 8
  %124 = icmp ne i64 %122, %123
  br label %125

125:                                              ; preds = %115, %107
  %126 = phi i1 [ false, %107 ], [ %124, %115 ]
  %127 = zext i1 %126 to i32
  %128 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %129 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %128, i32 0, i32 2
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load i64, i64* %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %15, align 8
  %136 = call i64 (i32, i8*, ...) @WARN_ONCE(i32 %127, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %134, i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %125
  br label %318

139:                                              ; preds = %125
  %140 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %141 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %140, i32 0, i32 2
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load i64, i64* %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %14, align 8
  %147 = load i64, i64* @IEEE80211_SCTL_SEQ, align 8
  %148 = load i64, i64* %14, align 8
  %149 = and i64 %148, %147
  store i64 %149, i64* %14, align 8
  %150 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %151 = call i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %178, label %153

153:                                              ; preds = %139
  %154 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %155 = getelementptr inbounds %struct.iwl_device_cmd, %struct.iwl_device_cmd* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to i8*
  %158 = bitcast i8* %157 to %struct.iwl_tx_cmd*
  store %struct.iwl_tx_cmd* %158, %struct.iwl_tx_cmd** %19, align 8
  %159 = load i64, i64* @IEEE80211_SCTL_FRAG, align 8
  %160 = call i32 @cpu_to_le16(i64 %159)
  %161 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %162 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, %160
  store i32 %164, i32* %162, align 4
  %165 = load i64, i64* %14, align 8
  %166 = call i32 @cpu_to_le16(i64 %165)
  %167 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %168 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %172 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %19, align 8
  %175 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %174, i32 0, i32 0
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  store i32 %173, i32* %177, align 4
  br label %178

178:                                              ; preds = %153, %139
  br label %190

179:                                              ; preds = %92, %79
  %180 = load i32, i32* %13, align 4
  %181 = call i64 @ieee80211_is_data(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = load i32, i32* %13, align 4
  %185 = call i64 @ieee80211_is_data_qos(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = load i64, i64* @IWL_TID_NON_QOS, align 8
  store i64 %188, i64* %15, align 8
  br label %189

189:                                              ; preds = %187, %183, %179
  br label %190

190:                                              ; preds = %189, %178
  %191 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %192 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %191, i32 0, i32 2
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = load i64, i64* %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %16, align 8
  %198 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %199 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @IEEE80211_TX_CTL_SEND_AFTER_DTIM, align 4
  %202 = and i32 %200, %201
  %203 = call i64 @WARN_ON_ONCE(i32 %202)
  %204 = load i64, i64* %16, align 8
  %205 = load i64, i64* @IWL_MVM_INVALID_QUEUE, align 8
  %206 = icmp eq i64 %204, %205
  %207 = zext i1 %206 to i32
  %208 = call i64 (i32, i8*, ...) @WARN_ONCE(i32 %207, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %190
  %211 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %212 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %215 = call i32 @iwl_trans_free_tx_cmd(i32 %213, %struct.iwl_device_cmd* %214)
  %216 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %217 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %216, i32 0, i32 1
  %218 = call i32 @spin_unlock(i32* %217)
  store i32 0, i32* %5, align 4
  br label %334

219:                                              ; preds = %190
  %220 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %221 = call i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %258, label %223

223:                                              ; preds = %219
  %224 = load i32, i32* @jiffies, align 4
  %225 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %226 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %225, i32 0, i32 2
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = load i64, i64* %16, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = load i64, i64* %15, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  store i32 %224, i32* %233, align 4
  %234 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %235 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %234, i32 0, i32 2
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = load i64, i64* %16, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @IWL_MVM_QUEUE_SHARED, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %248

243:                                              ; preds = %223
  %244 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %245 = load i64, i64* %16, align 8
  %246 = call i64 @iwl_mvm_txq_should_update(%struct.iwl_mvm* %244, i64 %245)
  %247 = icmp ne i64 %246, 0
  br label %248

248:                                              ; preds = %243, %223
  %249 = phi i1 [ false, %223 ], [ %247, %243 ]
  %250 = zext i1 %249 to i32
  %251 = call i64 @unlikely(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %248
  %254 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %255 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %254, i32 0, i32 1
  %256 = call i32 @schedule_work(i32* %255)
  br label %257

257:                                              ; preds = %253, %248
  br label %258

258:                                              ; preds = %257, %219
  %259 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %260 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %261 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* %15, align 8
  %264 = load i64, i64* %16, align 8
  %265 = load i64, i64* %14, align 8
  %266 = call i32 @IEEE80211_SEQ_TO_SN(i64 %265)
  %267 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %268 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 (%struct.iwl_mvm*, i8*, i64, i64, ...) @IWL_DEBUG_TX(%struct.iwl_mvm* %259, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %262, i64 %263, i64 %264, i32 %266, i32 %269)
  %271 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %272 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %273 = call i32 @iwl_mvm_skb_prepare_status(%struct.sk_buff* %271, %struct.iwl_device_cmd* %272)
  %274 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %275 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %278 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %279 = load i64, i64* %16, align 8
  %280 = call i64 @iwl_trans_tx(i32 %276, %struct.sk_buff* %277, %struct.iwl_device_cmd* %278, i64 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %258
  br label %318

283:                                              ; preds = %258
  %284 = load i64, i64* %15, align 8
  %285 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %286 = icmp ult i64 %284, %285
  br i1 %286, label %287, label %300

287:                                              ; preds = %283
  %288 = load i32, i32* %13, align 4
  %289 = call i32 @ieee80211_has_morefrags(i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %300, label %291

291:                                              ; preds = %287
  %292 = load i64, i64* %14, align 8
  %293 = add i64 %292, 16
  %294 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %295 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %294, i32 0, i32 2
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %295, align 8
  %297 = load i64, i64* %15, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 1
  store i64 %293, i64* %299, align 8
  br label %300

300:                                              ; preds = %291, %287, %283
  %301 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %302 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %301, i32 0, i32 1
  %303 = call i32 @spin_unlock(i32* %302)
  %304 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %305 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %306 = load i64, i64* %15, align 8
  %307 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %300
  br label %312

310:                                              ; preds = %300
  %311 = load i64, i64* %15, align 8
  br label %312

312:                                              ; preds = %310, %309
  %313 = phi i64 [ 0, %309 ], [ %311, %310 ]
  %314 = call i64 @iwl_mvm_tx_pkt_queued(%struct.iwl_mvm* %304, %struct.iwl_mvm_sta* %305, i64 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %312
  br label %327

317:                                              ; preds = %312
  store i32 0, i32* %5, align 4
  br label %334

318:                                              ; preds = %282, %138, %106
  %319 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %320 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %323 = call i32 @iwl_trans_free_tx_cmd(i32 %321, %struct.iwl_device_cmd* %322)
  %324 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %325 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %324, i32 0, i32 1
  %326 = call i32 @spin_unlock(i32* %325)
  br label %327

327:                                              ; preds = %318, %316, %78
  %328 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %329 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %330 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* %15, align 8
  %333 = call i32 (%struct.iwl_mvm*, i8*, i64, i64, ...) @IWL_DEBUG_TX(%struct.iwl_mvm* %328, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %331, i64 %332)
  store i32 -1, i32* %5, align 4
  br label %334

334:                                              ; preds = %327, %317, %210, %56, %46, %38
  %335 = load i32, i32* %5, align 4
  ret i32 %335
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @ieee80211_is_probe_resp(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iwl_mvm_probe_resp_set_noa(%struct.iwl_mvm*, %struct.sk_buff*) #1

declare dso_local %struct.iwl_device_cmd* @iwl_mvm_set_tx_params(%struct.iwl_mvm*, %struct.sk_buff*, %struct.ieee80211_tx_info*, i32, %struct.ieee80211_sta*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @ieee80211_is_qos_nullfunc(i32) #1

declare dso_local i64 @ieee80211_get_tid(%struct.ieee80211_hdr*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, ...) #1

declare dso_local i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @iwl_trans_free_tx_cmd(i32, %struct.iwl_device_cmd*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @iwl_mvm_txq_should_update(%struct.iwl_mvm*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @IWL_DEBUG_TX(%struct.iwl_mvm*, i8*, i64, i64, ...) #1

declare dso_local i32 @IEEE80211_SEQ_TO_SN(i64) #1

declare dso_local i32 @iwl_mvm_skb_prepare_status(%struct.sk_buff*, %struct.iwl_device_cmd*) #1

declare dso_local i64 @iwl_trans_tx(i32, %struct.sk_buff*, %struct.iwl_device_cmd*, i64) #1

declare dso_local i32 @ieee80211_has_morefrags(i32) #1

declare dso_local i64 @iwl_mvm_tx_pkt_queued(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
