; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_rx_indicate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_rx_indicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i64, i32, %struct.net_device*, %struct.TYPE_5__*, i32 }
%struct.net_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rx = type { %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.rfd = type { i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"status=0x%04X\0A\00", align 1
@cb_complete = common dso_local global i32 0, align 4
@cb_el = common dso_local global i32 0, align 4
@RU_RUNNING = common dso_local global i64 0, align 8
@rus_no_res = common dso_local global i32 0, align 4
@RU_SUSPENDED = common dso_local global i8* null, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@NETIF_F_RXFCS = common dso_local global i32 0, align 4
@RFD_BUF_LEN = common dso_local global i32 0, align 4
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@cb_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*, %struct.rx*, i32*, i32)* @e100_rx_indicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_rx_indicate(%struct.nic* %0, %struct.rx* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nic*, align 8
  %7 = alloca %struct.rx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.rfd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %6, align 8
  store %struct.rx* %1, %struct.rx** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.nic*, %struct.nic** %6, align 8
  %17 = getelementptr inbounds %struct.nic, %struct.nic* %16, i32 0, i32 2
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %10, align 8
  %19 = load %struct.rx*, %struct.rx** %7, align 8
  %20 = getelementptr inbounds %struct.rx, %struct.rx* %19, i32 0, i32 0
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %11, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.rfd*
  store %struct.rfd* %25, %struct.rfd** %12, align 8
  store i32 0, i32* %15, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp uge i32 %30, %31
  br label %33

33:                                               ; preds = %28, %4
  %34 = phi i1 [ false, %4 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %269

41:                                               ; preds = %33
  %42 = load %struct.nic*, %struct.nic** %6, align 8
  %43 = getelementptr inbounds %struct.nic, %struct.nic* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.rx*, %struct.rx** %7, align 8
  %46 = getelementptr inbounds %struct.rx, %struct.rx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %49 = call i32 @pci_dma_sync_single_for_cpu(i32 %44, i32 %47, i32 12, i32 %48)
  %50 = load %struct.rfd*, %struct.rfd** %12, align 8
  %51 = getelementptr inbounds %struct.rfd, %struct.rfd* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load %struct.nic*, %struct.nic** %6, align 8
  %55 = load i32, i32* @rx_status, align 4
  %56 = load i32, i32* @KERN_DEBUG, align 4
  %57 = load %struct.nic*, %struct.nic** %6, align 8
  %58 = getelementptr inbounds %struct.nic, %struct.nic* %57, i32 0, i32 2
  %59 = load %struct.net_device*, %struct.net_device** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @netif_printk(%struct.nic* %54, i32 %55, i32 %56, %struct.net_device* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = call i32 (...) @dma_rmb()
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @cb_complete, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %112

71:                                               ; preds = %41
  %72 = load %struct.rfd*, %struct.rfd** %12, align 8
  %73 = getelementptr inbounds %struct.rfd, %struct.rfd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = load i32, i32* @cb_el, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %71
  %80 = load i64, i64* @RU_RUNNING, align 8
  %81 = load %struct.nic*, %struct.nic** %6, align 8
  %82 = getelementptr inbounds %struct.nic, %struct.nic* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %79
  %86 = load %struct.nic*, %struct.nic** %6, align 8
  %87 = getelementptr inbounds %struct.nic, %struct.nic* %86, i32 0, i32 3
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = call i32 @ioread8(i32* %90)
  %92 = load i32, i32* @rus_no_res, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %85
  %96 = load i8*, i8** @RU_SUSPENDED, align 8
  %97 = ptrtoint i8* %96 to i64
  %98 = load %struct.nic*, %struct.nic** %6, align 8
  %99 = getelementptr inbounds %struct.nic, %struct.nic* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %95, %85
  br label %101

101:                                              ; preds = %100, %79, %71
  %102 = load %struct.nic*, %struct.nic** %6, align 8
  %103 = getelementptr inbounds %struct.nic, %struct.nic* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.rx*, %struct.rx** %7, align 8
  %106 = getelementptr inbounds %struct.rx, %struct.rx* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %109 = call i32 @pci_dma_sync_single_for_device(i32 %104, i32 %107, i32 12, i32 %108)
  %110 = load i32, i32* @ENODATA, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %269

112:                                              ; preds = %41
  %113 = load %struct.net_device*, %struct.net_device** %10, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @NETIF_F_RXFCS, align 4
  %117 = and i32 %115, %116
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  store i32 4, i32* %15, align 4
  br label %121

121:                                              ; preds = %120, %112
  %122 = load %struct.rfd*, %struct.rfd** %12, align 8
  %123 = getelementptr inbounds %struct.rfd, %struct.rfd* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @le16_to_cpu(i32 %124)
  %126 = and i32 %125, 16383
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = load i32, i32* @RFD_BUF_LEN, align 4
  %130 = sext i32 %129 to i64
  %131 = sub i64 %130, 12
  %132 = icmp ugt i64 %128, %131
  %133 = zext i1 %132 to i32
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %121
  %137 = load i32, i32* @RFD_BUF_LEN, align 4
  %138 = sext i32 %137 to i64
  %139 = sub i64 %138, 12
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %136, %121
  %142 = load %struct.nic*, %struct.nic** %6, align 8
  %143 = getelementptr inbounds %struct.nic, %struct.nic* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.rx*, %struct.rx** %7, align 8
  %146 = getelementptr inbounds %struct.rx, %struct.rx* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @RFD_BUF_LEN, align 4
  %149 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %150 = call i32 @pci_unmap_single(i32 %144, i32 %147, i32 %148, i32 %149)
  %151 = load %struct.rfd*, %struct.rfd** %12, align 8
  %152 = getelementptr inbounds %struct.rfd, %struct.rfd* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @le16_to_cpu(i32 %153)
  %155 = load i32, i32* @cb_el, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %141
  %159 = load i64, i64* @RU_RUNNING, align 8
  %160 = load %struct.nic*, %struct.nic** %6, align 8
  %161 = getelementptr inbounds %struct.nic, %struct.nic* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %159, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %158
  %165 = load %struct.nic*, %struct.nic** %6, align 8
  %166 = getelementptr inbounds %struct.nic, %struct.nic* %165, i32 0, i32 3
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = call i32 @ioread8(i32* %169)
  %171 = load i32, i32* @rus_no_res, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %164
  %175 = load i8*, i8** @RU_SUSPENDED, align 8
  %176 = ptrtoint i8* %175 to i64
  %177 = load %struct.nic*, %struct.nic** %6, align 8
  %178 = getelementptr inbounds %struct.nic, %struct.nic* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %174, %164
  br label %180

180:                                              ; preds = %179, %158, %141
  %181 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %182 = call i32 @skb_reserve(%struct.sk_buff* %181, i32 12)
  %183 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @skb_put(%struct.sk_buff* %183, i32 %184)
  %186 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %187 = load %struct.nic*, %struct.nic** %6, align 8
  %188 = getelementptr inbounds %struct.nic, %struct.nic* %187, i32 0, i32 2
  %189 = load %struct.net_device*, %struct.net_device** %188, align 8
  %190 = call i32 @eth_type_trans(%struct.sk_buff* %186, %struct.net_device* %189)
  %191 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %192 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load %struct.net_device*, %struct.net_device** %10, align 8
  %194 = getelementptr inbounds %struct.net_device, %struct.net_device* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @NETIF_F_RXALL, align 4
  %197 = and i32 %195, %196
  %198 = call i64 @unlikely(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %180
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* @ETH_DATA_LEN, align 4
  %203 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %204 = add nsw i32 %202, %203
  %205 = load i32, i32* %15, align 4
  %206 = add nsw i32 %204, %205
  %207 = icmp sgt i32 %201, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %200
  %209 = load %struct.nic*, %struct.nic** %6, align 8
  %210 = getelementptr inbounds %struct.nic, %struct.nic* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %208, %200
  br label %242

214:                                              ; preds = %180
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* @cb_ok, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  %219 = xor i1 %218, true
  %220 = zext i1 %219 to i32
  %221 = call i64 @unlikely(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %214
  %224 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %225 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %224)
  br label %266

226:                                              ; preds = %214
  %227 = load i32, i32* %14, align 4
  %228 = load i32, i32* @ETH_DATA_LEN, align 4
  %229 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %230 = add nsw i32 %228, %229
  %231 = load i32, i32* %15, align 4
  %232 = add nsw i32 %230, %231
  %233 = icmp sgt i32 %227, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %226
  %235 = load %struct.nic*, %struct.nic** %6, align 8
  %236 = getelementptr inbounds %struct.nic, %struct.nic* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 8
  %239 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %240 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %239)
  br label %265

241:                                              ; preds = %226
  br label %242

242:                                              ; preds = %241, %213
  %243 = load %struct.net_device*, %struct.net_device** %10, align 8
  %244 = getelementptr inbounds %struct.net_device, %struct.net_device* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  %248 = load i32, i32* %14, align 4
  %249 = load i32, i32* %15, align 4
  %250 = sub nsw i32 %248, %249
  %251 = load %struct.net_device*, %struct.net_device** %10, align 8
  %252 = getelementptr inbounds %struct.net_device, %struct.net_device* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, %250
  store i32 %255, i32* %253, align 4
  %256 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %257 = call i32 @netif_receive_skb(%struct.sk_buff* %256)
  %258 = load i32*, i32** %8, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %260, label %264

260:                                              ; preds = %242
  %261 = load i32*, i32** %8, align 8
  %262 = load i32, i32* %261, align 4
  %263 = add i32 %262, 1
  store i32 %263, i32* %261, align 4
  br label %264

264:                                              ; preds = %260, %242
  br label %265

265:                                              ; preds = %264, %234
  br label %266

266:                                              ; preds = %265, %223
  %267 = load %struct.rx*, %struct.rx** %7, align 8
  %268 = getelementptr inbounds %struct.rx, %struct.rx* %267, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %268, align 8
  store i32 0, i32* %5, align 4
  br label %269

269:                                              ; preds = %266, %101, %38
  %270 = load i32, i32* %5, align 4
  ret i32 %270
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @netif_printk(%struct.nic*, i32, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @ioread8(i32*) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
