; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_rx_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_rx_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.net_device = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.skge_element = type { %struct.sk_buff* }
%struct.skge_port = type { i64, %struct.TYPE_8__*, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@BMU_BBC = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"rx slot %td status 0x%x len %d\0A\00", align 1
@BMU_EOF = common dso_local global i32 0, align 4
@BMU_STF = common dso_local global i32 0, align 4
@RX_COPY_THRESHOLD = common dso_local global i64 0, align 8
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@CHECKSUM_COMPLETE = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"rx err, slot %td control 0x%x status 0x%x\0A\00", align 1
@XMR_FS_RUNT = common dso_local global i32 0, align 4
@XMR_FS_LNG_ERR = common dso_local global i32 0, align 4
@XMR_FS_FRA_ERR = common dso_local global i32 0, align 4
@XMR_FS_FCS_ERR = common dso_local global i32 0, align 4
@GMR_FS_LONG_ERR = common dso_local global i32 0, align 4
@GMR_FS_UN_SIZE = common dso_local global i32 0, align 4
@GMR_FS_FRAGMENT = common dso_local global i32 0, align 4
@GMR_FS_CRC_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.skge_element*, i32, i32, i64)* @skge_rx_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @skge_rx_get(%struct.net_device* %0, %struct.skge_element* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.skge_element*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.skge_port*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.skge_element, align 8
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.skge_element* %1, %struct.skge_element** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.skge_port* @netdev_priv(%struct.net_device* %17)
  store %struct.skge_port* %18, %struct.skge_port** %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @BMU_BBC, align 4
  %21 = and i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %14, align 8
  %23 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %24 = load i32, i32* @rx_status, align 4
  %25 = load i32, i32* @KERN_DEBUG, align 4
  %26 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %27 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.skge_element*, %struct.skge_element** %8, align 8
  %30 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %31 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %29, i64 %35
  %37 = load i32, i32* %10, align 4
  %38 = load i64, i64* %14, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @netif_printk(%struct.skge_port* %23, i32 %24, i32 %25, i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.skge_element* %36, i32 %37, i32 %39)
  %41 = load i64, i64* %14, align 8
  %42 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %43 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %5
  br label %193

47:                                               ; preds = %5
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @BMU_EOF, align 4
  %50 = load i32, i32* @BMU_STF, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = load i32, i32* @BMU_STF, align 4
  %54 = load i32, i32* @BMU_EOF, align 4
  %55 = or i32 %53, %54
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %193

58:                                               ; preds = %47
  %59 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %60 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @bad_phy_status(%struct.TYPE_8__* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %193

66:                                               ; preds = %58
  %67 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %68 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @phy_length(%struct.TYPE_8__* %69, i32 %70)
  %72 = load i64, i64* %14, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %193

75:                                               ; preds = %66
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* @RX_COPY_THRESHOLD, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %126

79:                                               ; preds = %75
  %80 = load %struct.net_device*, %struct.net_device** %7, align 8
  %81 = load i64, i64* %14, align 8
  %82 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %80, i64 %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %13, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  br label %289

86:                                               ; preds = %79
  %87 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %88 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.skge_element*, %struct.skge_element** %8, align 8
  %93 = load i32, i32* @mapaddr, align 4
  %94 = call i32 @dma_unmap_addr(%struct.skge_element* %92, i32 %93)
  %95 = load %struct.skge_element*, %struct.skge_element** %8, align 8
  %96 = load i32, i32* @maplen, align 4
  %97 = call i32 @dma_unmap_len(%struct.skge_element* %95, i32 %96)
  %98 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %99 = call i32 @pci_dma_sync_single_for_cpu(i32 %91, i32 %94, i32 %97, i32 %98)
  %100 = load %struct.skge_element*, %struct.skge_element** %8, align 8
  %101 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %100, i32 0, i32 0
  %102 = load %struct.sk_buff*, %struct.sk_buff** %101, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* %14, align 8
  %107 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %102, i32 %105, i64 %106)
  %108 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %109 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.skge_element*, %struct.skge_element** %8, align 8
  %114 = load i32, i32* @mapaddr, align 4
  %115 = call i32 @dma_unmap_addr(%struct.skge_element* %113, i32 %114)
  %116 = load %struct.skge_element*, %struct.skge_element** %8, align 8
  %117 = load i32, i32* @maplen, align 4
  %118 = call i32 @dma_unmap_len(%struct.skge_element* %116, i32 %117)
  %119 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %120 = call i32 @pci_dma_sync_single_for_device(i32 %112, i32 %115, i32 %118, i32 %119)
  %121 = load %struct.skge_element*, %struct.skge_element** %8, align 8
  %122 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %123 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @skge_rx_reuse(%struct.skge_element* %121, i64 %124)
  br label %168

126:                                              ; preds = %75
  %127 = load %struct.net_device*, %struct.net_device** %7, align 8
  %128 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %129 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %127, i64 %130)
  store %struct.sk_buff* %131, %struct.sk_buff** %16, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %133 = icmp ne %struct.sk_buff* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %126
  br label %289

135:                                              ; preds = %126
  %136 = load %struct.skge_element*, %struct.skge_element** %8, align 8
  %137 = bitcast %struct.skge_element* %15 to i8*
  %138 = bitcast %struct.skge_element* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 8, i1 false)
  %139 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %15, i32 0, i32 0
  %140 = load %struct.sk_buff*, %struct.sk_buff** %139, align 8
  store %struct.sk_buff* %140, %struct.sk_buff** %13, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @prefetch(i32 %143)
  %145 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %146 = load %struct.skge_element*, %struct.skge_element** %8, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %148 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %149 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @skge_rx_setup(%struct.skge_port* %145, %struct.skge_element* %146, %struct.sk_buff* %147, i64 %150)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %135
  %154 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %155 = call i32 @dev_kfree_skb(%struct.sk_buff* %154)
  br label %289

156:                                              ; preds = %135
  %157 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %158 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %157, i32 0, i32 1
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @mapaddr, align 4
  %163 = call i32 @dma_unmap_addr(%struct.skge_element* %15, i32 %162)
  %164 = load i32, i32* @maplen, align 4
  %165 = call i32 @dma_unmap_len(%struct.skge_element* %15, i32 %164)
  %166 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %167 = call i32 @pci_unmap_single(i32 %161, i32 %163, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %156, %86
  %169 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %170 = load i64, i64* %14, align 8
  %171 = call i32 @skb_put(%struct.sk_buff* %169, i64 %170)
  %172 = load %struct.net_device*, %struct.net_device** %7, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %168
  %179 = load i64, i64* %11, align 8
  %180 = call i32 @le16_to_cpu(i64 %179)
  %181 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* @CHECKSUM_COMPLETE, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %178, %168
  %187 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %188 = load %struct.net_device*, %struct.net_device** %7, align 8
  %189 = call i32 @eth_type_trans(%struct.sk_buff* %187, %struct.net_device* %188)
  %190 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 4
  %192 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %192, %struct.sk_buff** %6, align 8
  br label %295

193:                                              ; preds = %74, %65, %57, %46
  %194 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %195 = load i32, i32* @rx_err, align 4
  %196 = load i32, i32* @KERN_DEBUG, align 4
  %197 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %198 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.skge_element*, %struct.skge_element** %8, align 8
  %201 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %202 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = sub i64 0, %205
  %207 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %200, i64 %206
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %10, align 4
  %210 = call i32 @netif_printk(%struct.skge_port* %194, i32 %195, i32 %196, i32 %199, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), %struct.skge_element* %207, i32 %208, i32 %209)
  %211 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %212 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %211, i32 0, i32 1
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = call i64 @is_genesis(%struct.TYPE_8__* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %252

216:                                              ; preds = %193
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* @XMR_FS_RUNT, align 4
  %219 = load i32, i32* @XMR_FS_LNG_ERR, align 4
  %220 = or i32 %218, %219
  %221 = and i32 %217, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %216
  %224 = load %struct.net_device*, %struct.net_device** %7, align 8
  %225 = getelementptr inbounds %struct.net_device, %struct.net_device* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %223, %216
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @XMR_FS_FRA_ERR, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %229
  %235 = load %struct.net_device*, %struct.net_device** %7, align 8
  %236 = getelementptr inbounds %struct.net_device, %struct.net_device* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %234, %229
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @XMR_FS_FCS_ERR, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %240
  %246 = load %struct.net_device*, %struct.net_device** %7, align 8
  %247 = getelementptr inbounds %struct.net_device, %struct.net_device* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  br label %251

251:                                              ; preds = %245, %240
  br label %288

252:                                              ; preds = %193
  %253 = load i32, i32* %10, align 4
  %254 = load i32, i32* @GMR_FS_LONG_ERR, align 4
  %255 = load i32, i32* @GMR_FS_UN_SIZE, align 4
  %256 = or i32 %254, %255
  %257 = and i32 %253, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %252
  %260 = load %struct.net_device*, %struct.net_device** %7, align 8
  %261 = getelementptr inbounds %struct.net_device, %struct.net_device* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %259, %252
  %266 = load i32, i32* %10, align 4
  %267 = load i32, i32* @GMR_FS_FRAGMENT, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %265
  %271 = load %struct.net_device*, %struct.net_device** %7, align 8
  %272 = getelementptr inbounds %struct.net_device, %struct.net_device* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %270, %265
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* @GMR_FS_CRC_ERR, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %276
  %282 = load %struct.net_device*, %struct.net_device** %7, align 8
  %283 = getelementptr inbounds %struct.net_device, %struct.net_device* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %284, align 4
  br label %287

287:                                              ; preds = %281, %276
  br label %288

288:                                              ; preds = %287, %251
  br label %289

289:                                              ; preds = %288, %153, %134, %85
  %290 = load %struct.skge_element*, %struct.skge_element** %8, align 8
  %291 = load %struct.skge_port*, %struct.skge_port** %12, align 8
  %292 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @skge_rx_reuse(%struct.skge_element* %290, i64 %293)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %295

295:                                              ; preds = %289, %186
  %296 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %296
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_printk(%struct.skge_port*, i32, i32, i32, i8*, %struct.skge_element*, i32, i32) #1

declare dso_local i64 @bad_phy_status(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @phy_length(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i64) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.skge_element*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.skge_element*, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @skge_rx_reuse(%struct.skge_element*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @prefetch(i32) #1

declare dso_local i64 @skge_rx_setup(%struct.skge_port*, %struct.skge_element*, %struct.sk_buff*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @is_genesis(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
