; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_clean_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_clean_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_q_vector = type { %struct.TYPE_12__, %struct.ixgbe_adapter* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.ixgbe_adapter = type { %struct.ixgbe_ring** }
%struct.ixgbe_ring = type { i32, %struct.TYPE_11__, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.xdp_buff = type { i64, i64, i64, i64, i32* }
%union.ixgbe_adv_rx_desc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ixgbe_rx_buffer = type { i32, i64, i32 }
%struct.sk_buff = type { i64 }

@IXGBE_RX_BUFFER_WRITE = common dso_local global i64 0, align 8
@IXGBE_XDP_TX = common dso_local global i32 0, align 4
@IXGBE_XDP_REDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_q_vector*, %struct.ixgbe_ring*, i32)* @ixgbe_clean_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_clean_rx_irq(%struct.ixgbe_q_vector* %0, %struct.ixgbe_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_q_vector*, align 8
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_adapter*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xdp_buff, align 8
  %13 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %14 = alloca %struct.ixgbe_rx_buffer*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ixgbe_ring*, align 8
  store %struct.ixgbe_q_vector* %0, %struct.ixgbe_q_vector** %4, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %4, align 8
  %20 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %19, i32 0, i32 1
  %21 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %20, align 8
  store %struct.ixgbe_adapter* %21, %struct.ixgbe_adapter** %9, align 8
  %22 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %23 = call i64 @ixgbe_desc_unused(%struct.ixgbe_ring* %22)
  store i64 %23, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %25 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %12, i32 0, i32 4
  store i32* %25, i32** %26, align 8
  br label %27

27:                                               ; preds = %184, %183, %176, %3
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ult i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %201

34:                                               ; preds = %27
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @IXGBE_RX_BUFFER_WRITE, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @ixgbe_alloc_rx_buffers(%struct.ixgbe_ring* %39, i64 %40)
  store i64 0, i64* %10, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %44 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %45 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call %union.ixgbe_adv_rx_desc* @IXGBE_RX_DESC(%struct.ixgbe_ring* %43, i32 %46)
  store %union.ixgbe_adv_rx_desc* %47, %union.ixgbe_adv_rx_desc** %13, align 8
  %48 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %13, align 8
  %49 = bitcast %union.ixgbe_adv_rx_desc* %48 to %struct.TYPE_8__*
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %42
  br label %201

57:                                               ; preds = %42
  %58 = call i32 (...) @dma_rmb()
  %59 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %60 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %13, align 8
  %61 = load i32, i32* %16, align 4
  %62 = call %struct.ixgbe_rx_buffer* @ixgbe_get_rx_buffer(%struct.ixgbe_ring* %59, %union.ixgbe_adv_rx_desc* %60, %struct.sk_buff** %15, i32 %61)
  store %struct.ixgbe_rx_buffer* %62, %struct.ixgbe_rx_buffer** %14, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %64 = icmp ne %struct.sk_buff* %63, null
  br i1 %64, label %93, label %65

65:                                               ; preds = %57
  %66 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %14, align 8
  %67 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @page_address(i32 %68)
  %70 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %14, align 8
  %71 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %12, i32 0, i32 0
  store i64 %73, i64* %74, align 8
  %75 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %12, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %12, i32 0, i32 3
  store i64 %76, i64* %77, align 8
  %78 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %12, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %81 = call i64 @ixgbe_rx_offset(%struct.ixgbe_ring* %80)
  %82 = sub nsw i64 %79, %81
  %83 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %12, i32 0, i32 2
  store i64 %82, i64* %83, align 8
  %84 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %12, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %16, align 4
  %87 = zext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %12, i32 0, i32 1
  store i64 %88, i64* %89, align 8
  %90 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %91 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %92 = call %struct.sk_buff* @ixgbe_run_xdp(%struct.ixgbe_adapter* %90, %struct.ixgbe_ring* %91, %struct.xdp_buff* %12)
  store %struct.sk_buff* %92, %struct.sk_buff** %15, align 8
  br label %93

93:                                               ; preds = %65, %57
  %94 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %95 = call i64 @IS_ERR(%struct.sk_buff* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %93
  %98 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %99 = call i32 @PTR_ERR(%struct.sk_buff* %98)
  %100 = sub i32 0, %99
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @IXGBE_XDP_TX, align 4
  %103 = load i32, i32* @IXGBE_XDP_REDIR, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %101, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %97
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %11, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %11, align 4
  %111 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %112 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %14, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @ixgbe_rx_buffer_flip(%struct.ixgbe_ring* %111, %struct.ixgbe_rx_buffer* %112, i32 %113)
  br label %120

115:                                              ; preds = %97
  %116 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %14, align 8
  %117 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %115, %107
  %121 = load i32, i32* %8, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %7, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %151

126:                                              ; preds = %93
  %127 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %128 = icmp ne %struct.sk_buff* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %131 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %14, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @ixgbe_add_rx_frag(%struct.ixgbe_ring* %130, %struct.ixgbe_rx_buffer* %131, %struct.sk_buff* %132, i32 %133)
  br label %150

135:                                              ; preds = %126
  %136 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %137 = call i64 @ring_uses_build_skb(%struct.ixgbe_ring* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %141 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %14, align 8
  %142 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %13, align 8
  %143 = call %struct.sk_buff* @ixgbe_build_skb(%struct.ixgbe_ring* %140, %struct.ixgbe_rx_buffer* %141, %struct.xdp_buff* %12, %union.ixgbe_adv_rx_desc* %142)
  store %struct.sk_buff* %143, %struct.sk_buff** %15, align 8
  br label %149

144:                                              ; preds = %135
  %145 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %146 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %14, align 8
  %147 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %13, align 8
  %148 = call %struct.sk_buff* @ixgbe_construct_skb(%struct.ixgbe_ring* %145, %struct.ixgbe_rx_buffer* %146, %struct.xdp_buff* %12, %union.ixgbe_adv_rx_desc* %147)
  store %struct.sk_buff* %148, %struct.sk_buff** %15, align 8
  br label %149

149:                                              ; preds = %144, %139
  br label %150

150:                                              ; preds = %149, %129
  br label %151

151:                                              ; preds = %150, %120
  %152 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %153 = icmp ne %struct.sk_buff* %152, null
  br i1 %153, label %164, label %154

154:                                              ; preds = %151
  %155 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %156 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %14, align 8
  %161 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  br label %201

164:                                              ; preds = %151
  %165 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %166 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %14, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %168 = call i32 @ixgbe_put_rx_buffer(%struct.ixgbe_ring* %165, %struct.ixgbe_rx_buffer* %166, %struct.sk_buff* %167)
  %169 = load i64, i64* %10, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %10, align 8
  %171 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %172 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %13, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %174 = call i64 @ixgbe_is_non_eop(%struct.ixgbe_ring* %171, %union.ixgbe_adv_rx_desc* %172, %struct.sk_buff* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %164
  br label %27

177:                                              ; preds = %164
  %178 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %179 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %13, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %181 = call i64 @ixgbe_cleanup_headers(%struct.ixgbe_ring* %178, %union.ixgbe_adv_rx_desc* %179, %struct.sk_buff* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %27

184:                                              ; preds = %177
  %185 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %186 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = zext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %7, align 4
  %192 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %193 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %13, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %195 = call i32 @ixgbe_process_skb_fields(%struct.ixgbe_ring* %192, %union.ixgbe_adv_rx_desc* %193, %struct.sk_buff* %194)
  %196 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %4, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %198 = call i32 @ixgbe_rx_skb(%struct.ixgbe_q_vector* %196, %struct.sk_buff* %197)
  %199 = load i32, i32* %8, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %8, align 4
  br label %27

201:                                              ; preds = %154, %56, %27
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* @IXGBE_XDP_REDIR, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = call i32 (...) @xdp_do_flush_map()
  br label %208

208:                                              ; preds = %206, %201
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* @IXGBE_XDP_TX, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %228

213:                                              ; preds = %208
  %214 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %215 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %214, i32 0, i32 0
  %216 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %215, align 8
  %217 = call i64 (...) @smp_processor_id()
  %218 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %216, i64 %217
  %219 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %218, align 8
  store %struct.ixgbe_ring* %219, %struct.ixgbe_ring** %18, align 8
  %220 = call i32 (...) @wmb()
  %221 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %18, align 8
  %222 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %18, align 8
  %225 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @writel(i32 %223, i32 %226)
  br label %228

228:                                              ; preds = %213, %208
  %229 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %230 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %229, i32 0, i32 0
  %231 = call i32 @u64_stats_update_begin(i32* %230)
  %232 = load i32, i32* %8, align 4
  %233 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %234 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = add i32 %236, %232
  store i32 %237, i32* %235, align 4
  %238 = load i32, i32* %7, align 4
  %239 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %240 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = add i32 %242, %238
  store i32 %243, i32* %241, align 4
  %244 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %245 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %244, i32 0, i32 0
  %246 = call i32 @u64_stats_update_end(i32* %245)
  %247 = load i32, i32* %8, align 4
  %248 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %4, align 8
  %249 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = add i32 %251, %247
  store i32 %252, i32* %250, align 8
  %253 = load i32, i32* %7, align 4
  %254 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %4, align 8
  %255 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = add i32 %257, %253
  store i32 %258, i32* %256, align 4
  %259 = load i32, i32* %8, align 4
  ret i32 %259
}

declare dso_local i64 @ixgbe_desc_unused(%struct.ixgbe_ring*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ixgbe_alloc_rx_buffers(%struct.ixgbe_ring*, i64) #1

declare dso_local %union.ixgbe_adv_rx_desc* @IXGBE_RX_DESC(%struct.ixgbe_ring*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local %struct.ixgbe_rx_buffer* @ixgbe_get_rx_buffer(%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff**, i32) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i64 @ixgbe_rx_offset(%struct.ixgbe_ring*) #1

declare dso_local %struct.sk_buff* @ixgbe_run_xdp(%struct.ixgbe_adapter*, %struct.ixgbe_ring*, %struct.xdp_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @ixgbe_rx_buffer_flip(%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*, i32) #1

declare dso_local i32 @ixgbe_add_rx_frag(%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*, %struct.sk_buff*, i32) #1

declare dso_local i64 @ring_uses_build_skb(%struct.ixgbe_ring*) #1

declare dso_local %struct.sk_buff* @ixgbe_build_skb(%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*, %struct.xdp_buff*, %union.ixgbe_adv_rx_desc*) #1

declare dso_local %struct.sk_buff* @ixgbe_construct_skb(%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*, %struct.xdp_buff*, %union.ixgbe_adv_rx_desc*) #1

declare dso_local i32 @ixgbe_put_rx_buffer(%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*, %struct.sk_buff*) #1

declare dso_local i64 @ixgbe_is_non_eop(%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @ixgbe_cleanup_headers(%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @ixgbe_process_skb_fields(%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @ixgbe_rx_skb(%struct.ixgbe_q_vector*, %struct.sk_buff*) #1

declare dso_local i32 @xdp_do_flush_map(...) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
