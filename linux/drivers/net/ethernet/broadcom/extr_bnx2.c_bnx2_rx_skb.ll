; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.bnx2 = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2_rx_ring_info = type { i64, i64, %struct.bnx2_sw_pg* }
%struct.bnx2_sw_pg = type { i32* }
%struct.TYPE_4__ = type { i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@BNX2_RX_OFFSET = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.bnx2*, %struct.bnx2_rx_ring_info*, i32*, i32, i32, i32, i32)* @bnx2_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @bnx2_rx_skb(%struct.bnx2* %0, %struct.bnx2_rx_ring_info* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.bnx2*, align 8
  %10 = alloca %struct.bnx2_rx_ring_info*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.bnx2_sw_pg*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %9, align 8
  store %struct.bnx2_rx_ring_info* %1, %struct.bnx2_rx_ring_info** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = and i32 %31, 65535
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %17, align 8
  %34 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %35 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %36 = load i64, i64* %17, align 8
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call i32 @bnx2_alloc_rx_data(%struct.bnx2* %34, %struct.bnx2_rx_ring_info* %35, i64 %36, i32 %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %7
  %43 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %44 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %15, align 4
  %47 = ashr i32 %46, 16
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %17, align 8
  %50 = call i32 @bnx2_reuse_rx_data(%struct.bnx2* %43, %struct.bnx2_rx_ring_info* %44, i32* %45, i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %83, %42
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  %56 = add i32 %55, 4
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %13, align 4
  %59 = sub i32 %57, %58
  %60 = call i32 @PAGE_ALIGN(i32 %59)
  %61 = load i32, i32* @PAGE_SHIFT, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %20, align 4
  %63 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %64 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %65 = load i32, i32* %20, align 4
  %66 = call i32 @bnx2_reuse_rx_skb_pages(%struct.bnx2* %63, %struct.bnx2_rx_ring_info* %64, %struct.sk_buff* null, i32 %65)
  br label %67

67:                                               ; preds = %54, %51
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %280

68:                                               ; preds = %7
  %69 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %70 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %75 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %78 = call i32 @dma_unmap_single(i32* %72, i32 %73, i32 %76, i32 %77)
  %79 = load i32*, i32** %11, align 8
  %80 = call %struct.sk_buff* @build_skb(i32* %79, i32 0)
  store %struct.sk_buff* %80, %struct.sk_buff** %18, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %82 = icmp ne %struct.sk_buff* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %68
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @kfree(i32* %84)
  br label %51

86:                                               ; preds = %68
  %87 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i64 @get_l2_fhdr(i32* %88)
  %90 = inttoptr i64 %89 to i32*
  %91 = load i32*, i32** %11, align 8
  %92 = ptrtoint i32* %90 to i64
  %93 = ptrtoint i32* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 4
  %96 = load i64, i64* @BNX2_RX_OFFSET, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @skb_reserve(%struct.sk_buff* %87, i64 %97)
  %99 = load i32, i32* %13, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %86
  %102 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @skb_put(%struct.sk_buff* %102, i32 %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %105, %struct.sk_buff** %8, align 8
  br label %280

106:                                              ; preds = %86
  %107 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %108 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %26, align 8
  %110 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %111 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %27, align 8
  %113 = load i32, i32* %12, align 4
  %114 = add i32 %113, 4
  %115 = load i32, i32* %13, align 4
  %116 = sub i32 %114, %115
  store i32 %116, i32* %23, align 4
  %117 = load i32, i32* %23, align 4
  %118 = call i32 @PAGE_ALIGN(i32 %117)
  %119 = load i32, i32* @PAGE_SHIFT, align 4
  %120 = ashr i32 %118, %119
  store i32 %120, i32* %24, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @skb_put(%struct.sk_buff* %121, i32 %122)
  store i32 0, i32* %21, align 4
  br label %124

124:                                              ; preds = %268, %106
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* %24, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %271

128:                                              ; preds = %124
  %129 = load i32, i32* %23, align 4
  %130 = load i64, i64* @PAGE_SIZE, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @min(i32 %129, i32 %131)
  store i32 %132, i32* %22, align 4
  %133 = load i32, i32* %22, align 4
  %134 = icmp ule i32 %133, 4
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %185

138:                                              ; preds = %128
  %139 = load i32, i32* %22, align 4
  %140 = sub i32 4, %139
  store i32 %140, i32* %29, align 4
  %141 = load i64, i64* %26, align 8
  %142 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %143 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load i64, i64* %27, align 8
  %145 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %146 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %148 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %149 = load i32, i32* %24, align 4
  %150 = load i32, i32* %21, align 4
  %151 = sub i32 %149, %150
  %152 = call i32 @bnx2_reuse_rx_skb_pages(%struct.bnx2* %147, %struct.bnx2_rx_ring_info* %148, %struct.sk_buff* null, i32 %151)
  %153 = load i32, i32* %29, align 4
  %154 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sub i32 %156, %153
  store i32 %157, i32* %155, align 4
  %158 = load i32, i32* %21, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %138
  %161 = load i32, i32* %29, align 4
  %162 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sub i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %183

166:                                              ; preds = %138
  %167 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %168 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %167)
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %21, align 4
  %172 = sub i32 %171, 1
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  store i32* %174, i32** %30, align 8
  %175 = load i32*, i32** %30, align 8
  %176 = load i32, i32* %29, align 4
  %177 = call i32 @skb_frag_size_sub(i32* %175, i32 %176)
  %178 = load i32, i32* %29, align 4
  %179 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %180 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = sub i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %166, %160
  %184 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %184, %struct.sk_buff** %8, align 8
  br label %280

185:                                              ; preds = %128
  %186 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %187 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %186, i32 0, i32 2
  %188 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %187, align 8
  %189 = load i64, i64* %26, align 8
  %190 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %188, i64 %189
  store %struct.bnx2_sw_pg* %190, %struct.bnx2_sw_pg** %25, align 8
  %191 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %25, align 8
  %192 = load i32, i32* @mapping, align 4
  %193 = call i32 @dma_unmap_addr(%struct.bnx2_sw_pg* %191, i32 %192)
  store i32 %193, i32* %28, align 4
  %194 = load i32, i32* %21, align 4
  %195 = load i32, i32* %24, align 4
  %196 = sub i32 %195, 1
  %197 = icmp eq i32 %194, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %185
  %199 = load i32, i32* %22, align 4
  %200 = sub i32 %199, 4
  store i32 %200, i32* %22, align 4
  br label %201

201:                                              ; preds = %198, %185
  %202 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %203 = load i32, i32* %21, align 4
  %204 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %25, align 8
  %205 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %22, align 4
  %208 = call i32 @skb_fill_page_desc(%struct.sk_buff* %202, i32 %203, i32* %206, i32 0, i32 %207)
  %209 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %25, align 8
  %210 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %209, i32 0, i32 0
  store i32* null, i32** %210, align 8
  %211 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %212 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %213 = load i64, i64* %27, align 8
  %214 = call i64 @BNX2_RX_PG_RING_IDX(i64 %213)
  %215 = load i32, i32* @GFP_ATOMIC, align 4
  %216 = call i32 @bnx2_alloc_rx_page(%struct.bnx2* %211, %struct.bnx2_rx_ring_info* %212, i64 %214, i32 %215)
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* %16, align 4
  %218 = call i64 @unlikely(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %234

220:                                              ; preds = %201
  %221 = load i64, i64* %26, align 8
  %222 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %223 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %222, i32 0, i32 0
  store i64 %221, i64* %223, align 8
  %224 = load i64, i64* %27, align 8
  %225 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %226 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  %227 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %228 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %229 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %230 = load i32, i32* %24, align 4
  %231 = load i32, i32* %21, align 4
  %232 = sub i32 %230, %231
  %233 = call i32 @bnx2_reuse_rx_skb_pages(%struct.bnx2* %227, %struct.bnx2_rx_ring_info* %228, %struct.sk_buff* %229, i32 %232)
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %280

234:                                              ; preds = %201
  %235 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %236 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %235, i32 0, i32 0
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load i32, i32* %28, align 4
  %240 = load i64, i64* @PAGE_SIZE, align 8
  %241 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %242 = call i32 @dma_unmap_page(i32* %238, i32 %239, i64 %240, i32 %241)
  %243 = load i32, i32* %22, align 4
  %244 = load i32, i32* %23, align 4
  %245 = sub i32 %244, %243
  store i32 %245, i32* %23, align 4
  %246 = load i32, i32* %22, align 4
  %247 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %248 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = add i32 %249, %246
  store i32 %250, i32* %248, align 4
  %251 = load i64, i64* @PAGE_SIZE, align 8
  %252 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %253 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %255, %251
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %253, align 4
  %258 = load i32, i32* %22, align 4
  %259 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %260 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = add i32 %261, %258
  store i32 %262, i32* %260, align 4
  %263 = load i64, i64* %27, align 8
  %264 = call i64 @BNX2_NEXT_RX_BD(i64 %263)
  store i64 %264, i64* %27, align 8
  %265 = load i64, i64* %26, align 8
  %266 = call i64 @BNX2_NEXT_RX_BD(i64 %265)
  %267 = call i64 @BNX2_RX_PG_RING_IDX(i64 %266)
  store i64 %267, i64* %26, align 8
  br label %268

268:                                              ; preds = %234
  %269 = load i32, i32* %21, align 4
  %270 = add i32 %269, 1
  store i32 %270, i32* %21, align 4
  br label %124

271:                                              ; preds = %124
  %272 = load i64, i64* %27, align 8
  %273 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %274 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %273, i32 0, i32 1
  store i64 %272, i64* %274, align 8
  %275 = load i64, i64* %26, align 8
  %276 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %277 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %276, i32 0, i32 0
  store i64 %275, i64* %277, align 8
  br label %278

278:                                              ; preds = %271
  %279 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %279, %struct.sk_buff** %8, align 8
  br label %280

280:                                              ; preds = %278, %220, %183, %101, %67
  %281 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  ret %struct.sk_buff* %281
}

declare dso_local i32 @bnx2_alloc_rx_data(%struct.bnx2*, %struct.bnx2_rx_ring_info*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bnx2_reuse_rx_data(%struct.bnx2*, %struct.bnx2_rx_ring_info*, i32*, i64, i64) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @bnx2_reuse_rx_skb_pages(%struct.bnx2*, %struct.bnx2_rx_ring_info*, %struct.sk_buff*, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @build_skb(i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @get_l2_fhdr(i32*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size_sub(i32*, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.bnx2_sw_pg*, i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32*, i32, i32) #1

declare dso_local i32 @bnx2_alloc_rx_page(%struct.bnx2*, %struct.bnx2_rx_ring_info*, i64, i32) #1

declare dso_local i64 @BNX2_RX_PG_RING_IDX(i64) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i64, i32) #1

declare dso_local i64 @BNX2_NEXT_RX_BD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
