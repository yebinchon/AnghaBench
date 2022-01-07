; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_rx_ba_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_rx_ba_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.ieee80211_tx_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8**, i64, i8*, i8* }
%struct.iwl_mvm_ba_notif = type { i32, i32, i64, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.iwl_mvm_tid_data = type { i64, i64, i8* }
%struct.iwl_mvm_sta = type { %struct.iwl_mvm_tid_data* }
%struct.iwl_mvm_compressed_ba_notif = type { i32, i32, i32, i32, i32, i32, %struct.iwl_mvm_compressed_ba_tfd*, i32, i64, i32 }
%struct.iwl_mvm_compressed_ba_tfd = type { i32, i32, i32 }

@IEEE80211_TX_STAT_AMPDU = common dso_local global i32 0, align 4
@IWL_MGMT_TID = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"BA_NOTIFICATION Received from sta_id = %d, flags %x, sent:%d, acked:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"BA_NOTIFICATION Received from %pM, sta_id = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"TID = %d, SeqCtl = %d, bitmap = 0x%llx, scd_flow = %d, scd_ssn = %d sent:%d, acked:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"reduced txp from ba notif %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_ba_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_tx_info, align 8
  %11 = alloca %struct.iwl_mvm_ba_notif*, align 8
  %12 = alloca %struct.iwl_mvm_tid_data*, align 8
  %13 = alloca %struct.iwl_mvm_sta*, align 8
  %14 = alloca %struct.iwl_mvm_compressed_ba_notif*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.iwl_mvm_compressed_ba_tfd*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %18 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %19 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %18)
  store %struct.iwl_rx_packet* %19, %struct.iwl_rx_packet** %5, align 8
  %20 = bitcast %struct.ieee80211_tx_info* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 40, i1 false)
  %21 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %22 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %10, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %24 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %160

26:                                               ; preds = %2
  %27 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %28 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.iwl_mvm_compressed_ba_notif*
  store %struct.iwl_mvm_compressed_ba_notif* %31, %struct.iwl_mvm_compressed_ba_notif** %14, align 8
  %32 = load %struct.iwl_mvm_compressed_ba_notif*, %struct.iwl_mvm_compressed_ba_notif** %14, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_notif, %struct.iwl_mvm_compressed_ba_notif* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @TX_RES_RATE_TABLE_COL_GET(i32 %34)
  store i8* %35, i8** %15, align 8
  %36 = load %struct.iwl_mvm_compressed_ba_notif*, %struct.iwl_mvm_compressed_ba_notif** %14, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_notif, %struct.iwl_mvm_compressed_ba_notif* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %6, align 4
  %39 = load %struct.iwl_mvm_compressed_ba_notif*, %struct.iwl_mvm_compressed_ba_notif** %14, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_notif, %struct.iwl_mvm_compressed_ba_notif* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %10, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.iwl_mvm_compressed_ba_notif*, %struct.iwl_mvm_compressed_ba_notif** %14, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_notif, %struct.iwl_mvm_compressed_ba_notif* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %10, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.iwl_mvm_compressed_ba_notif*, %struct.iwl_mvm_compressed_ba_notif** %14, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_notif, %struct.iwl_mvm_compressed_ba_notif* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @le32_to_cpu(i32 %57)
  %59 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %10, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.iwl_mvm_compressed_ba_notif*, %struct.iwl_mvm_compressed_ba_notif** %14, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_notif, %struct.iwl_mvm_compressed_ba_notif* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %10, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  store i8* %64, i8** %68, align 8
  %69 = load %struct.iwl_mvm_compressed_ba_notif*, %struct.iwl_mvm_compressed_ba_notif** %14, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_notif, %struct.iwl_mvm_compressed_ba_notif* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @le16_to_cpu(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %26
  br label %144

75:                                               ; preds = %26
  %76 = call i32 (...) @rcu_read_lock()
  %77 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_rcu(%struct.iwl_mvm* %77, i32 %78)
  store %struct.iwl_mvm_sta* %79, %struct.iwl_mvm_sta** %13, align 8
  %80 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %13, align 8
  %81 = icmp ne %struct.iwl_mvm_sta* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  br label %142

83:                                               ; preds = %75
  store i32 0, i32* %16, align 4
  br label %84

84:                                               ; preds = %131, %83
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.iwl_mvm_compressed_ba_notif*, %struct.iwl_mvm_compressed_ba_notif** %14, align 8
  %87 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_notif, %struct.iwl_mvm_compressed_ba_notif* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %134

91:                                               ; preds = %84
  %92 = load %struct.iwl_mvm_compressed_ba_notif*, %struct.iwl_mvm_compressed_ba_notif** %14, align 8
  %93 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_notif, %struct.iwl_mvm_compressed_ba_notif* %92, i32 0, i32 6
  %94 = load %struct.iwl_mvm_compressed_ba_tfd*, %struct.iwl_mvm_compressed_ba_tfd** %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_tfd, %struct.iwl_mvm_compressed_ba_tfd* %94, i64 %96
  store %struct.iwl_mvm_compressed_ba_tfd* %97, %struct.iwl_mvm_compressed_ba_tfd** %17, align 8
  %98 = load %struct.iwl_mvm_compressed_ba_tfd*, %struct.iwl_mvm_compressed_ba_tfd** %17, align 8
  %99 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_tfd, %struct.iwl_mvm_compressed_ba_tfd* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @IWL_MGMT_TID, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %91
  %105 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %104, %91
  %107 = load i8*, i8** %15, align 8
  %108 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %13, align 8
  %109 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %108, i32 0, i32 0
  %110 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %109, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %110, i64 %112
  %114 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %113, i32 0, i32 2
  store i8* %107, i8** %114, align 8
  %115 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.iwl_mvm_compressed_ba_tfd*, %struct.iwl_mvm_compressed_ba_tfd** %17, align 8
  %119 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_tfd, %struct.iwl_mvm_compressed_ba_tfd* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le16_to_cpu(i32 %120)
  %122 = load %struct.iwl_mvm_compressed_ba_tfd*, %struct.iwl_mvm_compressed_ba_tfd** %17, align 8
  %123 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_tfd, %struct.iwl_mvm_compressed_ba_tfd* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @le16_to_cpu(i32 %124)
  %126 = load %struct.iwl_mvm_compressed_ba_notif*, %struct.iwl_mvm_compressed_ba_notif** %14, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_notif, %struct.iwl_mvm_compressed_ba_notif* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @le32_to_cpu(i32 %128)
  %130 = call i32 @iwl_mvm_tx_reclaim(%struct.iwl_mvm* %115, i32 %116, i32 %117, i32 %121, i32 %125, %struct.ieee80211_tx_info* %10, i64 %129)
  br label %131

131:                                              ; preds = %106
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %84

134:                                              ; preds = %84
  %135 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %136 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %13, align 8
  %137 = load %struct.iwl_mvm_compressed_ba_notif*, %struct.iwl_mvm_compressed_ba_notif** %14, align 8
  %138 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_notif, %struct.iwl_mvm_compressed_ba_notif* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @le32_to_cpu(i32 %139)
  %141 = call i32 @iwl_mvm_tx_airtime(%struct.iwl_mvm* %135, %struct.iwl_mvm_sta* %136, i64 %140)
  br label %142

142:                                              ; preds = %134, %82
  %143 = call i32 (...) @rcu_read_unlock()
  br label %144

144:                                              ; preds = %142, %74
  %145 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.iwl_mvm_compressed_ba_notif*, %struct.iwl_mvm_compressed_ba_notif** %14, align 8
  %148 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_notif, %struct.iwl_mvm_compressed_ba_notif* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @le32_to_cpu(i32 %149)
  %151 = load %struct.iwl_mvm_compressed_ba_notif*, %struct.iwl_mvm_compressed_ba_notif** %14, align 8
  %152 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_notif, %struct.iwl_mvm_compressed_ba_notif* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @le16_to_cpu(i32 %153)
  %155 = load %struct.iwl_mvm_compressed_ba_notif*, %struct.iwl_mvm_compressed_ba_notif** %14, align 8
  %156 = getelementptr inbounds %struct.iwl_mvm_compressed_ba_notif, %struct.iwl_mvm_compressed_ba_notif* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le16_to_cpu(i32 %157)
  %159 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_TX_REPLY(%struct.iwl_mvm* %145, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %146, i64 %150, i32 %154, i32 %158)
  br label %267

160:                                              ; preds = %2
  %161 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %162 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i8*
  %165 = bitcast i8* %164 to %struct.iwl_mvm_ba_notif*
  store %struct.iwl_mvm_ba_notif* %165, %struct.iwl_mvm_ba_notif** %11, align 8
  %166 = load %struct.iwl_mvm_ba_notif*, %struct.iwl_mvm_ba_notif** %11, align 8
  %167 = getelementptr inbounds %struct.iwl_mvm_ba_notif, %struct.iwl_mvm_ba_notif* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %6, align 4
  %169 = load %struct.iwl_mvm_ba_notif*, %struct.iwl_mvm_ba_notif** %11, align 8
  %170 = getelementptr inbounds %struct.iwl_mvm_ba_notif, %struct.iwl_mvm_ba_notif* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %7, align 4
  %172 = load %struct.iwl_mvm_ba_notif*, %struct.iwl_mvm_ba_notif** %11, align 8
  %173 = getelementptr inbounds %struct.iwl_mvm_ba_notif, %struct.iwl_mvm_ba_notif* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @le16_to_cpu(i32 %174)
  store i32 %175, i32* %8, align 4
  %176 = load %struct.iwl_mvm_ba_notif*, %struct.iwl_mvm_ba_notif** %11, align 8
  %177 = getelementptr inbounds %struct.iwl_mvm_ba_notif, %struct.iwl_mvm_ba_notif* %176, i32 0, i32 8
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @le16_to_cpu(i32 %178)
  store i32 %179, i32* %9, align 4
  %180 = call i32 (...) @rcu_read_lock()
  %181 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %182 = load i32, i32* %6, align 4
  %183 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_rcu(%struct.iwl_mvm* %181, i32 %182)
  store %struct.iwl_mvm_sta* %183, %struct.iwl_mvm_sta** %13, align 8
  %184 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %13, align 8
  %185 = icmp ne %struct.iwl_mvm_sta* %184, null
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = call i64 @WARN_ON_ONCE(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %160
  %191 = call i32 (...) @rcu_read_unlock()
  br label %267

192:                                              ; preds = %160
  %193 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %13, align 8
  %194 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %193, i32 0, i32 0
  %195 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %195, i64 %197
  store %struct.iwl_mvm_tid_data* %198, %struct.iwl_mvm_tid_data** %12, align 8
  %199 = load %struct.iwl_mvm_ba_notif*, %struct.iwl_mvm_ba_notif** %11, align 8
  %200 = getelementptr inbounds %struct.iwl_mvm_ba_notif, %struct.iwl_mvm_ba_notif* %199, i32 0, i32 3
  %201 = load i8*, i8** %200, align 8
  %202 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %10, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 3
  store i8* %201, i8** %203, align 8
  %204 = load %struct.iwl_mvm_ba_notif*, %struct.iwl_mvm_ba_notif** %11, align 8
  %205 = getelementptr inbounds %struct.iwl_mvm_ba_notif, %struct.iwl_mvm_ba_notif* %204, i32 0, i32 4
  %206 = load i8*, i8** %205, align 8
  %207 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %10, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 2
  store i8* %206, i8** %208, align 8
  %209 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %12, align 8
  %210 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %10, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 1
  store i64 %211, i64* %213, align 8
  %214 = load %struct.iwl_mvm_ba_notif*, %struct.iwl_mvm_ba_notif** %11, align 8
  %215 = getelementptr inbounds %struct.iwl_mvm_ba_notif, %struct.iwl_mvm_ba_notif* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = inttoptr i64 %216 to i8*
  %218 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %10, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load i8**, i8*** %219, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 0
  store i8* %217, i8** %221, align 8
  %222 = call i32 (...) @rcu_read_unlock()
  %223 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* %9, align 4
  %228 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %12, align 8
  %229 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @iwl_mvm_tx_reclaim(%struct.iwl_mvm* %223, i32 %224, i32 %225, i32 %226, i32 %227, %struct.ieee80211_tx_info* %10, i64 %230)
  %232 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %233 = load %struct.iwl_mvm_ba_notif*, %struct.iwl_mvm_ba_notif** %11, align 8
  %234 = getelementptr inbounds %struct.iwl_mvm_ba_notif, %struct.iwl_mvm_ba_notif* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.iwl_mvm_ba_notif*, %struct.iwl_mvm_ba_notif** %11, align 8
  %237 = getelementptr inbounds %struct.iwl_mvm_ba_notif, %struct.iwl_mvm_ba_notif* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_TX_REPLY(%struct.iwl_mvm* %232, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %235, i32 %238)
  %240 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %241 = load %struct.iwl_mvm_ba_notif*, %struct.iwl_mvm_ba_notif** %11, align 8
  %242 = getelementptr inbounds %struct.iwl_mvm_ba_notif, %struct.iwl_mvm_ba_notif* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.iwl_mvm_ba_notif*, %struct.iwl_mvm_ba_notif** %11, align 8
  %245 = getelementptr inbounds %struct.iwl_mvm_ba_notif, %struct.iwl_mvm_ba_notif* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @le16_to_cpu(i32 %246)
  %248 = load %struct.iwl_mvm_ba_notif*, %struct.iwl_mvm_ba_notif** %11, align 8
  %249 = getelementptr inbounds %struct.iwl_mvm_ba_notif, %struct.iwl_mvm_ba_notif* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @le64_to_cpu(i32 %250)
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* %9, align 4
  %254 = load %struct.iwl_mvm_ba_notif*, %struct.iwl_mvm_ba_notif** %11, align 8
  %255 = getelementptr inbounds %struct.iwl_mvm_ba_notif, %struct.iwl_mvm_ba_notif* %254, i32 0, i32 4
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.iwl_mvm_ba_notif*, %struct.iwl_mvm_ba_notif** %11, align 8
  %258 = getelementptr inbounds %struct.iwl_mvm_ba_notif, %struct.iwl_mvm_ba_notif* %257, i32 0, i32 3
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_TX_REPLY(%struct.iwl_mvm* %240, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %243, i32 %247, i32 %251, i32 %252, i32 %253, i8* %256, i8* %259)
  %261 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %262 = load %struct.iwl_mvm_ba_notif*, %struct.iwl_mvm_ba_notif** %11, align 8
  %263 = getelementptr inbounds %struct.iwl_mvm_ba_notif, %struct.iwl_mvm_ba_notif* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = trunc i64 %264 to i32
  %266 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_TX_REPLY(%struct.iwl_mvm* %261, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %265)
  br label %267

267:                                              ; preds = %192, %190, %144
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i8* @TX_RES_RATE_TABLE_COL_GET(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_rcu(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_tx_reclaim(%struct.iwl_mvm*, i32, i32, i32, i32, %struct.ieee80211_tx_info*, i64) #1

declare dso_local i32 @iwl_mvm_tx_airtime(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @IWL_DEBUG_TX_REPLY(%struct.iwl_mvm*, i8*, i32, ...) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
