; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_clean_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_clean_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_q_vector = type { %struct.TYPE_13__, %struct.ixgbevf_adapter* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.ixgbevf_adapter = type { %struct.ixgbevf_ring** }
%struct.ixgbevf_ring = type { i64, i32, %struct.TYPE_12__, i32, %struct.sk_buff*, %struct.TYPE_11__*, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.xdp_buff = type { i64, i64, i64, i64, i32* }
%struct.ixgbevf_rx_buffer = type { i32, i64, i32 }
%union.ixgbe_adv_rx_desc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@IXGBEVF_RX_BUFFER_WRITE = common dso_local global i64 0, align 8
@IXGBEVF_XDP_TX = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i64 0, align 8
@PACKET_MULTICAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_q_vector*, %struct.ixgbevf_ring*, i32)* @ixgbevf_clean_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_clean_rx_irq(%struct.ixgbevf_q_vector* %0, %struct.ixgbevf_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbevf_q_vector*, align 8
  %5 = alloca %struct.ixgbevf_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbevf_adapter*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xdp_buff, align 8
  %14 = alloca %struct.ixgbevf_rx_buffer*, align 8
  %15 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ixgbevf_ring*, align 8
  store %struct.ixgbevf_q_vector* %0, %struct.ixgbevf_q_vector** %4, align 8
  store %struct.ixgbevf_ring* %1, %struct.ixgbevf_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %4, align 8
  %19 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %18, i32 0, i32 1
  %20 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %19, align 8
  store %struct.ixgbevf_adapter* %20, %struct.ixgbevf_adapter** %9, align 8
  %21 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %22 = call i64 @ixgbevf_desc_unused(%struct.ixgbevf_ring* %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %23, i32 0, i32 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %11, align 8
  store i32 0, i32* %12, align 4
  %26 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %27 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 4
  store i32* %27, i32** %28, align 8
  br label %29

29:                                               ; preds = %211, %208, %176, %169, %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ult i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %221

36:                                               ; preds = %29
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @IXGBEVF_RX_BUFFER_WRITE, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @ixgbevf_alloc_rx_buffers(%struct.ixgbevf_ring* %41, i64 %42)
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %46 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %47 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call %union.ixgbe_adv_rx_desc* @IXGBEVF_RX_DESC(%struct.ixgbevf_ring* %45, i32 %48)
  store %union.ixgbe_adv_rx_desc* %49, %union.ixgbe_adv_rx_desc** %15, align 8
  %50 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %15, align 8
  %51 = bitcast %union.ixgbe_adv_rx_desc* %50 to %struct.TYPE_9__*
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %44
  br label %221

59:                                               ; preds = %44
  %60 = call i32 (...) @rmb()
  %61 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %62 = load i32, i32* %16, align 4
  %63 = call %struct.ixgbevf_rx_buffer* @ixgbevf_get_rx_buffer(%struct.ixgbevf_ring* %61, i32 %62)
  store %struct.ixgbevf_rx_buffer* %63, %struct.ixgbevf_rx_buffer** %14, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  br i1 %65, label %94, label %66

66:                                               ; preds = %59
  %67 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %14, align 8
  %68 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @page_address(i32 %69)
  %71 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %14, align 8
  %72 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 3
  store i64 %77, i64* %78, align 8
  %79 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %82 = call i64 @ixgbevf_rx_offset(%struct.ixgbevf_ring* %81)
  %83 = sub nsw i64 %80, %82
  %84 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 2
  store i64 %83, i64* %84, align 8
  %85 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %16, align 4
  %88 = zext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 1
  store i64 %89, i64* %90, align 8
  %91 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %9, align 8
  %92 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %93 = call %struct.sk_buff* @ixgbevf_run_xdp(%struct.ixgbevf_adapter* %91, %struct.ixgbevf_ring* %92, %struct.xdp_buff* %13)
  store %struct.sk_buff* %93, %struct.sk_buff** %11, align 8
  br label %94

94:                                               ; preds = %66, %59
  %95 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %96 = call i64 @IS_ERR(%struct.sk_buff* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %94
  %99 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %100 = call i32 @PTR_ERR(%struct.sk_buff* %99)
  %101 = load i32, i32* @IXGBEVF_XDP_TX, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  store i32 1, i32* %12, align 4
  %105 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %106 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %14, align 8
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @ixgbevf_rx_buffer_flip(%struct.ixgbevf_ring* %105, %struct.ixgbevf_rx_buffer* %106, i32 %107)
  br label %114

109:                                              ; preds = %98
  %110 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %14, align 8
  %111 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i32, i32* %8, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %7, align 4
  %119 = add i32 %118, %117
  store i32 %119, i32* %7, align 4
  br label %145

120:                                              ; preds = %94
  %121 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %122 = icmp ne %struct.sk_buff* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %125 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %14, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @ixgbevf_add_rx_frag(%struct.ixgbevf_ring* %124, %struct.ixgbevf_rx_buffer* %125, %struct.sk_buff* %126, i32 %127)
  br label %144

129:                                              ; preds = %120
  %130 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %131 = call i64 @ring_uses_build_skb(%struct.ixgbevf_ring* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %135 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %14, align 8
  %136 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %15, align 8
  %137 = call %struct.sk_buff* @ixgbevf_build_skb(%struct.ixgbevf_ring* %134, %struct.ixgbevf_rx_buffer* %135, %struct.xdp_buff* %13, %union.ixgbe_adv_rx_desc* %136)
  store %struct.sk_buff* %137, %struct.sk_buff** %11, align 8
  br label %143

138:                                              ; preds = %129
  %139 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %140 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %14, align 8
  %141 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %15, align 8
  %142 = call %struct.sk_buff* @ixgbevf_construct_skb(%struct.ixgbevf_ring* %139, %struct.ixgbevf_rx_buffer* %140, %struct.xdp_buff* %13, %union.ixgbe_adv_rx_desc* %141)
  store %struct.sk_buff* %142, %struct.sk_buff** %11, align 8
  br label %143

143:                                              ; preds = %138, %133
  br label %144

144:                                              ; preds = %143, %123
  br label %145

145:                                              ; preds = %144, %114
  %146 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %147 = icmp ne %struct.sk_buff* %146, null
  br i1 %147, label %158, label %148

148:                                              ; preds = %145
  %149 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %150 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 8
  %154 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %14, align 8
  %155 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  br label %221

158:                                              ; preds = %145
  %159 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %160 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %14, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %162 = call i32 @ixgbevf_put_rx_buffer(%struct.ixgbevf_ring* %159, %struct.ixgbevf_rx_buffer* %160, %struct.sk_buff* %161)
  %163 = load i64, i64* %10, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %10, align 8
  %165 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %166 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %15, align 8
  %167 = call i64 @ixgbevf_is_non_eop(%struct.ixgbevf_ring* %165, %union.ixgbe_adv_rx_desc* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %158
  br label %29

170:                                              ; preds = %158
  %171 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %172 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %15, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %174 = call i64 @ixgbevf_cleanup_headers(%struct.ixgbevf_ring* %171, %union.ixgbe_adv_rx_desc* %172, %struct.sk_buff* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  br label %29

177:                                              ; preds = %170
  %178 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %179 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = zext i32 %181 to i64
  %183 = add nsw i64 %182, %180
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %7, align 4
  %185 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %186 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @PACKET_BROADCAST, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %196, label %190

190:                                              ; preds = %177
  %191 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %192 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @PACKET_MULTICAST, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %190, %177
  %197 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %198 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %197, i32 0, i32 5
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %203 = call %struct.TYPE_14__* @eth_hdr(%struct.sk_buff* %202)
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @ether_addr_equal(i32 %201, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %196
  %209 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %210 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %209)
  br label %29

211:                                              ; preds = %196, %190
  %212 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %213 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %15, align 8
  %214 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %215 = call i32 @ixgbevf_process_skb_fields(%struct.ixgbevf_ring* %212, %union.ixgbe_adv_rx_desc* %213, %struct.sk_buff* %214)
  %216 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %4, align 8
  %217 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %218 = call i32 @ixgbevf_rx_skb(%struct.ixgbevf_q_vector* %216, %struct.sk_buff* %217)
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  %219 = load i32, i32* %8, align 4
  %220 = add i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %29

221:                                              ; preds = %148, %58, %29
  %222 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %223 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %224 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %223, i32 0, i32 4
  store %struct.sk_buff* %222, %struct.sk_buff** %224, align 8
  %225 = load i32, i32* %12, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %221
  %228 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %9, align 8
  %229 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %228, i32 0, i32 0
  %230 = load %struct.ixgbevf_ring**, %struct.ixgbevf_ring*** %229, align 8
  %231 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %232 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %230, i64 %233
  %235 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %234, align 8
  store %struct.ixgbevf_ring* %235, %struct.ixgbevf_ring** %17, align 8
  %236 = call i32 (...) @wmb()
  %237 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %17, align 8
  %238 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %17, align 8
  %239 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @ixgbevf_write_tail(%struct.ixgbevf_ring* %237, i32 %240)
  br label %242

242:                                              ; preds = %227, %221
  %243 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %244 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %243, i32 0, i32 1
  %245 = call i32 @u64_stats_update_begin(i32* %244)
  %246 = load i32, i32* %8, align 4
  %247 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %248 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = add i32 %250, %246
  store i32 %251, i32* %249, align 4
  %252 = load i32, i32* %7, align 4
  %253 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %254 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = add i32 %256, %252
  store i32 %257, i32* %255, align 4
  %258 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %259 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %258, i32 0, i32 1
  %260 = call i32 @u64_stats_update_end(i32* %259)
  %261 = load i32, i32* %8, align 4
  %262 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %4, align 8
  %263 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = add i32 %265, %261
  store i32 %266, i32* %264, align 8
  %267 = load i32, i32* %7, align 4
  %268 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %4, align 8
  %269 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = add i32 %271, %267
  store i32 %272, i32* %270, align 4
  %273 = load i32, i32* %8, align 4
  ret i32 %273
}

declare dso_local i64 @ixgbevf_desc_unused(%struct.ixgbevf_ring*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ixgbevf_alloc_rx_buffers(%struct.ixgbevf_ring*, i64) #1

declare dso_local %union.ixgbe_adv_rx_desc* @IXGBEVF_RX_DESC(%struct.ixgbevf_ring*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local %struct.ixgbevf_rx_buffer* @ixgbevf_get_rx_buffer(%struct.ixgbevf_ring*, i32) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i64 @ixgbevf_rx_offset(%struct.ixgbevf_ring*) #1

declare dso_local %struct.sk_buff* @ixgbevf_run_xdp(%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*, %struct.xdp_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @ixgbevf_rx_buffer_flip(%struct.ixgbevf_ring*, %struct.ixgbevf_rx_buffer*, i32) #1

declare dso_local i32 @ixgbevf_add_rx_frag(%struct.ixgbevf_ring*, %struct.ixgbevf_rx_buffer*, %struct.sk_buff*, i32) #1

declare dso_local i64 @ring_uses_build_skb(%struct.ixgbevf_ring*) #1

declare dso_local %struct.sk_buff* @ixgbevf_build_skb(%struct.ixgbevf_ring*, %struct.ixgbevf_rx_buffer*, %struct.xdp_buff*, %union.ixgbe_adv_rx_desc*) #1

declare dso_local %struct.sk_buff* @ixgbevf_construct_skb(%struct.ixgbevf_ring*, %struct.ixgbevf_rx_buffer*, %struct.xdp_buff*, %union.ixgbe_adv_rx_desc*) #1

declare dso_local i32 @ixgbevf_put_rx_buffer(%struct.ixgbevf_ring*, %struct.ixgbevf_rx_buffer*, %struct.sk_buff*) #1

declare dso_local i64 @ixgbevf_is_non_eop(%struct.ixgbevf_ring*, %union.ixgbe_adv_rx_desc*) #1

declare dso_local i64 @ixgbevf_cleanup_headers(%struct.ixgbevf_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local %struct.TYPE_14__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @ixgbevf_process_skb_fields(%struct.ixgbevf_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @ixgbevf_rx_skb(%struct.ixgbevf_q_vector*, %struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ixgbevf_write_tail(%struct.ixgbevf_ring*, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
