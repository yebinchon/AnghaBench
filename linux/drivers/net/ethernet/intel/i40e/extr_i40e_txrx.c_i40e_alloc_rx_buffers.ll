; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i64, i64, %struct.i40e_rx_buffer*, i32, i32, i32 }
%struct.i40e_rx_buffer = type { i64, i64 }
%union.i40e_rx_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_alloc_rx_buffers(%struct.i40e_ring* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.i40e_rx_desc*, align 8
  %8 = alloca %struct.i40e_rx_buffer*, align 8
  store %struct.i40e_ring* %0, %struct.i40e_ring** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %13 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %113

20:                                               ; preds = %16
  %21 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call %union.i40e_rx_desc* @I40E_RX_DESC(%struct.i40e_ring* %21, i64 %22)
  store %union.i40e_rx_desc* %23, %union.i40e_rx_desc** %7, align 8
  %24 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %25 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %24, i32 0, i32 2
  %26 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %26, i64 %27
  store %struct.i40e_rx_buffer* %28, %struct.i40e_rx_buffer** %8, align 8
  br label %29

29:                                               ; preds = %88, %20
  %30 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %31 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %8, align 8
  %32 = call i32 @i40e_alloc_mapped_page(%struct.i40e_ring* %30, %struct.i40e_rx_buffer* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %102

35:                                               ; preds = %29
  %36 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %37 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %8, align 8
  %40 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %8, align 8
  %43 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %46 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %49 = call i32 @dma_sync_single_range_for_device(i32 %38, i64 %41, i64 %44, i32 %47, i32 %48)
  %50 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %8, align 8
  %51 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %8, align 8
  %54 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = call i32 @cpu_to_le64(i64 %56)
  %58 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %7, align 8
  %59 = bitcast %union.i40e_rx_desc* %58 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %7, align 8
  %62 = getelementptr inbounds %union.i40e_rx_desc, %union.i40e_rx_desc* %61, i32 1
  store %union.i40e_rx_desc* %62, %union.i40e_rx_desc** %7, align 8
  %63 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %8, align 8
  %64 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %63, i32 1
  store %struct.i40e_rx_buffer* %64, %struct.i40e_rx_buffer** %8, align 8
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %69 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %35
  %76 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %77 = call %union.i40e_rx_desc* @I40E_RX_DESC(%struct.i40e_ring* %76, i64 0)
  store %union.i40e_rx_desc* %77, %union.i40e_rx_desc** %7, align 8
  %78 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %79 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %78, i32 0, i32 2
  %80 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %79, align 8
  store %struct.i40e_rx_buffer* %80, %struct.i40e_rx_buffer** %8, align 8
  store i64 0, i64* %6, align 8
  br label %81

81:                                               ; preds = %75, %35
  %82 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %7, align 8
  %83 = bitcast %union.i40e_rx_desc* %82 to %struct.TYPE_6__*
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load i64, i64* %5, align 8
  %87 = add i64 %86, -1
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %81
  %89 = load i64, i64* %5, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %29, label %91

91:                                               ; preds = %88
  %92 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %93 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @i40e_release_rx_desc(%struct.i40e_ring* %98, i64 %99)
  br label %101

101:                                              ; preds = %97, %91
  store i32 0, i32* %3, align 4
  br label %113

102:                                              ; preds = %34
  %103 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %104 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @i40e_release_rx_desc(%struct.i40e_ring* %109, i64 %110)
  br label %112

112:                                              ; preds = %108, %102
  store i32 1, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %101, %19
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %union.i40e_rx_desc* @I40E_RX_DESC(%struct.i40e_ring*, i64) #1

declare dso_local i32 @i40e_alloc_mapped_page(%struct.i40e_ring*, %struct.i40e_rx_buffer*) #1

declare dso_local i32 @dma_sync_single_range_for_device(i32, i64, i64, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i40e_release_rx_desc(%struct.i40e_ring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
