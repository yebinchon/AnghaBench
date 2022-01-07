; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_rx_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_rx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_ring_s = type { i64, i64, %struct.TYPE_5__, i32, i32, %struct.aq_ring_buff_s* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.aq_ring_buff_s = type { i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.napi_struct = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i64, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@AQ_CFG_RX_FRAME_MAX = common dso_local global i64 0, align 8
@AQ_SKB_ALIGN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AQ_CFG_RX_HDR_SIZE = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aq_ring_rx_clean(%struct.aq_ring_s* %0, %struct.napi_struct* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.aq_ring_s*, align 8
  %6 = alloca %struct.napi_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.aq_ring_buff_s*, align 8
  %13 = alloca %struct.aq_ring_buff_s*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.aq_ring_s* %0, %struct.aq_ring_s** %5, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %19 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.net_device* @aq_nic_get_ndev(i32 %20)
  store %struct.net_device* %21, %struct.net_device** %9, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %436, %4
  %23 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %24 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %27 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %30, %22
  %34 = phi i1 [ false, %22 ], [ %32, %30 ]
  br i1 %34, label %35, label %449

35:                                               ; preds = %33
  %36 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %37 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %36, i32 0, i32 5
  %38 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %37, align 8
  %39 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %40 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %38, i64 %41
  store %struct.aq_ring_buff_s* %42, %struct.aq_ring_buff_s** %12, align 8
  store %struct.aq_ring_buff_s* null, %struct.aq_ring_buff_s** %13, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %43 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %44 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %436

48:                                               ; preds = %35
  %49 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %50 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %49, i32 0, i32 13
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %143, label %53

53:                                               ; preds = %48
  %54 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  store %struct.aq_ring_buff_s* %54, %struct.aq_ring_buff_s** %13, align 8
  br label %55

55:                                               ; preds = %95, %53
  %56 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %57 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %15, align 4
  %59 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %60 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %59, i32 0, i32 5
  %61 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %61, i64 %63
  store %struct.aq_ring_buff_s* %64, %struct.aq_ring_buff_s** %13, align 8
  %65 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %66 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %70 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @aq_ring_dx_in_range(i64 %67, i32 %68, i64 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %55
  br label %101

80:                                               ; preds = %55
  %81 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %82 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %85 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %89 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %92 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %80
  %96 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %97 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %96, i32 0, i32 13
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  %100 = xor i1 %99, true
  br i1 %100, label %55, label %101

101:                                              ; preds = %95, %79
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  store i32 0, i32* %11, align 4
  br label %450

105:                                              ; preds = %101
  %106 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %107 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %112 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %110, %105
  %116 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  store %struct.aq_ring_buff_s* %116, %struct.aq_ring_buff_s** %13, align 8
  br label %117

117:                                              ; preds = %129, %115
  %118 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %119 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %15, align 4
  %121 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %122 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %121, i32 0, i32 5
  %123 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %123, i64 %125
  store %struct.aq_ring_buff_s* %126, %struct.aq_ring_buff_s** %13, align 8
  %127 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %128 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  br label %129

129:                                              ; preds = %117
  %130 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %131 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %130, i32 0, i32 13
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  %134 = xor i1 %133, true
  br i1 %134, label %117, label %135

135:                                              ; preds = %129
  %136 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %137 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  br label %436

142:                                              ; preds = %110
  br label %143

143:                                              ; preds = %142, %48
  %144 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %145 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %150 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  br label %436

155:                                              ; preds = %143
  %156 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %157 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @aq_nic_get_dev(i32 %158)
  %160 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %161 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %160, i32 0, i32 12
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %165 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %164, i32 0, i32 12
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %169 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %172 = call i32 @dma_sync_single_range_for_cpu(i32 %159, i32 %163, i64 %167, i64 %170, i32 %171)
  %173 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %174 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %173, i32 0, i32 13
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %211

177:                                              ; preds = %155
  %178 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %179 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @AQ_CFG_RX_FRAME_MAX, align 8
  %182 = load i64, i64* @AQ_SKB_ALIGN, align 8
  %183 = sub nsw i64 %181, %182
  %184 = icmp sle i64 %180, %183
  br i1 %184, label %185, label %211

185:                                              ; preds = %177
  %186 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %187 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %186, i32 0, i32 12
  %188 = call i32 @aq_buf_vaddr(%struct.TYPE_6__* %187)
  %189 = load i64, i64* @AQ_CFG_RX_FRAME_MAX, align 8
  %190 = call %struct.sk_buff* @build_skb(i32 %188, i64 %189)
  store %struct.sk_buff* %190, %struct.sk_buff** %14, align 8
  %191 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %192 = icmp ne %struct.sk_buff* %191, null
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = call i64 @unlikely(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %185
  %198 = load i32, i32* @ENOMEM, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %11, align 4
  br label %450

200:                                              ; preds = %185
  %201 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %202 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %203 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @skb_put(%struct.sk_buff* %201, i64 %204)
  %206 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %207 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %206, i32 0, i32 12
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @page_ref_inc(i32 %209)
  br label %373

211:                                              ; preds = %177, %155
  %212 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %213 = load i64, i64* @AQ_CFG_RX_HDR_SIZE, align 8
  %214 = call %struct.sk_buff* @napi_alloc_skb(%struct.napi_struct* %212, i64 %213)
  store %struct.sk_buff* %214, %struct.sk_buff** %14, align 8
  %215 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %216 = icmp ne %struct.sk_buff* %215, null
  %217 = xor i1 %216, true
  %218 = zext i1 %217 to i32
  %219 = call i64 @unlikely(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %211
  %222 = load i32, i32* @ENOMEM, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %11, align 4
  br label %450

224:                                              ; preds = %211
  %225 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %226 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %17, align 8
  %228 = load i64, i64* %17, align 8
  %229 = load i64, i64* @AQ_CFG_RX_HDR_SIZE, align 8
  %230 = icmp sgt i64 %228, %229
  br i1 %230, label %231, label %240

231:                                              ; preds = %224
  %232 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %233 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %236 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %235, i32 0, i32 12
  %237 = call i32 @aq_buf_vaddr(%struct.TYPE_6__* %236)
  %238 = load i64, i64* @AQ_CFG_RX_HDR_SIZE, align 8
  %239 = call i64 @eth_get_headlen(i32 %234, i32 %237, i64 %238)
  store i64 %239, i64* %17, align 8
  br label %240

240:                                              ; preds = %231, %224
  %241 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %242 = load i64, i64* %17, align 8
  %243 = call i32 @__skb_put(%struct.sk_buff* %241, i64 %242)
  %244 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %245 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %244, i32 0, i32 12
  %246 = call i32 @aq_buf_vaddr(%struct.TYPE_6__* %245)
  %247 = load i64, i64* %17, align 8
  %248 = call i32 @ALIGN(i64 %247, i32 8)
  %249 = call i32 @memcpy(i32 %243, i32 %246, i32 %248)
  %250 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %251 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* %17, align 8
  %254 = sub nsw i64 %252, %253
  %255 = icmp sgt i64 %254, 0
  br i1 %255, label %256, label %280

256:                                              ; preds = %240
  %257 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %258 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %259 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %258, i32 0, i32 12
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %263 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %262, i32 0, i32 12
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* %17, align 8
  %267 = add nsw i64 %265, %266
  %268 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %269 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* %17, align 8
  %272 = sub nsw i64 %270, %271
  %273 = load i64, i64* @AQ_CFG_RX_FRAME_MAX, align 8
  %274 = call i32 @skb_add_rx_frag(%struct.sk_buff* %257, i32 0, i32 %261, i64 %267, i64 %272, i64 %273)
  %275 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %276 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %275, i32 0, i32 12
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @page_ref_inc(i32 %278)
  br label %280

280:                                              ; preds = %256, %240
  %281 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %282 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %281, i32 0, i32 13
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %372, label %285

285:                                              ; preds = %280
  %286 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  store %struct.aq_ring_buff_s* %286, %struct.aq_ring_buff_s** %13, align 8
  store i32 1, i32* %16, align 4
  br label %287

287:                                              ; preds = %365, %285
  %288 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %289 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %15, align 4
  %291 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %292 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %291, i32 0, i32 5
  %293 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %292, align 8
  %294 = load i32, i32* %15, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %293, i64 %295
  store %struct.aq_ring_buff_s* %296, %struct.aq_ring_buff_s** %13, align 8
  %297 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %298 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @aq_nic_get_dev(i32 %299)
  %301 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %302 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %301, i32 0, i32 12
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %306 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %305, i32 0, i32 12
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %310 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %309, i32 0, i32 3
  %311 = load i64, i64* %310, align 8
  %312 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %313 = call i32 @dma_sync_single_range_for_cpu(i32 %300, i32 %304, i64 %308, i64 %311, i32 %312)
  %314 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %315 = load i32, i32* %16, align 4
  %316 = add i32 %315, 1
  store i32 %316, i32* %16, align 4
  %317 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %318 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %317, i32 0, i32 12
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %322 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %321, i32 0, i32 12
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %326 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %325, i32 0, i32 3
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @AQ_CFG_RX_FRAME_MAX, align 8
  %329 = call i32 @skb_add_rx_frag(%struct.sk_buff* %314, i32 %315, i32 %320, i64 %324, i64 %327, i64 %328)
  %330 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %331 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %330, i32 0, i32 12
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @page_ref_inc(i32 %333)
  %335 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %336 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %335, i32 0, i32 0
  store i32 1, i32* %336, align 8
  %337 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %338 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %337, i32 0, i32 11
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %341 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %340, i32 0, i32 11
  %342 = load i32, i32* %341, align 4
  %343 = and i32 %342, %339
  store i32 %343, i32* %341, align 4
  %344 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %345 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %344, i32 0, i32 10
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %348 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %347, i32 0, i32 10
  %349 = load i32, i32* %348, align 8
  %350 = and i32 %349, %346
  store i32 %350, i32* %348, align 8
  %351 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %352 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %351, i32 0, i32 9
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %355 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %354, i32 0, i32 9
  %356 = load i32, i32* %355, align 4
  %357 = and i32 %356, %353
  store i32 %357, i32* %355, align 4
  %358 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %359 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %358, i32 0, i32 8
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %362 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %361, i32 0, i32 8
  %363 = load i32, i32* %362, align 8
  %364 = or i32 %363, %360
  store i32 %364, i32* %362, align 8
  br label %365

365:                                              ; preds = %287
  %366 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %13, align 8
  %367 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %366, i32 0, i32 13
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  %370 = xor i1 %369, true
  br i1 %370, label %287, label %371

371:                                              ; preds = %365
  br label %372

372:                                              ; preds = %371, %280
  br label %373

373:                                              ; preds = %372, %200
  %374 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %375 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %374, i32 0, i32 7
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %386

378:                                              ; preds = %373
  %379 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %380 = load i32, i32* @ETH_P_8021Q, align 4
  %381 = call i32 @htons(i32 %380)
  %382 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %383 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %382, i32 0, i32 6
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %379, i32 %381, i32 %384)
  br label %386

386:                                              ; preds = %378, %373
  %387 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %388 = load %struct.net_device*, %struct.net_device** %9, align 8
  %389 = call i32 @eth_type_trans(%struct.sk_buff* %387, %struct.net_device* %388)
  %390 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %391 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %390, i32 0, i32 1
  store i32 %389, i32* %391, align 8
  %392 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %393 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %394 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %395 = call i32 @aq_rx_checksum(%struct.aq_ring_s* %392, %struct.aq_ring_buff_s* %393, %struct.sk_buff* %394)
  %396 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %397 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %398 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %397, i32 0, i32 5
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %12, align 8
  %401 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %400, i32 0, i32 4
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %386
  %405 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  br label %408

406:                                              ; preds = %386
  %407 = load i32, i32* @PKT_HASH_TYPE_NONE, align 4
  br label %408

408:                                              ; preds = %406, %404
  %409 = phi i32 [ %405, %404 ], [ %407, %406 ]
  %410 = call i32 @skb_set_hash(%struct.sk_buff* %396, i32 %399, i32 %409)
  %411 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %412 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %413 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @skb_record_rx_queue(%struct.sk_buff* %411, i32 %414)
  %416 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %417 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %416, i32 0, i32 2
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %419, align 4
  %422 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %423 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %426 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %425, i32 0, i32 2
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = sext i32 %429 to i64
  %431 = add nsw i64 %430, %424
  %432 = trunc i64 %431 to i32
  store i32 %432, i32* %428, align 8
  %433 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %434 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %435 = call i32 @napi_gro_receive(%struct.napi_struct* %433, %struct.sk_buff* %434)
  br label %436

436:                                              ; preds = %408, %148, %135, %47
  %437 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %438 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %439 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = call i64 @aq_ring_next_dx(%struct.aq_ring_s* %437, i64 %440)
  %442 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %443 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %442, i32 0, i32 0
  store i64 %441, i64* %443, align 8
  %444 = load i32, i32* %8, align 4
  %445 = add nsw i32 %444, -1
  store i32 %445, i32* %8, align 4
  %446 = load i32*, i32** %7, align 8
  %447 = load i32, i32* %446, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %446, align 4
  br label %22

449:                                              ; preds = %33
  br label %450

450:                                              ; preds = %449, %221, %197, %104
  %451 = load i32, i32* %11, align 4
  ret i32 %451
}

declare dso_local %struct.net_device* @aq_nic_get_ndev(i32) #1

declare dso_local i32 @aq_ring_dx_in_range(i64, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i64, i64, i32) #1

declare dso_local i32 @aq_nic_get_dev(i32) #1

declare dso_local %struct.sk_buff* @build_skb(i32, i64) #1

declare dso_local i32 @aq_buf_vaddr(%struct.TYPE_6__*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @page_ref_inc(i32) #1

declare dso_local %struct.sk_buff* @napi_alloc_skb(%struct.napi_struct*, i64) #1

declare dso_local i64 @eth_get_headlen(i32, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @aq_rx_checksum(%struct.aq_ring_s*, %struct.aq_ring_buff_s*, %struct.sk_buff*) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @napi_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

declare dso_local i64 @aq_ring_next_dx(%struct.aq_ring_s*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
