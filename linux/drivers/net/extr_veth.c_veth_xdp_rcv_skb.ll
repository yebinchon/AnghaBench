; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_xdp_rcv_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_xdp_rcv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veth_rq = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i8*, i64, i32, i32, i32 }
%struct.veth_xdp_tx_bq = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, %struct.TYPE_2__*, i32 }
%struct.page = type { i32 }

@XDP_PACKET_HEADROOM = common dso_local global i64 0, align 8
@VETH_XDP_HEADROOM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@VETH_XDP_TX = common dso_local global i32 0, align 4
@VETH_XDP_REDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.veth_rq*, %struct.sk_buff*, i32*, %struct.veth_xdp_tx_bq*)* @veth_xdp_rcv_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @veth_xdp_rcv_skb(%struct.veth_rq* %0, %struct.sk_buff* %1, i32* %2, %struct.veth_xdp_tx_bq* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.veth_rq*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.veth_xdp_tx_bq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.bpf_prog*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.xdp_buff, align 8
  %21 = alloca %struct.sk_buff*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.page*, align 8
  store %struct.veth_rq* %0, %struct.veth_rq** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.veth_xdp_tx_bq* %3, %struct.veth_xdp_tx_bq** %9, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = call i32 @skb_orphan(%struct.sk_buff* %27)
  %29 = call i32 (...) @rcu_read_lock()
  %30 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %31 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.bpf_prog* @rcu_dereference(i32 %32)
  store %struct.bpf_prog* %33, %struct.bpf_prog** %16, align 8
  %34 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %35 = icmp ne %struct.bpf_prog* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = call i32 (...) @rcu_read_unlock()
  br label %314

42:                                               ; preds = %4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = call i8* @skb_mac_header(%struct.sk_buff* %46)
  %48 = ptrtoint i8* %45 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %17, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  store i64 %57, i64* %10, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = call i64 @skb_headroom(%struct.sk_buff* %58)
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %59, %61
  store i64 %62, i64* %11, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = call i64 @skb_shared(%struct.sk_buff* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %42
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = call i64 @skb_head_is_locked(%struct.sk_buff* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = call i64 @skb_is_nonlinear(%struct.sk_buff* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @XDP_PACKET_HEADROOM, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %147

78:                                               ; preds = %74, %70, %66, %42
  %79 = load i32, i32* @VETH_XDP_HEADROOM, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %10, align 8
  %82 = add nsw i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @SKB_DATA_ALIGN(i32 %83)
  %85 = call i32 @SKB_DATA_ALIGN(i32 4)
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %22, align 4
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* @PAGE_SIZE, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br label %316

91:                                               ; preds = %78
  %92 = load i32, i32* @GFP_ATOMIC, align 4
  %93 = load i32, i32* @__GFP_NOWARN, align 4
  %94 = or i32 %92, %93
  %95 = call %struct.page* @alloc_page(i32 %94)
  store %struct.page* %95, %struct.page** %26, align 8
  %96 = load %struct.page*, %struct.page** %26, align 8
  %97 = icmp ne %struct.page* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  br label %316

99:                                               ; preds = %91
  %100 = load %struct.page*, %struct.page** %26, align 8
  %101 = call i8* @page_address(%struct.page* %100)
  store i8* %101, i8** %24, align 8
  %102 = load i8*, i8** %24, align 8
  %103 = load i32, i32* @VETH_XDP_HEADROOM, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr i8, i8* %102, i64 %104
  store i8* %105, i8** %25, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %107 = load i32, i32* %17, align 4
  %108 = sub nsw i32 0, %107
  %109 = load i8*, i8** %25, align 8
  %110 = load i64, i64* %10, align 8
  %111 = call i64 @skb_copy_bits(%struct.sk_buff* %106, i32 %108, i8* %109, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %99
  %114 = load i8*, i8** %24, align 8
  %115 = call i32 @page_frag_free(i8* %114)
  br label %316

116:                                              ; preds = %99
  %117 = load i8*, i8** %24, align 8
  %118 = load i32, i32* @VETH_XDP_HEADROOM, align 4
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %118, %119
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @PAGE_SIZE, align 4
  %125 = call %struct.sk_buff* @veth_build_skb(i8* %117, i32 %120, i64 %123, i32 %124)
  store %struct.sk_buff* %125, %struct.sk_buff** %21, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %127 = icmp ne %struct.sk_buff* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %116
  %129 = load i8*, i8** %24, align 8
  %130 = call i32 @page_frag_free(i8* %129)
  br label %316

131:                                              ; preds = %116
  %132 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %134 = call i32 @skb_copy_header(%struct.sk_buff* %132, %struct.sk_buff* %133)
  %135 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %136 = call i64 @skb_headroom(%struct.sk_buff* %135)
  %137 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %138 = call i64 @skb_headroom(%struct.sk_buff* %137)
  %139 = sub nsw i64 %136, %138
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %23, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %142 = load i32, i32* %23, align 4
  %143 = call i32 @skb_headers_offset_update(%struct.sk_buff* %141, i32 %142)
  %144 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %145 = call i32 @consume_skb(%struct.sk_buff* %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  store %struct.sk_buff* %146, %struct.sk_buff** %7, align 8
  br label %147

147:                                              ; preds = %131, %74
  %148 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 4
  store i32 %150, i32* %151, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %153 = call i8* @skb_mac_header(%struct.sk_buff* %152)
  %154 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 0
  store i8* %153, i8** %154, align 8
  %155 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load i64, i64* %10, align 8
  %158 = getelementptr i8, i8* %156, i64 %157
  %159 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 1
  store i8* %158, i8** %159, align 8
  %160 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 2
  store i8* %161, i8** %162, align 8
  %163 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %164 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 3
  store %struct.TYPE_2__* %164, %struct.TYPE_2__** %165, align 8
  %166 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %14, align 8
  %168 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  store i8* %169, i8** %15, align 8
  %170 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %171 = call i64 @bpf_prog_run_xdp(%struct.bpf_prog* %170, %struct.xdp_buff* %20)
  store i64 %171, i64* %12, align 8
  %172 = load i64, i64* %12, align 8
  switch i64 %172, label %235 [
    i64 130, label %173
    i64 128, label %174
    i64 129, label %209
    i64 132, label %238
    i64 131, label %245
  ]

173:                                              ; preds = %147
  br label %246

174:                                              ; preds = %147
  %175 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @virt_to_page(i8* %176)
  %178 = call i32 @get_page(i32 %177)
  %179 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %180 = call i32 @consume_skb(%struct.sk_buff* %179)
  %181 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %182 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 3
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 4
  %187 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %188 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.veth_xdp_tx_bq*, %struct.veth_xdp_tx_bq** %9, align 8
  %191 = call i32 @veth_xdp_tx(i32 %189, %struct.xdp_buff* %20, %struct.veth_xdp_tx_bq* %190)
  %192 = icmp slt i32 %191, 0
  %193 = zext i1 %192 to i32
  %194 = call i64 @unlikely(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %174
  %197 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %198 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %201 = load i64, i64* %12, align 8
  %202 = call i32 @trace_xdp_exception(i32 %199, %struct.bpf_prog* %200, i64 %201)
  br label %320

203:                                              ; preds = %174
  %204 = load i32, i32* @VETH_XDP_TX, align 4
  %205 = load i32*, i32** %8, align 8
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %204
  store i32 %207, i32* %205, align 4
  %208 = call i32 (...) @rcu_read_unlock()
  br label %325

209:                                              ; preds = %147
  %210 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @virt_to_page(i8* %211)
  %213 = call i32 @get_page(i32 %212)
  %214 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %215 = call i32 @consume_skb(%struct.sk_buff* %214)
  %216 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %217 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 3
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  store i32 %218, i32* %221, align 4
  %222 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %223 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %226 = call i32 @xdp_do_redirect(i32 %224, %struct.xdp_buff* %20, %struct.bpf_prog* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %209
  br label %320

229:                                              ; preds = %209
  %230 = load i32, i32* @VETH_XDP_REDIR, align 4
  %231 = load i32*, i32** %8, align 8
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %230
  store i32 %233, i32* %231, align 4
  %234 = call i32 (...) @rcu_read_unlock()
  br label %325

235:                                              ; preds = %147
  %236 = load i64, i64* %12, align 8
  %237 = call i32 @bpf_warn_invalid_xdp_action(i64 %236)
  br label %238

238:                                              ; preds = %147, %235
  %239 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %240 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %243 = load i64, i64* %12, align 8
  %244 = call i32 @trace_xdp_exception(i32 %241, %struct.bpf_prog* %242, i64 %243)
  br label %245

245:                                              ; preds = %147, %238
  br label %316

246:                                              ; preds = %173
  %247 = call i32 (...) @rcu_read_unlock()
  %248 = load i8*, i8** %14, align 8
  %249 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = ptrtoint i8* %248 to i64
  %252 = ptrtoint i8* %250 to i64
  %253 = sub i64 %251, %252
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %18, align 4
  %255 = load i32, i32* %17, align 4
  %256 = load i32, i32* %18, align 4
  %257 = add nsw i32 %255, %256
  store i32 %257, i32* %19, align 4
  %258 = load i32, i32* %19, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %246
  %261 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %262 = load i32, i32* %19, align 4
  %263 = call i32 @__skb_push(%struct.sk_buff* %261, i32 %262)
  br label %273

264:                                              ; preds = %246
  %265 = load i32, i32* %19, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %264
  %268 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %269 = load i32, i32* %19, align 4
  %270 = sub nsw i32 0, %269
  %271 = call i32 @__skb_pull(%struct.sk_buff* %268, i32 %270)
  br label %272

272:                                              ; preds = %267, %264
  br label %273

273:                                              ; preds = %272, %260
  %274 = load i32, i32* %18, align 4
  %275 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %276 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = sub nsw i32 %277, %274
  store i32 %278, i32* %276, align 8
  %279 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 1
  %280 = load i8*, i8** %279, align 8
  %281 = load i8*, i8** %15, align 8
  %282 = ptrtoint i8* %280 to i64
  %283 = ptrtoint i8* %281 to i64
  %284 = sub i64 %282, %283
  %285 = trunc i64 %284 to i32
  store i32 %285, i32* %19, align 4
  %286 = load i32, i32* %19, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %273
  %289 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %290 = load i32, i32* %19, align 4
  %291 = call i32 @__skb_put(%struct.sk_buff* %289, i32 %290)
  br label %292

292:                                              ; preds = %288, %273
  %293 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %294 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %295 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @eth_type_trans(%struct.sk_buff* %293, i32 %296)
  %298 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %299 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %298, i32 0, i32 3
  store i32 %297, i32* %299, align 4
  %300 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 0
  %301 = load i8*, i8** %300, align 8
  %302 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 2
  %303 = load i8*, i8** %302, align 8
  %304 = ptrtoint i8* %301 to i64
  %305 = ptrtoint i8* %303 to i64
  %306 = sub i64 %304, %305
  store i64 %306, i64* %13, align 8
  %307 = load i64, i64* %13, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %292
  %310 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %311 = load i64, i64* %13, align 8
  %312 = call i32 @skb_metadata_set(%struct.sk_buff* %310, i64 %311)
  br label %313

313:                                              ; preds = %309, %292
  br label %314

314:                                              ; preds = %313, %40
  %315 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %315, %struct.sk_buff** %5, align 8
  br label %326

316:                                              ; preds = %245, %128, %113, %98, %90
  %317 = call i32 (...) @rcu_read_unlock()
  %318 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %319 = call i32 @kfree_skb(%struct.sk_buff* %318)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %326

320:                                              ; preds = %228, %196
  %321 = call i32 (...) @rcu_read_unlock()
  %322 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %20, i32 0, i32 0
  %323 = load i8*, i8** %322, align 8
  %324 = call i32 @page_frag_free(i8* %323)
  br label %325

325:                                              ; preds = %320, %229, %203
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %326

326:                                              ; preds = %325, %316, %314
  %327 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %327
}

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bpf_prog* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i8* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local i64 @skb_head_is_locked(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i8*, i64) #1

declare dso_local i32 @page_frag_free(i8*) #1

declare dso_local %struct.sk_buff* @veth_build_skb(i8*, i32, i64, i32) #1

declare dso_local i32 @skb_copy_header(%struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @skb_headers_offset_update(%struct.sk_buff*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i64 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @veth_xdp_tx(i32, %struct.xdp_buff*, %struct.veth_xdp_tx_bq*) #1

declare dso_local i32 @trace_xdp_exception(i32, %struct.bpf_prog*, i64) #1

declare dso_local i32 @xdp_do_redirect(i32, %struct.xdp_buff*, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_warn_invalid_xdp_action(i64) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_metadata_set(%struct.sk_buff*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
