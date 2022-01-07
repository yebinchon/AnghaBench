; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_tx_ring = type { i64, i64, i64, i64, i32, %struct.nfp_net_tx_buf*, i32, %struct.nfp_net_r_vector* }
%struct.nfp_net_tx_buf = type { i32, i64, i64, %struct.sk_buff*, i64 }
%struct.sk_buff = type { i32 }
%struct.nfp_net_r_vector = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nfp_net_dp }
%struct.nfp_net_dp = type { i32, i32 }
%struct.netdev_queue = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"TX ring corruption rd_p=%u wr_p=%u cnt=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_tx_ring*, i32)* @nfp_net_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_tx_complete(%struct.nfp_net_tx_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.nfp_net_tx_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_net_r_vector*, align 8
  %6 = alloca %struct.nfp_net_dp*, align 8
  %7 = alloca %struct.netdev_queue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.nfp_net_tx_buf*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nfp_net_tx_ring* %0, %struct.nfp_net_tx_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %19 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %18, i32 0, i32 7
  %20 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %19, align 8
  store %struct.nfp_net_r_vector* %20, %struct.nfp_net_r_vector** %5, align 8
  %21 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %22 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.nfp_net_dp* %24, %struct.nfp_net_dp** %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %25 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %26 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %29 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %217

33:                                               ; preds = %2
  %34 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %35 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @nfp_qcp_rd_ptr_read(i32 %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %40 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %217

44:                                               ; preds = %33
  %45 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %48 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = call i32 @D_IDX(%struct.nfp_net_tx_ring* %45, i64 %50)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %133, %74, %44
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %11, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %56, label %140

56:                                               ; preds = %52
  %57 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %58 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %59 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = call i32 @D_IDX(%struct.nfp_net_tx_ring* %57, i64 %60)
  store i32 %62, i32* %17, align 4
  %63 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %64 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %63, i32 0, i32 5
  %65 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %64, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %65, i64 %67
  store %struct.nfp_net_tx_buf* %68, %struct.nfp_net_tx_buf** %13, align 8
  %69 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %13, align 8
  %70 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %69, i32 0, i32 3
  %71 = load %struct.sk_buff*, %struct.sk_buff** %70, align 8
  store %struct.sk_buff* %71, %struct.sk_buff** %14, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %73 = icmp ne %struct.sk_buff* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %56
  br label %52

75:                                               ; preds = %56
  %76 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %77 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %76)
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %16, align 4
  %80 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %13, align 8
  %81 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %106

85:                                               ; preds = %75
  %86 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %87 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %13, align 8
  %90 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %93 = call i32 @skb_headlen(%struct.sk_buff* %92)
  %94 = load i32, i32* @DMA_TO_DEVICE, align 4
  %95 = call i32 @dma_unmap_single(i32 %88, i64 %91, i32 %93, i32 %94)
  %96 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %13, align 8
  %97 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %8, align 8
  %101 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %13, align 8
  %102 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %9, align 8
  br label %124

106:                                              ; preds = %75
  %107 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %108 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %107)
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32* %113, i32** %12, align 8
  %114 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %115 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %13, align 8
  %118 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @skb_frag_size(i32* %120)
  %122 = load i32, i32* @DMA_TO_DEVICE, align 4
  %123 = call i32 @dma_unmap_page(i32 %116, i64 %119, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %106, %85
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %16, align 4
  %127 = sub nsw i32 %126, 1
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @napi_consume_skb(%struct.sk_buff* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %124
  %134 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %13, align 8
  %135 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %134, i32 0, i32 4
  store i64 0, i64* %135, align 8
  %136 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %13, align 8
  %137 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %136, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %137, align 8
  %138 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %13, align 8
  %139 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %138, i32 0, i32 0
  store i32 -2, i32* %139, align 8
  br label %52

140:                                              ; preds = %52
  %141 = load i64, i64* %10, align 8
  %142 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %143 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %145 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %144, i32 0, i32 0
  %146 = call i32 @u64_stats_update_begin(i32* %145)
  %147 = load i64, i64* %9, align 8
  %148 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %149 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %147
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %149, align 8
  %154 = load i64, i64* %8, align 8
  %155 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %156 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 4
  %161 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %162 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %161, i32 0, i32 0
  %163 = call i32 @u64_stats_update_end(i32* %162)
  %164 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %165 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %140
  br label %217

169:                                              ; preds = %140
  %170 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %171 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %174 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %172, i32 %175)
  store %struct.netdev_queue* %176, %struct.netdev_queue** %7, align 8
  %177 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %178 = load i64, i64* %8, align 8
  %179 = load i64, i64* %9, align 8
  %180 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %177, i64 %178, i64 %179)
  %181 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %182 = call i64 @nfp_net_tx_ring_should_wake(%struct.nfp_net_tx_ring* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %169
  %185 = call i32 (...) @smp_mb()
  %186 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %187 = call i32 @netif_tx_queue_stopped(%struct.netdev_queue* %186)
  %188 = call i64 @unlikely(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %184
  %191 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %192 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %191)
  br label %193

193:                                              ; preds = %190, %184
  br label %194

194:                                              ; preds = %193, %169
  %195 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %196 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %199 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = sub nsw i64 %197, %200
  %202 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %203 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = icmp sgt i64 %201, %204
  %206 = zext i1 %205 to i32
  %207 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %208 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %211 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %214 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @WARN_ONCE(i32 %206, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %209, i64 %212, i64 %215)
  br label %217

217:                                              ; preds = %194, %168, %43, %32
  ret void
}

declare dso_local i64 @nfp_qcp_rd_ptr_read(i32) #1

declare dso_local i32 @D_IDX(%struct.nfp_net_tx_ring*, i64) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page(i32, i64, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @napi_consume_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i64, i64) #1

declare dso_local i64 @nfp_net_tx_ring_should_wake(%struct.nfp_net_tx_ring*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
