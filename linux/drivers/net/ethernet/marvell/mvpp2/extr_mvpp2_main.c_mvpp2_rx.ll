; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, %struct.net_device*, %struct.TYPE_4__* }
%struct.net_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.mvpp2_bm_pool* }
%struct.mvpp2_bm_pool = type { i32, i32 }
%struct.napi_struct = type { i32 }
%struct.mvpp2_rx_queue = type { i32 }
%struct.mvpp2_rx_desc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mvpp2_pcpu_stats = type { i32, i32, i32 }

@MVPP2_MH_SIZE = common dso_local global i64 0, align 8
@MVPP2_RXD_BM_POOL_ID_MASK = common dso_local global i32 0, align 4
@MVPP2_RXD_BM_POOL_ID_OFFS = common dso_local global i32 0, align 4
@MVPP2_RXD_ERR_SUMMARY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"skb build failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to refill BM pools\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*, %struct.napi_struct*, i32, %struct.mvpp2_rx_queue*)* @mvpp2_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_rx(%struct.mvpp2_port* %0, %struct.napi_struct* %1, i32 %2, %struct.mvpp2_rx_queue* %3) #0 {
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca %struct.napi_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvpp2_rx_queue*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mvpp2_rx_desc*, align 8
  %15 = alloca %struct.mvpp2_bm_pool*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.mvpp2_pcpu_stats*, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %5, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mvpp2_rx_queue* %3, %struct.mvpp2_rx_queue** %8, align 8
  %26 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %27 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %26, i32 0, i32 1
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %29 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %30 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %8, align 8
  %31 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mvpp2_rxq_received(%struct.mvpp2_port* %29, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %4
  br label %40

40:                                               ; preds = %135, %87, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %171

44:                                               ; preds = %40
  %45 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %8, align 8
  %46 = call %struct.mvpp2_rx_desc* @mvpp2_rxq_next_desc_get(%struct.mvpp2_rx_queue* %45)
  store %struct.mvpp2_rx_desc* %46, %struct.mvpp2_rx_desc** %14, align 8
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  %49 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %50 = load %struct.mvpp2_rx_desc*, %struct.mvpp2_rx_desc** %14, align 8
  %51 = call i32 @mvpp2_rxdesc_status_get(%struct.mvpp2_port* %49, %struct.mvpp2_rx_desc* %50)
  store i32 %51, i32* %20, align 4
  %52 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %53 = load %struct.mvpp2_rx_desc*, %struct.mvpp2_rx_desc** %14, align 8
  %54 = call i32 @mvpp2_rxdesc_size_get(%struct.mvpp2_port* %52, %struct.mvpp2_rx_desc* %53)
  store i32 %54, i32* %22, align 4
  %55 = load i64, i64* @MVPP2_MH_SIZE, align 8
  %56 = load i32, i32* %22, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %22, align 4
  %60 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %61 = load %struct.mvpp2_rx_desc*, %struct.mvpp2_rx_desc** %14, align 8
  %62 = call i32 @mvpp2_rxdesc_dma_addr_get(%struct.mvpp2_port* %60, %struct.mvpp2_rx_desc* %61)
  store i32 %62, i32* %18, align 4
  %63 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %64 = load %struct.mvpp2_rx_desc*, %struct.mvpp2_rx_desc** %14, align 8
  %65 = call i32 @mvpp2_rxdesc_cookie_get(%struct.mvpp2_port* %63, %struct.mvpp2_rx_desc* %64)
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %19, align 4
  %67 = call i64 @phys_to_virt(i32 %66)
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** %24, align 8
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* @MVPP2_RXD_BM_POOL_ID_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @MVPP2_RXD_BM_POOL_ID_OFFS, align 4
  %73 = ashr i32 %71, %72
  store i32 %73, i32* %21, align 4
  %74 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %75 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %77, align 8
  %79 = load i32, i32* %21, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %78, i64 %80
  store %struct.mvpp2_bm_pool* %81, %struct.mvpp2_bm_pool** %15, align 8
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* @MVPP2_RXD_ERR_SUMMARY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %44
  br label %87

87:                                               ; preds = %130, %118, %86
  %88 = load %struct.net_device*, %struct.net_device** %9, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %94 = load %struct.mvpp2_rx_desc*, %struct.mvpp2_rx_desc** %14, align 8
  %95 = call i32 @mvpp2_rx_error(%struct.mvpp2_port* %93, %struct.mvpp2_rx_desc* %94)
  %96 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %19, align 4
  %100 = call i32 @mvpp2_bm_pool_put(%struct.mvpp2_port* %96, i32 %97, i32 %98, i32 %99)
  br label %40

101:                                              ; preds = %44
  %102 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %15, align 8
  %103 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = icmp ugt i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 0, i32* %17, align 4
  br label %112

108:                                              ; preds = %101
  %109 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %15, align 8
  %110 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %17, align 4
  br label %112

112:                                              ; preds = %108, %107
  %113 = load i8*, i8** %24, align 8
  %114 = load i32, i32* %17, align 4
  %115 = call %struct.sk_buff* @build_skb(i8* %113, i32 %114)
  store %struct.sk_buff* %115, %struct.sk_buff** %16, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %117 = icmp ne %struct.sk_buff* %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %112
  %119 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %120 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %119, i32 0, i32 1
  %121 = load %struct.net_device*, %struct.net_device** %120, align 8
  %122 = call i32 @netdev_warn(%struct.net_device* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %87

123:                                              ; preds = %112
  %124 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %125 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %15, align 8
  %126 = load i32, i32* %21, align 4
  %127 = call i32 @mvpp2_rx_refill(%struct.mvpp2_port* %124, %struct.mvpp2_bm_pool* %125, i32 %126)
  store i32 %127, i32* %23, align 4
  %128 = load i32, i32* %23, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %132 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %131, i32 0, i32 1
  %133 = load %struct.net_device*, %struct.net_device** %132, align 8
  %134 = call i32 @netdev_err(%struct.net_device* %133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %87

135:                                              ; preds = %123
  %136 = load %struct.net_device*, %struct.net_device** %9, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %15, align 8
  %142 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %145 = call i32 @dma_unmap_single(i32 %139, i32 %140, i32 %143, i32 %144)
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %22, align 4
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %13, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %152 = load i64, i64* @MVPP2_MH_SIZE, align 8
  %153 = load i64, i64* @NET_SKB_PAD, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @skb_reserve(%struct.sk_buff* %151, i64 %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %157 = load i32, i32* %22, align 4
  %158 = call i32 @skb_put(%struct.sk_buff* %156, i32 %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %160 = load %struct.net_device*, %struct.net_device** %9, align 8
  %161 = call i32 @eth_type_trans(%struct.sk_buff* %159, %struct.net_device* %160)
  %162 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  %164 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %165 = load i32, i32* %20, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %167 = call i32 @mvpp2_rx_csum(%struct.mvpp2_port* %164, i32 %165, %struct.sk_buff* %166)
  %168 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %170 = call i32 @napi_gro_receive(%struct.napi_struct* %168, %struct.sk_buff* %169)
  br label %40

171:                                              ; preds = %40
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %195

174:                                              ; preds = %171
  %175 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %176 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call %struct.mvpp2_pcpu_stats* @this_cpu_ptr(i32 %177)
  store %struct.mvpp2_pcpu_stats* %178, %struct.mvpp2_pcpu_stats** %25, align 8
  %179 = load %struct.mvpp2_pcpu_stats*, %struct.mvpp2_pcpu_stats** %25, align 8
  %180 = getelementptr inbounds %struct.mvpp2_pcpu_stats, %struct.mvpp2_pcpu_stats* %179, i32 0, i32 0
  %181 = call i32 @u64_stats_update_begin(i32* %180)
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.mvpp2_pcpu_stats*, %struct.mvpp2_pcpu_stats** %25, align 8
  %184 = getelementptr inbounds %struct.mvpp2_pcpu_stats, %struct.mvpp2_pcpu_stats* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, %182
  store i32 %186, i32* %184, align 4
  %187 = load i32, i32* %13, align 4
  %188 = load %struct.mvpp2_pcpu_stats*, %struct.mvpp2_pcpu_stats** %25, align 8
  %189 = getelementptr inbounds %struct.mvpp2_pcpu_stats, %struct.mvpp2_pcpu_stats* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load %struct.mvpp2_pcpu_stats*, %struct.mvpp2_pcpu_stats** %25, align 8
  %193 = getelementptr inbounds %struct.mvpp2_pcpu_stats, %struct.mvpp2_pcpu_stats* %192, i32 0, i32 0
  %194 = call i32 @u64_stats_update_end(i32* %193)
  br label %195

195:                                              ; preds = %174, %171
  %196 = call i32 (...) @wmb()
  %197 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %198 = load %struct.mvpp2_rx_queue*, %struct.mvpp2_rx_queue** %8, align 8
  %199 = getelementptr inbounds %struct.mvpp2_rx_queue, %struct.mvpp2_rx_queue* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* %11, align 4
  %203 = call i32 @mvpp2_rxq_status_update(%struct.mvpp2_port* %197, i32 %200, i32 %201, i32 %202)
  %204 = load i32, i32* %7, align 4
  ret i32 %204
}

declare dso_local i32 @mvpp2_rxq_received(%struct.mvpp2_port*, i32) #1

declare dso_local %struct.mvpp2_rx_desc* @mvpp2_rxq_next_desc_get(%struct.mvpp2_rx_queue*) #1

declare dso_local i32 @mvpp2_rxdesc_status_get(%struct.mvpp2_port*, %struct.mvpp2_rx_desc*) #1

declare dso_local i32 @mvpp2_rxdesc_size_get(%struct.mvpp2_port*, %struct.mvpp2_rx_desc*) #1

declare dso_local i32 @mvpp2_rxdesc_dma_addr_get(%struct.mvpp2_port*, %struct.mvpp2_rx_desc*) #1

declare dso_local i32 @mvpp2_rxdesc_cookie_get(%struct.mvpp2_port*, %struct.mvpp2_rx_desc*) #1

declare dso_local i64 @phys_to_virt(i32) #1

declare dso_local i32 @mvpp2_rx_error(%struct.mvpp2_port*, %struct.mvpp2_rx_desc*) #1

declare dso_local i32 @mvpp2_bm_pool_put(%struct.mvpp2_port*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @mvpp2_rx_refill(%struct.mvpp2_port*, %struct.mvpp2_bm_pool*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @mvpp2_rx_csum(%struct.mvpp2_port*, i32, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

declare dso_local %struct.mvpp2_pcpu_stats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mvpp2_rxq_status_update(%struct.mvpp2_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
