; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_xmit_tx_ringN.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_xmit_tx_ringN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32*, i32*, i64, %struct.TYPE_4__*, %struct.sk_buff***, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i64, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [37 x i8] c"BUG! Tx Ring full when queue awake!\0A\00", align 1
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@TX_DESC_CSUM_EN = common dso_local global i32 0, align 4
@TX_DESC_CSUM_START = common dso_local global i32 0, align 4
@TX_DESC_CSUM_STUFF = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@TX_DESC_SOF = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@tx_queued = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"tx[%d] queued, slot %d, skblen %d, avail %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cas*, i32, %struct.sk_buff*)* @cas_xmit_tx_ringN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_xmit_tx_ringN(%struct.cas* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cas*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  store %struct.cas* %0, %struct.cas** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %22 = load %struct.cas*, %struct.cas** %5, align 8
  %23 = getelementptr inbounds %struct.cas, %struct.cas* %22, i32 0, i32 5
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %8, align 8
  %25 = load %struct.cas*, %struct.cas** %5, align 8
  %26 = getelementptr inbounds %struct.cas, %struct.cas* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i64, i64* %15, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.cas*, %struct.cas** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @TX_BUFFS_AVAIL(%struct.cas* %33, i32 %34)
  %36 = load %struct.cas*, %struct.cas** %5, align 8
  %37 = call i32 @CAS_TABORT(%struct.cas* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = mul nsw i32 %37, %42
  %44 = icmp sle i32 %35, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %3
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = call i32 @netif_stop_queue(%struct.net_device* %46)
  %48 = load %struct.cas*, %struct.cas** %5, align 8
  %49 = getelementptr inbounds %struct.cas, %struct.cas* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i64, i64* %15, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.net_device*, %struct.net_device** %8, align 8
  %57 = call i32 @netdev_err(%struct.net_device* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %327

58:                                               ; preds = %3
  store i32 0, i32* %16, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = call i32 @skb_checksum_start_offset(%struct.sk_buff* %65)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %67, %70
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* @TX_DESC_CSUM_EN, align 4
  %73 = load i32, i32* @TX_DESC_CSUM_START, align 4
  %74 = load i32, i32* %18, align 4
  %75 = call i32 @CAS_BASE(i32 %73, i32 %74)
  %76 = or i32 %72, %75
  %77 = load i32, i32* @TX_DESC_CSUM_STUFF, align 4
  %78 = load i32, i32* %19, align 4
  %79 = call i32 @CAS_BASE(i32 %77, i32 %78)
  %80 = or i32 %76, %79
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %64, %58
  %82 = load %struct.cas*, %struct.cas** %5, align 8
  %83 = getelementptr inbounds %struct.cas, %struct.cas* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %9, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = load %struct.cas*, %struct.cas** %5, align 8
  %91 = getelementptr inbounds %struct.cas, %struct.cas* %90, i32 0, i32 4
  %92 = load %struct.sk_buff***, %struct.sk_buff**** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.sk_buff**, %struct.sk_buff*** %92, i64 %94
  %96 = load %struct.sk_buff**, %struct.sk_buff*** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %96, i64 %98
  store %struct.sk_buff* %89, %struct.sk_buff** %99, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %100)
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %10, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %105 = call i32 @skb_headlen(%struct.sk_buff* %104)
  store i32 %105, i32* %17, align 4
  %106 = load %struct.cas*, %struct.cas** %5, align 8
  %107 = getelementptr inbounds %struct.cas, %struct.cas* %106, i32 0, i32 3
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @virt_to_page(i64 %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @offset_in_page(i64 %115)
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %119 = call i32 @pci_map_page(%struct.TYPE_4__* %108, i32 %112, i32 %116, i32 %117, i32 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %13, align 4
  %121 = load %struct.cas*, %struct.cas** %5, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @cas_calc_tabort(%struct.cas* %121, i64 %124, i32 %125)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %170

130:                                              ; preds = %81
  %131 = load %struct.cas*, %struct.cas** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %12, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* @TX_DESC_SOF, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @cas_write_txd(%struct.cas* %131, i32 %132, i32 %133, i32 %134, i32 %137, i32 %140, i32 0)
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @TX_DESC_NEXT(i32 %142, i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %12, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load %struct.cas*, %struct.cas** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @tx_tiny_buf(%struct.cas* %149, i32 %150, i32 %151)
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %145, i32 %148, i32 %152, i32 %153)
  %155 = load %struct.cas*, %struct.cas** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @tx_tiny_map(%struct.cas* %155, i32 %156, i32 %157, i32 %158)
  store i32 %159, i32* %14, align 4
  %160 = load %struct.cas*, %struct.cas** %5, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp eq i32 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 @cas_write_txd(%struct.cas* %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %168)
  br label %183

170:                                              ; preds = %81
  %171 = load %struct.cas*, %struct.cas** %5, align 8
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* @TX_DESC_SOF, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* %10, align 4
  %180 = icmp eq i32 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @cas_write_txd(%struct.cas* %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %170, %130
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @TX_DESC_NEXT(i32 %184, i32 %185)
  store i32 %186, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %187

187:                                              ; preds = %274, %183
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %277

191:                                              ; preds = %187
  %192 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %193 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %192)
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32* %198, i32** %20, align 8
  %199 = load i32*, i32** %20, align 8
  %200 = call i32 @skb_frag_size(i32* %199)
  store i32 %200, i32* %17, align 4
  %201 = load %struct.cas*, %struct.cas** %5, align 8
  %202 = getelementptr inbounds %struct.cas, %struct.cas* %201, i32 0, i32 3
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32*, i32** %20, align 8
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* @DMA_TO_DEVICE, align 4
  %208 = call i32 @skb_frag_dma_map(i32* %204, i32* %205, i32 0, i32 %206, i32 %207)
  store i32 %208, i32* %14, align 4
  %209 = load %struct.cas*, %struct.cas** %5, align 8
  %210 = load i32*, i32** %20, align 8
  %211 = call i64 @skb_frag_off(i32* %210)
  %212 = load i32, i32* %17, align 4
  %213 = call i32 @cas_calc_tabort(%struct.cas* %209, i64 %211, i32 %212)
  store i32 %213, i32* %12, align 4
  %214 = load i32, i32* %12, align 4
  %215 = call i64 @unlikely(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %258

217:                                              ; preds = %191
  %218 = load %struct.cas*, %struct.cas** %5, align 8
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %12, align 4
  %224 = sub nsw i32 %222, %223
  %225 = load i32, i32* %16, align 4
  %226 = call i32 @cas_write_txd(%struct.cas* %218, i32 %219, i32 %220, i32 %221, i32 %224, i32 %225, i32 0)
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* %9, align 4
  %229 = call i32 @TX_DESC_NEXT(i32 %227, i32 %228)
  store i32 %229, i32* %9, align 4
  %230 = load i32*, i32** %20, align 8
  %231 = call i32 @skb_frag_page(i32* %230)
  %232 = call i8* @cas_page_map(i32 %231)
  store i8* %232, i8** %21, align 8
  %233 = load %struct.cas*, %struct.cas** %5, align 8
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @tx_tiny_buf(%struct.cas* %233, i32 %234, i32 %235)
  %237 = load i8*, i8** %21, align 8
  %238 = load i32*, i32** %20, align 8
  %239 = call i64 @skb_frag_off(i32* %238)
  %240 = getelementptr i8, i8* %237, i64 %239
  %241 = load i32, i32* %17, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr i8, i8* %240, i64 %242
  %244 = load i32, i32* %12, align 4
  %245 = sext i32 %244 to i64
  %246 = sub i64 0, %245
  %247 = getelementptr i8, i8* %243, i64 %246
  %248 = load i32, i32* %12, align 4
  %249 = call i32 @memcpy(i32 %236, i8* %247, i32 %248)
  %250 = load i8*, i8** %21, align 8
  %251 = call i32 @cas_page_unmap(i8* %250)
  %252 = load %struct.cas*, %struct.cas** %5, align 8
  %253 = load i32, i32* %6, align 4
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* %13, align 4
  %256 = call i32 @tx_tiny_map(%struct.cas* %252, i32 %253, i32 %254, i32 %255)
  store i32 %256, i32* %14, align 4
  %257 = load i32, i32* %12, align 4
  store i32 %257, i32* %17, align 4
  br label %258

258:                                              ; preds = %217, %191
  %259 = load %struct.cas*, %struct.cas** %5, align 8
  %260 = load i32, i32* %6, align 4
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %14, align 4
  %263 = load i32, i32* %17, align 4
  %264 = load i32, i32* %16, align 4
  %265 = load i32, i32* %11, align 4
  %266 = add nsw i32 %265, 1
  %267 = load i32, i32* %10, align 4
  %268 = icmp eq i32 %266, %267
  %269 = zext i1 %268 to i32
  %270 = call i32 @cas_write_txd(%struct.cas* %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 %264, i32 %269)
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* %9, align 4
  %273 = call i32 @TX_DESC_NEXT(i32 %271, i32 %272)
  store i32 %273, i32* %9, align 4
  br label %274

274:                                              ; preds = %258
  %275 = load i32, i32* %11, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %11, align 4
  br label %187

277:                                              ; preds = %187
  %278 = load i32, i32* %9, align 4
  %279 = load %struct.cas*, %struct.cas** %5, align 8
  %280 = getelementptr inbounds %struct.cas, %struct.cas* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %6, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  store i32 %278, i32* %284, align 4
  %285 = load %struct.cas*, %struct.cas** %5, align 8
  %286 = load i32, i32* %6, align 4
  %287 = call i32 @TX_BUFFS_AVAIL(%struct.cas* %285, i32 %286)
  %288 = load %struct.cas*, %struct.cas** %5, align 8
  %289 = call i32 @CAS_TABORT(%struct.cas* %288)
  %290 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %291 = add nsw i32 %290, 1
  %292 = mul nsw i32 %289, %291
  %293 = icmp sle i32 %287, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %277
  %295 = load %struct.net_device*, %struct.net_device** %8, align 8
  %296 = call i32 @netif_stop_queue(%struct.net_device* %295)
  br label %297

297:                                              ; preds = %294, %277
  %298 = load %struct.cas*, %struct.cas** %5, align 8
  %299 = load i32, i32* @tx_queued, align 4
  %300 = load i32, i32* @KERN_DEBUG, align 4
  %301 = load %struct.net_device*, %struct.net_device** %8, align 8
  %302 = load i32, i32* %6, align 4
  %303 = load i32, i32* %9, align 4
  %304 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %305 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.cas*, %struct.cas** %5, align 8
  %308 = load i32, i32* %6, align 4
  %309 = call i32 @TX_BUFFS_AVAIL(%struct.cas* %307, i32 %308)
  %310 = call i32 @netif_printk(%struct.cas* %298, i32 %299, i32 %300, %struct.net_device* %301, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %302, i32 %303, i32 %306, i32 %309)
  %311 = load i32, i32* %9, align 4
  %312 = load %struct.cas*, %struct.cas** %5, align 8
  %313 = getelementptr inbounds %struct.cas, %struct.cas* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = load i32, i32* %6, align 4
  %316 = call i64 @REG_TX_KICKN(i32 %315)
  %317 = add nsw i64 %314, %316
  %318 = call i32 @writel(i32 %311, i64 %317)
  %319 = load %struct.cas*, %struct.cas** %5, align 8
  %320 = getelementptr inbounds %struct.cas, %struct.cas* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i64, i64* %15, align 8
  %326 = call i32 @spin_unlock_irqrestore(i32* %324, i64 %325)
  store i32 0, i32* %4, align 4
  br label %327

327:                                              ; preds = %297, %45
  %328 = load i32, i32* %4, align 4
  ret i32 %328
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @TX_BUFFS_AVAIL(%struct.cas*, i32) #1

declare dso_local i32 @CAS_TABORT(%struct.cas*) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @skb_checksum_start_offset(%struct.sk_buff*) #1

declare dso_local i32 @CAS_BASE(i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @pci_map_page(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i64) #1

declare dso_local i32 @offset_in_page(i64) #1

declare dso_local i32 @cas_calc_tabort(%struct.cas*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cas_write_txd(%struct.cas*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TX_DESC_NEXT(i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @tx_tiny_buf(%struct.cas*, i32, i32) #1

declare dso_local i32 @tx_tiny_map(%struct.cas*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @skb_frag_off(i32*) #1

declare dso_local i8* @cas_page_map(i32) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @cas_page_unmap(i8*) #1

declare dso_local i32 @netif_printk(%struct.cas*, i32, i32, %struct.net_device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @REG_TX_KICKN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
