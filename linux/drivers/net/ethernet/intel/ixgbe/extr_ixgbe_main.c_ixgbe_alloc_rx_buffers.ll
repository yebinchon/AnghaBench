; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i64, i64, i32, i64, %struct.ixgbe_rx_buffer*, i32 }
%struct.ixgbe_rx_buffer = type { i64, i64 }
%union.ixgbe_adv_rx_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_alloc_rx_buffers(%struct.ixgbe_ring* %0, i64 %1) #0 {
  %3 = alloca %struct.ixgbe_ring*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %6 = alloca %struct.ixgbe_rx_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %118

15:                                               ; preds = %2
  %16 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call %union.ixgbe_adv_rx_desc* @IXGBE_RX_DESC(%struct.ixgbe_ring* %16, i64 %17)
  store %union.ixgbe_adv_rx_desc* %18, %union.ixgbe_adv_rx_desc** %5, align 8
  %19 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %19, i32 0, i32 4
  %21 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %21, i64 %22
  store %struct.ixgbe_rx_buffer* %23, %struct.ixgbe_rx_buffer** %6, align 8
  %24 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %27, %26
  store i64 %28, i64* %7, align 8
  %29 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %30 = call i64 @ixgbe_rx_bufsz(%struct.ixgbe_ring* %29)
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %91, %15
  %32 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %33 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %34 = call i32 @ixgbe_alloc_mapped_page(%struct.ixgbe_ring* %32, %struct.ixgbe_rx_buffer* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %94

37:                                               ; preds = %31
  %38 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %39 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %49 = call i32 @dma_sync_single_range_for_device(i32 %40, i64 %43, i64 %46, i64 %47, i32 %48)
  %50 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %54 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = call i32 @cpu_to_le64(i64 %56)
  %58 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %59 = bitcast %union.ixgbe_adv_rx_desc* %58 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %62 = getelementptr inbounds %union.ixgbe_adv_rx_desc, %union.ixgbe_adv_rx_desc* %61, i32 1
  store %union.ixgbe_adv_rx_desc* %62, %union.ixgbe_adv_rx_desc** %5, align 8
  %63 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %63, i32 1
  store %struct.ixgbe_rx_buffer* %64, %struct.ixgbe_rx_buffer** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp ne i64 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %37
  %74 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %75 = call %union.ixgbe_adv_rx_desc* @IXGBE_RX_DESC(%struct.ixgbe_ring* %74, i64 0)
  store %union.ixgbe_adv_rx_desc* %75, %union.ixgbe_adv_rx_desc** %5, align 8
  %76 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %77 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %76, i32 0, i32 4
  %78 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %77, align 8
  store %struct.ixgbe_rx_buffer* %78, %struct.ixgbe_rx_buffer** %6, align 8
  %79 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %80 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %73, %37
  %85 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %86 = bitcast %union.ixgbe_adv_rx_desc* %85 to %struct.TYPE_6__*
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load i64, i64* %4, align 8
  %90 = add i64 %89, -1
  store i64 %90, i64* %4, align 8
  br label %91

91:                                               ; preds = %84
  %92 = load i64, i64* %4, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %31, label %94

94:                                               ; preds = %91, %36
  %95 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %96 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %7, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %7, align 8
  %100 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %101 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %94
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %108 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %111 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = call i32 (...) @wmb()
  %113 = load i64, i64* %7, align 8
  %114 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %115 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @writel(i64 %113, i32 %116)
  br label %118

118:                                              ; preds = %14, %105, %94
  ret void
}

declare dso_local %union.ixgbe_adv_rx_desc* @IXGBE_RX_DESC(%struct.ixgbe_ring*, i64) #1

declare dso_local i64 @ixgbe_rx_bufsz(%struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_alloc_mapped_page(%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*) #1

declare dso_local i32 @dma_sync_single_range_for_device(i32, i64, i64, i64, i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
