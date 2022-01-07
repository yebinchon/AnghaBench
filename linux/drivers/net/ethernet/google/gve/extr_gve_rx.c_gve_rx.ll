; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_rx_ring = type { i64, %struct.TYPE_8__, %struct.gve_priv* }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__*, %struct.gve_rx_slot_page_info* }
%struct.TYPE_7__ = type { i32* }
%struct.gve_rx_slot_page_info = type { i32 }
%struct.gve_priv = type { i64, %struct.TYPE_6__*, %struct.net_device*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_5__ = type { %struct.napi_struct }
%struct.napi_struct = type { i32 }
%struct.gve_rx_desc = type { i32, i32, i64, i32 }
%struct.sk_buff = type { i32, i32 }

@GVE_RXF_ERR = common dso_local global i32 0, align 4
@GVE_RX_PAD = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Pagecount should never be < 1\00", align 1
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@CHECKSUM_COMPLETE = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gve_rx_ring*, %struct.gve_rx_desc*, i32, i64)* @gve_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_rx(%struct.gve_rx_ring* %0, %struct.gve_rx_desc* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gve_rx_ring*, align 8
  %7 = alloca %struct.gve_rx_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.gve_rx_slot_page_info*, align 8
  %11 = alloca %struct.gve_priv*, align 8
  %12 = alloca %struct.napi_struct*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.gve_rx_ring* %0, %struct.gve_rx_ring** %6, align 8
  store %struct.gve_rx_desc* %1, %struct.gve_rx_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %17 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %18 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %17, i32 0, i32 2
  %19 = load %struct.gve_priv*, %struct.gve_priv** %18, align 8
  store %struct.gve_priv* %19, %struct.gve_priv** %11, align 8
  %20 = load %struct.gve_priv*, %struct.gve_priv** %11, align 8
  %21 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %24 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.napi_struct* %27, %struct.napi_struct** %12, align 8
  %28 = load %struct.gve_priv*, %struct.gve_priv** %11, align 8
  %29 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %28, i32 0, i32 2
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  store %struct.net_device* %30, %struct.net_device** %13, align 8
  %31 = load %struct.gve_rx_desc*, %struct.gve_rx_desc** %7, align 8
  %32 = getelementptr inbounds %struct.gve_rx_desc, %struct.gve_rx_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GVE_RXF_ERR, align 4
  %35 = and i32 %33, %34
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %213

39:                                               ; preds = %4
  %40 = load %struct.gve_rx_desc*, %struct.gve_rx_desc** %7, align 8
  %41 = getelementptr inbounds %struct.gve_rx_desc, %struct.gve_rx_desc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @be16_to_cpu(i32 %42)
  %44 = load i64, i64* @GVE_RX_PAD, align 8
  %45 = sub nsw i64 %43, %44
  store i64 %45, i64* %16, align 8
  %46 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %47 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load %struct.gve_rx_slot_page_info*, %struct.gve_rx_slot_page_info** %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds %struct.gve_rx_slot_page_info, %struct.gve_rx_slot_page_info* %49, i64 %50
  store %struct.gve_rx_slot_page_info* %51, %struct.gve_rx_slot_page_info** %10, align 8
  %52 = load %struct.gve_priv*, %struct.gve_priv** %11, align 8
  %53 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %57 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %67 = call i32 @dma_sync_single_for_cpu(i32* %55, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = icmp eq i32 %68, 4096
  br i1 %69, label %70, label %141

70:                                               ; preds = %39
  %71 = load i64, i64* %16, align 8
  %72 = load %struct.gve_priv*, %struct.gve_priv** %11, align 8
  %73 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sle i64 %71, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.net_device*, %struct.net_device** %13, align 8
  %78 = load %struct.napi_struct*, %struct.napi_struct** %12, align 8
  %79 = load %struct.gve_rx_slot_page_info*, %struct.gve_rx_slot_page_info** %10, align 8
  %80 = load i64, i64* %16, align 8
  %81 = call %struct.sk_buff* @gve_rx_copy(%struct.net_device* %77, %struct.napi_struct* %78, %struct.gve_rx_slot_page_info* %79, i64 %80)
  store %struct.sk_buff* %81, %struct.sk_buff** %14, align 8
  br label %148

82:                                               ; preds = %70
  %83 = load %struct.net_device*, %struct.net_device** %13, align 8
  %84 = call i32 @gve_can_recycle_pages(%struct.net_device* %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load %struct.net_device*, %struct.net_device** %13, align 8
  %92 = load %struct.napi_struct*, %struct.napi_struct** %12, align 8
  %93 = load %struct.gve_rx_slot_page_info*, %struct.gve_rx_slot_page_info** %10, align 8
  %94 = load i64, i64* %16, align 8
  %95 = call %struct.sk_buff* @gve_rx_copy(%struct.net_device* %91, %struct.napi_struct* %92, %struct.gve_rx_slot_page_info* %93, i64 %94)
  store %struct.sk_buff* %95, %struct.sk_buff** %14, align 8
  br label %148

96:                                               ; preds = %82
  %97 = load %struct.gve_rx_slot_page_info*, %struct.gve_rx_slot_page_info** %10, align 8
  %98 = getelementptr inbounds %struct.gve_rx_slot_page_info, %struct.gve_rx_slot_page_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @page_count(i32 %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %125

103:                                              ; preds = %96
  %104 = load %struct.net_device*, %struct.net_device** %13, align 8
  %105 = load %struct.napi_struct*, %struct.napi_struct** %12, align 8
  %106 = load %struct.gve_rx_slot_page_info*, %struct.gve_rx_slot_page_info** %10, align 8
  %107 = load i64, i64* %16, align 8
  %108 = call %struct.sk_buff* @gve_rx_add_frags(%struct.net_device* %104, %struct.napi_struct* %105, %struct.gve_rx_slot_page_info* %106, i64 %107)
  store %struct.sk_buff* %108, %struct.sk_buff** %14, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %110 = icmp ne %struct.sk_buff* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %103
  store i32 1, i32* %5, align 4
  br label %213

112:                                              ; preds = %103
  %113 = load %struct.gve_rx_slot_page_info*, %struct.gve_rx_slot_page_info** %10, align 8
  %114 = getelementptr inbounds %struct.gve_rx_slot_page_info, %struct.gve_rx_slot_page_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @get_page(i32 %115)
  %117 = load %struct.gve_rx_slot_page_info*, %struct.gve_rx_slot_page_info** %10, align 8
  %118 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %6, align 8
  %119 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* %9, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = call i32 @gve_rx_flip_buff(%struct.gve_rx_slot_page_info* %117, i32* %123)
  br label %140

125:                                              ; preds = %96
  %126 = load i32, i32* %15, align 4
  %127 = icmp sge i32 %126, 2
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load %struct.net_device*, %struct.net_device** %13, align 8
  %130 = load %struct.napi_struct*, %struct.napi_struct** %12, align 8
  %131 = load %struct.gve_rx_slot_page_info*, %struct.gve_rx_slot_page_info** %10, align 8
  %132 = load i64, i64* %16, align 8
  %133 = call %struct.sk_buff* @gve_rx_copy(%struct.net_device* %129, %struct.napi_struct* %130, %struct.gve_rx_slot_page_info* %131, i64 %132)
  store %struct.sk_buff* %133, %struct.sk_buff** %14, align 8
  br label %139

134:                                              ; preds = %125
  %135 = load i32, i32* %15, align 4
  %136 = icmp slt i32 %135, 1
  %137 = zext i1 %136 to i32
  %138 = call i32 @WARN(i32 %137, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %213

139:                                              ; preds = %128
  br label %140

140:                                              ; preds = %139, %112
  br label %147

141:                                              ; preds = %39
  %142 = load %struct.net_device*, %struct.net_device** %13, align 8
  %143 = load %struct.napi_struct*, %struct.napi_struct** %12, align 8
  %144 = load %struct.gve_rx_slot_page_info*, %struct.gve_rx_slot_page_info** %10, align 8
  %145 = load i64, i64* %16, align 8
  %146 = call %struct.sk_buff* @gve_rx_copy(%struct.net_device* %142, %struct.napi_struct* %143, %struct.gve_rx_slot_page_info* %144, i64 %145)
  store %struct.sk_buff* %146, %struct.sk_buff** %14, align 8
  br label %147

147:                                              ; preds = %141, %140
  br label %148

148:                                              ; preds = %147, %90, %76
  %149 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %150 = icmp ne %struct.sk_buff* %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  store i32 1, i32* %5, align 4
  br label %213

152:                                              ; preds = %148
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %155 = and i32 %153, %154
  %156 = call i64 @likely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %178

158:                                              ; preds = %152
  %159 = load %struct.gve_rx_desc*, %struct.gve_rx_desc** %7, align 8
  %160 = getelementptr inbounds %struct.gve_rx_desc, %struct.gve_rx_desc* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load i32, i32* @CHECKSUM_COMPLETE, align 4
  %165 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  br label %171

167:                                              ; preds = %158
  %168 = load i32, i32* @CHECKSUM_NONE, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %167, %163
  %172 = load %struct.gve_rx_desc*, %struct.gve_rx_desc** %7, align 8
  %173 = getelementptr inbounds %struct.gve_rx_desc, %struct.gve_rx_desc* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @csum_unfold(i64 %174)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %171, %152
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @NETIF_F_RXHASH, align 4
  %181 = and i32 %179, %180
  %182 = call i64 @likely(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %201

184:                                              ; preds = %178
  %185 = load %struct.gve_rx_desc*, %struct.gve_rx_desc** %7, align 8
  %186 = getelementptr inbounds %struct.gve_rx_desc, %struct.gve_rx_desc* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @gve_needs_rss(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %184
  %191 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %192 = load %struct.gve_rx_desc*, %struct.gve_rx_desc** %7, align 8
  %193 = getelementptr inbounds %struct.gve_rx_desc, %struct.gve_rx_desc* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @be32_to_cpu(i32 %194)
  %196 = load %struct.gve_rx_desc*, %struct.gve_rx_desc** %7, align 8
  %197 = getelementptr inbounds %struct.gve_rx_desc, %struct.gve_rx_desc* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @gve_rss_type(i32 %198)
  %200 = call i32 @skb_set_hash(%struct.sk_buff* %191, i32 %195, i32 %199)
  br label %201

201:                                              ; preds = %190, %184, %178
  %202 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %203 = call i64 @skb_is_nonlinear(%struct.sk_buff* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load %struct.napi_struct*, %struct.napi_struct** %12, align 8
  %207 = call i32 @napi_gro_frags(%struct.napi_struct* %206)
  br label %212

208:                                              ; preds = %201
  %209 = load %struct.napi_struct*, %struct.napi_struct** %12, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %211 = call i32 @napi_gro_receive(%struct.napi_struct* %209, %struct.sk_buff* %210)
  br label %212

212:                                              ; preds = %208, %205
  store i32 1, i32* %5, align 4
  br label %213

213:                                              ; preds = %212, %151, %134, %111, %38
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @gve_rx_copy(%struct.net_device*, %struct.napi_struct*, %struct.gve_rx_slot_page_info*, i64) #1

declare dso_local i32 @gve_can_recycle_pages(%struct.net_device*) #1

declare dso_local i32 @page_count(i32) #1

declare dso_local %struct.sk_buff* @gve_rx_add_frags(%struct.net_device*, %struct.napi_struct*, %struct.gve_rx_slot_page_info*, i64) #1

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @gve_rx_flip_buff(%struct.gve_rx_slot_page_info*, i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @csum_unfold(i64) #1

declare dso_local i64 @gve_needs_rss(i32) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @gve_rss_type(i32) #1

declare dso_local i64 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i32 @napi_gro_frags(%struct.napi_struct*) #1

declare dso_local i32 @napi_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
