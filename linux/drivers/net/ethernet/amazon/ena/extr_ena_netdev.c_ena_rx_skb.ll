; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, %struct.ena_rx_buffer*, i32 }
%struct.ena_rx_buffer = type { i32, i32*, i32 }
%struct.ena_ring = type { i64, i64*, %struct.ena_rx_buffer*, i32, i32, i32, i32 }
%struct.ena_com_rx_buf_info = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Page is NULL\0A\00", align 1
@rx_status = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"rx_info %p page %p\0A\00", align 1
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"rx allocated small packet. len %d. data_len %d\0A\00", align 1
@paddr = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ENA_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"rx skb updated. len %d. data_len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ena_ring*, %struct.ena_com_rx_buf_info*, i64, i64*)* @ena_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ena_rx_skb(%struct.ena_ring* %0, %struct.ena_com_rx_buf_info* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ena_ring*, align 8
  %7 = alloca %struct.ena_com_rx_buf_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ena_rx_buffer*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.ena_ring* %0, %struct.ena_ring** %6, align 8
  store %struct.ena_com_rx_buf_info* %1, %struct.ena_com_rx_buf_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %14, align 8
  %16 = load %struct.ena_com_rx_buf_info*, %struct.ena_com_rx_buf_info** %7, align 8
  %17 = load i64, i64* %14, align 8
  %18 = getelementptr inbounds %struct.ena_com_rx_buf_info, %struct.ena_com_rx_buf_info* %16, i64 %17
  %19 = getelementptr inbounds %struct.ena_com_rx_buf_info, %struct.ena_com_rx_buf_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %12, align 8
  %21 = load %struct.ena_com_rx_buf_info*, %struct.ena_com_rx_buf_info** %7, align 8
  %22 = load i64, i64* %14, align 8
  %23 = getelementptr inbounds %struct.ena_com_rx_buf_info, %struct.ena_com_rx_buf_info* %21, i64 %22
  %24 = getelementptr inbounds %struct.ena_com_rx_buf_info, %struct.ena_com_rx_buf_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %13, align 8
  %26 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %27 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %26, i32 0, i32 2
  %28 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %27, align 8
  %29 = load i64, i64* %13, align 8
  %30 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %28, i64 %29
  store %struct.ena_rx_buffer* %30, %struct.ena_rx_buffer** %11, align 8
  %31 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %11, align 8
  %32 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %4
  %40 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %41 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @rx_err, align 4
  %44 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %45 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @netif_err(i32 %42, i32 %43, i32 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %249

48:                                               ; preds = %4
  %49 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %50 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @rx_status, align 4
  %53 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %54 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %11, align 8
  %57 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %11, align 8
  %58 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @netif_dbg(i32 %51, i32 %52, i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.ena_rx_buffer* %56, i32* %59)
  %61 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %11, align 8
  %62 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i8* @page_address(i32* %63)
  %65 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %11, align 8
  %66 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr i8, i8* %64, i64 %68
  store i8* %69, i8** %15, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = load i32, i32* @NET_IP_ALIGN, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %70, i64 %72
  %74 = call i32 @prefetch(i8* %73)
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %77 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ule i64 %75, %78
  br i1 %79, label %80, label %155

80:                                               ; preds = %48
  %81 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %82 = call %struct.sk_buff* @ena_alloc_skb(%struct.ena_ring* %81, i32 0)
  store %struct.sk_buff* %82, %struct.sk_buff** %10, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %249

90:                                               ; preds = %80
  %91 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %92 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @rx_status, align 4
  %95 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %96 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 1
  %100 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %99, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @netif_dbg(i32 %93, i32 %94, i32 %97, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), %struct.ena_rx_buffer* %100, i32* %103)
  %105 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %106 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %11, align 8
  %109 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %108, i32 0, i32 2
  %110 = load i32, i32* @paddr, align 4
  %111 = call i32 @dma_unmap_addr(i32* %109, i32 %110)
  %112 = load i64, i64* %12, align 8
  %113 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %114 = call i32 @dma_sync_single_for_cpu(i32 %107, i32 %111, i64 %112, i32 %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %115, i8* %116, i64 %117)
  %119 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %120 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %11, align 8
  %123 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %122, i32 0, i32 2
  %124 = load i32, i32* @paddr, align 4
  %125 = call i32 @dma_unmap_addr(i32* %123, i32 %124)
  %126 = load i64, i64* %12, align 8
  %127 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %128 = call i32 @dma_sync_single_for_device(i32 %121, i32 %125, i64 %126, i32 %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %130 = load i64, i64* %12, align 8
  %131 = call i32 @skb_put(%struct.sk_buff* %129, i64 %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %133 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %134 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @eth_type_trans(%struct.sk_buff* %132, i32 %135)
  %137 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load i64, i64* %13, align 8
  %140 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %141 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load i64*, i64** %9, align 8
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  store i64 %139, i64* %145, align 8
  %146 = load i64*, i64** %9, align 8
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %150 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @ENA_RX_RING_IDX_ADD(i64 %147, i64 %148, i32 %151)
  %153 = load i64*, i64** %9, align 8
  store i64 %152, i64* %153, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %154, %struct.sk_buff** %5, align 8
  br label %249

155:                                              ; preds = %48
  %156 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %157 = call %struct.sk_buff* @ena_alloc_skb(%struct.ena_ring* %156, i32 1)
  store %struct.sk_buff* %157, %struct.sk_buff** %10, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %159 = icmp ne %struct.sk_buff* %158, null
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %249

165:                                              ; preds = %155
  br label %166

166:                                              ; preds = %246, %165
  %167 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %168 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %11, align 8
  %171 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %170, i32 0, i32 2
  %172 = load i32, i32* @paddr, align 4
  %173 = call i32 @dma_unmap_addr(i32* %171, i32 %172)
  %174 = load i32, i32* @ENA_PAGE_SIZE, align 4
  %175 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %176 = call i32 @dma_unmap_page(i32 %169, i32 %173, i32 %174, i32 %175)
  %177 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %178 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %179 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %178)
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %11, align 8
  %183 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %11, align 8
  %186 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i64, i64* %12, align 8
  %189 = load i32, i32* @ENA_PAGE_SIZE, align 4
  %190 = call i32 @skb_add_rx_frag(%struct.sk_buff* %177, i32 %181, i32* %184, i32 %187, i64 %188, i32 %189)
  %191 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %192 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @rx_status, align 4
  %195 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %196 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %199 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %198, i32 0, i32 1
  %200 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %199, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @netif_dbg(i32 %193, i32 %194, i32 %197, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), %struct.ena_rx_buffer* %200, i32* %203)
  %205 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %11, align 8
  %206 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %205, i32 0, i32 1
  store i32* null, i32** %206, align 8
  %207 = load i64, i64* %13, align 8
  %208 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %209 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %208, i32 0, i32 1
  %210 = load i64*, i64** %209, align 8
  %211 = load i64*, i64** %9, align 8
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  store i64 %207, i64* %213, align 8
  %214 = load i64*, i64** %9, align 8
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %217 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = call i64 @ENA_RX_RING_IDX_NEXT(i64 %215, i32 %218)
  %220 = load i64*, i64** %9, align 8
  store i64 %219, i64* %220, align 8
  %221 = load i64, i64* %8, align 8
  %222 = add nsw i64 %221, -1
  store i64 %222, i64* %8, align 8
  %223 = icmp eq i64 %222, 0
  %224 = zext i1 %223 to i32
  %225 = call i64 @likely(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %166
  br label %247

228:                                              ; preds = %166
  %229 = load i64, i64* %14, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %14, align 8
  %231 = load %struct.ena_com_rx_buf_info*, %struct.ena_com_rx_buf_info** %7, align 8
  %232 = load i64, i64* %14, align 8
  %233 = getelementptr inbounds %struct.ena_com_rx_buf_info, %struct.ena_com_rx_buf_info* %231, i64 %232
  %234 = getelementptr inbounds %struct.ena_com_rx_buf_info, %struct.ena_com_rx_buf_info* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %12, align 8
  %236 = load %struct.ena_com_rx_buf_info*, %struct.ena_com_rx_buf_info** %7, align 8
  %237 = load i64, i64* %14, align 8
  %238 = getelementptr inbounds %struct.ena_com_rx_buf_info, %struct.ena_com_rx_buf_info* %236, i64 %237
  %239 = getelementptr inbounds %struct.ena_com_rx_buf_info, %struct.ena_com_rx_buf_info* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %13, align 8
  %241 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %242 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %241, i32 0, i32 2
  %243 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %242, align 8
  %244 = load i64, i64* %13, align 8
  %245 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %243, i64 %244
  store %struct.ena_rx_buffer* %245, %struct.ena_rx_buffer** %11, align 8
  br label %246

246:                                              ; preds = %228
  br i1 true, label %166, label %247

247:                                              ; preds = %246, %227
  %248 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %248, %struct.sk_buff** %5, align 8
  br label %249

249:                                              ; preds = %247, %164, %90, %89, %39
  %250 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %250
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_err(i32, i32, i32, i8*) #1

declare dso_local i32 @netif_dbg(i32, i32, i32, i8*, %struct.ena_rx_buffer*, i32*) #1

declare dso_local i8* @page_address(i32*) #1

declare dso_local i32 @prefetch(i8*) #1

declare dso_local %struct.sk_buff* @ena_alloc_skb(%struct.ena_ring*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(i32*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i64) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i64 @ENA_RX_RING_IDX_ADD(i64, i64, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32*, i32, i64, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @ENA_RX_RING_IDX_NEXT(i64, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
