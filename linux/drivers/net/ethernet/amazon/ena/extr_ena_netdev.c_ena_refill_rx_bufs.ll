; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_refill_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_refill_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i64, i64*, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, %struct.ena_rx_buffer* }
%struct.TYPE_2__ = type { i32 }
%struct.ena_rx_buffer = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to alloc buffer for rx queue %d\0A\00", align 1
@rx_status = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to add buffer for rx queue %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"refilled rx qid %d with only %d buffers (from %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_ring*, i64)* @ena_refill_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_refill_rx_bufs(%struct.ena_ring* %0, i64 %1) #0 {
  %3 = alloca %struct.ena_ring*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ena_rx_buffer*, align 8
  store %struct.ena_ring* %0, %struct.ena_ring** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %11 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %91, %2
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %94

17:                                               ; preds = %13
  %18 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %19 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @validate_rx_req_id(%struct.ena_ring* %24, i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %94

33:                                               ; preds = %17
  %34 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %35 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %34, i32 0, i32 9
  %36 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %36, i64 %37
  store %struct.ena_rx_buffer* %38, %struct.ena_rx_buffer** %9, align 8
  %39 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %40 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %9, align 8
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = load i32, i32* @__GFP_COMP, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @ena_alloc_rx_page(%struct.ena_ring* %39, %struct.ena_rx_buffer* %40, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %33
  %51 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %52 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @rx_err, align 4
  %55 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %56 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %59 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @netif_warn(i32 %53, i32 %54, i32 %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %94

62:                                               ; preds = %33
  %63 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %64 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %9, align 8
  %67 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %66, i32 0, i32 0
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @ena_com_add_single_rx_desc(i32 %65, i32* %67, i64 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %62
  %74 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %75 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @rx_status, align 4
  %78 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %79 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %82 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @netif_warn(i32 %76, i32 %77, i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %94

85:                                               ; preds = %62
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %88 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @ENA_RX_RING_IDX_NEXT(i64 %86, i32 %89)
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %85
  %92 = load i64, i64* %7, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %7, align 8
  br label %13

94:                                               ; preds = %73, %50, %32, %13
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %4, align 8
  %97 = icmp slt i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %94
  %102 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %103 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %102, i32 0, i32 5
  %104 = call i32 @u64_stats_update_begin(i32* %103)
  %105 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %106 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %111 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %110, i32 0, i32 5
  %112 = call i32 @u64_stats_update_end(i32* %111)
  %113 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %114 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %117 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* %4, align 8
  %121 = call i32 @netdev_warn(i32 %115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %118, i64 %119, i64 %120)
  br label %122

122:                                              ; preds = %101, %94
  %123 = load i64, i64* %7, align 8
  %124 = call i64 @likely(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %128 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @ena_com_write_sq_doorbell(i32 %129)
  br label %131

131:                                              ; preds = %126, %122
  %132 = load i64, i64* %5, align 8
  %133 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %134 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load i64, i64* %7, align 8
  %136 = trunc i64 %135 to i32
  ret i32 %136
}

declare dso_local i32 @validate_rx_req_id(%struct.ena_ring*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_alloc_rx_page(%struct.ena_ring*, %struct.ena_rx_buffer*, i32) #1

declare dso_local i32 @netif_warn(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ena_com_add_single_rx_desc(i32, i32*, i64) #1

declare dso_local i64 @ENA_RX_RING_IDX_NEXT(i64, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32, i64, i64) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @ena_com_write_sq_doorbell(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
