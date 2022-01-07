; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_cfhsi_tx_frm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_cfhsi_tx_frm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfhsi_desc = type { i32*, i32, i64, i64* }
%struct.cfhsi = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.caif_payload_info = type { i32 }

@CFHSI_MAX_EMB_FRM_SZ = common dso_local global i32 0, align 4
@CFHSI_DESC_SHORT_SZ = common dso_local global i64 0, align 8
@CFHSI_MAX_PKTS = common dso_local global i32 0, align 4
@CFHSI_PIGGY_DESC = common dso_local global i32 0, align 4
@CFHSI_DESC_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfhsi_desc*, %struct.cfhsi*)* @cfhsi_tx_frm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfhsi_tx_frm(%struct.cfhsi_desc* %0, %struct.cfhsi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfhsi_desc*, align 8
  %5 = alloca %struct.cfhsi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.caif_payload_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.caif_payload_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cfhsi_desc* %0, %struct.cfhsi_desc** %4, align 8
  store %struct.cfhsi* %1, %struct.cfhsi** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.cfhsi_desc*, %struct.cfhsi_desc** %4, align 8
  %18 = getelementptr inbounds %struct.cfhsi_desc, %struct.cfhsi_desc* %17, i32 0, i32 3
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* @CFHSI_MAX_EMB_FRM_SZ, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  store i64* %22, i64** %9, align 8
  %23 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %24 = call %struct.sk_buff* @cfhsi_dequeue(%struct.cfhsi* %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %267

28:                                               ; preds = %2
  %29 = load %struct.cfhsi_desc*, %struct.cfhsi_desc** %4, align 8
  %30 = getelementptr inbounds %struct.cfhsi_desc, %struct.cfhsi_desc* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CFHSI_MAX_EMB_FRM_SZ, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %119

36:                                               ; preds = %28
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = bitcast i32* %38 to %struct.caif_payload_info*
  store %struct.caif_payload_info* %39, %struct.caif_payload_info** %10, align 8
  %40 = load %struct.caif_payload_info*, %struct.caif_payload_info** %10, align 8
  %41 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  %44 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %45 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PAD_POW2(i32 %43, i32 %47)
  %49 = add nsw i32 1, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %56 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @PAD_POW2(i32 %54, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* @CFHSI_MAX_EMB_FRM_SZ, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %118

69:                                               ; preds = %36
  %70 = load %struct.cfhsi_desc*, %struct.cfhsi_desc** %4, align 8
  %71 = getelementptr inbounds %struct.cfhsi_desc, %struct.cfhsi_desc* %70, i32 0, i32 3
  %72 = load i64*, i64** %71, align 8
  store i64* %72, i64** %13, align 8
  %73 = load i64, i64* @CFHSI_DESC_SHORT_SZ, align 8
  %74 = load %struct.cfhsi_desc*, %struct.cfhsi_desc** %4, align 8
  %75 = getelementptr inbounds %struct.cfhsi_desc, %struct.cfhsi_desc* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = load i64*, i64** %13, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i64*, i64** %13, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64* %83, i64** %13, align 8
  %84 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %85 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %84, i32 0, i32 0
  %86 = call i32 @spin_lock_bh(i32* %85)
  %87 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %88 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %98 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %96
  store i32 %103, i32* %101, align 4
  %104 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = call i32 @cfhsi_update_aggregation_stats(%struct.cfhsi* %104, %struct.sk_buff* %105, i32 -1)
  %107 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %108 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock_bh(i32* %108)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %111 = load i64*, i64** %13, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @skb_copy_bits(%struct.sk_buff* %110, i32 0, i64* %111, i32 %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %117 = call i32 @consume_skb(%struct.sk_buff* %116)
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %118

118:                                              ; preds = %69, %36
  br label %119

119:                                              ; preds = %118, %28
  br label %120

120:                                              ; preds = %134, %119
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @CFHSI_MAX_PKTS, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %232

124:                                              ; preds = %120
  %125 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %126 = icmp ne %struct.sk_buff* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %129 = call %struct.sk_buff* @cfhsi_dequeue(%struct.cfhsi* %128)
  store %struct.sk_buff* %129, %struct.sk_buff** %8, align 8
  br label %130

130:                                              ; preds = %127, %124
  %131 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %132 = icmp ne %struct.sk_buff* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  br label %232

134:                                              ; preds = %130
  %135 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 1
  %137 = bitcast i32* %136 to %struct.caif_payload_info*
  store %struct.caif_payload_info* %137, %struct.caif_payload_info** %14, align 8
  %138 = load %struct.caif_payload_info*, %struct.caif_payload_info** %14, align 8
  %139 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  %142 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %143 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @PAD_POW2(i32 %141, i32 %145)
  %147 = add nsw i32 1, %146
  store i32 %147, i32* %15, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %150, %151
  %153 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %154 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @PAD_POW2(i32 %152, i32 %156)
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* %15, align 4
  %159 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %158, %161
  %163 = load i32, i32* %16, align 4
  %164 = add nsw i32 %162, %163
  %165 = load %struct.cfhsi_desc*, %struct.cfhsi_desc** %4, align 8
  %166 = getelementptr inbounds %struct.cfhsi_desc, %struct.cfhsi_desc* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %164, i32* %170, align 4
  %171 = load i32, i32* %15, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = load i64*, i64** %9, align 8
  store i64 %173, i64* %174, align 8
  %175 = load i32, i32* %15, align 4
  %176 = load i64*, i64** %9, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  store i64* %178, i64** %9, align 8
  %179 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %180 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %179, i32 0, i32 0
  %181 = call i32 @spin_lock_bh(i32* %180)
  %182 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %183 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %182, i32 0, i32 1
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %193 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %192, i32 0, i32 1
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, %191
  store i32 %198, i32* %196, align 4
  %199 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %201 = call i32 @cfhsi_update_aggregation_stats(%struct.cfhsi* %199, %struct.sk_buff* %200, i32 -1)
  %202 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %203 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %202, i32 0, i32 0
  %204 = call i32 @spin_unlock_bh(i32* %203)
  %205 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %206 = load i64*, i64** %9, align 8
  %207 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %208 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @skb_copy_bits(%struct.sk_buff* %205, i32 0, i64* %206, i32 %209)
  %211 = load %struct.cfhsi_desc*, %struct.cfhsi_desc** %4, align 8
  %212 = getelementptr inbounds %struct.cfhsi_desc, %struct.cfhsi_desc* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %7, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %7, align 4
  %220 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %221 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %16, align 4
  %224 = add nsw i32 %222, %223
  %225 = load i64*, i64** %9, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i64, i64* %225, i64 %226
  store i64* %227, i64** %9, align 8
  %228 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %229 = call i32 @consume_skb(%struct.sk_buff* %228)
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %6, align 4
  br label %120

232:                                              ; preds = %133, %120
  br label %233

233:                                              ; preds = %237, %232
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* @CFHSI_MAX_PKTS, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %246

237:                                              ; preds = %233
  %238 = load %struct.cfhsi_desc*, %struct.cfhsi_desc** %4, align 8
  %239 = getelementptr inbounds %struct.cfhsi_desc, %struct.cfhsi_desc* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32 0, i32* %243, align 4
  %244 = load i32, i32* %6, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %6, align 4
  br label %233

246:                                              ; preds = %233
  %247 = load %struct.cfhsi*, %struct.cfhsi** %5, align 8
  %248 = call i64 @cfhsi_can_send_aggregate(%struct.cfhsi* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %246
  %251 = load i32, i32* @CFHSI_PIGGY_DESC, align 4
  %252 = load %struct.cfhsi_desc*, %struct.cfhsi_desc** %4, align 8
  %253 = getelementptr inbounds %struct.cfhsi_desc, %struct.cfhsi_desc* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %263

256:                                              ; preds = %246
  %257 = load i32, i32* @CFHSI_PIGGY_DESC, align 4
  %258 = xor i32 %257, -1
  %259 = load %struct.cfhsi_desc*, %struct.cfhsi_desc** %4, align 8
  %260 = getelementptr inbounds %struct.cfhsi_desc, %struct.cfhsi_desc* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = and i32 %261, %258
  store i32 %262, i32* %260, align 8
  br label %263

263:                                              ; preds = %256, %250
  %264 = load i32, i32* @CFHSI_DESC_SZ, align 4
  %265 = load i32, i32* %7, align 4
  %266 = add nsw i32 %264, %265
  store i32 %266, i32* %3, align 4
  br label %267

267:                                              ; preds = %263, %27
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local %struct.sk_buff* @cfhsi_dequeue(%struct.cfhsi*) #1

declare dso_local i32 @PAD_POW2(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cfhsi_update_aggregation_stats(%struct.cfhsi*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i64*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i64 @cfhsi_can_send_aggregate(%struct.cfhsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
