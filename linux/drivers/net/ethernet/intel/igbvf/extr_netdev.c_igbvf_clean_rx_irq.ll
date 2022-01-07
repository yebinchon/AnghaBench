; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_clean_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_clean_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.e1000_adv_rx_desc = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.igbvf_adapter = type { i32, i32, i32, i32, %struct.pci_dev*, %struct.net_device*, %struct.igbvf_ring* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.igbvf_ring = type { i32, i32, %struct.igbvf_buffer* }
%struct.igbvf_buffer = type { i64, %struct.sk_buff*, i32*, i32, i64 }
%struct.sk_buff = type { i32, i32, i32, i64, %union.e1000_adv_rx_desc* }
%struct.TYPE_14__ = type { i32 }

@E1000_RXD_STAT_DD = common dso_local global i32 0, align 4
@E1000_RXDADV_HDRBUFLEN_MASK = common dso_local global i32 0, align 4
@E1000_RXDADV_HDRBUFLEN_SHIFT = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global %union.e1000_adv_rx_desc* null, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@E1000_RXD_STAT_EOP = common dso_local global i32 0, align 4
@E1000_RXDEXT_ERR_FRAME_ERR_MASK = common dso_local global i32 0, align 4
@IGBVF_RX_BUFFER_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igbvf_adapter*, i32*, i32)* @igbvf_clean_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_clean_rx_irq(%struct.igbvf_adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.igbvf_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.igbvf_ring*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %union.e1000_adv_rx_desc*, align 8
  %11 = alloca %union.e1000_adv_rx_desc*, align 8
  %12 = alloca %struct.igbvf_buffer*, align 8
  %13 = alloca %struct.igbvf_buffer*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %23, i32 0, i32 6
  %25 = load %struct.igbvf_ring*, %struct.igbvf_ring** %24, align 8
  store %struct.igbvf_ring* %25, %struct.igbvf_ring** %7, align 8
  %26 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %26, i32 0, i32 5
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %8, align 8
  %29 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %29, i32 0, i32 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %30, align 8
  store %struct.pci_dev* %31, %struct.pci_dev** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %32 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %33 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %19, align 4
  %35 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %36 = load i32, i32* %19, align 4
  %37 = bitcast %struct.igbvf_ring* %35 to { i64, %struct.igbvf_buffer* }*
  %38 = getelementptr inbounds { i64, %struct.igbvf_buffer* }, { i64, %struct.igbvf_buffer* }* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds { i64, %struct.igbvf_buffer* }, { i64, %struct.igbvf_buffer* }* %37, i32 0, i32 1
  %41 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %40, align 8
  %42 = call %union.e1000_adv_rx_desc* @IGBVF_RX_DESC_ADV(i64 %39, %struct.igbvf_buffer* %41, i32 %36)
  store %union.e1000_adv_rx_desc* %42, %union.e1000_adv_rx_desc** %10, align 8
  %43 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %44 = bitcast %union.e1000_adv_rx_desc* %43 to %struct.TYPE_12__*
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @le32_to_cpu(i64 %47)
  store i32 %48, i32* %22, align 4
  br label %49

49:                                               ; preds = %320, %3
  %50 = load i32, i32* %22, align 4
  %51 = load i32, i32* @E1000_RXD_STAT_DD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %329

54:                                               ; preds = %49
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %329

60:                                               ; preds = %54
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = call i32 (...) @rmb()
  %65 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %66 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %65, i32 0, i32 2
  %67 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %66, align 8
  %68 = load i32, i32* %19, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %67, i64 %69
  store %struct.igbvf_buffer* %70, %struct.igbvf_buffer** %12, align 8
  %71 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %72 = bitcast %union.e1000_adv_rx_desc* %71 to %struct.TYPE_12__*
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @le16_to_cpu(i32 %77)
  %79 = load i32, i32* @E1000_RXDADV_HDRBUFLEN_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @E1000_RXDADV_HDRBUFLEN_SHIFT, align 4
  %82 = ashr i32 %80, %81
  store i32 %82, i32* %21, align 4
  %83 = load i32, i32* %21, align 4
  %84 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %85 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %83, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %60
  %89 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %90 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %21, align 4
  br label %92

92:                                               ; preds = %88, %60
  %93 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %94 = bitcast %union.e1000_adv_rx_desc* %93 to %struct.TYPE_12__*
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le16_to_cpu(i32 %97)
  store i32 %98, i32* %20, align 4
  store i32 1, i32* %15, align 4
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  %101 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %102 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %101, i32 0, i32 1
  %103 = load %struct.sk_buff*, %struct.sk_buff** %102, align 8
  store %struct.sk_buff* %103, %struct.sk_buff** %14, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 4
  %106 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %105, align 8
  %107 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** @NET_IP_ALIGN, align 8
  %108 = ptrtoint %union.e1000_adv_rx_desc* %106 to i64
  %109 = ptrtoint %union.e1000_adv_rx_desc* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 24
  %112 = inttoptr i64 %111 to %union.e1000_adv_rx_desc*
  %113 = call i32 @prefetch(%union.e1000_adv_rx_desc* %112)
  %114 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %115 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %114, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %115, align 8
  %116 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %117 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %92
  %121 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %122 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %121, i32 0, i32 0
  %123 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %124 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %127 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %130 = call i32 @dma_unmap_single(i32* %122, i64 %125, i32 %128, i32 %129)
  %131 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %132 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %131, i32 0, i32 0
  store i64 0, i64* %132, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %134 = load i32, i32* %20, align 4
  %135 = call i32 @skb_put(%struct.sk_buff* %133, i32 %134)
  br label %225

136:                                              ; preds = %92
  %137 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %138 = call %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff* %137)
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %158, label %142

142:                                              ; preds = %136
  %143 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %144 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %143, i32 0, i32 0
  %145 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %146 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %149 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %152 = call i32 @dma_unmap_single(i32* %144, i64 %147, i32 %150, i32 %151)
  %153 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %154 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %153, i32 0, i32 0
  store i64 0, i64* %154, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %156 = load i32, i32* %21, align 4
  %157 = call i32 @skb_put(%struct.sk_buff* %155, i32 %156)
  br label %158

158:                                              ; preds = %142, %136
  %159 = load i32, i32* %20, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %224

161:                                              ; preds = %158
  %162 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %163 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %162, i32 0, i32 0
  %164 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %165 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* @PAGE_SIZE, align 4
  %168 = sdiv i32 %167, 2
  %169 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %170 = call i32 @dma_unmap_page(i32* %163, i64 %166, i32 %168, i32 %169)
  %171 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %172 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %171, i32 0, i32 4
  store i64 0, i64* %172, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %175 = call %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff* %174)
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %179 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %182 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %20, align 4
  %185 = call i32 @skb_fill_page_desc(%struct.sk_buff* %173, i32 %177, i32* %180, i32 %183, i32 %184)
  %186 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %187 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @PAGE_SIZE, align 4
  %190 = sdiv i32 %189, 2
  %191 = icmp sgt i32 %188, %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %161
  %193 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %194 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @page_count(i32* %195)
  %197 = icmp ne i32 %196, 1
  br i1 %197, label %198, label %201

198:                                              ; preds = %192, %161
  %199 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %200 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %199, i32 0, i32 2
  store i32* null, i32** %200, align 8
  br label %206

201:                                              ; preds = %192
  %202 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %203 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = call i32 @get_page(i32* %204)
  br label %206

206:                                              ; preds = %201, %198
  %207 = load i32, i32* %20, align 4
  %208 = sext i32 %207 to i64
  %209 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, %208
  store i64 %212, i64* %210, align 8
  %213 = load i32, i32* %20, align 4
  %214 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %215 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load i32, i32* @PAGE_SIZE, align 4
  %219 = sdiv i32 %218, 2
  %220 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %221 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, %219
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %206, %158
  br label %225

225:                                              ; preds = %224, %120
  %226 = load i32, i32* %19, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %19, align 4
  %228 = load i32, i32* %19, align 4
  %229 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %230 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %228, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %225
  store i32 0, i32* %19, align 4
  br label %234

234:                                              ; preds = %233, %225
  %235 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %236 = load i32, i32* %19, align 4
  %237 = bitcast %struct.igbvf_ring* %235 to { i64, %struct.igbvf_buffer* }*
  %238 = getelementptr inbounds { i64, %struct.igbvf_buffer* }, { i64, %struct.igbvf_buffer* }* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = getelementptr inbounds { i64, %struct.igbvf_buffer* }, { i64, %struct.igbvf_buffer* }* %237, i32 0, i32 1
  %241 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %240, align 8
  %242 = call %union.e1000_adv_rx_desc* @IGBVF_RX_DESC_ADV(i64 %239, %struct.igbvf_buffer* %241, i32 %236)
  store %union.e1000_adv_rx_desc* %242, %union.e1000_adv_rx_desc** %11, align 8
  %243 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %11, align 8
  %244 = call i32 @prefetch(%union.e1000_adv_rx_desc* %243)
  %245 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %246 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %245, i32 0, i32 2
  %247 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %246, align 8
  %248 = load i32, i32* %19, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %247, i64 %249
  store %struct.igbvf_buffer* %250, %struct.igbvf_buffer** %13, align 8
  %251 = load i32, i32* %22, align 4
  %252 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %271, label %255

255:                                              ; preds = %234
  %256 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %13, align 8
  %257 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %256, i32 0, i32 1
  %258 = load %struct.sk_buff*, %struct.sk_buff** %257, align 8
  %259 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %260 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %259, i32 0, i32 1
  store %struct.sk_buff* %258, %struct.sk_buff** %260, align 8
  %261 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %13, align 8
  %262 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %265 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %264, i32 0, i32 0
  store i64 %263, i64* %265, align 8
  %266 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %267 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %13, align 8
  %268 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %267, i32 0, i32 1
  store %struct.sk_buff* %266, %struct.sk_buff** %268, align 8
  %269 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %13, align 8
  %270 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %269, i32 0, i32 0
  store i64 0, i64* %270, align 8
  br label %308

271:                                              ; preds = %234
  %272 = load i32, i32* %22, align 4
  %273 = load i32, i32* @E1000_RXDEXT_ERR_FRAME_ERR_MASK, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %271
  %277 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %278 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %277)
  br label %308

279:                                              ; preds = %271
  %280 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %281 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = load i32, i32* %17, align 4
  %284 = zext i32 %283 to i64
  %285 = add nsw i64 %284, %282
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %17, align 4
  %287 = load i32, i32* %18, align 4
  %288 = add i32 %287, 1
  store i32 %288, i32* %18, align 4
  %289 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %290 = load i32, i32* %22, align 4
  %291 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %292 = call i32 @igbvf_rx_checksum_adv(%struct.igbvf_adapter* %289, i32 %290, %struct.sk_buff* %291)
  %293 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %294 = load %struct.net_device*, %struct.net_device** %8, align 8
  %295 = call i32 @eth_type_trans(%struct.sk_buff* %293, %struct.net_device* %294)
  %296 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %297 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %296, i32 0, i32 2
  store i32 %295, i32* %297, align 8
  %298 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %299 = load %struct.net_device*, %struct.net_device** %8, align 8
  %300 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %301 = load i32, i32* %22, align 4
  %302 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %303 = bitcast %union.e1000_adv_rx_desc* %302 to %struct.TYPE_12__*
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @igbvf_receive_skb(%struct.igbvf_adapter* %298, %struct.net_device* %299, %struct.sk_buff* %300, i32 %301, i32 %306)
  br label %308

308:                                              ; preds = %279, %276, %255
  %309 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %310 = bitcast %union.e1000_adv_rx_desc* %309 to %struct.TYPE_12__*
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 0
  store i64 0, i64* %312, align 8
  %313 = load i32, i32* %16, align 4
  %314 = load i32, i32* @IGBVF_RX_BUFFER_WRITE, align 4
  %315 = icmp sge i32 %313, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %308
  %317 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %318 = load i32, i32* %16, align 4
  %319 = call i32 @igbvf_alloc_rx_buffers(%struct.igbvf_ring* %317, i32 %318)
  store i32 0, i32* %16, align 4
  br label %320

320:                                              ; preds = %316, %308
  %321 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %11, align 8
  store %union.e1000_adv_rx_desc* %321, %union.e1000_adv_rx_desc** %10, align 8
  %322 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %13, align 8
  store %struct.igbvf_buffer* %322, %struct.igbvf_buffer** %12, align 8
  %323 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %324 = bitcast %union.e1000_adv_rx_desc* %323 to %struct.TYPE_12__*
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = call i32 @le32_to_cpu(i64 %327)
  store i32 %328, i32* %22, align 4
  br label %49

329:                                              ; preds = %59, %49
  %330 = load i32, i32* %19, align 4
  %331 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %332 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %331, i32 0, i32 0
  store i32 %330, i32* %332, align 8
  %333 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %334 = call i32 @igbvf_desc_unused(%struct.igbvf_ring* %333)
  store i32 %334, i32* %16, align 4
  %335 = load i32, i32* %16, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %329
  %338 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %339 = load i32, i32* %16, align 4
  %340 = call i32 @igbvf_alloc_rx_buffers(%struct.igbvf_ring* %338, i32 %339)
  br label %341

341:                                              ; preds = %337, %329
  %342 = load i32, i32* %18, align 4
  %343 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %344 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = add i32 %345, %342
  store i32 %346, i32* %344, align 8
  %347 = load i32, i32* %17, align 4
  %348 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %349 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 4
  %351 = add i32 %350, %347
  store i32 %351, i32* %349, align 4
  %352 = load i32, i32* %17, align 4
  %353 = load %struct.net_device*, %struct.net_device** %8, align 8
  %354 = getelementptr inbounds %struct.net_device, %struct.net_device* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = add i32 %356, %352
  store i32 %357, i32* %355, align 4
  %358 = load i32, i32* %18, align 4
  %359 = load %struct.net_device*, %struct.net_device** %8, align 8
  %360 = getelementptr inbounds %struct.net_device, %struct.net_device* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = add i32 %362, %358
  store i32 %363, i32* %361, align 4
  %364 = load i32, i32* %15, align 4
  ret i32 %364
}

declare dso_local %union.e1000_adv_rx_desc* @IGBVF_RX_DESC_ADV(i64, %struct.igbvf_buffer*, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @prefetch(%union.e1000_adv_rx_desc*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page(i32*, i64, i32, i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32*, i32, i32) #1

declare dso_local i32 @page_count(i32*) #1

declare dso_local i32 @get_page(i32*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @igbvf_rx_checksum_adv(%struct.igbvf_adapter*, i32, %struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @igbvf_receive_skb(%struct.igbvf_adapter*, %struct.net_device*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @igbvf_alloc_rx_buffers(%struct.igbvf_ring*, i32) #1

declare dso_local i32 @igbvf_desc_unused(%struct.igbvf_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
