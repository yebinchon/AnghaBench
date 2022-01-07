; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_rx_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_rx_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32, %struct.TYPE_5__*, %struct.device* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.bgmac_dma_ring = type { i32, %struct.bgmac_slot_info*, i64, i64 }
%struct.bgmac_slot_info = type { i32, %struct.bgmac_rx_header* }
%struct.bgmac_rx_header = type { i32, i32 }
%struct.sk_buff = type { i32 }

@BGMAC_DMA_RX_STATUS = common dso_local global i64 0, align 8
@BGMAC_DMA_RX_STATDPTR = common dso_local global i32 0, align 4
@BGMAC_RX_BUF_OFFSET = common dso_local global i32 0, align 4
@BGMAC_RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Found poisoned packet at slot %d, DMA issue!\0A\00", align 1
@BGMAC_RX_ALLOC_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Found oversized packet at slot %d, DMA issue!\0A\00", align 1
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"build_skb failed\0A\00", align 1
@BGMAC_RX_FRAME_OFFSET = common dso_local global i32 0, align 4
@BGMAC_RX_RING_SLOTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgmac*, %struct.bgmac_dma_ring*, i32)* @bgmac_dma_rx_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgmac_dma_rx_read(%struct.bgmac* %0, %struct.bgmac_dma_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.bgmac*, align 8
  %5 = alloca %struct.bgmac_dma_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.bgmac_slot_info*, align 8
  %11 = alloca %struct.bgmac_rx_header*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %4, align 8
  store %struct.bgmac_dma_ring* %1, %struct.bgmac_dma_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %18 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %19 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BGMAC_DMA_RX_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @bgmac_read(%struct.bgmac* %17, i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @BGMAC_DMA_RX_STATDPTR, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %28 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @BGMAC_DMA_RX_STATDPTR, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %243, %3
  %42 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %43 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %244

47:                                               ; preds = %41
  %48 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %49 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %48, i32 0, i32 2
  %50 = load %struct.device*, %struct.device** %49, align 8
  store %struct.device* %50, %struct.device** %9, align 8
  %51 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %52 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %51, i32 0, i32 1
  %53 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %52, align 8
  %54 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %55 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %53, i64 %57
  store %struct.bgmac_slot_info* %58, %struct.bgmac_slot_info** %10, align 8
  %59 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %10, align 8
  %60 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %59, i32 0, i32 1
  %61 = load %struct.bgmac_rx_header*, %struct.bgmac_rx_header** %60, align 8
  %62 = load i32, i32* @BGMAC_RX_BUF_OFFSET, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.bgmac_rx_header, %struct.bgmac_rx_header* %61, i64 %63
  store %struct.bgmac_rx_header* %64, %struct.bgmac_rx_header** %11, align 8
  %65 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %10, align 8
  %66 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %65, i32 0, i32 1
  %67 = load %struct.bgmac_rx_header*, %struct.bgmac_rx_header** %66, align 8
  %68 = bitcast %struct.bgmac_rx_header* %67 to i8*
  store i8* %68, i8** %13, align 8
  %69 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %10, align 8
  %70 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %47
  %73 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %74 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %10, align 8
  %75 = call i64 @bgmac_dma_rx_skb_for_slot(%struct.bgmac* %73, %struct.bgmac_slot_info* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.device*, %struct.device** %9, align 8
  %79 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %10, align 8
  %80 = call i32 @bgmac_dma_rx_poison_buf(%struct.device* %78, %struct.bgmac_slot_info* %79)
  br label %220

81:                                               ; preds = %72
  %82 = load %struct.device*, %struct.device** %9, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @BGMAC_RX_BUF_SIZE, align 4
  %85 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %86 = call i32 @dma_unmap_single(%struct.device* %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.bgmac_rx_header*, %struct.bgmac_rx_header** %11, align 8
  %88 = getelementptr inbounds %struct.bgmac_rx_header, %struct.bgmac_rx_header* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le16_to_cpu(i32 %89)
  store i32 %90, i32* %15, align 4
  %91 = load %struct.bgmac_rx_header*, %struct.bgmac_rx_header** %11, align 8
  %92 = getelementptr inbounds %struct.bgmac_rx_header, %struct.bgmac_rx_header* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le16_to_cpu(i32 %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp eq i32 %95, 57005
  br i1 %96, label %97, label %118

97:                                               ; preds = %81
  %98 = load i32, i32* %16, align 4
  %99 = icmp eq i32 %98, 48879
  br i1 %99, label %100, label %118

100:                                              ; preds = %97
  %101 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %102 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %105 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (%struct.TYPE_5__*, i8*, ...) @netdev_err(%struct.TYPE_5__* %103, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 @virt_to_head_page(i8* %108)
  %110 = call i32 @put_page(i32 %109)
  %111 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %112 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %111, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %220

118:                                              ; preds = %97, %81
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* @BGMAC_RX_ALLOC_SIZE, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %118
  %123 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %124 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %123, i32 0, i32 1
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %127 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (%struct.TYPE_5__*, i8*, ...) @netdev_err(%struct.TYPE_5__* %125, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load i8*, i8** %13, align 8
  %131 = call i32 @virt_to_head_page(i8* %130)
  %132 = call i32 @put_page(i32 %131)
  %133 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %134 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %133, i32 0, i32 1
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %141 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %140, i32 0, i32 1
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %220

147:                                              ; preds = %118
  %148 = load i64, i64* @ETH_FCS_LEN, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = sub nsw i64 %150, %148
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %15, align 4
  %153 = load i8*, i8** %13, align 8
  %154 = load i32, i32* @BGMAC_RX_ALLOC_SIZE, align 4
  %155 = call %struct.sk_buff* @build_skb(i8* %153, i32 %154)
  store %struct.sk_buff* %155, %struct.sk_buff** %12, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %157 = icmp ne %struct.sk_buff* %156, null
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %147
  %163 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %164 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %163, i32 0, i32 1
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = call i32 (%struct.TYPE_5__*, i8*, ...) @netdev_err(%struct.TYPE_5__* %165, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %167 = load i8*, i8** %13, align 8
  %168 = call i32 @virt_to_head_page(i8* %167)
  %169 = call i32 @put_page(i32 %168)
  %170 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %171 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %170, i32 0, i32 1
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  br label %220

177:                                              ; preds = %147
  %178 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %179 = load i32, i32* @BGMAC_RX_FRAME_OFFSET, align 4
  %180 = load i32, i32* @BGMAC_RX_BUF_OFFSET, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %181, %182
  %184 = call i32 @skb_put(%struct.sk_buff* %178, i32 %183)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %186 = load i32, i32* @BGMAC_RX_FRAME_OFFSET, align 4
  %187 = load i32, i32* @BGMAC_RX_BUF_OFFSET, align 4
  %188 = add nsw i32 %186, %187
  %189 = call i32 @skb_pull(%struct.sk_buff* %185, i32 %188)
  %190 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %191 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %190)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %193 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %194 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %193, i32 0, i32 1
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = call i32 @eth_type_trans(%struct.sk_buff* %192, %struct.TYPE_5__* %195)
  %197 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %198 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %15, align 4
  %200 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %201 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %200, i32 0, i32 1
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, %199
  store i32 %206, i32* %204, align 4
  %207 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %208 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %207, i32 0, i32 1
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  %214 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %215 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %214, i32 0, i32 0
  %216 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %217 = call i32 @napi_gro_receive(i32* %215, %struct.sk_buff* %216)
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %220

220:                                              ; preds = %177, %162, %122, %100, %77
  %221 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %222 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %223 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %224 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = call i32 @bgmac_dma_rx_setup_desc(%struct.bgmac* %221, %struct.bgmac_dma_ring* %222, i64 %226)
  %228 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %229 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 8
  %232 = sext i32 %231 to i64
  %233 = load i64, i64* @BGMAC_RX_RING_SLOTS, align 8
  %234 = icmp uge i64 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %220
  %236 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %237 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %236, i32 0, i32 0
  store i32 0, i32* %237, align 8
  br label %238

238:                                              ; preds = %235, %220
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* %6, align 4
  %241 = icmp sge i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  br label %244

243:                                              ; preds = %238
  br label %41

244:                                              ; preds = %242, %41
  %245 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %246 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %5, align 8
  %247 = call i32 @bgmac_dma_rx_update_index(%struct.bgmac* %245, %struct.bgmac_dma_ring* %246)
  %248 = load i32, i32* %8, align 4
  ret i32 %248
}

declare dso_local i32 @bgmac_read(%struct.bgmac*, i64) #1

declare dso_local i64 @bgmac_dma_rx_skb_for_slot(%struct.bgmac*, %struct.bgmac_slot_info*) #1

declare dso_local i32 @bgmac_dma_rx_poison_buf(%struct.device*, %struct.bgmac_slot_info*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @netdev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @virt_to_head_page(i8*) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_5__*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @bgmac_dma_rx_setup_desc(%struct.bgmac*, %struct.bgmac_dma_ring*, i64) #1

declare dso_local i32 @bgmac_dma_rx_update_index(%struct.bgmac*, %struct.bgmac_dma_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
