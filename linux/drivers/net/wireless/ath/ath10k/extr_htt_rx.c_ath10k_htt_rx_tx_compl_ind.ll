; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_tx_compl_ind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_tx_compl_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_3__, i32, %struct.ath10k_htt }
%struct.TYPE_3__ = type { i64 }
%struct.ath10k_htt = type { i32 }
%struct.sk_buff = type { i64 }
%struct.htt_resp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32*, i32 }
%struct.htt_tx_done = type { i8*, i8*, i8* }
%struct.htt_data_tx_compl_ppdu_dur = type { %struct.htt_data_tx_ppdu_dur*, i32 }
%struct.htt_data_tx_ppdu_dur = type { i32, i32 }
%struct.ath10k_peer = type { i32 }

@HTT_DATA_TX_STATUS = common dso_local global i32 0, align 4
@HTT_TX_COMPL_STATE_NOACK = common dso_local global i8* null, align 8
@HTT_TX_COMPL_STATE_ACK = common dso_local global i8* null, align 8
@HTT_TX_COMPL_STATE_DISCARD = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"unhandled tx completion status %d\0A\00", align 1
@ATH10K_DBG_HTT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"htt tx completion num_msdus %d\0A\00", align 1
@ATH10K_DEV_TYPE_HL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"txdone fifo overrun, msdu_id %d status %d\0A\00", align 1
@HTT_TX_CMPL_FLAG_PPDU_DURATION_PRESENT = common dso_local global i32 0, align 4
@HTT_TX_CMPL_FLAG_PPID_PRESENT = common dso_local global i32 0, align 4
@HTT_TX_CMPL_FLAG_PA_PRESENT = common dso_local global i32 0, align 4
@HTT_TX_COMPL_PPDU_DUR_INFO0_NUM_ENTRIES_MASK = common dso_local global i32 0, align 4
@HTT_TX_PPDU_DUR_INFO0_PEER_ID_MASK = common dso_local global i32 0, align 4
@HTT_TX_PPDU_DUR_INFO0_TID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff*)* @ath10k_htt_rx_tx_compl_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_rx_tx_compl_ind(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k_htt*, align 8
  %6 = alloca %struct.htt_resp*, align 8
  %7 = alloca %struct.htt_tx_done, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.htt_data_tx_compl_ppdu_dur*, align 8
  %18 = alloca %struct.ath10k_peer*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.htt_data_tx_ppdu_dur*, align 8
  %23 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %24 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 3
  store %struct.ath10k_htt* %25, %struct.ath10k_htt** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.htt_resp*
  store %struct.htt_resp* %29, %struct.htt_resp** %6, align 8
  %30 = bitcast %struct.htt_tx_done* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 24, i1 false)
  %31 = load %struct.htt_resp*, %struct.htt_resp** %6, align 8
  %32 = getelementptr inbounds %struct.htt_resp, %struct.htt_resp* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @HTT_DATA_TX_STATUS, align 4
  %36 = call i32 @MS(i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %47 [
    i32 130, label %38
    i32 129, label %41
    i32 132, label %44
    i32 128, label %44
    i32 131, label %44
  ]

38:                                               ; preds = %2
  %39 = load i8*, i8** @HTT_TX_COMPL_STATE_NOACK, align 8
  %40 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %7, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  br label %53

41:                                               ; preds = %2
  %42 = load i8*, i8** @HTT_TX_COMPL_STATE_ACK, align 8
  %43 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %7, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  br label %53

44:                                               ; preds = %2, %2, %2
  %45 = load i8*, i8** @HTT_TX_COMPL_STATE_DISCARD, align 8
  %46 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %7, i32 0, i32 0
  store i8* %45, i8** %46, align 8
  br label %53

47:                                               ; preds = %2
  %48 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i8*, i8** @HTT_TX_COMPL_STATE_DISCARD, align 8
  %52 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %7, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  br label %53

53:                                               ; preds = %47, %44, %41, %38
  %54 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %55 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %56 = load %struct.htt_resp*, %struct.htt_resp** %6, align 8
  %57 = getelementptr inbounds %struct.htt_resp, %struct.htt_resp* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ath10k_dbg(%struct.ath10k* %54, i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.htt_resp*, %struct.htt_resp** %6, align 8
  %62 = getelementptr inbounds %struct.htt_resp, %struct.htt_resp* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %12, align 4
  %65 = load %struct.htt_resp*, %struct.htt_resp** %6, align 8
  %66 = getelementptr inbounds %struct.htt_resp, %struct.htt_resp* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %10, align 8
  %69 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %70 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %69, i32 0, i32 2
  %71 = load %struct.htt_resp*, %struct.htt_resp** %6, align 8
  %72 = call i32 @ath10k_is_rssi_enable(i32* %70, %struct.htt_resp* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %53
  %76 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %77 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %76, i32 0, i32 2
  %78 = load %struct.htt_resp*, %struct.htt_resp** %6, align 8
  %79 = call i32 @ath10k_tx_data_rssi_get_pad_bytes(i32* %77, %struct.htt_resp* %78)
  store i32 %79, i32* %16, align 4
  br label %80

80:                                               ; preds = %75, %53
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %155, %80
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %158

85:                                               ; preds = %81
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i8* @__le16_to_cpu(i32 %91)
  %93 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %7, i32 0, i32 1
  store i8* %92, i8** %93, align 8
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %85
  %97 = load i32, i32* %12, align 4
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %96
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %102, %103
  %105 = add nsw i32 %104, 1
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %101, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i8* @__le16_to_cpu(i32 %111)
  %113 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %7, i32 0, i32 2
  store i8* %112, i8** %113, align 8
  br label %127

114:                                              ; preds = %96
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %115, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i8* @__le16_to_cpu(i32 %124)
  %126 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %7, i32 0, i32 2
  store i8* %125, i8** %126, align 8
  br label %127

127:                                              ; preds = %114, %100
  br label %128

128:                                              ; preds = %127, %85
  %129 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %130 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @ATH10K_DEV_TYPE_HL, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %137 = call i32 @ath10k_txrx_tx_unref(%struct.ath10k_htt* %136, %struct.htt_tx_done* %7)
  br label %154

138:                                              ; preds = %128
  %139 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %140 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %139, i32 0, i32 0
  %141 = call i32 @kfifo_put(i32* %140, %struct.htt_tx_done* byval(%struct.htt_tx_done) align 8 %7)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %138
  %144 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %145 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %7, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = ptrtoint i8* %146 to i32
  %148 = getelementptr inbounds %struct.htt_tx_done, %struct.htt_tx_done* %7, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %144, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %147, i8* %149)
  %151 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %152 = call i32 @ath10k_txrx_tx_unref(%struct.ath10k_htt* %151, %struct.htt_tx_done* %7)
  br label %153

153:                                              ; preds = %143, %138
  br label %154

154:                                              ; preds = %153, %135
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %81

158:                                              ; preds = %81
  %159 = load %struct.htt_resp*, %struct.htt_resp** %6, align 8
  %160 = getelementptr inbounds %struct.htt_resp, %struct.htt_resp* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @HTT_TX_CMPL_FLAG_PPDU_DURATION_PRESENT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %158
  br label %262

167:                                              ; preds = %158
  %168 = load i32, i32* %12, align 4
  %169 = and i32 %168, 1
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  br label %176

174:                                              ; preds = %167
  %175 = load i32, i32* %12, align 4
  br label %176

176:                                              ; preds = %174, %171
  %177 = phi i32 [ %173, %171 ], [ %175, %174 ]
  store i32 %177, i32* %19, align 4
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %19, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %19, align 4
  br label %184

184:                                              ; preds = %180, %176
  %185 = load %struct.htt_resp*, %struct.htt_resp** %6, align 8
  %186 = getelementptr inbounds %struct.htt_resp, %struct.htt_resp* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @HTT_TX_CMPL_FLAG_PPID_PRESENT, align 4
  %190 = load i32, i32* @HTT_TX_CMPL_FLAG_PA_PRESENT, align 4
  %191 = or i32 %189, %190
  %192 = and i32 %188, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %184
  %195 = load i32, i32* %19, align 4
  %196 = add nsw i32 %195, 2
  store i32 %196, i32* %19, align 4
  br label %197

197:                                              ; preds = %194, %184
  %198 = load i32*, i32** %10, align 8
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = bitcast i32* %201 to %struct.htt_data_tx_compl_ppdu_dur*
  store %struct.htt_data_tx_compl_ppdu_dur* %202, %struct.htt_data_tx_compl_ppdu_dur** %17, align 8
  %203 = load i32, i32* @HTT_TX_COMPL_PPDU_DUR_INFO0_NUM_ENTRIES_MASK, align 4
  %204 = load %struct.htt_data_tx_compl_ppdu_dur*, %struct.htt_data_tx_compl_ppdu_dur** %17, align 8
  %205 = getelementptr inbounds %struct.htt_data_tx_compl_ppdu_dur, %struct.htt_data_tx_compl_ppdu_dur* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @__le32_to_cpu(i32 %206)
  %208 = call i32 @FIELD_GET(i32 %203, i32 %207)
  store i32 %208, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %209

209:                                              ; preds = %259, %197
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* %13, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %262

213:                                              ; preds = %209
  %214 = load %struct.htt_data_tx_compl_ppdu_dur*, %struct.htt_data_tx_compl_ppdu_dur** %17, align 8
  %215 = getelementptr inbounds %struct.htt_data_tx_compl_ppdu_dur, %struct.htt_data_tx_compl_ppdu_dur* %214, i32 0, i32 0
  %216 = load %struct.htt_data_tx_ppdu_dur*, %struct.htt_data_tx_ppdu_dur** %215, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.htt_data_tx_ppdu_dur, %struct.htt_data_tx_ppdu_dur* %216, i64 %218
  store %struct.htt_data_tx_ppdu_dur* %219, %struct.htt_data_tx_ppdu_dur** %22, align 8
  %220 = load %struct.htt_data_tx_ppdu_dur*, %struct.htt_data_tx_ppdu_dur** %22, align 8
  %221 = getelementptr inbounds %struct.htt_data_tx_ppdu_dur, %struct.htt_data_tx_ppdu_dur* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @__le32_to_cpu(i32 %222)
  store i32 %223, i32* %23, align 4
  %224 = load i32, i32* @HTT_TX_PPDU_DUR_INFO0_PEER_ID_MASK, align 4
  %225 = load i32, i32* %23, align 4
  %226 = call i32 @FIELD_GET(i32 %224, i32 %225)
  store i32 %226, i32* %20, align 4
  %227 = call i32 (...) @rcu_read_lock()
  %228 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %229 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %228, i32 0, i32 0
  %230 = call i32 @spin_lock_bh(i32* %229)
  %231 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %232 = load i32, i32* %20, align 4
  %233 = call %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k* %231, i32 %232)
  store %struct.ath10k_peer* %233, %struct.ath10k_peer** %18, align 8
  %234 = load %struct.ath10k_peer*, %struct.ath10k_peer** %18, align 8
  %235 = icmp ne %struct.ath10k_peer* %234, null
  br i1 %235, label %241, label %236

236:                                              ; preds = %213
  %237 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %238 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %237, i32 0, i32 0
  %239 = call i32 @spin_unlock_bh(i32* %238)
  %240 = call i32 (...) @rcu_read_unlock()
  br label %259

241:                                              ; preds = %213
  %242 = load i32, i32* @HTT_TX_PPDU_DUR_INFO0_TID_MASK, align 4
  %243 = load i32, i32* %23, align 4
  %244 = call i32 @FIELD_GET(i32 %242, i32 %243)
  store i32 %244, i32* %14, align 4
  %245 = load %struct.htt_data_tx_ppdu_dur*, %struct.htt_data_tx_ppdu_dur** %22, align 8
  %246 = getelementptr inbounds %struct.htt_data_tx_ppdu_dur, %struct.htt_data_tx_ppdu_dur* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @__le32_to_cpu(i32 %247)
  store i32 %248, i32* %21, align 4
  %249 = load %struct.ath10k_peer*, %struct.ath10k_peer** %18, align 8
  %250 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* %21, align 4
  %254 = call i32 @ieee80211_sta_register_airtime(i32 %251, i32 %252, i32 %253, i32 0)
  %255 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %256 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %255, i32 0, i32 0
  %257 = call i32 @spin_unlock_bh(i32* %256)
  %258 = call i32 (...) @rcu_read_unlock()
  br label %259

259:                                              ; preds = %241, %236
  %260 = load i32, i32* %15, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %15, align 4
  br label %209

262:                                              ; preds = %166, %209
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MS(i32, i32) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, ...) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #2

declare dso_local i32 @ath10k_is_rssi_enable(i32*, %struct.htt_resp*) #2

declare dso_local i32 @ath10k_tx_data_rssi_get_pad_bytes(i32*, %struct.htt_resp*) #2

declare dso_local i8* @__le16_to_cpu(i32) #2

declare dso_local i32 @ath10k_txrx_tx_unref(%struct.ath10k_htt*, %struct.htt_tx_done*) #2

declare dso_local i32 @kfifo_put(i32*, %struct.htt_tx_done* byval(%struct.htt_tx_done) align 8) #2

declare dso_local i32 @FIELD_GET(i32, i32) #2

declare dso_local i32 @__le32_to_cpu(i32) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k*, i32) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local i32 @ieee80211_sta_register_airtime(i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
