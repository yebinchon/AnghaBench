; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { i32, i32, i64, %struct.ixgbevf_rx_buffer*, i32, i32 }
%struct.ixgbevf_rx_buffer = type { i64, i64 }
%union.ixgbe_adv_rx_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_ring*, i64)* @ixgbevf_alloc_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_alloc_rx_buffers(%struct.ixgbevf_ring* %0, i64 %1) #0 {
  %3 = alloca %struct.ixgbevf_ring*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %6 = alloca %struct.ixgbevf_rx_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %2
  br label %126

19:                                               ; preds = %13
  %20 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %union.ixgbe_adv_rx_desc* @IXGBEVF_RX_DESC(%struct.ixgbevf_ring* %20, i32 %21)
  store %union.ixgbe_adv_rx_desc* %22, %union.ixgbe_adv_rx_desc** %5, align 8
  %23 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %23, i32 0, i32 3
  %25 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %25, i64 %27
  store %struct.ixgbevf_rx_buffer* %28, %struct.ixgbevf_rx_buffer** %6, align 8
  %29 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %99, %19
  %37 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %38 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %6, align 8
  %39 = call i32 @ixgbevf_alloc_mapped_page(%struct.ixgbevf_ring* %37, %struct.ixgbevf_rx_buffer* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %102

42:                                               ; preds = %36
  %43 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %6, align 8
  %47 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %53 = call i32 @ixgbevf_rx_bufsz(%struct.ixgbevf_ring* %52)
  %54 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %55 = call i32 @dma_sync_single_range_for_device(i32 %45, i64 %48, i64 %51, i32 %53, i32 %54)
  %56 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = call i32 @cpu_to_le64(i64 %62)
  %64 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %65 = bitcast %union.ixgbe_adv_rx_desc* %64 to %struct.TYPE_4__*
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %68 = getelementptr inbounds %union.ixgbe_adv_rx_desc, %union.ixgbe_adv_rx_desc* %67, i32 1
  store %union.ixgbe_adv_rx_desc* %68, %union.ixgbe_adv_rx_desc** %5, align 8
  %69 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %6, align 8
  %70 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %69, i32 1
  store %struct.ixgbevf_rx_buffer* %70, %struct.ixgbevf_rx_buffer** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %42
  %80 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %81 = call %union.ixgbe_adv_rx_desc* @IXGBEVF_RX_DESC(%struct.ixgbevf_ring* %80, i32 0)
  store %union.ixgbe_adv_rx_desc* %81, %union.ixgbe_adv_rx_desc** %5, align 8
  %82 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %83 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %82, i32 0, i32 3
  %84 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %83, align 8
  store %struct.ixgbevf_rx_buffer* %84, %struct.ixgbevf_rx_buffer** %6, align 8
  %85 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %86 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = sub nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %79, %42
  %93 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %94 = bitcast %union.ixgbe_adv_rx_desc* %93 to %struct.TYPE_6__*
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load i64, i64* %4, align 8
  %98 = add nsw i64 %97, -1
  store i64 %98, i64* %4, align 8
  br label %99

99:                                               ; preds = %92
  %100 = load i64, i64* %4, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %36, label %102

102:                                              ; preds = %99, %41
  %103 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %104 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = zext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %7, align 4
  %110 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %111 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %102
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %118 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %121 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = call i32 (...) @wmb()
  %123 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @ixgbevf_write_tail(%struct.ixgbevf_ring* %123, i32 %124)
  br label %126

126:                                              ; preds = %18, %115, %102
  ret void
}

declare dso_local %union.ixgbe_adv_rx_desc* @IXGBEVF_RX_DESC(%struct.ixgbevf_ring*, i32) #1

declare dso_local i32 @ixgbevf_alloc_mapped_page(%struct.ixgbevf_ring*, %struct.ixgbevf_rx_buffer*) #1

declare dso_local i32 @dma_sync_single_range_for_device(i32, i64, i64, i32, i32) #1

declare dso_local i32 @ixgbevf_rx_bufsz(%struct.ixgbevf_ring*) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ixgbevf_write_tail(%struct.ixgbevf_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
