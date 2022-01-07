; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_clean_rx_irq_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_clean_rx_irq_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.e1000_rx_desc_packet_split = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.e1000_ring = type { i32, i32, %struct.e1000_buffer*, %struct.e1000_adapter* }
%struct.e1000_buffer = type { %struct.sk_buff*, %struct.e1000_ps_page*, i64 }
%struct.sk_buff = type { i32, i64, i32, %union.e1000_rx_desc_packet_split* }
%struct.e1000_ps_page = type { i32*, i64 }
%struct.e1000_adapter = type { i32, i32, i32, i32, i32 (%struct.e1000_ring*, i32, i32)*, i32, %struct.pci_dev*, %struct.net_device*, %struct.e1000_hw }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.e1000_hw = type { i32 }

@E1000_RXD_STAT_DD = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global %union.e1000_rx_desc_packet_split* null, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@E1000_RXD_STAT_EOP = common dso_local global i32 0, align 4
@FLAG2_IS_DISCARDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Packet Split buffers didn't pick up the full packet\0A\00", align 1
@E1000_RXDEXT_ERR_FRAME_ERR_MASK = common dso_local global i32 0, align 4
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Last part of the packet spanning multiple descriptors\0A\00", align 1
@copybreak = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@FLAG2_CRC_STRIPPING = common dso_local global i32 0, align 4
@NETIF_F_RXFCS = common dso_local global i32 0, align 4
@PS_PAGE_BUFFERS = common dso_local global i32 0, align 4
@E1000_RXDPS_HDRSTAT_HDRSP = common dso_local global i32 0, align 4
@E1000_RX_BUFFER_WRITE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_ring*, i32*, i32)* @e1000_clean_rx_irq_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_clean_rx_irq_ps(%struct.e1000_ring* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_ring*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca %struct.e1000_hw*, align 8
  %9 = alloca %union.e1000_rx_desc_packet_split*, align 8
  %10 = alloca %union.e1000_rx_desc_packet_split*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca %struct.e1000_buffer*, align 8
  %14 = alloca %struct.e1000_buffer*, align 8
  %15 = alloca %struct.e1000_ps_page*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store %struct.e1000_ring* %0, %struct.e1000_ring** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %27 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %27, i32 0, i32 3
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %28, align 8
  store %struct.e1000_adapter* %29, %struct.e1000_adapter** %7, align 8
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %31 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %30, i32 0, i32 8
  store %struct.e1000_hw* %31, %struct.e1000_hw** %8, align 8
  %32 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %33 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %32, i32 0, i32 7
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  store %struct.net_device* %34, %struct.net_device** %11, align 8
  %35 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %36 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %35, i32 0, i32 6
  %37 = load %struct.pci_dev*, %struct.pci_dev** %36, align 8
  store %struct.pci_dev* %37, %struct.pci_dev** %12, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %38 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %17, align 4
  %41 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %42 = load i32, i32* %17, align 4
  %43 = call %union.e1000_rx_desc_packet_split* @E1000_RX_DESC_PS(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %41, i32 %42)
  store %union.e1000_rx_desc_packet_split* %43, %union.e1000_rx_desc_packet_split** %9, align 8
  %44 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %45 = bitcast %union.e1000_rx_desc_packet_split* %44 to %struct.TYPE_10__*
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @le32_to_cpu(i32 %48)
  store i32 %49, i32* %20, align 4
  %50 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %51 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %50, i32 0, i32 2
  %52 = load %struct.e1000_buffer*, %struct.e1000_buffer** %51, align 8
  %53 = load i32, i32* %17, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %52, i64 %54
  store %struct.e1000_buffer* %55, %struct.e1000_buffer** %13, align 8
  br label %56

56:                                               ; preds = %423, %3
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* @E1000_RXD_STAT_DD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %432

61:                                               ; preds = %56
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %432

67:                                               ; preds = %61
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %72 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %71, i32 0, i32 0
  %73 = load %struct.sk_buff*, %struct.sk_buff** %72, align 8
  store %struct.sk_buff* %73, %struct.sk_buff** %16, align 8
  %74 = call i32 (...) @dma_rmb()
  %75 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 3
  %77 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %76, align 8
  %78 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** @NET_IP_ALIGN, align 8
  %79 = ptrtoint %union.e1000_rx_desc_packet_split* %77 to i64
  %80 = ptrtoint %union.e1000_rx_desc_packet_split* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 40
  %83 = inttoptr i64 %82 to %union.e1000_rx_desc_packet_split*
  %84 = call i32 @prefetch(%union.e1000_rx_desc_packet_split* %83)
  %85 = load i32, i32* %17, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %89 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %67
  store i32 0, i32* %17, align 4
  br label %93

93:                                               ; preds = %92, %67
  %94 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %95 = load i32, i32* %17, align 4
  %96 = call %union.e1000_rx_desc_packet_split* @E1000_RX_DESC_PS(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %94, i32 %95)
  store %union.e1000_rx_desc_packet_split* %96, %union.e1000_rx_desc_packet_split** %10, align 8
  %97 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %10, align 8
  %98 = call i32 @prefetch(%union.e1000_rx_desc_packet_split* %97)
  %99 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %100 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %99, i32 0, i32 2
  %101 = load %struct.e1000_buffer*, %struct.e1000_buffer** %100, align 8
  %102 = load i32, i32* %17, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %101, i64 %103
  store %struct.e1000_buffer* %104, %struct.e1000_buffer** %14, align 8
  store i32 1, i32* %22, align 4
  %105 = load i32, i32* %21, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %21, align 4
  %107 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 0
  %109 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %110 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %113 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %116 = call i32 @dma_unmap_single(i32* %108, i64 %111, i32 %114, i32 %115)
  %117 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %118 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %93
  %124 = load i32, i32* @FLAG2_IS_DISCARDING, align 4
  %125 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %126 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %93
  %130 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %131 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @FLAG2_IS_DISCARDING, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %129
  %137 = call i32 @e_dbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %138 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %139 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %138)
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %136
  %145 = load i32, i32* @FLAG2_IS_DISCARDING, align 4
  %146 = xor i32 %145, -1
  %147 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %148 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %144, %136
  br label %402

152:                                              ; preds = %129
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* @E1000_RXDEXT_ERR_FRAME_ERR_MASK, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = load %struct.net_device*, %struct.net_device** %11, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @NETIF_F_RXALL, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  br label %165

165:                                              ; preds = %157, %152
  %166 = phi i1 [ false, %152 ], [ %164, %157 ]
  %167 = zext i1 %166 to i32
  %168 = call i64 @unlikely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %172 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %171)
  br label %402

173:                                              ; preds = %165
  %174 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %175 = bitcast %union.e1000_rx_desc_packet_split* %174 to %struct.TYPE_10__*
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @le16_to_cpu(i32 %178)
  store i32 %179, i32* %19, align 4
  %180 = load i32, i32* %19, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %173
  %183 = call i32 @e_dbg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %184 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %185 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %184)
  br label %402

186:                                              ; preds = %173
  %187 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %188 = load i32, i32* %19, align 4
  %189 = call i32 @skb_put(%struct.sk_buff* %187, i32 %188)
  %190 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %191 = bitcast %union.e1000_rx_desc_packet_split* %190 to %struct.TYPE_10__*
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @le16_to_cpu(i32 %196)
  store i32 %197, i32* %25, align 4
  %198 = load i32, i32* %25, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %265

200:                                              ; preds = %186
  %201 = load i32, i32* %25, align 4
  %202 = load i32, i32* @copybreak, align 4
  %203 = icmp sle i32 %201, %202
  br i1 %203, label %204, label %265

204:                                              ; preds = %200
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %25, align 4
  %207 = add nsw i32 %205, %206
  %208 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %209 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp sle i32 %207, %210
  br i1 %211, label %212, label %265

212:                                              ; preds = %204
  %213 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %214 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %213, i32 0, i32 1
  %215 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %214, align 8
  %216 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %215, i64 0
  store %struct.e1000_ps_page* %216, %struct.e1000_ps_page** %15, align 8
  %217 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %218 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %217, i32 0, i32 0
  %219 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %15, align 8
  %220 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @PAGE_SIZE, align 8
  %223 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %224 = call i32 @dma_sync_single_for_cpu(i32* %218, i64 %221, i64 %222, i32 %223)
  %225 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %15, align 8
  %226 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = call i32* @kmap_atomic(i32* %227)
  store i32* %228, i32** %26, align 8
  %229 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %230 = call i32 @skb_tail_pointer(%struct.sk_buff* %229)
  %231 = load i32*, i32** %26, align 8
  %232 = load i32, i32* %25, align 4
  %233 = call i32 @memcpy(i32 %230, i32* %231, i32 %232)
  %234 = load i32*, i32** %26, align 8
  %235 = call i32 @kunmap_atomic(i32* %234)
  %236 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %237 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %236, i32 0, i32 0
  %238 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %15, align 8
  %239 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @PAGE_SIZE, align 8
  %242 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %243 = call i32 @dma_sync_single_for_device(i32* %237, i64 %240, i64 %241, i32 %242)
  %244 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %245 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @FLAG2_CRC_STRIPPING, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %261, label %250

250:                                              ; preds = %212
  %251 = load %struct.net_device*, %struct.net_device** %11, align 8
  %252 = getelementptr inbounds %struct.net_device, %struct.net_device* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @NETIF_F_RXFCS, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %250
  %258 = load i32, i32* %25, align 4
  %259 = sub nsw i32 %258, 4
  store i32 %259, i32* %25, align 4
  br label %260

260:                                              ; preds = %257, %250
  br label %261

261:                                              ; preds = %260, %212
  %262 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %263 = load i32, i32* %25, align 4
  %264 = call i32 @skb_put(%struct.sk_buff* %262, i32 %263)
  br label %354

265:                                              ; preds = %204, %200, %186
  store i32 0, i32* %18, align 4
  br label %266

266:                                              ; preds = %328, %265
  %267 = load i32, i32* %18, align 4
  %268 = load i32, i32* @PS_PAGE_BUFFERS, align 4
  %269 = icmp ult i32 %267, %268
  br i1 %269, label %270, label %331

270:                                              ; preds = %266
  %271 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %272 = bitcast %union.e1000_rx_desc_packet_split* %271 to %struct.TYPE_10__*
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %18, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @le16_to_cpu(i32 %279)
  store i32 %280, i32* %19, align 4
  %281 = load i32, i32* %19, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %270
  br label %331

284:                                              ; preds = %270
  %285 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %286 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %285, i32 0, i32 1
  %287 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %286, align 8
  %288 = load i32, i32* %18, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %287, i64 %289
  store %struct.e1000_ps_page* %290, %struct.e1000_ps_page** %15, align 8
  %291 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %292 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %291, i32 0, i32 0
  %293 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %15, align 8
  %294 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @PAGE_SIZE, align 8
  %297 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %298 = call i32 @dma_unmap_page(i32* %292, i64 %295, i64 %296, i32 %297)
  %299 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %15, align 8
  %300 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %299, i32 0, i32 1
  store i64 0, i64* %300, align 8
  %301 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %302 = load i32, i32* %18, align 4
  %303 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %15, align 8
  %304 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %19, align 4
  %307 = call i32 @skb_fill_page_desc(%struct.sk_buff* %301, i32 %302, i32* %305, i32 0, i32 %306)
  %308 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %15, align 8
  %309 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %308, i32 0, i32 0
  store i32* null, i32** %309, align 8
  %310 = load i32, i32* %19, align 4
  %311 = sext i32 %310 to i64
  %312 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %313 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = add nsw i64 %314, %311
  store i64 %315, i64* %313, align 8
  %316 = load i32, i32* %19, align 4
  %317 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %318 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = add nsw i32 %319, %316
  store i32 %320, i32* %318, align 8
  %321 = load i64, i64* @PAGE_SIZE, align 8
  %322 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %323 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = sext i32 %324 to i64
  %326 = add nsw i64 %325, %321
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %323, align 8
  br label %328

328:                                              ; preds = %284
  %329 = load i32, i32* %18, align 4
  %330 = add i32 %329, 1
  store i32 %330, i32* %18, align 4
  br label %266

331:                                              ; preds = %283, %266
  %332 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %333 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @FLAG2_CRC_STRIPPING, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %353, label %338

338:                                              ; preds = %331
  %339 = load %struct.net_device*, %struct.net_device** %11, align 8
  %340 = getelementptr inbounds %struct.net_device, %struct.net_device* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @NETIF_F_RXFCS, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %352, label %345

345:                                              ; preds = %338
  %346 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %347 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %348 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = sub nsw i64 %349, 4
  %351 = call i32 @pskb_trim(%struct.sk_buff* %346, i64 %350)
  br label %352

352:                                              ; preds = %345, %338
  br label %353

353:                                              ; preds = %352, %331
  br label %354

354:                                              ; preds = %353, %261
  %355 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %356 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = load i32, i32* %23, align 4
  %359 = zext i32 %358 to i64
  %360 = add nsw i64 %359, %357
  %361 = trunc i64 %360 to i32
  store i32 %361, i32* %23, align 4
  %362 = load i32, i32* %24, align 4
  %363 = add i32 %362, 1
  store i32 %363, i32* %24, align 4
  %364 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %365 = load i32, i32* %20, align 4
  %366 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %367 = call i32 @e1000_rx_checksum(%struct.e1000_adapter* %364, i32 %365, %struct.sk_buff* %366)
  %368 = load %struct.net_device*, %struct.net_device** %11, align 8
  %369 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %370 = bitcast %union.e1000_rx_desc_packet_split* %369 to %struct.TYPE_10__*
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %376 = call i32 @e1000_rx_hash(%struct.net_device* %368, i32 %374, %struct.sk_buff* %375)
  %377 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %378 = bitcast %union.e1000_rx_desc_packet_split* %377 to %struct.TYPE_10__*
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* @E1000_RXDPS_HDRSTAT_HDRSP, align 4
  %383 = call i32 @cpu_to_le16(i32 %382)
  %384 = and i32 %381, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %354
  %387 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %388 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %387, i32 0, i32 5
  %389 = load i32, i32* %388, align 8
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %388, align 8
  br label %391

391:                                              ; preds = %386, %354
  %392 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %393 = load %struct.net_device*, %struct.net_device** %11, align 8
  %394 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %395 = load i32, i32* %20, align 4
  %396 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %397 = bitcast %union.e1000_rx_desc_packet_split* %396 to %struct.TYPE_10__*
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @e1000_receive_skb(%struct.e1000_adapter* %392, %struct.net_device* %393, %struct.sk_buff* %394, i32 %395, i32 %400)
  br label %402

402:                                              ; preds = %391, %182, %170, %151
  %403 = call i32 @cpu_to_le32(i32 -256)
  %404 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %405 = bitcast %union.e1000_rx_desc_packet_split* %404 to %struct.TYPE_10__*
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = and i32 %408, %403
  store i32 %409, i32* %407, align 8
  %410 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %411 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %410, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %411, align 8
  %412 = load i32, i32* %21, align 4
  %413 = load i32, i32* @E1000_RX_BUFFER_WRITE, align 4
  %414 = icmp sge i32 %412, %413
  br i1 %414, label %415, label %423

415:                                              ; preds = %402
  %416 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %417 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %416, i32 0, i32 4
  %418 = load i32 (%struct.e1000_ring*, i32, i32)*, i32 (%struct.e1000_ring*, i32, i32)** %417, align 8
  %419 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %420 = load i32, i32* %21, align 4
  %421 = load i32, i32* @GFP_ATOMIC, align 4
  %422 = call i32 %418(%struct.e1000_ring* %419, i32 %420, i32 %421)
  store i32 0, i32* %21, align 4
  br label %423

423:                                              ; preds = %415, %402
  %424 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %10, align 8
  store %union.e1000_rx_desc_packet_split* %424, %union.e1000_rx_desc_packet_split** %9, align 8
  %425 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  store %struct.e1000_buffer* %425, %struct.e1000_buffer** %13, align 8
  %426 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %427 = bitcast %union.e1000_rx_desc_packet_split* %426 to %struct.TYPE_10__*
  %428 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = call i32 @le32_to_cpu(i32 %430)
  store i32 %431, i32* %20, align 4
  br label %56

432:                                              ; preds = %66, %56
  %433 = load i32, i32* %17, align 4
  %434 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %435 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %434, i32 0, i32 0
  store i32 %433, i32* %435, align 8
  %436 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %437 = call i32 @e1000_desc_unused(%struct.e1000_ring* %436)
  store i32 %437, i32* %21, align 4
  %438 = load i32, i32* %21, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %448

440:                                              ; preds = %432
  %441 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %442 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %441, i32 0, i32 4
  %443 = load i32 (%struct.e1000_ring*, i32, i32)*, i32 (%struct.e1000_ring*, i32, i32)** %442, align 8
  %444 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %445 = load i32, i32* %21, align 4
  %446 = load i32, i32* @GFP_ATOMIC, align 4
  %447 = call i32 %443(%struct.e1000_ring* %444, i32 %445, i32 %446)
  br label %448

448:                                              ; preds = %440, %432
  %449 = load i32, i32* %23, align 4
  %450 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %451 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 8
  %453 = add i32 %452, %449
  store i32 %453, i32* %451, align 8
  %454 = load i32, i32* %24, align 4
  %455 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %456 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 4
  %458 = add i32 %457, %454
  store i32 %458, i32* %456, align 4
  %459 = load i32, i32* %22, align 4
  ret i32 %459
}

declare dso_local %union.e1000_rx_desc_packet_split* @E1000_RX_DESC_PS(%struct.e1000_ring* byval(%struct.e1000_ring) align 8, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @prefetch(%union.e1000_rx_desc_packet_split*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i64, i64, i32) #1

declare dso_local i32* @kmap_atomic(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @kunmap_atomic(i32*) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i64, i64, i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i64, i64, i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32*, i32, i32) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @e1000_rx_checksum(%struct.e1000_adapter*, i32, %struct.sk_buff*) #1

declare dso_local i32 @e1000_rx_hash(%struct.net_device*, i32, %struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @e1000_receive_skb(%struct.e1000_adapter*, %struct.net_device*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @e1000_desc_unused(%struct.e1000_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
