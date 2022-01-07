; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_clean_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_clean_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { %struct.sk_buff*, %struct.TYPE_8__*, %struct.TYPE_7__, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.xdp_buff = type { i64, i64, i64, i64, i32* }
%struct.i40e_rx_buffer = type { i32, i64, i32 }
%union.i40e_rx_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@I40E_RX_BUFFER_WRITE = common dso_local global i64 0, align 8
@I40E_RXD_QW1_LENGTH_PBUF_MASK = common dso_local global i32 0, align 4
@I40E_RXD_QW1_LENGTH_PBUF_SHIFT = common dso_local global i32 0, align 4
@clean_rx_irq = common dso_local global i32 0, align 4
@I40E_XDP_TX = common dso_local global i32 0, align 4
@I40E_XDP_REDIR = common dso_local global i32 0, align 4
@clean_rx_irq_rx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_ring*, i32)* @i40e_clean_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_clean_rx_irq(%struct.i40e_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xdp_buff, align 8
  %12 = alloca %struct.i40e_rx_buffer*, align 8
  %13 = alloca %union.i40e_rx_desc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i40e_ring* %0, %struct.i40e_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %18 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %17, i32 0, i32 0
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %7, align 8
  %20 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %21 = call i64 @I40E_DESC_UNUSED(%struct.i40e_ring* %20)
  store i64 %21, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %23 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %11, i32 0, i32 4
  store i32* %23, i32** %24, align 8
  br label %25

25:                                               ; preds = %208, %207, %200, %67, %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ult i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @likely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %233

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @I40E_RX_BUFFER_WRITE, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @i40e_alloc_rx_buffers(%struct.i40e_ring* %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i1 [ true, %36 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %10, align 4
  store i64 0, i64* %8, align 8
  br label %47

47:                                               ; preds = %44, %32
  %48 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %49 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %50 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call %union.i40e_rx_desc* @I40E_RX_DESC(%struct.i40e_ring* %48, i32 %51)
  store %union.i40e_rx_desc* %52, %union.i40e_rx_desc** %13, align 8
  %53 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %13, align 8
  %54 = bitcast %union.i40e_rx_desc* %53 to %struct.TYPE_6__*
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le64_to_cpu(i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = call i32 (...) @dma_rmb()
  %60 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %61 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %13, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call %struct.i40e_rx_buffer* @i40e_clean_programming_status(%struct.i40e_ring* %60, %union.i40e_rx_desc* %61, i32 %62)
  store %struct.i40e_rx_buffer* %63, %struct.i40e_rx_buffer** %12, align 8
  %64 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %12, align 8
  %65 = call i64 @unlikely(%struct.i40e_rx_buffer* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %47
  %68 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %69 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %12, align 8
  %70 = call i32 @i40e_reuse_rx_page(%struct.i40e_ring* %68, %struct.i40e_rx_buffer* %69)
  %71 = load i64, i64* %8, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %8, align 8
  br label %25

73:                                               ; preds = %47
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @I40E_RXD_QW1_LENGTH_PBUF_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @I40E_RXD_QW1_LENGTH_PBUF_SHIFT, align 4
  %78 = lshr i32 %76, %77
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  br label %233

82:                                               ; preds = %73
  %83 = load i32, i32* @clean_rx_irq, align 4
  %84 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %85 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %13, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = call i32 @i40e_trace(i32 %83, %struct.i40e_ring* %84, %union.i40e_rx_desc* %85, %struct.sk_buff* %86)
  %88 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call %struct.i40e_rx_buffer* @i40e_get_rx_buffer(%struct.i40e_ring* %88, i32 %89)
  store %struct.i40e_rx_buffer* %90, %struct.i40e_rx_buffer** %12, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = icmp ne %struct.sk_buff* %91, null
  br i1 %92, label %120, label %93

93:                                               ; preds = %82
  %94 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %12, align 8
  %95 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @page_address(i32 %96)
  %98 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %12, align 8
  %99 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %11, i32 0, i32 0
  store i64 %101, i64* %102, align 8
  %103 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %11, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %11, i32 0, i32 3
  store i64 %104, i64* %105, align 8
  %106 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %11, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %109 = call i64 @i40e_rx_offset(%struct.i40e_ring* %108)
  %110 = sub nsw i64 %107, %109
  %111 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %11, i32 0, i32 2
  store i64 %110, i64* %111, align 8
  %112 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %11, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = zext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %11, i32 0, i32 1
  store i64 %116, i64* %117, align 8
  %118 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %119 = call %struct.sk_buff* @i40e_run_xdp(%struct.i40e_ring* %118, %struct.xdp_buff* %11)
  store %struct.sk_buff* %119, %struct.sk_buff** %7, align 8
  br label %120

120:                                              ; preds = %93, %82
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = call i64 @IS_ERR(%struct.sk_buff* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %153

124:                                              ; preds = %120
  %125 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %126 = call i32 @PTR_ERR(%struct.sk_buff* %125)
  %127 = sub i32 0, %126
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* @I40E_XDP_TX, align 4
  %130 = load i32, i32* @I40E_XDP_REDIR, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %128, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %124
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %9, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %9, align 4
  %138 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %139 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %12, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @i40e_rx_buffer_flip(%struct.i40e_ring* %138, %struct.i40e_rx_buffer* %139, i32 %140)
  br label %147

142:                                              ; preds = %124
  %143 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %12, align 8
  %144 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %142, %134
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %5, align 4
  %150 = add i32 %149, %148
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %6, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %176

153:                                              ; preds = %120
  %154 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %155 = icmp ne %struct.sk_buff* %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %158 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %12, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @i40e_add_rx_frag(%struct.i40e_ring* %157, %struct.i40e_rx_buffer* %158, %struct.sk_buff* %159, i32 %160)
  br label %175

162:                                              ; preds = %153
  %163 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %164 = call i64 @ring_uses_build_skb(%struct.i40e_ring* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %168 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %12, align 8
  %169 = call %struct.sk_buff* @i40e_build_skb(%struct.i40e_ring* %167, %struct.i40e_rx_buffer* %168, %struct.xdp_buff* %11)
  store %struct.sk_buff* %169, %struct.sk_buff** %7, align 8
  br label %174

170:                                              ; preds = %162
  %171 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %172 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %12, align 8
  %173 = call %struct.sk_buff* @i40e_construct_skb(%struct.i40e_ring* %171, %struct.i40e_rx_buffer* %172, %struct.xdp_buff* %11)
  store %struct.sk_buff* %173, %struct.sk_buff** %7, align 8
  br label %174

174:                                              ; preds = %170, %166
  br label %175

175:                                              ; preds = %174, %156
  br label %176

176:                                              ; preds = %175, %147
  %177 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %178 = icmp ne %struct.sk_buff* %177, null
  br i1 %178, label %189, label %179

179:                                              ; preds = %176
  %180 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %181 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  %185 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %12, align 8
  %186 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 8
  br label %233

189:                                              ; preds = %176
  %190 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %191 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %12, align 8
  %192 = call i32 @i40e_put_rx_buffer(%struct.i40e_ring* %190, %struct.i40e_rx_buffer* %191)
  %193 = load i64, i64* %8, align 8
  %194 = add nsw i64 %193, 1
  store i64 %194, i64* %8, align 8
  %195 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %196 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %13, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %198 = call i64 @i40e_is_non_eop(%struct.i40e_ring* %195, %union.i40e_rx_desc* %196, %struct.sk_buff* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %189
  br label %25

201:                                              ; preds = %189
  %202 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %204 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %13, align 8
  %205 = call i64 @i40e_cleanup_headers(%struct.i40e_ring* %202, %struct.sk_buff* %203, %union.i40e_rx_desc* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %25

208:                                              ; preds = %201
  %209 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = zext i32 %212 to i64
  %214 = add nsw i64 %213, %211
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %5, align 4
  %216 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %217 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %13, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %219 = call i32 @i40e_process_skb_fields(%struct.i40e_ring* %216, %union.i40e_rx_desc* %217, %struct.sk_buff* %218)
  %220 = load i32, i32* @clean_rx_irq_rx, align 4
  %221 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %222 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %13, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %224 = call i32 @i40e_trace(i32 %220, %struct.i40e_ring* %221, %union.i40e_rx_desc* %222, %struct.sk_buff* %223)
  %225 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %226 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %225, i32 0, i32 1
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %230 = call i32 @napi_gro_receive(i32* %228, %struct.sk_buff* %229)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %231 = load i32, i32* %6, align 4
  %232 = add i32 %231, 1
  store i32 %232, i32* %6, align 4
  br label %25

233:                                              ; preds = %179, %81, %25
  %234 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @i40e_finalize_xdp_rx(%struct.i40e_ring* %234, i32 %235)
  %237 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %238 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %239 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %238, i32 0, i32 0
  store %struct.sk_buff* %237, %struct.sk_buff** %239, align 8
  %240 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* %6, align 4
  %243 = call i32 @i40e_update_rx_stats(%struct.i40e_ring* %240, i32 %241, i32 %242)
  %244 = load i32, i32* %10, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %233
  %247 = load i32, i32* %4, align 4
  br label %250

248:                                              ; preds = %233
  %249 = load i32, i32* %6, align 4
  br label %250

250:                                              ; preds = %248, %246
  %251 = phi i32 [ %247, %246 ], [ %249, %248 ]
  ret i32 %251
}

declare dso_local i64 @I40E_DESC_UNUSED(%struct.i40e_ring*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @i40e_alloc_rx_buffers(%struct.i40e_ring*, i64) #1

declare dso_local %union.i40e_rx_desc* @I40E_RX_DESC(%struct.i40e_ring*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local %struct.i40e_rx_buffer* @i40e_clean_programming_status(%struct.i40e_ring*, %union.i40e_rx_desc*, i32) #1

declare dso_local i64 @unlikely(%struct.i40e_rx_buffer*) #1

declare dso_local i32 @i40e_reuse_rx_page(%struct.i40e_ring*, %struct.i40e_rx_buffer*) #1

declare dso_local i32 @i40e_trace(i32, %struct.i40e_ring*, %union.i40e_rx_desc*, %struct.sk_buff*) #1

declare dso_local %struct.i40e_rx_buffer* @i40e_get_rx_buffer(%struct.i40e_ring*, i32) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i64 @i40e_rx_offset(%struct.i40e_ring*) #1

declare dso_local %struct.sk_buff* @i40e_run_xdp(%struct.i40e_ring*, %struct.xdp_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @i40e_rx_buffer_flip(%struct.i40e_ring*, %struct.i40e_rx_buffer*, i32) #1

declare dso_local i32 @i40e_add_rx_frag(%struct.i40e_ring*, %struct.i40e_rx_buffer*, %struct.sk_buff*, i32) #1

declare dso_local i64 @ring_uses_build_skb(%struct.i40e_ring*) #1

declare dso_local %struct.sk_buff* @i40e_build_skb(%struct.i40e_ring*, %struct.i40e_rx_buffer*, %struct.xdp_buff*) #1

declare dso_local %struct.sk_buff* @i40e_construct_skb(%struct.i40e_ring*, %struct.i40e_rx_buffer*, %struct.xdp_buff*) #1

declare dso_local i32 @i40e_put_rx_buffer(%struct.i40e_ring*, %struct.i40e_rx_buffer*) #1

declare dso_local i64 @i40e_is_non_eop(%struct.i40e_ring*, %union.i40e_rx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @i40e_cleanup_headers(%struct.i40e_ring*, %struct.sk_buff*, %union.i40e_rx_desc*) #1

declare dso_local i32 @i40e_process_skb_fields(%struct.i40e_ring*, %union.i40e_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @i40e_finalize_xdp_rx(%struct.i40e_ring*, i32) #1

declare dso_local i32 @i40e_update_rx_stats(%struct.i40e_ring*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
