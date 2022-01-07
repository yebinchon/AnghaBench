; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_reorder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_reorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32* }
%struct.napi_struct = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iwl_rx_mpdu_desc = type { i32, i32, i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.iwl_mvm_sta = type { i64 }
%struct.iwl_mvm_baid_data = type { i64, i64, i32, %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buffer* }
%struct.iwl_mvm_reorder_buf_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iwl_mvm_reorder_buffer = type { i32, i32, i32, i32, i64, i32, i32 }

@IWL_RX_MPDU_MFLG2_AMSDU = common dso_local global i32 0, align 4
@IWL_RX_MPDU_AMSDU_LAST_SUBFRAME = common dso_local global i32 0, align 4
@IWL_RX_MPDU_AMSDU_SUBFRAME_IDX_MASK = common dso_local global i64 0, align 8
@IWL_RX_MPDU_REORDER_BAID_MASK = common dso_local global i32 0, align 4
@IWL_RX_MPDU_REORDER_BAID_SHIFT = common dso_local global i32 0, align 4
@IWL_RX_REORDER_DATA_INVALID_BAID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Got valid BAID without a valid station assigned\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"Got valid BAID but no baid allocated, bypass the re-ordering buffer. Baid %d reorder 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"baid 0x%x is mapped to sta:%d tid:%d, but was received for sta:%d tid:%d\0A\00", align 1
@IWL_RX_MPDU_REORDER_NSSN_MASK = common dso_local global i32 0, align 4
@IWL_RX_MPDU_REORDER_SN_MASK = common dso_local global i32 0, align 4
@IWL_RX_MPDU_REORDER_SN_SHIFT = common dso_local global i32 0, align 4
@IWL_RX_MPDU_REORDER_BA_OLD_SN = common dso_local global i32 0, align 4
@IWL_MVM_RELEASE_SEND_RSS_SYNC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.napi_struct*, i32, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.iwl_rx_mpdu_desc*)* @iwl_mvm_reorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_reorder(%struct.iwl_mvm* %0, %struct.napi_struct* %1, i32 %2, %struct.ieee80211_sta* %3, %struct.sk_buff* %4, %struct.iwl_rx_mpdu_desc* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca %struct.napi_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_sta*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.iwl_rx_mpdu_desc*, align 8
  %14 = alloca %struct.ieee80211_rx_status*, align 8
  %15 = alloca %struct.ieee80211_hdr*, align 8
  %16 = alloca %struct.iwl_mvm_sta*, align 8
  %17 = alloca %struct.iwl_mvm_baid_data*, align 8
  %18 = alloca %struct.iwl_mvm_reorder_buffer*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.iwl_mvm_reorder_buf_entry*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %8, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %11, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %12, align 8
  store %struct.iwl_rx_mpdu_desc* %5, %struct.iwl_rx_mpdu_desc** %13, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %32 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %31)
  store %struct.ieee80211_rx_status* %32, %struct.ieee80211_rx_status** %14, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %34 = call %struct.ieee80211_hdr* @iwl_mvm_skb_get_hdr(%struct.sk_buff* %33)
  store %struct.ieee80211_hdr* %34, %struct.ieee80211_hdr** %15, align 8
  %35 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %13, align 8
  %36 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  store i32 %38, i32* %20, align 4
  %39 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %13, align 8
  %40 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IWL_RX_MPDU_MFLG2_AMSDU, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %21, align 4
  %44 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %13, align 8
  %45 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IWL_RX_MPDU_AMSDU_LAST_SUBFRAME, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %22, align 4
  %49 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %50 = call i64 @ieee80211_get_tid(%struct.ieee80211_hdr* %49)
  store i64 %50, i64* %23, align 8
  %51 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %13, align 8
  %52 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @IWL_RX_MPDU_AMSDU_SUBFRAME_IDX_MASK, align 8
  %56 = and i64 %54, %55
  store i64 %56, i64* %24, align 8
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* @IWL_RX_MPDU_REORDER_BAID_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @IWL_RX_MPDU_REORDER_BAID_SHIFT, align 4
  %61 = ashr i32 %59, %60
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %29, align 8
  %63 = load i64, i64* %29, align 8
  %64 = load i64, i64* @IWL_RX_REORDER_DATA_INVALID_BAID, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %445

67:                                               ; preds = %6
  %68 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %69 = call i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %68)
  %70 = call i64 @WARN_ONCE(i32 %69, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %445

73:                                               ; preds = %67
  %74 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %75 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %74)
  store %struct.iwl_mvm_sta* %75, %struct.iwl_mvm_sta** %16, align 8
  %76 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %77 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @ieee80211_is_back_req(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %73
  %82 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %83 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ieee80211_is_data_qos(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %89 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @is_multicast_ether_addr(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87, %81
  store i32 0, i32* %7, align 4
  br label %445

94:                                               ; preds = %87, %73
  %95 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %96 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ieee80211_is_data_present(i32 %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  store i32 0, i32* %7, align 4
  br label %445

105:                                              ; preds = %94
  %106 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %29, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call %struct.iwl_mvm_baid_data* @rcu_dereference(i32 %111)
  store %struct.iwl_mvm_baid_data* %112, %struct.iwl_mvm_baid_data** %17, align 8
  %113 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %17, align 8
  %114 = icmp ne %struct.iwl_mvm_baid_data* %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %105
  %116 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %117 = load i64, i64* %29, align 8
  %118 = load i32, i32* %20, align 4
  %119 = call i32 @IWL_DEBUG_RX(%struct.iwl_mvm* %116, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i64 %117, i32 %118)
  store i32 0, i32* %7, align 4
  br label %445

120:                                              ; preds = %105
  %121 = load i64, i64* %23, align 8
  %122 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %17, align 8
  %123 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %120
  %127 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %16, align 8
  %128 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %17, align 8
  %131 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %129, %132
  br label %134

134:                                              ; preds = %126, %120
  %135 = phi i1 [ true, %120 ], [ %133, %126 ]
  %136 = zext i1 %135 to i32
  %137 = load i64, i64* %29, align 8
  %138 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %17, align 8
  %139 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %17, align 8
  %142 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %16, align 8
  %145 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %23, align 8
  %148 = call i64 @WARN(i32 %136, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %137, i64 %140, i64 %143, i64 %146, i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %134
  store i32 0, i32* %7, align 4
  br label %445

151:                                              ; preds = %134
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* @IWL_RX_MPDU_REORDER_NSSN_MASK, align 4
  %154 = and i32 %152, %153
  store i32 %154, i32* %27, align 4
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* @IWL_RX_MPDU_REORDER_SN_MASK, align 4
  %157 = and i32 %155, %156
  %158 = load i32, i32* @IWL_RX_MPDU_REORDER_SN_SHIFT, align 4
  %159 = ashr i32 %157, %158
  store i32 %159, i32* %28, align 4
  %160 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %17, align 8
  %161 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %160, i32 0, i32 4
  %162 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %162, i64 %164
  store %struct.iwl_mvm_reorder_buffer* %165, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %166 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %17, align 8
  %167 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %166, i32 0, i32 3
  %168 = load %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buf_entry** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %17, align 8
  %171 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = mul nsw i32 %169, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %168, i64 %174
  store %struct.iwl_mvm_reorder_buf_entry* %175, %struct.iwl_mvm_reorder_buf_entry** %25, align 8
  %176 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %177 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %176, i32 0, i32 5
  %178 = call i32 @spin_lock_bh(i32* %177)
  %179 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %180 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %195, label %183

183:                                              ; preds = %151
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* @IWL_RX_MPDU_REORDER_BA_OLD_SN, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %190 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %189, i32 0, i32 5
  %191 = call i32 @spin_unlock_bh(i32* %190)
  store i32 0, i32* %7, align 4
  br label %445

192:                                              ; preds = %183
  %193 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %194 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %193, i32 0, i32 0
  store i32 1, i32* %194, align 8
  br label %195

195:                                              ; preds = %192, %151
  %196 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %197 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @ieee80211_is_back_req(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %195
  %202 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %203 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %204 = load %struct.napi_struct*, %struct.napi_struct** %9, align 8
  %205 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %17, align 8
  %206 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %207 = load i32, i32* %27, align 4
  %208 = call i32 @iwl_mvm_release_frames(%struct.iwl_mvm* %202, %struct.ieee80211_sta* %203, %struct.napi_struct* %204, %struct.iwl_mvm_baid_data* %205, %struct.iwl_mvm_reorder_buffer* %206, i32 %207, i32 0)
  br label %439

209:                                              ; preds = %195
  %210 = load i32, i32* %27, align 4
  %211 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %212 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %215 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %213, %216
  %218 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %219 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i64 @iwl_mvm_is_sn_less(i32 %210, i32 %217, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %209
  %224 = load i32, i32* %28, align 4
  %225 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %226 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %229 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %227, %230
  %232 = call i64 @ieee80211_sn_less(i32 %224, i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %253, label %234

234:                                              ; preds = %223, %209
  %235 = load i32, i32* %28, align 4
  %236 = load i32, i32* %27, align 4
  %237 = call i64 @ieee80211_sn_less(i32 %235, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %234
  %240 = load i32, i32* %28, align 4
  br label %243

241:                                              ; preds = %234
  %242 = load i32, i32* %27, align 4
  br label %243

243:                                              ; preds = %241, %239
  %244 = phi i32 [ %240, %239 ], [ %242, %241 ]
  store i32 %244, i32* %30, align 4
  %245 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %246 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %247 = load %struct.napi_struct*, %struct.napi_struct** %9, align 8
  %248 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %17, align 8
  %249 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %250 = load i32, i32* %30, align 4
  %251 = load i32, i32* @IWL_MVM_RELEASE_SEND_RSS_SYNC, align 4
  %252 = call i32 @iwl_mvm_release_frames(%struct.iwl_mvm* %245, %struct.ieee80211_sta* %246, %struct.napi_struct* %247, %struct.iwl_mvm_baid_data* %248, %struct.iwl_mvm_reorder_buffer* %249, i32 %250, i32 %251)
  br label %253

253:                                              ; preds = %243, %223
  %254 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %255 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %256 = load i64, i64* %23, align 8
  %257 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %258 = load i32, i32* %20, align 4
  %259 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %14, align 8
  %260 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @iwl_mvm_oldsn_workaround(%struct.iwl_mvm* %254, %struct.ieee80211_sta* %255, i64 %256, %struct.iwl_mvm_reorder_buffer* %257, i32 %258, i32 %261, i32 %262)
  %264 = load i32, i32* %28, align 4
  %265 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %266 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i64 @ieee80211_sn_less(i32 %264, i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %253
  br label %439

271:                                              ; preds = %253
  %272 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %273 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %272, i32 0, i32 6
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %316, label %276

276:                                              ; preds = %271
  %277 = load i32, i32* %28, align 4
  %278 = load i32, i32* %27, align 4
  %279 = call i64 @ieee80211_sn_less(i32 %277, i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %316

281:                                              ; preds = %276
  %282 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %283 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %27, align 4
  %286 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %287 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = call i64 @iwl_mvm_is_sn_less(i32 %284, i32 %285, i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %312

291:                                              ; preds = %281
  %292 = load i32, i32* %21, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load i32, i32* %22, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %312

297:                                              ; preds = %294, %291
  %298 = load i32, i32* %28, align 4
  %299 = icmp eq i32 %298, 2048
  br i1 %299, label %303, label %300

300:                                              ; preds = %297
  %301 = load i32, i32* %28, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %300, %297
  %304 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %305 = load i64, i64* %29, align 8
  %306 = load i32, i32* %28, align 4
  %307 = call i32 @iwl_mvm_sync_nssn(%struct.iwl_mvm* %304, i64 %305, i32 %306)
  br label %308

308:                                              ; preds = %303, %300
  %309 = load i32, i32* %27, align 4
  %310 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %311 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 4
  br label %312

312:                                              ; preds = %308, %294, %281
  %313 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %314 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %313, i32 0, i32 5
  %315 = call i32 @spin_unlock_bh(i32* %314)
  store i32 0, i32* %7, align 4
  br label %445

316:                                              ; preds = %276, %271
  %317 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %318 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %317, i32 0, i32 6
  %319 = load i32, i32* %318, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %355, label %321

321:                                              ; preds = %316
  %322 = load i32, i32* %28, align 4
  %323 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %324 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = icmp eq i32 %322, %325
  br i1 %326, label %327, label %355

327:                                              ; preds = %321
  %328 = load i32, i32* %21, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %327
  %331 = load i32, i32* %22, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %351

333:                                              ; preds = %330, %327
  %334 = load i32, i32* %28, align 4
  %335 = icmp eq i32 %334, 2048
  br i1 %335, label %339, label %336

336:                                              ; preds = %333
  %337 = load i32, i32* %28, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %336, %333
  %340 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %341 = load i64, i64* %29, align 8
  %342 = load i32, i32* %28, align 4
  %343 = call i32 @iwl_mvm_sync_nssn(%struct.iwl_mvm* %340, i64 %341, i32 %342)
  br label %344

344:                                              ; preds = %339, %336
  %345 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %346 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @ieee80211_sn_inc(i32 %347)
  %349 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %350 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %349, i32 0, i32 1
  store i32 %348, i32* %350, align 4
  br label %351

351:                                              ; preds = %344, %330
  %352 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %353 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %352, i32 0, i32 5
  %354 = call i32 @spin_unlock_bh(i32* %353)
  store i32 0, i32* %7, align 4
  br label %445

355:                                              ; preds = %321, %316
  %356 = load i32, i32* %28, align 4
  %357 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %358 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = srem i32 %356, %359
  store i32 %360, i32* %26, align 4
  %361 = load %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buf_entry** %25, align 8
  %362 = load i32, i32* %26, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %361, i64 %363
  %365 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 1
  %367 = call %struct.sk_buff* @skb_peek_tail(i32* %366)
  store %struct.sk_buff* %367, %struct.sk_buff** %19, align 8
  %368 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %369 = icmp ne %struct.sk_buff* %368, null
  br i1 %369, label %370, label %374

370:                                              ; preds = %355
  %371 = load i32, i32* %21, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %370
  br label %439

374:                                              ; preds = %370, %355
  %375 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %376 = icmp ne %struct.sk_buff* %375, null
  br i1 %376, label %377, label %390

377:                                              ; preds = %374
  %378 = load i32, i32* %28, align 4
  %379 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %380 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 4
  %382 = icmp ne i32 %378, %381
  br i1 %382, label %389, label %383

383:                                              ; preds = %377
  %384 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %385 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %384, i32 0, i32 4
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* %24, align 8
  %388 = icmp uge i64 %386, %387
  br i1 %388, label %389, label %390

389:                                              ; preds = %383, %377
  br label %439

390:                                              ; preds = %383, %374
  br label %391

391:                                              ; preds = %390
  %392 = load %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buf_entry** %25, align 8
  %393 = load i32, i32* %26, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %392, i64 %394
  %396 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %396, i32 0, i32 1
  %398 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %399 = call i32 @__skb_queue_tail(i32* %397, %struct.sk_buff* %398)
  %400 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %401 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %400, i32 0, i32 6
  %402 = load i32, i32* %401, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %401, align 4
  %404 = load i32, i32* @jiffies, align 4
  %405 = load %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buf_entry** %25, align 8
  %406 = load i32, i32* %26, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %405, i64 %407
  %409 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %409, i32 0, i32 0
  store i32 %404, i32* %410, align 4
  %411 = load i32, i32* %21, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %420

413:                                              ; preds = %391
  %414 = load i32, i32* %28, align 4
  %415 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %416 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %415, i32 0, i32 3
  store i32 %414, i32* %416, align 4
  %417 = load i64, i64* %24, align 8
  %418 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %419 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %418, i32 0, i32 4
  store i64 %417, i64* %419, align 8
  br label %420

420:                                              ; preds = %413, %391
  %421 = load i32, i32* %21, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %420
  %424 = load i32, i32* %22, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %435

426:                                              ; preds = %423, %420
  %427 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %428 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %429 = load %struct.napi_struct*, %struct.napi_struct** %9, align 8
  %430 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %17, align 8
  %431 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %432 = load i32, i32* %27, align 4
  %433 = load i32, i32* @IWL_MVM_RELEASE_SEND_RSS_SYNC, align 4
  %434 = call i32 @iwl_mvm_release_frames(%struct.iwl_mvm* %427, %struct.ieee80211_sta* %428, %struct.napi_struct* %429, %struct.iwl_mvm_baid_data* %430, %struct.iwl_mvm_reorder_buffer* %431, i32 %432, i32 %433)
  br label %435

435:                                              ; preds = %426, %423
  %436 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %437 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %436, i32 0, i32 5
  %438 = call i32 @spin_unlock_bh(i32* %437)
  store i32 1, i32* %7, align 4
  br label %445

439:                                              ; preds = %389, %373, %270, %201
  %440 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %441 = call i32 @kfree_skb(%struct.sk_buff* %440)
  %442 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %18, align 8
  %443 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %442, i32 0, i32 5
  %444 = call i32 @spin_unlock_bh(i32* %443)
  store i32 1, i32* %7, align 4
  br label %445

445:                                              ; preds = %439, %435, %351, %312, %188, %150, %115, %104, %93, %72, %66
  %446 = load i32, i32* %7, align 4
  ret i32 %446
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_hdr* @iwl_mvm_skb_get_hdr(%struct.sk_buff*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ieee80211_get_tid(%struct.ieee80211_hdr*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i64 @ieee80211_is_back_req(i32) #1

declare dso_local i32 @ieee80211_is_data_qos(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ieee80211_is_data_present(i32) #1

declare dso_local %struct.iwl_mvm_baid_data* @rcu_dereference(i32) #1

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_mvm*, i8*, i64, i32) #1

declare dso_local i64 @WARN(i32, i8*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iwl_mvm_release_frames(%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.napi_struct*, %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_reorder_buffer*, i32, i32) #1

declare dso_local i64 @iwl_mvm_is_sn_less(i32, i32, i32) #1

declare dso_local i64 @ieee80211_sn_less(i32, i32) #1

declare dso_local i32 @iwl_mvm_oldsn_workaround(%struct.iwl_mvm*, %struct.ieee80211_sta*, i64, %struct.iwl_mvm_reorder_buffer*, i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_sync_nssn(%struct.iwl_mvm*, i64, i32) #1

declare dso_local i32 @ieee80211_sn_inc(i32) #1

declare dso_local %struct.sk_buff* @skb_peek_tail(i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
