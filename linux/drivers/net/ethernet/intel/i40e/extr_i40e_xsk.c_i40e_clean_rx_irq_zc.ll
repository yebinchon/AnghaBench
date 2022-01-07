; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_clean_rx_irq_zc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_clean_rx_irq_zc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i64, i64, i32, %struct.TYPE_8__*, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.xdp_buff = type { i32, i32*, i64, i32*, i32*, i32* }
%struct.i40e_rx_buffer = type { i32*, i32 }
%union.i40e_rx_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@I40E_RX_BUFFER_WRITE = common dso_local global i32 0, align 4
@I40E_RXD_QW1_LENGTH_PBUF_MASK = common dso_local global i32 0, align 4
@I40E_RXD_QW1_LENGTH_PBUF_SHIFT = common dso_local global i32 0, align 4
@XDP_PACKET_HEADROOM = common dso_local global i32* null, align 8
@I40E_XDP_TX = common dso_local global i32 0, align 4
@I40E_XDP_REDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_clean_rx_irq_zc(%struct.i40e_ring* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.xdp_buff, align 8
  %14 = alloca %struct.i40e_rx_buffer*, align 8
  %15 = alloca %union.i40e_rx_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.i40e_ring* %0, %struct.i40e_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %19 = call i32 @I40E_DESC_UNUSED(%struct.i40e_ring* %18)
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %21 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 5
  store i32* %21, i32** %22, align 8
  br label %23

23:                                               ; preds = %164, %163, %133, %66, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ult i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %184

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @I40E_RX_BUFFER_WRITE, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @i40e_alloc_rx_buffers_fast_zc(%struct.i40e_ring* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %37, %34
  %44 = phi i1 [ true, %34 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %30
  %47 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %48 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %49 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call %union.i40e_rx_desc* @I40E_RX_DESC(%struct.i40e_ring* %47, i64 %50)
  store %union.i40e_rx_desc* %51, %union.i40e_rx_desc** %15, align 8
  %52 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %15, align 8
  %53 = bitcast %union.i40e_rx_desc* %52 to %struct.TYPE_6__*
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le64_to_cpu(i32 %56)
  store i32 %57, i32* %17, align 4
  %58 = call i32 (...) @dma_rmb()
  %59 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %60 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %15, align 8
  %61 = load i32, i32* %17, align 4
  %62 = call %struct.i40e_rx_buffer* @i40e_clean_programming_status(%struct.i40e_ring* %59, %union.i40e_rx_desc* %60, i32 %61)
  store %struct.i40e_rx_buffer* %62, %struct.i40e_rx_buffer** %14, align 8
  %63 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %14, align 8
  %64 = call i64 @unlikely(%struct.i40e_rx_buffer* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %46
  %67 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %68 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %14, align 8
  %69 = call i32 @i40e_reuse_rx_buffer_zc(%struct.i40e_ring* %67, %struct.i40e_rx_buffer* %68)
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %23

72:                                               ; preds = %46
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* @I40E_RXD_QW1_LENGTH_PBUF_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @I40E_RXD_QW1_LENGTH_PBUF_SHIFT, align 4
  %77 = lshr i32 %75, %76
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  br label %184

81:                                               ; preds = %72
  %82 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call %struct.i40e_rx_buffer* @i40e_get_rx_buffer_zc(%struct.i40e_ring* %82, i32 %83)
  store %struct.i40e_rx_buffer* %84, %struct.i40e_rx_buffer** %14, align 8
  %85 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %14, align 8
  %86 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 1
  store i32* %87, i32** %88, align 8
  %89 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 4
  store i32* %90, i32** %91, align 8
  %92 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** @XDP_PACKET_HEADROOM, align 8
  %95 = ptrtoint i32* %93 to i64
  %96 = ptrtoint i32* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 4
  %99 = inttoptr i64 %98 to i32*
  %100 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 3
  store i32* %99, i32** %100, align 8
  %101 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %16, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = ptrtoint i32* %105 to i64
  %107 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 2
  store i64 %106, i64* %107, align 8
  %108 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %14, align 8
  %109 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 0
  store i32 %110, i32* %111, align 8
  %112 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %113 = call i32 @i40e_run_xdp_zc(%struct.i40e_ring* %112, %struct.xdp_buff* %13)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %143

116:                                              ; preds = %81
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @I40E_XDP_TX, align 4
  %119 = load i32, i32* @I40E_XDP_REDIR, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %10, align 4
  %127 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %14, align 8
  %128 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %127, i32 0, i32 0
  store i32* null, i32** %128, align 8
  br label %133

129:                                              ; preds = %116
  %130 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %131 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %14, align 8
  %132 = call i32 @i40e_reuse_rx_buffer_zc(%struct.i40e_ring* %130, %struct.i40e_rx_buffer* %131)
  br label %133

133:                                              ; preds = %129, %123
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %6, align 4
  %136 = add i32 %135, %134
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %7, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  %141 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %142 = call i32 @i40e_inc_ntc(%struct.i40e_ring* %141)
  br label %23

143:                                              ; preds = %81
  %144 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %145 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %14, align 8
  %146 = call %struct.sk_buff* @i40e_construct_skb_zc(%struct.i40e_ring* %144, %struct.i40e_rx_buffer* %145, %struct.xdp_buff* %13)
  store %struct.sk_buff* %146, %struct.sk_buff** %12, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %148 = icmp ne %struct.sk_buff* %147, null
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %151 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  br label %184

155:                                              ; preds = %143
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  %158 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %159 = call i32 @i40e_inc_ntc(%struct.i40e_ring* %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %161 = call i64 @eth_skb_pad(%struct.sk_buff* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  br label %23

164:                                              ; preds = %155
  %165 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = zext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %7, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %7, align 4
  %174 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %175 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %15, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %177 = call i32 @i40e_process_skb_fields(%struct.i40e_ring* %174, %union.i40e_rx_desc* %175, %struct.sk_buff* %176)
  %178 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %179 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %178, i32 0, i32 3
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %183 = call i32 @napi_gro_receive(i32* %181, %struct.sk_buff* %182)
  br label %23

184:                                              ; preds = %149, %80, %23
  %185 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @i40e_finalize_xdp_rx(%struct.i40e_ring* %185, i32 %186)
  %188 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @i40e_update_rx_stats(%struct.i40e_ring* %188, i32 %189, i32 %190)
  %192 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %193 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i64 @xsk_umem_uses_need_wakeup(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %220

197:                                              ; preds = %184
  %198 = load i32, i32* %11, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %208, label %200

200:                                              ; preds = %197
  %201 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %202 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %205 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %203, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %200, %197
  %209 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %210 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @xsk_set_rx_need_wakeup(i32 %211)
  br label %218

213:                                              ; preds = %200
  %214 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %215 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @xsk_clear_rx_need_wakeup(i32 %216)
  br label %218

218:                                              ; preds = %213, %208
  %219 = load i32, i32* %7, align 4
  store i32 %219, i32* %3, align 4
  br label %229

220:                                              ; preds = %184
  %221 = load i32, i32* %11, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i32, i32* %5, align 4
  br label %227

225:                                              ; preds = %220
  %226 = load i32, i32* %7, align 4
  br label %227

227:                                              ; preds = %225, %223
  %228 = phi i32 [ %224, %223 ], [ %226, %225 ]
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %227, %218
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local i32 @I40E_DESC_UNUSED(%struct.i40e_ring*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @i40e_alloc_rx_buffers_fast_zc(%struct.i40e_ring*, i32) #1

declare dso_local %union.i40e_rx_desc* @I40E_RX_DESC(%struct.i40e_ring*, i64) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local %struct.i40e_rx_buffer* @i40e_clean_programming_status(%struct.i40e_ring*, %union.i40e_rx_desc*, i32) #1

declare dso_local i64 @unlikely(%struct.i40e_rx_buffer*) #1

declare dso_local i32 @i40e_reuse_rx_buffer_zc(%struct.i40e_ring*, %struct.i40e_rx_buffer*) #1

declare dso_local %struct.i40e_rx_buffer* @i40e_get_rx_buffer_zc(%struct.i40e_ring*, i32) #1

declare dso_local i32 @i40e_run_xdp_zc(%struct.i40e_ring*, %struct.xdp_buff*) #1

declare dso_local i32 @i40e_inc_ntc(%struct.i40e_ring*) #1

declare dso_local %struct.sk_buff* @i40e_construct_skb_zc(%struct.i40e_ring*, %struct.i40e_rx_buffer*, %struct.xdp_buff*) #1

declare dso_local i64 @eth_skb_pad(%struct.sk_buff*) #1

declare dso_local i32 @i40e_process_skb_fields(%struct.i40e_ring*, %union.i40e_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @i40e_finalize_xdp_rx(%struct.i40e_ring*, i32) #1

declare dso_local i32 @i40e_update_rx_stats(%struct.i40e_ring*, i32, i32) #1

declare dso_local i64 @xsk_umem_uses_need_wakeup(i32) #1

declare dso_local i32 @xsk_set_rx_need_wakeup(i32) #1

declare dso_local i32 @xsk_clear_rx_need_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
