; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_process_recv_frm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_process_recv_frm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggr_info_conn = type { i32, i32, i32, i32, %struct.rxtid_stats*, %struct.rxtid* }
%struct.rxtid_stats = type { i32, i32, i32, i32, i32 }
%struct.rxtid = type { i32, i32, i32, i32, %struct.skb_hold_q*, i32, i32 }
%struct.skb_hold_q = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@ATH6KL_MAX_SEQ_NO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@AGGR_RX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aggr_info_conn*, i64, i32, i32, %struct.sk_buff*)* @aggr_process_recv_frm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aggr_process_recv_frm(%struct.aggr_info_conn* %0, i64 %1, i32 %2, i32 %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.aggr_info_conn*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.rxtid*, align 8
  %13 = alloca %struct.rxtid_stats*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.skb_hold_q*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.aggr_info_conn* %0, %struct.aggr_info_conn** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %11, align 8
  store i32 0, i32* %20, align 4
  %22 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %7, align 8
  %23 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %22, i32 0, i32 5
  %24 = load %struct.rxtid*, %struct.rxtid** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %24, i64 %25
  store %struct.rxtid* %26, %struct.rxtid** %12, align 8
  %27 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %7, align 8
  %28 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %27, i32 0, i32 4
  %29 = load %struct.rxtid_stats*, %struct.rxtid_stats** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.rxtid_stats, %struct.rxtid_stats* %29, i64 %30
  store %struct.rxtid_stats* %31, %struct.rxtid_stats** %13, align 8
  %32 = load %struct.rxtid_stats*, %struct.rxtid_stats** %13, align 8
  %33 = getelementptr inbounds %struct.rxtid_stats, %struct.rxtid_stats* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %37 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %68, label %40

40:                                               ; preds = %5
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %7, align 8
  %45 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %49 = call i32 @aggr_slice_amsdu(i32 %46, %struct.rxtid* %47, %struct.sk_buff* %48)
  store i32 1, i32* %20, align 4
  %50 = load %struct.rxtid_stats*, %struct.rxtid_stats** %13, align 8
  %51 = getelementptr inbounds %struct.rxtid_stats, %struct.rxtid_stats* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %59, %43
  %55 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %56 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %55, i32 0, i32 5
  %57 = call %struct.sk_buff* @skb_dequeue(i32* %56)
  store %struct.sk_buff* %57, %struct.sk_buff** %14, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %7, align 8
  %61 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %64 = call i32 @ath6kl_deliver_frames_to_nw_stack(i32 %62, %struct.sk_buff* %63)
  br label %54

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %40
  %67 = load i32, i32* %20, align 4
  store i32 %67, i32* %6, align 4
  br label %309

68:                                               ; preds = %5
  %69 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %70 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %75 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %73, %76
  %78 = sub nsw i32 %77, 1
  %79 = load i32, i32* @ATH6KL_MAX_SEQ_NO, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %68
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %104, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %19, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %104, label %92

92:                                               ; preds = %88, %68
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %19, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %206

96:                                               ; preds = %92
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %19, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %206

100:                                              ; preds = %96
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %17, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %206

104:                                              ; preds = %100, %88, %84
  %105 = load i32, i32* %19, align 4
  %106 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %107 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  %110 = sub nsw i32 %109, 1
  %111 = load i32, i32* @ATH6KL_MAX_SEQ_NO, align 4
  %112 = and i32 %110, %111
  store i32 %112, i32* %21, align 4
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %21, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %104
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %19, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %21, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %136, label %124

124:                                              ; preds = %120, %104
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* %21, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %173

128:                                              ; preds = %124
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %21, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %173

132:                                              ; preds = %128
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %19, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %173

136:                                              ; preds = %132, %120, %116
  %137 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %7, align 8
  %138 = load i64, i64* %8, align 8
  %139 = call i32 @aggr_deque_frms(%struct.aggr_info_conn* %137, i64 %138, i32 0, i32 0)
  %140 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %141 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %140, i32 0, i32 3
  %142 = call i32 @spin_lock_bh(i32* %141)
  %143 = load i32, i32* %18, align 4
  %144 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %145 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 1
  %148 = icmp sge i32 %143, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %136
  %150 = load i32, i32* %18, align 4
  %151 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %152 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sub nsw i32 %150, %154
  %156 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %157 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  br label %169

158:                                              ; preds = %136
  %159 = load i32, i32* @ATH6KL_MAX_SEQ_NO, align 4
  %160 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %161 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %162, 2
  %164 = load i32, i32* %18, align 4
  %165 = sub nsw i32 %163, %164
  %166 = sub nsw i32 %159, %165
  %167 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %168 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %158, %149
  %170 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %171 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %170, i32 0, i32 3
  %172 = call i32 @spin_unlock_bh(i32* %171)
  br label %201

173:                                              ; preds = %132, %128, %124
  %174 = load i32, i32* %18, align 4
  %175 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %176 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %177, 1
  %179 = icmp sge i32 %174, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %173
  %181 = load i32, i32* %18, align 4
  %182 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %183 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sub nsw i32 %181, %185
  store i32 %186, i32* %17, align 4
  br label %196

187:                                              ; preds = %173
  %188 = load i32, i32* @ATH6KL_MAX_SEQ_NO, align 4
  %189 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %190 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %191, 2
  %193 = load i32, i32* %18, align 4
  %194 = sub nsw i32 %192, %193
  %195 = sub nsw i32 %188, %194
  store i32 %195, i32* %17, align 4
  br label %196

196:                                              ; preds = %187, %180
  %197 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %7, align 8
  %198 = load i64, i64* %8, align 8
  %199 = load i32, i32* %17, align 4
  %200 = call i32 @aggr_deque_frms(%struct.aggr_info_conn* %197, i64 %198, i32 %199, i32 0)
  br label %201

201:                                              ; preds = %196, %169
  %202 = load %struct.rxtid_stats*, %struct.rxtid_stats** %13, align 8
  %203 = getelementptr inbounds %struct.rxtid_stats, %struct.rxtid_stats* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %201, %100, %96, %92
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %209 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @AGGR_WIN_IDX(i32 %207, i32 %210)
  store i32 %211, i32* %16, align 4
  %212 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %213 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %212, i32 0, i32 4
  %214 = load %struct.skb_hold_q*, %struct.skb_hold_q** %213, align 8
  %215 = load i32, i32* %16, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.skb_hold_q, %struct.skb_hold_q* %214, i64 %216
  store %struct.skb_hold_q* %217, %struct.skb_hold_q** %15, align 8
  %218 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %219 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %218, i32 0, i32 3
  %220 = call i32 @spin_lock_bh(i32* %219)
  %221 = load %struct.skb_hold_q*, %struct.skb_hold_q** %15, align 8
  %222 = getelementptr inbounds %struct.skb_hold_q, %struct.skb_hold_q* %221, i32 0, i32 2
  %223 = load %struct.sk_buff*, %struct.sk_buff** %222, align 8
  %224 = call i32 @dev_kfree_skb(%struct.sk_buff* %223)
  %225 = load %struct.rxtid_stats*, %struct.rxtid_stats** %13, align 8
  %226 = getelementptr inbounds %struct.rxtid_stats, %struct.rxtid_stats* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  %229 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %230 = load %struct.skb_hold_q*, %struct.skb_hold_q** %15, align 8
  %231 = getelementptr inbounds %struct.skb_hold_q, %struct.skb_hold_q* %230, i32 0, i32 2
  store %struct.sk_buff* %229, %struct.sk_buff** %231, align 8
  store i32 1, i32* %20, align 4
  %232 = load i32, i32* %10, align 4
  %233 = load %struct.skb_hold_q*, %struct.skb_hold_q** %15, align 8
  %234 = getelementptr inbounds %struct.skb_hold_q, %struct.skb_hold_q* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load i32, i32* %9, align 4
  %236 = load %struct.skb_hold_q*, %struct.skb_hold_q** %15, align 8
  %237 = getelementptr inbounds %struct.skb_hold_q, %struct.skb_hold_q* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 4
  %238 = load %struct.skb_hold_q*, %struct.skb_hold_q** %15, align 8
  %239 = getelementptr inbounds %struct.skb_hold_q, %struct.skb_hold_q* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %206
  %243 = load %struct.rxtid_stats*, %struct.rxtid_stats** %13, align 8
  %244 = getelementptr inbounds %struct.rxtid_stats, %struct.rxtid_stats* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %244, align 4
  br label %252

247:                                              ; preds = %206
  %248 = load %struct.rxtid_stats*, %struct.rxtid_stats** %13, align 8
  %249 = getelementptr inbounds %struct.rxtid_stats, %struct.rxtid_stats* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %247, %242
  %253 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %254 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %253, i32 0, i32 3
  %255 = call i32 @spin_unlock_bh(i32* %254)
  %256 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %7, align 8
  %257 = load i64, i64* %8, align 8
  %258 = call i32 @aggr_deque_frms(%struct.aggr_info_conn* %256, i64 %257, i32 0, i32 1)
  %259 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %7, align 8
  %260 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %252
  %264 = load i32, i32* %20, align 4
  store i32 %264, i32* %6, align 4
  br label %309

265:                                              ; preds = %252
  %266 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %267 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %266, i32 0, i32 3
  %268 = call i32 @spin_lock_bh(i32* %267)
  store i32 0, i32* %16, align 4
  br label %269

269:                                              ; preds = %301, %265
  %270 = load i32, i32* %16, align 4
  %271 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %272 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp slt i32 %270, %273
  br i1 %274, label %275, label %304

275:                                              ; preds = %269
  %276 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %277 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %276, i32 0, i32 4
  %278 = load %struct.skb_hold_q*, %struct.skb_hold_q** %277, align 8
  %279 = load i32, i32* %16, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.skb_hold_q, %struct.skb_hold_q* %278, i64 %280
  %282 = getelementptr inbounds %struct.skb_hold_q, %struct.skb_hold_q* %281, i32 0, i32 2
  %283 = load %struct.sk_buff*, %struct.sk_buff** %282, align 8
  %284 = icmp ne %struct.sk_buff* %283, null
  br i1 %284, label %285, label %300

285:                                              ; preds = %275
  %286 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %7, align 8
  %287 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %286, i32 0, i32 0
  store i32 1, i32* %287, align 8
  %288 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %7, align 8
  %289 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %288, i32 0, i32 1
  %290 = load i64, i64* @jiffies, align 8
  %291 = load i32, i32* @HZ, align 4
  %292 = load i32, i32* @AGGR_RX_TIMEOUT, align 4
  %293 = mul nsw i32 %291, %292
  %294 = sdiv i32 %293, 1000
  %295 = sext i32 %294 to i64
  %296 = add nsw i64 %290, %295
  %297 = call i32 @mod_timer(i32* %289, i64 %296)
  %298 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %299 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %298, i32 0, i32 2
  store i32 1, i32* %299, align 8
  br label %304

300:                                              ; preds = %275
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %16, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %16, align 4
  br label %269

304:                                              ; preds = %285, %269
  %305 = load %struct.rxtid*, %struct.rxtid** %12, align 8
  %306 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %305, i32 0, i32 3
  %307 = call i32 @spin_unlock_bh(i32* %306)
  %308 = load i32, i32* %20, align 4
  store i32 %308, i32* %6, align 4
  br label %309

309:                                              ; preds = %304, %263, %66
  %310 = load i32, i32* %6, align 4
  ret i32 %310
}

declare dso_local i32 @aggr_slice_amsdu(i32, %struct.rxtid*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @ath6kl_deliver_frames_to_nw_stack(i32, %struct.sk_buff*) #1

declare dso_local i32 @aggr_deque_frms(%struct.aggr_info_conn*, i64, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @AGGR_WIN_IDX(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
