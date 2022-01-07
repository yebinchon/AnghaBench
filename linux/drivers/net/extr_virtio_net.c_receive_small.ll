; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_receive_small.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_receive_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.virtnet_info = type { i32, i32 }
%struct.receive_queue = type { i32, i32 }
%struct.virtnet_rq_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.bpf_prog = type { i32 }
%struct.page = type { i32 }
%struct.virtio_net_hdr_mrg_rxbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xdp_frame = type { i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, i32* }

@VIRTNET_RX_PAD = common dso_local global i32 0, align 4
@GOOD_PACKET_LEN = common dso_local global i32 0, align 4
@VIRTIO_XDP_TX = common dso_local global i32 0, align 4
@VIRTIO_XDP_REDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.virtnet_info*, %struct.receive_queue*, i8*, i8*, i32, i32*, %struct.virtnet_rq_stats*)* @receive_small to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @receive_small(%struct.net_device* %0, %struct.virtnet_info* %1, %struct.receive_queue* %2, i8* %3, i8* %4, i32 %5, i32* %6, %struct.virtnet_rq_stats* %7) #0 {
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.virtnet_info*, align 8
  %12 = alloca %struct.receive_queue*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.virtnet_rq_stats*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca %struct.bpf_prog*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.page*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.page*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.virtio_net_hdr_mrg_rxbuf*, align 8
  %29 = alloca %struct.xdp_frame*, align 8
  %30 = alloca %struct.xdp_buff, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %10, align 8
  store %struct.virtnet_info* %1, %struct.virtnet_info** %11, align 8
  store %struct.receive_queue* %2, %struct.receive_queue** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store %struct.virtnet_rq_stats* %7, %struct.virtnet_rq_stats** %17, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* @VIRTNET_RX_PAD, align 4
  %40 = load i32, i32* %20, align 4
  %41 = add i32 %39, %40
  store i32 %41, i32* %21, align 4
  %42 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %43 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %21, align 4
  %46 = add i32 %44, %45
  store i32 %46, i32* %22, align 4
  %47 = load i32, i32* @GOOD_PACKET_LEN, align 4
  %48 = load i32, i32* %22, align 4
  %49 = add i32 %47, %48
  %50 = call i32 @SKB_DATA_ALIGN(i32 %49)
  %51 = call i32 @SKB_DATA_ALIGN(i32 4)
  %52 = add i32 %50, %51
  store i32 %52, i32* %23, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = call %struct.page* @virt_to_head_page(i8* %53)
  store %struct.page* %54, %struct.page** %24, align 8
  store i32 0, i32* %25, align 4
  %55 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %56 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %15, align 4
  %59 = sub i32 %58, %57
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %17, align 8
  %62 = getelementptr inbounds %struct.virtnet_rq_stats, %struct.virtnet_rq_stats* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = call i32 (...) @rcu_read_lock()
  %66 = load %struct.receive_queue*, %struct.receive_queue** %12, align 8
  %67 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.bpf_prog* @rcu_dereference(i32 %68)
  store %struct.bpf_prog* %69, %struct.bpf_prog** %19, align 8
  %70 = load %struct.bpf_prog*, %struct.bpf_prog** %19, align 8
  %71 = icmp ne %struct.bpf_prog* %70, null
  br i1 %71, label %72, label %254

72:                                               ; preds = %8
  %73 = load i8*, i8** %13, align 8
  %74 = load i32, i32* %21, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr i8, i8* %73, i64 %75
  %77 = bitcast i8* %76 to %struct.virtio_net_hdr_mrg_rxbuf*
  store %struct.virtio_net_hdr_mrg_rxbuf* %77, %struct.virtio_net_hdr_mrg_rxbuf** %28, align 8
  %78 = load %struct.virtio_net_hdr_mrg_rxbuf*, %struct.virtio_net_hdr_mrg_rxbuf** %28, align 8
  %79 = getelementptr inbounds %struct.virtio_net_hdr_mrg_rxbuf, %struct.virtio_net_hdr_mrg_rxbuf* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %290

85:                                               ; preds = %72
  %86 = load i32, i32* %20, align 4
  %87 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %88 = call i32 @virtnet_get_headroom(%struct.virtnet_info* %87)
  %89 = icmp ult i32 %86, %88
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %139

93:                                               ; preds = %85
  %94 = load i8*, i8** %13, align 8
  %95 = load %struct.page*, %struct.page** %24, align 8
  %96 = call i8* @page_address(%struct.page* %95)
  %97 = ptrtoint i8* %94 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = load i32, i32* %21, align 4
  %101 = zext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %33, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %106 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add i32 %104, %107
  store i32 %108, i32* %34, align 4
  store i32 1, i32* %35, align 4
  %109 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %110 = call i32 @virtnet_get_headroom(%struct.virtnet_info* %109)
  store i32 %110, i32* %20, align 4
  %111 = load i32, i32* @VIRTNET_RX_PAD, align 4
  %112 = load i32, i32* %20, align 4
  %113 = add i32 %111, %112
  store i32 %113, i32* %21, align 4
  %114 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %115 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %21, align 4
  %118 = add i32 %116, %117
  store i32 %118, i32* %22, align 4
  %119 = load i32, i32* @GOOD_PACKET_LEN, align 4
  %120 = load i32, i32* %22, align 4
  %121 = add i32 %119, %120
  %122 = call i32 @SKB_DATA_ALIGN(i32 %121)
  %123 = call i32 @SKB_DATA_ALIGN(i32 4)
  %124 = add i32 %122, %123
  store i32 %124, i32* %23, align 4
  %125 = load %struct.receive_queue*, %struct.receive_queue** %12, align 8
  %126 = load %struct.page*, %struct.page** %24, align 8
  %127 = load i32, i32* %33, align 4
  %128 = load i32, i32* %21, align 4
  %129 = call %struct.page* @xdp_linearize_page(%struct.receive_queue* %125, i32* %35, %struct.page* %126, i32 %127, i32 %128, i32* %34)
  store %struct.page* %129, %struct.page** %26, align 8
  %130 = load %struct.page*, %struct.page** %26, align 8
  %131 = icmp ne %struct.page* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %93
  br label %290

133:                                              ; preds = %93
  %134 = load %struct.page*, %struct.page** %26, align 8
  %135 = call i8* @page_address(%struct.page* %134)
  store i8* %135, i8** %13, align 8
  %136 = load %struct.page*, %struct.page** %24, align 8
  %137 = call i32 @put_page(%struct.page* %136)
  %138 = load %struct.page*, %struct.page** %26, align 8
  store %struct.page* %138, %struct.page** %24, align 8
  br label %139

139:                                              ; preds = %133, %85
  %140 = load i8*, i8** %13, align 8
  %141 = load i32, i32* @VIRTNET_RX_PAD, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr i8, i8* %140, i64 %142
  %144 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %145 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr i8, i8* %143, i64 %147
  %149 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 0
  store i8* %148, i8** %149, align 8
  %150 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* %20, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr i8, i8* %151, i64 %153
  %155 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 1
  store i8* %154, i8** %155, align 8
  %156 = call i32 @xdp_set_data_meta_invalid(%struct.xdp_buff* %30)
  %157 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* %15, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr i8, i8* %158, i64 %160
  %162 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 2
  store i8* %161, i8** %162, align 8
  %163 = load %struct.receive_queue*, %struct.receive_queue** %12, align 8
  %164 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 3
  store i32* %164, i32** %165, align 8
  %166 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %31, align 8
  %168 = load %struct.bpf_prog*, %struct.bpf_prog** %19, align 8
  %169 = call i32 @bpf_prog_run_xdp(%struct.bpf_prog* %168, %struct.xdp_buff* %30)
  store i32 %169, i32* %32, align 4
  %170 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %17, align 8
  %171 = getelementptr inbounds %struct.virtnet_rq_stats, %struct.virtnet_rq_stats* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  %174 = load i32, i32* %32, align 4
  switch i32 %174, label %242 [
    i32 130, label %175
    i32 128, label %191
    i32 129, label %225
    i32 132, label %245
    i32 131, label %252
  ]

175:                                              ; preds = %139
  %176 = load i8*, i8** %31, align 8
  %177 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = ptrtoint i8* %176 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %25, align 4
  %183 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = ptrtoint i8* %184 to i64
  %188 = ptrtoint i8* %186 to i64
  %189 = sub i64 %187, %188
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %15, align 4
  br label %253

191:                                              ; preds = %139
  %192 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %17, align 8
  %193 = getelementptr inbounds %struct.virtnet_rq_stats, %struct.virtnet_rq_stats* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  %196 = call %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff* %30)
  store %struct.xdp_frame* %196, %struct.xdp_frame** %29, align 8
  %197 = load %struct.xdp_frame*, %struct.xdp_frame** %29, align 8
  %198 = icmp ne %struct.xdp_frame* %197, null
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = call i64 @unlikely(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %191
  br label %290

204:                                              ; preds = %191
  %205 = load %struct.net_device*, %struct.net_device** %10, align 8
  %206 = call i32 @virtnet_xdp_xmit(%struct.net_device* %205, i32 1, %struct.xdp_frame** %29, i32 0)
  store i32 %206, i32* %27, align 4
  %207 = load i32, i32* %27, align 4
  %208 = icmp slt i32 %207, 0
  %209 = zext i1 %208 to i32
  %210 = call i64 @unlikely(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %204
  %213 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %214 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.bpf_prog*, %struct.bpf_prog** %19, align 8
  %217 = load i32, i32* %32, align 4
  %218 = call i32 @trace_xdp_exception(i32 %215, %struct.bpf_prog* %216, i32 %217)
  br label %290

219:                                              ; preds = %204
  %220 = load i32, i32* @VIRTIO_XDP_TX, align 4
  %221 = load i32*, i32** %16, align 8
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %220
  store i32 %223, i32* %221, align 4
  %224 = call i32 (...) @rcu_read_unlock()
  br label %302

225:                                              ; preds = %139
  %226 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %17, align 8
  %227 = getelementptr inbounds %struct.virtnet_rq_stats, %struct.virtnet_rq_stats* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 4
  %230 = load %struct.net_device*, %struct.net_device** %10, align 8
  %231 = load %struct.bpf_prog*, %struct.bpf_prog** %19, align 8
  %232 = call i32 @xdp_do_redirect(%struct.net_device* %230, %struct.xdp_buff* %30, %struct.bpf_prog* %231)
  store i32 %232, i32* %27, align 4
  %233 = load i32, i32* %27, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %225
  br label %290

236:                                              ; preds = %225
  %237 = load i32, i32* @VIRTIO_XDP_REDIR, align 4
  %238 = load i32*, i32** %16, align 8
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %237
  store i32 %240, i32* %238, align 4
  %241 = call i32 (...) @rcu_read_unlock()
  br label %302

242:                                              ; preds = %139
  %243 = load i32, i32* %32, align 4
  %244 = call i32 @bpf_warn_invalid_xdp_action(i32 %243)
  br label %245

245:                                              ; preds = %139, %242
  %246 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %247 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.bpf_prog*, %struct.bpf_prog** %19, align 8
  %250 = load i32, i32* %32, align 4
  %251 = call i32 @trace_xdp_exception(i32 %248, %struct.bpf_prog* %249, i32 %250)
  br label %252

252:                                              ; preds = %139, %245
  br label %290

253:                                              ; preds = %175
  br label %254

254:                                              ; preds = %253, %8
  %255 = call i32 (...) @rcu_read_unlock()
  %256 = load i8*, i8** %13, align 8
  %257 = load i32, i32* %23, align 4
  %258 = call %struct.sk_buff* @build_skb(i8* %256, i32 %257)
  store %struct.sk_buff* %258, %struct.sk_buff** %18, align 8
  %259 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %260 = icmp ne %struct.sk_buff* %259, null
  br i1 %260, label %264, label %261

261:                                              ; preds = %254
  %262 = load %struct.page*, %struct.page** %24, align 8
  %263 = call i32 @put_page(%struct.page* %262)
  br label %288

264:                                              ; preds = %254
  %265 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %266 = load i32, i32* %22, align 4
  %267 = load i32, i32* %25, align 4
  %268 = sub i32 %266, %267
  %269 = call i32 @skb_reserve(%struct.sk_buff* %265, i32 %268)
  %270 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %271 = load i32, i32* %15, align 4
  %272 = call i32 @skb_put(%struct.sk_buff* %270, i32 %271)
  %273 = load i32, i32* %25, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %287, label %275

275:                                              ; preds = %264
  %276 = load i32, i32* %21, align 4
  %277 = load i8*, i8** %13, align 8
  %278 = zext i32 %276 to i64
  %279 = getelementptr i8, i8* %277, i64 %278
  store i8* %279, i8** %13, align 8
  %280 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %281 = call i32 @skb_vnet_hdr(%struct.sk_buff* %280)
  %282 = load i8*, i8** %13, align 8
  %283 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %284 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @memcpy(i32 %281, i8* %282, i32 %285)
  br label %287

287:                                              ; preds = %275, %264
  br label %288

288:                                              ; preds = %287, %261
  %289 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %289, %struct.sk_buff** %9, align 8
  br label %303

290:                                              ; preds = %252, %235, %212, %203, %132, %84
  %291 = call i32 (...) @rcu_read_unlock()
  %292 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %17, align 8
  %293 = getelementptr inbounds %struct.virtnet_rq_stats, %struct.virtnet_rq_stats* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %293, align 4
  %296 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %17, align 8
  %297 = getelementptr inbounds %struct.virtnet_rq_stats, %struct.virtnet_rq_stats* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %297, align 4
  %300 = load %struct.page*, %struct.page** %24, align 8
  %301 = call i32 @put_page(%struct.page* %300)
  br label %302

302:                                              ; preds = %290, %236, %219
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %303

303:                                              ; preds = %302, %288
  %304 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %304
}

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bpf_prog* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @virtnet_get_headroom(%struct.virtnet_info*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local %struct.page* @xdp_linearize_page(%struct.receive_queue*, i32*, %struct.page*, i32, i32, i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @xdp_set_data_meta_invalid(%struct.xdp_buff*) #1

declare dso_local i32 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

declare dso_local %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff*) #1

declare dso_local i32 @virtnet_xdp_xmit(%struct.net_device*, i32, %struct.xdp_frame**, i32) #1

declare dso_local i32 @trace_xdp_exception(i32, %struct.bpf_prog*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @xdp_do_redirect(%struct.net_device*, %struct.xdp_buff*, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_warn_invalid_xdp_action(i32) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_vnet_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
