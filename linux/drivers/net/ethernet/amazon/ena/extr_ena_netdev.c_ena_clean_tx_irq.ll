; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_clean_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_clean_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i64, i64*, i32, %struct.TYPE_3__, %struct.TYPE_4__*, i32, i32, i32, i32, i32, %struct.ena_tx_buffer* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ena_tx_buffer = type { i64, i64, %struct.sk_buff* }
%struct.sk_buff = type { i64, i32 }
%struct.netdev_queue = type { i32 }

@tx_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"tx_poll: q %d skb %p completed\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"tx_poll: q %d done. total pkts: %d\0A\00", align 1
@ENA_TX_WAKEUP_THRESH = common dso_local global i32 0, align 4
@ENA_FLAG_DEV_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_ring*, i32)* @ena_clean_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_clean_tx_irq(%struct.ena_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.ena_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ena_tx_buffer*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.ena_ring* %0, %struct.ena_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %16 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %19 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %22 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %20, i32 %23)
  store %struct.netdev_queue* %24, %struct.netdev_queue** %5, align 8
  br label %25

25:                                               ; preds = %44, %2
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %104

29:                                               ; preds = %25
  %30 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %31 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ena_com_tx_comp_req_id_get(i32 %32, i64* %10)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %104

37:                                               ; preds = %29
  %38 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @validate_tx_req_id(%struct.ena_ring* %38, i64 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %104

44:                                               ; preds = %37
  %45 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %46 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %45, i32 0, i32 10
  %47 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %47, i64 %48
  store %struct.ena_tx_buffer* %49, %struct.ena_tx_buffer** %13, align 8
  %50 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %13, align 8
  %51 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %50, i32 0, i32 2
  %52 = load %struct.sk_buff*, %struct.sk_buff** %51, align 8
  store %struct.sk_buff* %52, %struct.sk_buff** %14, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = call i32 @prefetch(i32* %54)
  %56 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %13, align 8
  %57 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %56, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %57, align 8
  %58 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %13, align 8
  %59 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %61 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %13, align 8
  %62 = call i32 @ena_unmap_tx_skb(%struct.ena_ring* %60, %struct.ena_tx_buffer* %61)
  %63 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %64 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %63, i32 0, i32 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* @tx_done, align 4
  %67 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %68 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %71 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %74 = call i32 (%struct.TYPE_4__*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.TYPE_4__* %65, i32 %66, i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %72, %struct.sk_buff* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %7, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %83 = call i32 @dev_kfree_skb(%struct.sk_buff* %82)
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  %86 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %13, align 8
  %87 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %8, align 4
  %93 = load i64, i64* %10, align 8
  %94 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %95 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 %93, i64* %98, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %101 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @ENA_TX_RING_IDX_NEXT(i64 %99, i32 %102)
  store i64 %103, i64* %9, align 8
  br label %25

104:                                              ; preds = %43, %36, %25
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %107 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %109 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @ena_com_comp_ack(i32 %110, i32 %111)
  %113 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %114 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ena_com_update_dev_comp_head(i32 %115)
  %117 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %117, i32 %118, i32 %119)
  %121 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %122 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %121, i32 0, i32 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* @tx_done, align 4
  %125 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %126 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %129 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 (%struct.TYPE_4__*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.TYPE_4__* %123, i32 %124, i32 %127, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %131)
  %133 = call i32 (...) @smp_mb()
  %134 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %135 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ENA_TX_WAKEUP_THRESH, align 4
  %138 = call i32 @ena_com_sq_have_enough_space(i32 %136, i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %140 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %104
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br label %145

145:                                              ; preds = %142, %104
  %146 = phi i1 [ false, %104 ], [ %144, %142 ]
  %147 = zext i1 %146 to i32
  %148 = call i64 @unlikely(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %190

150:                                              ; preds = %145
  %151 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %152 = call i32 (...) @smp_processor_id()
  %153 = call i32 @__netif_tx_lock(%struct.netdev_queue* %151, i32 %152)
  %154 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %155 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @ENA_TX_WAKEUP_THRESH, align 4
  %158 = call i32 @ena_com_sq_have_enough_space(i32 %156, i32 %157)
  store i32 %158, i32* %6, align 4
  %159 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %160 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %187

162:                                              ; preds = %150
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %187

165:                                              ; preds = %162
  %166 = load i32, i32* @ENA_FLAG_DEV_UP, align 4
  %167 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %168 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %167, i32 0, i32 4
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = call i64 @test_bit(i32 %166, i32* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %187

173:                                              ; preds = %165
  %174 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %175 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %174)
  %176 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %177 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %176, i32 0, i32 2
  %178 = call i32 @u64_stats_update_begin(i32* %177)
  %179 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %180 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  %184 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %185 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %184, i32 0, i32 2
  %186 = call i32 @u64_stats_update_end(i32* %185)
  br label %187

187:                                              ; preds = %173, %165, %162, %150
  %188 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %189 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %188)
  br label %190

190:                                              ; preds = %187, %145
  %191 = load i32, i32* %11, align 4
  ret i32 %191
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @ena_com_tx_comp_req_id_get(i32, i64*) #1

declare dso_local i32 @validate_tx_req_id(%struct.ena_ring*, i64) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i32 @ena_unmap_tx_skb(%struct.ena_ring*, %struct.ena_tx_buffer*) #1

declare dso_local i32 @netif_dbg(%struct.TYPE_4__*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @ENA_TX_RING_IDX_NEXT(i64, i32) #1

declare dso_local i32 @ena_com_comp_ack(i32, i32) #1

declare dso_local i32 @ena_com_update_dev_comp_head(i32) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @ena_com_sq_have_enough_space(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_lock(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
