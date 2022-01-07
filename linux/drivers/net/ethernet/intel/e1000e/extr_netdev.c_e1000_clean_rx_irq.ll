; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_clean_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_clean_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { i32, i32, %struct.e1000_buffer*, %struct.e1000_adapter* }
%struct.e1000_buffer = type { %struct.sk_buff*, i64 }
%struct.sk_buff = type { %union.e1000_rx_desc_extended* }
%union.e1000_rx_desc_extended = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.e1000_adapter = type { i32, i32, i32, i32 (%struct.e1000_ring*, i32, i32)*, i32, i32, %struct.e1000_hw, %struct.pci_dev*, %struct.net_device* }
%struct.e1000_hw = type { i32 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }

@E1000_RXD_STAT_DD = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@E1000_RXD_STAT_EOP = common dso_local global i32 0, align 4
@FLAG2_IS_DISCARDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Receive packet consumed multiple buffers\0A\00", align 1
@E1000_RXDEXT_ERR_FRAME_ERR_MASK = common dso_local global i32 0, align 4
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@FLAG2_CRC_STRIPPING = common dso_local global i32 0, align 4
@NETIF_F_RXFCS = common dso_local global i32 0, align 4
@copybreak = common dso_local global i32 0, align 4
@E1000_RX_BUFFER_WRITE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_ring*, i32*, i32)* @e1000_clean_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_clean_rx_irq(%struct.e1000_ring* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_ring*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.e1000_hw*, align 8
  %11 = alloca %union.e1000_rx_desc_extended*, align 8
  %12 = alloca %union.e1000_rx_desc_extended*, align 8
  %13 = alloca %struct.e1000_buffer*, align 8
  %14 = alloca %struct.e1000_buffer*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.sk_buff*, align 8
  %23 = alloca %struct.sk_buff*, align 8
  store %struct.e1000_ring* %0, %struct.e1000_ring** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %24 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %24, i32 0, i32 3
  %26 = load %struct.e1000_adapter*, %struct.e1000_adapter** %25, align 8
  store %struct.e1000_adapter* %26, %struct.e1000_adapter** %7, align 8
  %27 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %28 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %27, i32 0, i32 8
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  store %struct.net_device* %29, %struct.net_device** %8, align 8
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %31 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %30, i32 0, i32 7
  %32 = load %struct.pci_dev*, %struct.pci_dev** %31, align 8
  store %struct.pci_dev* %32, %struct.pci_dev** %9, align 8
  %33 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %34 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %33, i32 0, i32 6
  store %struct.e1000_hw* %34, %struct.e1000_hw** %10, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %35 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %17, align 4
  %38 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %39 = load i32, i32* %17, align 4
  %40 = call %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %38, i32 %39)
  store %union.e1000_rx_desc_extended* %40, %union.e1000_rx_desc_extended** %11, align 8
  %41 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %11, align 8
  %42 = bitcast %union.e1000_rx_desc_extended* %41 to %struct.TYPE_8__*
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %48 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %47, i32 0, i32 2
  %49 = load %struct.e1000_buffer*, %struct.e1000_buffer** %48, align 8
  %50 = load i32, i32* %17, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %49, i64 %51
  store %struct.e1000_buffer* %52, %struct.e1000_buffer** %13, align 8
  br label %53

53:                                               ; preds = %285, %3
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @E1000_RXD_STAT_DD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %294

58:                                               ; preds = %53
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %294

64:                                               ; preds = %58
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = call i32 (...) @dma_rmb()
  %69 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %70 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %69, i32 0, i32 0
  %71 = load %struct.sk_buff*, %struct.sk_buff** %70, align 8
  store %struct.sk_buff* %71, %struct.sk_buff** %22, align 8
  %72 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %73 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %72, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %75, align 8
  %77 = load i32, i32* @NET_IP_ALIGN, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 0, %78
  %80 = getelementptr inbounds %union.e1000_rx_desc_extended, %union.e1000_rx_desc_extended* %76, i64 %79
  %81 = call i32 @prefetch(%union.e1000_rx_desc_extended* %80)
  %82 = load i32, i32* %17, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %86 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %64
  store i32 0, i32* %17, align 4
  br label %90

90:                                               ; preds = %89, %64
  %91 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %92 = load i32, i32* %17, align 4
  %93 = call %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %91, i32 %92)
  store %union.e1000_rx_desc_extended* %93, %union.e1000_rx_desc_extended** %12, align 8
  %94 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %12, align 8
  %95 = call i32 @prefetch(%union.e1000_rx_desc_extended* %94)
  %96 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %97 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %96, i32 0, i32 2
  %98 = load %struct.e1000_buffer*, %struct.e1000_buffer** %97, align 8
  %99 = load i32, i32* %17, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %98, i64 %100
  store %struct.e1000_buffer* %101, %struct.e1000_buffer** %14, align 8
  store i32 1, i32* %19, align 4
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %18, align 4
  %104 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 0
  %106 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %107 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %110 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %113 = call i32 @dma_unmap_single(i32* %105, i64 %108, i32 %111, i32 %112)
  %114 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %115 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %11, align 8
  %117 = bitcast %union.e1000_rx_desc_extended* %116 to %struct.TYPE_8__*
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le16_to_cpu(i32 %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %90
  %131 = load i32, i32* @FLAG2_IS_DISCARDING, align 4
  %132 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %133 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %130, %90
  %137 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %138 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @FLAG2_IS_DISCARDING, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %136
  %144 = call i32 @e_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %145 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %146 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %147 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %146, i32 0, i32 0
  store %struct.sk_buff* %145, %struct.sk_buff** %147, align 8
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %143
  %153 = load i32, i32* @FLAG2_IS_DISCARDING, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %156 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %152, %143
  br label %266

160:                                              ; preds = %136
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* @E1000_RXDEXT_ERR_FRAME_ERR_MASK, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %160
  %166 = load %struct.net_device*, %struct.net_device** %8, align 8
  %167 = getelementptr inbounds %struct.net_device, %struct.net_device* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @NETIF_F_RXALL, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  br label %173

173:                                              ; preds = %165, %160
  %174 = phi i1 [ false, %160 ], [ %172, %165 ]
  %175 = zext i1 %174 to i32
  %176 = call i64 @unlikely(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %180 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %181 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %180, i32 0, i32 0
  store %struct.sk_buff* %179, %struct.sk_buff** %181, align 8
  br label %266

182:                                              ; preds = %173
  %183 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %184 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @FLAG2_CRC_STRIPPING, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %203, label %189

189:                                              ; preds = %182
  %190 = load %struct.net_device*, %struct.net_device** %8, align 8
  %191 = getelementptr inbounds %struct.net_device, %struct.net_device* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @NETIF_F_RXFCS, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %189
  %197 = load i32, i32* %20, align 4
  %198 = sub i32 %197, 4
  store i32 %198, i32* %20, align 4
  br label %202

199:                                              ; preds = %189
  %200 = load i32, i32* %15, align 4
  %201 = sub nsw i32 %200, 4
  store i32 %201, i32* %15, align 4
  br label %202

202:                                              ; preds = %199, %196
  br label %203

203:                                              ; preds = %202, %182
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* %20, align 4
  %206 = add i32 %205, %204
  store i32 %206, i32* %20, align 4
  %207 = load i32, i32* %21, align 4
  %208 = add i32 %207, 1
  store i32 %208, i32* %21, align 4
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* @copybreak, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %239

212:                                              ; preds = %203
  %213 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %214 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %213, i32 0, i32 4
  %215 = load i32, i32* %15, align 4
  %216 = call %struct.sk_buff* @napi_alloc_skb(i32* %214, i32 %215)
  store %struct.sk_buff* %216, %struct.sk_buff** %23, align 8
  %217 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %218 = icmp ne %struct.sk_buff* %217, null
  br i1 %218, label %219, label %238

219:                                              ; preds = %212
  %220 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %221 = load i32, i32* @NET_IP_ALIGN, align 4
  %222 = sub nsw i32 0, %221
  %223 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %224 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %223, i32 0, i32 0
  %225 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %224, align 8
  %226 = load i32, i32* @NET_IP_ALIGN, align 4
  %227 = sext i32 %226 to i64
  %228 = sub i64 0, %227
  %229 = getelementptr inbounds %union.e1000_rx_desc_extended, %union.e1000_rx_desc_extended* %225, i64 %228
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* @NET_IP_ALIGN, align 4
  %232 = add nsw i32 %230, %231
  %233 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %220, i32 %222, %union.e1000_rx_desc_extended* %229, i32 %232)
  %234 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %235 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %236 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %235, i32 0, i32 0
  store %struct.sk_buff* %234, %struct.sk_buff** %236, align 8
  %237 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  store %struct.sk_buff* %237, %struct.sk_buff** %22, align 8
  br label %238

238:                                              ; preds = %219, %212
  br label %239

239:                                              ; preds = %238, %203
  %240 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %241 = load i32, i32* %15, align 4
  %242 = call i32 @skb_put(%struct.sk_buff* %240, i32 %241)
  %243 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %244 = load i32, i32* %16, align 4
  %245 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %246 = call i32 @e1000_rx_checksum(%struct.e1000_adapter* %243, i32 %244, %struct.sk_buff* %245)
  %247 = load %struct.net_device*, %struct.net_device** %8, align 8
  %248 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %11, align 8
  %249 = bitcast %union.e1000_rx_desc_extended* %248 to %struct.TYPE_8__*
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %255 = call i32 @e1000_rx_hash(%struct.net_device* %247, i32 %253, %struct.sk_buff* %254)
  %256 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %257 = load %struct.net_device*, %struct.net_device** %8, align 8
  %258 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %259 = load i32, i32* %16, align 4
  %260 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %11, align 8
  %261 = bitcast %union.e1000_rx_desc_extended* %260 to %struct.TYPE_8__*
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @e1000_receive_skb(%struct.e1000_adapter* %256, %struct.net_device* %257, %struct.sk_buff* %258, i32 %259, i32 %264)
  br label %266

266:                                              ; preds = %239, %178, %159
  %267 = call i32 @cpu_to_le32(i32 -256)
  %268 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %11, align 8
  %269 = bitcast %union.e1000_rx_desc_extended* %268 to %struct.TYPE_8__*
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, %267
  store i32 %273, i32* %271, align 4
  %274 = load i32, i32* %18, align 4
  %275 = load i32, i32* @E1000_RX_BUFFER_WRITE, align 4
  %276 = icmp sge i32 %274, %275
  br i1 %276, label %277, label %285

277:                                              ; preds = %266
  %278 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %279 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %278, i32 0, i32 3
  %280 = load i32 (%struct.e1000_ring*, i32, i32)*, i32 (%struct.e1000_ring*, i32, i32)** %279, align 8
  %281 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %282 = load i32, i32* %18, align 4
  %283 = load i32, i32* @GFP_ATOMIC, align 4
  %284 = call i32 %280(%struct.e1000_ring* %281, i32 %282, i32 %283)
  store i32 0, i32* %18, align 4
  br label %285

285:                                              ; preds = %277, %266
  %286 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %12, align 8
  store %union.e1000_rx_desc_extended* %286, %union.e1000_rx_desc_extended** %11, align 8
  %287 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  store %struct.e1000_buffer* %287, %struct.e1000_buffer** %13, align 8
  %288 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %11, align 8
  %289 = bitcast %union.e1000_rx_desc_extended* %288 to %struct.TYPE_8__*
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @le32_to_cpu(i32 %292)
  store i32 %293, i32* %16, align 4
  br label %53

294:                                              ; preds = %63, %53
  %295 = load i32, i32* %17, align 4
  %296 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %297 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  %298 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %299 = call i32 @e1000_desc_unused(%struct.e1000_ring* %298)
  store i32 %299, i32* %18, align 4
  %300 = load i32, i32* %18, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %294
  %303 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %304 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %303, i32 0, i32 3
  %305 = load i32 (%struct.e1000_ring*, i32, i32)*, i32 (%struct.e1000_ring*, i32, i32)** %304, align 8
  %306 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %307 = load i32, i32* %18, align 4
  %308 = load i32, i32* @GFP_ATOMIC, align 4
  %309 = call i32 %305(%struct.e1000_ring* %306, i32 %307, i32 %308)
  br label %310

310:                                              ; preds = %302, %294
  %311 = load i32, i32* %20, align 4
  %312 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %313 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = add i32 %314, %311
  store i32 %315, i32* %313, align 4
  %316 = load i32, i32* %21, align 4
  %317 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %318 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = add i32 %319, %316
  store i32 %320, i32* %318, align 8
  %321 = load i32, i32* %19, align 4
  ret i32 %321
}

declare dso_local %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @prefetch(%union.e1000_rx_desc_extended*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local %struct.sk_buff* @napi_alloc_skb(i32*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, %union.e1000_rx_desc_extended*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @e1000_rx_checksum(%struct.e1000_adapter*, i32, %struct.sk_buff*) #1

declare dso_local i32 @e1000_rx_hash(%struct.net_device*, i32, %struct.sk_buff*) #1

declare dso_local i32 @e1000_receive_skb(%struct.e1000_adapter*, %struct.net_device*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @e1000_desc_unused(%struct.e1000_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
