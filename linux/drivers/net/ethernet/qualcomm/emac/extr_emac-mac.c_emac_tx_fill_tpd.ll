; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_tx_fill_tpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_tx_fill_tpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.emac_tx_queue = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.emac_tpd = type { i32 }
%struct.emac_buffer = type { i32, i8*, %struct.sk_buff* }
%struct.TYPE_8__ = type { i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*, %struct.emac_tx_queue*, %struct.sk_buff*, %struct.emac_tpd*)* @emac_tx_fill_tpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_tx_fill_tpd(%struct.emac_adapter* %0, %struct.emac_tx_queue* %1, %struct.sk_buff* %2, %struct.emac_tpd* %3) #0 {
  %5 = alloca %struct.emac_adapter*, align 8
  %6 = alloca %struct.emac_tx_queue*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.emac_tpd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.emac_buffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %5, align 8
  store %struct.emac_tx_queue* %1, %struct.emac_tx_queue** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.emac_tpd* %3, %struct.emac_tpd** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %23 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call i32 @skb_headlen(%struct.sk_buff* %26)
  store i32 %27, i32* %11, align 4
  store %struct.emac_buffer* null, %struct.emac_buffer** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %28 = load %struct.emac_tpd*, %struct.emac_tpd** %8, align 8
  %29 = call i64 @TPD_LSO(%struct.emac_tpd* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %104

31:                                               ; preds = %4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call i32 @skb_transport_offset(%struct.sk_buff* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 @tcp_hdrlen(%struct.sk_buff* %34)
  %36 = add i32 %33, %35
  store i32 %36, i32* %13, align 4
  %37 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %38 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %39 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.emac_buffer* @GET_TPD_BUFFER(%struct.emac_tx_queue* %37, i32 %41)
  store %struct.emac_buffer* %42, %struct.emac_buffer** %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %45 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @virt_to_page(i64 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @offset_in_page(i64 %58)
  %60 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %61 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DMA_TO_DEVICE, align 4
  %64 = call i8* @dma_map_page(i32 %51, i32 %55, i32 %59, i32 %62, i32 %63)
  %65 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %66 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %68 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %74 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @dma_mapping_error(i32 %72, i8* %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %31
  br label %269

80:                                               ; preds = %31
  %81 = load %struct.emac_tpd*, %struct.emac_tpd** %8, align 8
  %82 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %83 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @lower_32_bits(i8* %84)
  %86 = call i32 @TPD_BUFFER_ADDR_L_SET(%struct.emac_tpd* %81, i32 %85)
  %87 = load %struct.emac_tpd*, %struct.emac_tpd** %8, align 8
  %88 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %89 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @upper_32_bits(i8* %90)
  %92 = call i32 @TPD_BUFFER_ADDR_H_SET(%struct.emac_tpd* %87, i32 %91)
  %93 = load %struct.emac_tpd*, %struct.emac_tpd** %8, align 8
  %94 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %95 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @TPD_BUF_LEN_SET(%struct.emac_tpd* %93, i32 %96)
  %98 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %99 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %100 = load %struct.emac_tpd*, %struct.emac_tpd** %8, align 8
  %101 = call i32 @emac_tx_tpd_create(%struct.emac_adapter* %98, %struct.emac_tx_queue* %99, %struct.emac_tpd* %100)
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  br label %104

104:                                              ; preds = %80, %4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %184

108:                                              ; preds = %104
  %109 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %110 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %111 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call %struct.emac_buffer* @GET_TPD_BUFFER(%struct.emac_tx_queue* %109, i32 %113)
  store %struct.emac_buffer* %114, %struct.emac_buffer** %12, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %13, align 4
  %117 = sub i32 %115, %116
  %118 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %119 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %121 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = zext i32 %129 to i64
  %131 = add nsw i64 %128, %130
  %132 = call i32 @virt_to_page(i64 %131)
  %133 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = zext i32 %136 to i64
  %138 = add nsw i64 %135, %137
  %139 = call i32 @offset_in_page(i64 %138)
  %140 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %141 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @DMA_TO_DEVICE, align 4
  %144 = call i8* @dma_map_page(i32 %125, i32 %132, i32 %139, i32 %142, i32 %143)
  %145 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %146 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  %147 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %148 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %154 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @dma_mapping_error(i32 %152, i8* %155)
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %16, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %108
  br label %269

160:                                              ; preds = %108
  %161 = load %struct.emac_tpd*, %struct.emac_tpd** %8, align 8
  %162 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %163 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @lower_32_bits(i8* %164)
  %166 = call i32 @TPD_BUFFER_ADDR_L_SET(%struct.emac_tpd* %161, i32 %165)
  %167 = load %struct.emac_tpd*, %struct.emac_tpd** %8, align 8
  %168 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %169 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @upper_32_bits(i8* %170)
  %172 = call i32 @TPD_BUFFER_ADDR_H_SET(%struct.emac_tpd* %167, i32 %171)
  %173 = load %struct.emac_tpd*, %struct.emac_tpd** %8, align 8
  %174 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %175 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @TPD_BUF_LEN_SET(%struct.emac_tpd* %173, i32 %176)
  %178 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %179 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %180 = load %struct.emac_tpd*, %struct.emac_tpd** %8, align 8
  %181 = call i32 @emac_tx_tpd_create(%struct.emac_adapter* %178, %struct.emac_tx_queue* %179, %struct.emac_tpd* %180)
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %15, align 4
  br label %184

184:                                              ; preds = %160, %104
  store i32 0, i32* %14, align 4
  br label %185

185:                                              ; preds = %258, %184
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp ult i32 %186, %187
  br i1 %188, label %189, label %261

189:                                              ; preds = %185
  %190 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %191 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %190)
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %14, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  store i32* %196, i32** %17, align 8
  %197 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %198 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %199 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call %struct.emac_buffer* @GET_TPD_BUFFER(%struct.emac_tx_queue* %197, i32 %201)
  store %struct.emac_buffer* %202, %struct.emac_buffer** %12, align 8
  %203 = load i32*, i32** %17, align 8
  %204 = call i32 @skb_frag_size(i32* %203)
  %205 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %206 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %208 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %207, i32 0, i32 0
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %17, align 8
  %214 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %215 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @DMA_TO_DEVICE, align 4
  %218 = call i8* @skb_frag_dma_map(i32 %212, i32* %213, i32 0, i32 %216, i32 %217)
  %219 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %220 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %219, i32 0, i32 1
  store i8* %218, i8** %220, align 8
  %221 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %222 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %221, i32 0, i32 0
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %228 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @dma_mapping_error(i32 %226, i8* %229)
  store i32 %230, i32* %16, align 4
  %231 = load i32, i32* %16, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %189
  br label %269

234:                                              ; preds = %189
  %235 = load %struct.emac_tpd*, %struct.emac_tpd** %8, align 8
  %236 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %237 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @lower_32_bits(i8* %238)
  %240 = call i32 @TPD_BUFFER_ADDR_L_SET(%struct.emac_tpd* %235, i32 %239)
  %241 = load %struct.emac_tpd*, %struct.emac_tpd** %8, align 8
  %242 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %243 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @upper_32_bits(i8* %244)
  %246 = call i32 @TPD_BUFFER_ADDR_H_SET(%struct.emac_tpd* %241, i32 %245)
  %247 = load %struct.emac_tpd*, %struct.emac_tpd** %8, align 8
  %248 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %249 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @TPD_BUF_LEN_SET(%struct.emac_tpd* %247, i32 %250)
  %252 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %253 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %254 = load %struct.emac_tpd*, %struct.emac_tpd** %8, align 8
  %255 = call i32 @emac_tx_tpd_create(%struct.emac_adapter* %252, %struct.emac_tx_queue* %253, %struct.emac_tpd* %254)
  %256 = load i32, i32* %15, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %15, align 4
  br label %258

258:                                              ; preds = %234
  %259 = load i32, i32* %14, align 4
  %260 = add i32 %259, 1
  store i32 %260, i32* %14, align 4
  br label %185

261:                                              ; preds = %185
  %262 = call i32 (...) @wmb()
  %263 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %264 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %265 = call i32 @emac_tx_tpd_mark_last(%struct.emac_adapter* %263, %struct.emac_tx_queue* %264)
  %266 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %267 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %268 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %267, i32 0, i32 2
  store %struct.sk_buff* %266, %struct.sk_buff** %268, align 8
  br label %312

269:                                              ; preds = %233, %159, %79
  %270 = load i32, i32* %10, align 4
  %271 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %272 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  store i32 %270, i32* %273, align 4
  br label %274

274:                                              ; preds = %308, %269
  %275 = load i32, i32* %15, align 4
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* %15, align 4
  %277 = icmp ne i32 %275, 0
  br i1 %277, label %278, label %309

278:                                              ; preds = %274
  %279 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %280 = load i32, i32* %10, align 4
  %281 = call %struct.emac_buffer* @GET_TPD_BUFFER(%struct.emac_tx_queue* %279, i32 %280)
  store %struct.emac_buffer* %281, %struct.emac_buffer** %12, align 8
  %282 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %283 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %282, i32 0, i32 0
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %289 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %288, i32 0, i32 1
  %290 = load i8*, i8** %289, align 8
  %291 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %292 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @DMA_TO_DEVICE, align 4
  %295 = call i32 @dma_unmap_page(i32 %287, i8* %290, i32 %293, i32 %294)
  %296 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %297 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %296, i32 0, i32 1
  store i8* null, i8** %297, align 8
  %298 = load %struct.emac_buffer*, %struct.emac_buffer** %12, align 8
  %299 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %298, i32 0, i32 0
  store i32 0, i32* %299, align 8
  %300 = load i32, i32* %10, align 4
  %301 = add i32 %300, 1
  store i32 %301, i32* %10, align 4
  %302 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %6, align 8
  %303 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = icmp eq i32 %301, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %278
  store i32 0, i32* %10, align 4
  br label %308

308:                                              ; preds = %307, %278
  br label %274

309:                                              ; preds = %274
  %310 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %311 = call i32 @dev_kfree_skb(%struct.sk_buff* %310)
  br label %312

312:                                              ; preds = %309, %261
  ret void
}

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @TPD_LSO(%struct.emac_tpd*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.emac_buffer* @GET_TPD_BUFFER(%struct.emac_tx_queue*, i32) #1

declare dso_local i8* @dma_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i64) #1

declare dso_local i32 @offset_in_page(i64) #1

declare dso_local i32 @dma_mapping_error(i32, i8*) #1

declare dso_local i32 @TPD_BUFFER_ADDR_L_SET(%struct.emac_tpd*, i32) #1

declare dso_local i32 @lower_32_bits(i8*) #1

declare dso_local i32 @TPD_BUFFER_ADDR_H_SET(%struct.emac_tpd*, i32) #1

declare dso_local i32 @upper_32_bits(i8*) #1

declare dso_local i32 @TPD_BUF_LEN_SET(%struct.emac_tpd*, i32) #1

declare dso_local i32 @emac_tx_tpd_create(%struct.emac_adapter*, %struct.emac_tx_queue*, %struct.emac_tpd*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i8* @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @emac_tx_tpd_mark_last(%struct.emac_adapter*, %struct.emac_tx_queue*) #1

declare dso_local i32 @dma_unmap_page(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
