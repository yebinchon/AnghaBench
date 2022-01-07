; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_receive_mergeable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_receive_mergeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, %struct.sk_buff* }
%struct.net_device = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.virtnet_info = type { i32, i32, i32 }
%struct.receive_queue = type { i32, i32, i32, i32 }
%struct.virtnet_rq_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.virtio_net_hdr_mrg_rxbuf = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.page = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.xdp_frame = type { i32 }
%struct.xdp_buff = type { i8*, i8*, i32*, i8* }
%struct.TYPE_6__ = type { i32, %struct.sk_buff* }

@VIRTIO_XDP_HEADROOM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VIRTIO_XDP_TX = common dso_local global i32 0, align 4
@VIRTIO_XDP_REDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: rx error: len %u exceeds truesize %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"%s: rx error: %d buffers out of %d missing\0A\00", align 1
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: rx error: %d buffers missing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.virtnet_info*, %struct.receive_queue*, i8*, i8*, i32, i32*, %struct.virtnet_rq_stats*)* @receive_mergeable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @receive_mergeable(%struct.net_device* %0, %struct.virtnet_info* %1, %struct.receive_queue* %2, i8* %3, i8* %4, i32 %5, i32* %6, %struct.virtnet_rq_stats* %7) #0 {
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.virtnet_info*, align 8
  %12 = alloca %struct.receive_queue*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.virtnet_rq_stats*, align 8
  %18 = alloca %struct.virtio_net_hdr_mrg_rxbuf*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.page*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.sk_buff*, align 8
  %23 = alloca %struct.sk_buff*, align 8
  %24 = alloca %struct.bpf_prog*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.xdp_frame*, align 8
  %29 = alloca %struct.page*, align 8
  %30 = alloca %struct.xdp_buff, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %10, align 8
  store %struct.virtnet_info* %1, %struct.virtnet_info** %11, align 8
  store %struct.receive_queue* %2, %struct.receive_queue** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store %struct.virtnet_rq_stats* %7, %struct.virtnet_rq_stats** %17, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = bitcast i8* %35 to %struct.virtio_net_hdr_mrg_rxbuf*
  store %struct.virtio_net_hdr_mrg_rxbuf* %36, %struct.virtio_net_hdr_mrg_rxbuf** %18, align 8
  %37 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %38 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.virtio_net_hdr_mrg_rxbuf*, %struct.virtio_net_hdr_mrg_rxbuf** %18, align 8
  %41 = getelementptr inbounds %struct.virtio_net_hdr_mrg_rxbuf, %struct.virtio_net_hdr_mrg_rxbuf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @virtio16_to_cpu(i32 %39, i32 %42)
  store i32 %43, i32* %19, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = call %struct.page* @virt_to_head_page(i8* %44)
  store %struct.page* %45, %struct.page** %20, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load %struct.page*, %struct.page** %20, align 8
  %48 = call i8* @page_address(%struct.page* %47)
  %49 = ptrtoint i8* %46 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %21, align 4
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @mergeable_ctx_to_headroom(i8* %53)
  store i32 %54, i32* %26, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %22, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %57 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub i32 %55, %58
  %60 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %17, align 8
  %61 = getelementptr inbounds %struct.virtnet_rq_stats, %struct.virtnet_rq_stats* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = call i32 (...) @rcu_read_lock()
  %65 = load %struct.receive_queue*, %struct.receive_queue** %12, align 8
  %66 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.bpf_prog* @rcu_dereference(i32 %67)
  store %struct.bpf_prog* %68, %struct.bpf_prog** %24, align 8
  %69 = load %struct.bpf_prog*, %struct.bpf_prog** %24, align 8
  %70 = icmp ne %struct.bpf_prog* %69, null
  br i1 %70, label %71, label %309

71:                                               ; preds = %8
  %72 = load %struct.virtio_net_hdr_mrg_rxbuf*, %struct.virtio_net_hdr_mrg_rxbuf** %18, align 8
  %73 = getelementptr inbounds %struct.virtio_net_hdr_mrg_rxbuf, %struct.virtio_net_hdr_mrg_rxbuf* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %518

79:                                               ; preds = %71
  %80 = load i32, i32* %19, align 4
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %26, align 4
  %84 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %85 = call i32 @virtnet_get_headroom(%struct.virtnet_info* %84)
  %86 = icmp ult i32 %83, %85
  br label %87

87:                                               ; preds = %82, %79
  %88 = phi i1 [ true, %79 ], [ %86, %82 ]
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.receive_queue*, %struct.receive_queue** %12, align 8
  %94 = load %struct.page*, %struct.page** %20, align 8
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* @VIRTIO_XDP_HEADROOM, align 4
  %97 = call %struct.page* @xdp_linearize_page(%struct.receive_queue* %93, i32* %19, %struct.page* %94, i32 %95, i32 %96, i32* %15)
  store %struct.page* %97, %struct.page** %29, align 8
  %98 = load %struct.page*, %struct.page** %29, align 8
  %99 = icmp ne %struct.page* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %92
  br label %518

101:                                              ; preds = %92
  %102 = load i32, i32* @VIRTIO_XDP_HEADROOM, align 4
  store i32 %102, i32* %21, align 4
  br label %105

103:                                              ; preds = %87
  %104 = load %struct.page*, %struct.page** %20, align 8
  store %struct.page* %104, %struct.page** %29, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = load %struct.page*, %struct.page** %29, align 8
  %107 = call i8* @page_address(%struct.page* %106)
  %108 = load i32, i32* %21, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr i8, i8* %107, i64 %109
  store i8* %110, i8** %31, align 8
  %111 = load i8*, i8** %31, align 8
  %112 = load i32, i32* @VIRTIO_XDP_HEADROOM, align 4
  %113 = sext i32 %112 to i64
  %114 = sub i64 0, %113
  %115 = getelementptr i8, i8* %111, i64 %114
  %116 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %117 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr i8, i8* %115, i64 %119
  %121 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 3
  store i8* %120, i8** %121, align 8
  %122 = load i8*, i8** %31, align 8
  %123 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %124 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr i8, i8* %122, i64 %126
  %128 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 0
  store i8* %127, i8** %128, align 8
  %129 = call i32 @xdp_set_data_meta_invalid(%struct.xdp_buff* %30)
  %130 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %134 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sub i32 %132, %135
  %137 = zext i32 %136 to i64
  %138 = getelementptr i8, i8* %131, i64 %137
  %139 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 1
  store i8* %138, i8** %139, align 8
  %140 = load %struct.receive_queue*, %struct.receive_queue** %12, align 8
  %141 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 2
  store i32* %141, i32** %142, align 8
  %143 = load %struct.bpf_prog*, %struct.bpf_prog** %24, align 8
  %144 = call i32 @bpf_prog_run_xdp(%struct.bpf_prog* %143, %struct.xdp_buff* %30)
  store i32 %144, i32* %32, align 4
  %145 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %17, align 8
  %146 = getelementptr inbounds %struct.virtnet_rq_stats, %struct.virtnet_rq_stats* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  %149 = load i32, i32* %32, align 4
  switch i32 %149, label %287 [
    i32 130, label %150
    i32 128, label %196
    i32 129, label %250
    i32 132, label %290
    i32 131, label %297
  ]

150:                                              ; preds = %105
  %151 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.page*, %struct.page** %29, align 8
  %154 = call i8* @page_address(%struct.page* %153)
  %155 = ptrtoint i8* %152 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %159 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = zext i32 %160 to i64
  %162 = sub nsw i64 %157, %161
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %21, align 4
  %164 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %30, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = ptrtoint i8* %165 to i64
  %169 = ptrtoint i8* %167 to i64
  %170 = sub i64 %168, %169
  %171 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %172 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = zext i32 %173 to i64
  %175 = add nsw i64 %170, %174
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %15, align 4
  %177 = load %struct.page*, %struct.page** %29, align 8
  %178 = load %struct.page*, %struct.page** %20, align 8
  %179 = icmp ne %struct.page* %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i64 @unlikely(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %150
  %184 = call i32 (...) @rcu_read_unlock()
  %185 = load %struct.page*, %struct.page** %20, align 8
  %186 = call i32 @put_page(%struct.page* %185)
  %187 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %188 = load %struct.receive_queue*, %struct.receive_queue** %12, align 8
  %189 = load %struct.page*, %struct.page** %29, align 8
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* @PAGE_SIZE, align 4
  %193 = call %struct.sk_buff* @page_to_skb(%struct.virtnet_info* %187, %struct.receive_queue* %188, %struct.page* %189, i32 %190, i32 %191, i32 %192, i32 0)
  store %struct.sk_buff* %193, %struct.sk_buff** %22, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %194, %struct.sk_buff** %9, align 8
  br label %572

195:                                              ; preds = %150
  br label %308

196:                                              ; preds = %105
  %197 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %17, align 8
  %198 = getelementptr inbounds %struct.virtnet_rq_stats, %struct.virtnet_rq_stats* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  %201 = call %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff* %30)
  store %struct.xdp_frame* %201, %struct.xdp_frame** %28, align 8
  %202 = load %struct.xdp_frame*, %struct.xdp_frame** %28, align 8
  %203 = icmp ne %struct.xdp_frame* %202, null
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  %206 = call i64 @unlikely(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %196
  br label %518

209:                                              ; preds = %196
  %210 = load %struct.net_device*, %struct.net_device** %10, align 8
  %211 = call i32 @virtnet_xdp_xmit(%struct.net_device* %210, i32 1, %struct.xdp_frame** %28, i32 0)
  store i32 %211, i32* %27, align 4
  %212 = load i32, i32* %27, align 4
  %213 = icmp slt i32 %212, 0
  %214 = zext i1 %213 to i32
  %215 = call i64 @unlikely(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %234

217:                                              ; preds = %209
  %218 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %219 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.bpf_prog*, %struct.bpf_prog** %24, align 8
  %222 = load i32, i32* %32, align 4
  %223 = call i32 @trace_xdp_exception(i32 %220, %struct.bpf_prog* %221, i32 %222)
  %224 = load %struct.page*, %struct.page** %29, align 8
  %225 = load %struct.page*, %struct.page** %20, align 8
  %226 = icmp ne %struct.page* %224, %225
  %227 = zext i1 %226 to i32
  %228 = call i64 @unlikely(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %217
  %231 = load %struct.page*, %struct.page** %29, align 8
  %232 = call i32 @put_page(%struct.page* %231)
  br label %233

233:                                              ; preds = %230, %217
  br label %518

234:                                              ; preds = %209
  %235 = load i32, i32* @VIRTIO_XDP_TX, align 4
  %236 = load i32*, i32** %16, align 8
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %235
  store i32 %238, i32* %236, align 4
  %239 = load %struct.page*, %struct.page** %29, align 8
  %240 = load %struct.page*, %struct.page** %20, align 8
  %241 = icmp ne %struct.page* %239, %240
  %242 = zext i1 %241 to i32
  %243 = call i64 @unlikely(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %234
  %246 = load %struct.page*, %struct.page** %20, align 8
  %247 = call i32 @put_page(%struct.page* %246)
  br label %248

248:                                              ; preds = %245, %234
  %249 = call i32 (...) @rcu_read_unlock()
  br label %571

250:                                              ; preds = %105
  %251 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %17, align 8
  %252 = getelementptr inbounds %struct.virtnet_rq_stats, %struct.virtnet_rq_stats* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 4
  %255 = load %struct.net_device*, %struct.net_device** %10, align 8
  %256 = load %struct.bpf_prog*, %struct.bpf_prog** %24, align 8
  %257 = call i32 @xdp_do_redirect(%struct.net_device* %255, %struct.xdp_buff* %30, %struct.bpf_prog* %256)
  store i32 %257, i32* %27, align 4
  %258 = load i32, i32* %27, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %271

260:                                              ; preds = %250
  %261 = load %struct.page*, %struct.page** %29, align 8
  %262 = load %struct.page*, %struct.page** %20, align 8
  %263 = icmp ne %struct.page* %261, %262
  %264 = zext i1 %263 to i32
  %265 = call i64 @unlikely(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %260
  %268 = load %struct.page*, %struct.page** %29, align 8
  %269 = call i32 @put_page(%struct.page* %268)
  br label %270

270:                                              ; preds = %267, %260
  br label %518

271:                                              ; preds = %250
  %272 = load i32, i32* @VIRTIO_XDP_REDIR, align 4
  %273 = load i32*, i32** %16, align 8
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %272
  store i32 %275, i32* %273, align 4
  %276 = load %struct.page*, %struct.page** %29, align 8
  %277 = load %struct.page*, %struct.page** %20, align 8
  %278 = icmp ne %struct.page* %276, %277
  %279 = zext i1 %278 to i32
  %280 = call i64 @unlikely(i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %271
  %283 = load %struct.page*, %struct.page** %20, align 8
  %284 = call i32 @put_page(%struct.page* %283)
  br label %285

285:                                              ; preds = %282, %271
  %286 = call i32 (...) @rcu_read_unlock()
  br label %571

287:                                              ; preds = %105
  %288 = load i32, i32* %32, align 4
  %289 = call i32 @bpf_warn_invalid_xdp_action(i32 %288)
  br label %290

290:                                              ; preds = %105, %287
  %291 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %292 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.bpf_prog*, %struct.bpf_prog** %24, align 8
  %295 = load i32, i32* %32, align 4
  %296 = call i32 @trace_xdp_exception(i32 %293, %struct.bpf_prog* %294, i32 %295)
  br label %297

297:                                              ; preds = %105, %290
  %298 = load %struct.page*, %struct.page** %29, align 8
  %299 = load %struct.page*, %struct.page** %20, align 8
  %300 = icmp ne %struct.page* %298, %299
  %301 = zext i1 %300 to i32
  %302 = call i64 @unlikely(i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %297
  %305 = load %struct.page*, %struct.page** %29, align 8
  %306 = call i32 @__free_pages(%struct.page* %305, i32 0)
  br label %307

307:                                              ; preds = %304, %297
  br label %518

308:                                              ; preds = %195
  br label %309

309:                                              ; preds = %308, %8
  %310 = call i32 (...) @rcu_read_unlock()
  %311 = load i8*, i8** %14, align 8
  %312 = call i32 @mergeable_ctx_to_truesize(i8* %311)
  store i32 %312, i32* %25, align 4
  %313 = load i32, i32* %15, align 4
  %314 = load i32, i32* %25, align 4
  %315 = icmp ugt i32 %313, %314
  %316 = zext i1 %315 to i32
  %317 = call i64 @unlikely(i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %332

319:                                              ; preds = %309
  %320 = load %struct.net_device*, %struct.net_device** %10, align 8
  %321 = getelementptr inbounds %struct.net_device, %struct.net_device* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %15, align 4
  %324 = load i8*, i8** %14, align 8
  %325 = ptrtoint i8* %324 to i64
  %326 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %322, i32 %323, i64 %325)
  %327 = load %struct.net_device*, %struct.net_device** %10, align 8
  %328 = getelementptr inbounds %struct.net_device, %struct.net_device* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %329, align 4
  br label %524

332:                                              ; preds = %309
  %333 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %334 = load %struct.receive_queue*, %struct.receive_queue** %12, align 8
  %335 = load %struct.page*, %struct.page** %20, align 8
  %336 = load i32, i32* %21, align 4
  %337 = load i32, i32* %15, align 4
  %338 = load i32, i32* %25, align 4
  %339 = load %struct.bpf_prog*, %struct.bpf_prog** %24, align 8
  %340 = icmp ne %struct.bpf_prog* %339, null
  %341 = xor i1 %340, true
  %342 = zext i1 %341 to i32
  %343 = call %struct.sk_buff* @page_to_skb(%struct.virtnet_info* %333, %struct.receive_queue* %334, %struct.page* %335, i32 %336, i32 %337, i32 %338, i32 %342)
  store %struct.sk_buff* %343, %struct.sk_buff** %22, align 8
  %344 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %344, %struct.sk_buff** %23, align 8
  %345 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %346 = icmp ne %struct.sk_buff* %345, null
  %347 = xor i1 %346, true
  %348 = zext i1 %347 to i32
  %349 = call i64 @unlikely(i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %332
  br label %524

352:                                              ; preds = %332
  br label %353

353:                                              ; preds = %509, %352
  %354 = load i32, i32* %19, align 4
  %355 = add nsw i32 %354, -1
  store i32 %355, i32* %19, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %510

357:                                              ; preds = %353
  %358 = load %struct.receive_queue*, %struct.receive_queue** %12, align 8
  %359 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = call i8* @virtqueue_get_buf_ctx(i32 %360, i32* %15, i8** %14)
  store i8* %361, i8** %13, align 8
  %362 = load i8*, i8** %13, align 8
  %363 = icmp ne i8* %362, null
  %364 = xor i1 %363, true
  %365 = zext i1 %364 to i32
  %366 = call i64 @unlikely(i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %386

368:                                              ; preds = %357
  %369 = load %struct.net_device*, %struct.net_device** %10, align 8
  %370 = getelementptr inbounds %struct.net_device, %struct.net_device* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* %19, align 4
  %373 = load %struct.virtnet_info*, %struct.virtnet_info** %11, align 8
  %374 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.virtio_net_hdr_mrg_rxbuf*, %struct.virtio_net_hdr_mrg_rxbuf** %18, align 8
  %377 = getelementptr inbounds %struct.virtio_net_hdr_mrg_rxbuf, %struct.virtio_net_hdr_mrg_rxbuf* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @virtio16_to_cpu(i32 %375, i32 %378)
  %380 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %371, i32 %372, i32 %379)
  %381 = load %struct.net_device*, %struct.net_device** %10, align 8
  %382 = getelementptr inbounds %struct.net_device, %struct.net_device* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %383, align 4
  br label %564

386:                                              ; preds = %357
  %387 = load i32, i32* %15, align 4
  %388 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %17, align 8
  %389 = getelementptr inbounds %struct.virtnet_rq_stats, %struct.virtnet_rq_stats* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = add i32 %390, %387
  store i32 %391, i32* %389, align 4
  %392 = load i8*, i8** %13, align 8
  %393 = call %struct.page* @virt_to_head_page(i8* %392)
  store %struct.page* %393, %struct.page** %20, align 8
  %394 = load i8*, i8** %14, align 8
  %395 = call i32 @mergeable_ctx_to_truesize(i8* %394)
  store i32 %395, i32* %25, align 4
  %396 = load i32, i32* %15, align 4
  %397 = load i32, i32* %25, align 4
  %398 = icmp ugt i32 %396, %397
  %399 = zext i1 %398 to i32
  %400 = call i64 @unlikely(i32 %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %415

402:                                              ; preds = %386
  %403 = load %struct.net_device*, %struct.net_device** %10, align 8
  %404 = getelementptr inbounds %struct.net_device, %struct.net_device* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* %15, align 4
  %407 = load i8*, i8** %14, align 8
  %408 = ptrtoint i8* %407 to i64
  %409 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %405, i32 %406, i64 %408)
  %410 = load %struct.net_device*, %struct.net_device** %10, align 8
  %411 = getelementptr inbounds %struct.net_device, %struct.net_device* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %412, align 4
  br label %524

415:                                              ; preds = %386
  %416 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %417 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %416)
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  store i32 %419, i32* %33, align 4
  %420 = load i32, i32* %33, align 4
  %421 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %422 = icmp eq i32 %420, %421
  %423 = zext i1 %422 to i32
  %424 = call i64 @unlikely(i32 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %458

426:                                              ; preds = %415
  %427 = load i32, i32* @GFP_ATOMIC, align 4
  %428 = call %struct.sk_buff* @alloc_skb(i32 0, i32 %427)
  store %struct.sk_buff* %428, %struct.sk_buff** %34, align 8
  %429 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  %430 = icmp ne %struct.sk_buff* %429, null
  %431 = xor i1 %430, true
  %432 = zext i1 %431 to i32
  %433 = call i64 @unlikely(i32 %432)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %436

435:                                              ; preds = %426
  br label %524

436:                                              ; preds = %426
  %437 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %438 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %439 = icmp eq %struct.sk_buff* %437, %438
  br i1 %439, label %440, label %445

440:                                              ; preds = %436
  %441 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  %442 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %443 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %442)
  %444 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %443, i32 0, i32 1
  store %struct.sk_buff* %441, %struct.sk_buff** %444, align 8
  br label %449

445:                                              ; preds = %436
  %446 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  %447 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %448 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %447, i32 0, i32 3
  store %struct.sk_buff* %446, %struct.sk_buff** %448, align 8
  br label %449

449:                                              ; preds = %445, %440
  %450 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  store %struct.sk_buff* %450, %struct.sk_buff** %23, align 8
  %451 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  %452 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %455 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = add i32 %456, %453
  store i32 %457, i32* %455, align 8
  store i32 0, i32* %33, align 4
  br label %458

458:                                              ; preds = %449, %415
  %459 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %460 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %461 = icmp ne %struct.sk_buff* %459, %460
  br i1 %461, label %462, label %478

462:                                              ; preds = %458
  %463 = load i32, i32* %15, align 4
  %464 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %465 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = add i32 %466, %463
  store i32 %467, i32* %465, align 4
  %468 = load i32, i32* %15, align 4
  %469 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %470 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 8
  %472 = add i32 %471, %468
  store i32 %472, i32* %470, align 8
  %473 = load i32, i32* %25, align 4
  %474 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %475 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = add i32 %476, %473
  store i32 %477, i32* %475, align 8
  br label %478

478:                                              ; preds = %462, %458
  %479 = load i8*, i8** %13, align 8
  %480 = load %struct.page*, %struct.page** %20, align 8
  %481 = call i8* @page_address(%struct.page* %480)
  %482 = ptrtoint i8* %479 to i64
  %483 = ptrtoint i8* %481 to i64
  %484 = sub i64 %482, %483
  %485 = trunc i64 %484 to i32
  store i32 %485, i32* %21, align 4
  %486 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %487 = load i32, i32* %33, align 4
  %488 = load %struct.page*, %struct.page** %20, align 8
  %489 = load i32, i32* %21, align 4
  %490 = call i64 @skb_can_coalesce(%struct.sk_buff* %486, i32 %487, %struct.page* %488, i32 %489)
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %501

492:                                              ; preds = %478
  %493 = load %struct.page*, %struct.page** %20, align 8
  %494 = call i32 @put_page(%struct.page* %493)
  %495 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %496 = load i32, i32* %33, align 4
  %497 = sub nsw i32 %496, 1
  %498 = load i32, i32* %15, align 4
  %499 = load i32, i32* %25, align 4
  %500 = call i32 @skb_coalesce_rx_frag(%struct.sk_buff* %495, i32 %497, i32 %498, i32 %499)
  br label %509

501:                                              ; preds = %478
  %502 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %503 = load i32, i32* %33, align 4
  %504 = load %struct.page*, %struct.page** %20, align 8
  %505 = load i32, i32* %21, align 4
  %506 = load i32, i32* %15, align 4
  %507 = load i32, i32* %25, align 4
  %508 = call i32 @skb_add_rx_frag(%struct.sk_buff* %502, i32 %503, %struct.page* %504, i32 %505, i32 %506, i32 %507)
  br label %509

509:                                              ; preds = %501, %492
  br label %353

510:                                              ; preds = %353
  %511 = load %struct.receive_queue*, %struct.receive_queue** %12, align 8
  %512 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %511, i32 0, i32 1
  %513 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %514 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %513, i32 0, i32 2
  %515 = load i32, i32* %514, align 8
  %516 = call i32 @ewma_pkt_len_add(i32* %512, i32 %515)
  %517 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %517, %struct.sk_buff** %9, align 8
  br label %572

518:                                              ; preds = %307, %270, %233, %208, %100, %78
  %519 = call i32 (...) @rcu_read_unlock()
  %520 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %17, align 8
  %521 = getelementptr inbounds %struct.virtnet_rq_stats, %struct.virtnet_rq_stats* %520, i32 0, i32 2
  %522 = load i32, i32* %521, align 4
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* %521, align 4
  br label %524

524:                                              ; preds = %518, %435, %402, %351, %319
  %525 = load %struct.page*, %struct.page** %20, align 8
  %526 = call i32 @put_page(%struct.page* %525)
  br label %527

527:                                              ; preds = %553, %524
  %528 = load i32, i32* %19, align 4
  %529 = add nsw i32 %528, -1
  store i32 %529, i32* %19, align 4
  %530 = icmp sgt i32 %528, 1
  br i1 %530, label %531, label %563

531:                                              ; preds = %527
  %532 = load %struct.receive_queue*, %struct.receive_queue** %12, align 8
  %533 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = call i8* @virtqueue_get_buf(i32 %534, i32* %15)
  store i8* %535, i8** %13, align 8
  %536 = load i8*, i8** %13, align 8
  %537 = icmp ne i8* %536, null
  %538 = xor i1 %537, true
  %539 = zext i1 %538 to i32
  %540 = call i64 @unlikely(i32 %539)
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %542, label %553

542:                                              ; preds = %531
  %543 = load %struct.net_device*, %struct.net_device** %10, align 8
  %544 = getelementptr inbounds %struct.net_device, %struct.net_device* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = load i32, i32* %19, align 4
  %547 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %545, i32 %546)
  %548 = load %struct.net_device*, %struct.net_device** %10, align 8
  %549 = getelementptr inbounds %struct.net_device, %struct.net_device* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %550, align 4
  br label %563

553:                                              ; preds = %531
  %554 = load i32, i32* %15, align 4
  %555 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %17, align 8
  %556 = getelementptr inbounds %struct.virtnet_rq_stats, %struct.virtnet_rq_stats* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 4
  %558 = add i32 %557, %554
  store i32 %558, i32* %556, align 4
  %559 = load i8*, i8** %13, align 8
  %560 = call %struct.page* @virt_to_head_page(i8* %559)
  store %struct.page* %560, %struct.page** %20, align 8
  %561 = load %struct.page*, %struct.page** %20, align 8
  %562 = call i32 @put_page(%struct.page* %561)
  br label %527

563:                                              ; preds = %542, %527
  br label %564

564:                                              ; preds = %563, %368
  %565 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %17, align 8
  %566 = getelementptr inbounds %struct.virtnet_rq_stats, %struct.virtnet_rq_stats* %565, i32 0, i32 1
  %567 = load i32, i32* %566, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %566, align 4
  %569 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %570 = call i32 @dev_kfree_skb(%struct.sk_buff* %569)
  br label %571

571:                                              ; preds = %564, %285, %248
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %572

572:                                              ; preds = %571, %510, %183
  %573 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %573
}

declare dso_local i32 @virtio16_to_cpu(i32, i32) #1

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @mergeable_ctx_to_headroom(i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bpf_prog* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @virtnet_get_headroom(%struct.virtnet_info*) #1

declare dso_local %struct.page* @xdp_linearize_page(%struct.receive_queue*, i32*, %struct.page*, i32, i32, i32*) #1

declare dso_local i32 @xdp_set_data_meta_invalid(%struct.xdp_buff*) #1

declare dso_local i32 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local %struct.sk_buff* @page_to_skb(%struct.virtnet_info*, %struct.receive_queue*, %struct.page*, i32, i32, i32, i32) #1

declare dso_local %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff*) #1

declare dso_local i32 @virtnet_xdp_xmit(%struct.net_device*, i32, %struct.xdp_frame**, i32) #1

declare dso_local i32 @trace_xdp_exception(i32, %struct.bpf_prog*, i32) #1

declare dso_local i32 @xdp_do_redirect(%struct.net_device*, %struct.xdp_buff*, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_warn_invalid_xdp_action(i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @mergeable_ctx_to_truesize(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i8* @virtqueue_get_buf_ctx(i32, i32*, i8**) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @skb_can_coalesce(%struct.sk_buff*, i32, %struct.page*, i32) #1

declare dso_local i32 @skb_coalesce_rx_frag(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @ewma_pkt_len_add(i32*, i32) #1

declare dso_local i8* @virtqueue_get_buf(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
