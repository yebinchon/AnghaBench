; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i64, i64, i64, %struct.ixgbe_tx_buffer*, i32, i64 }
%struct.ixgbe_tx_buffer = type { %union.ixgbe_adv_tx_desc*, i32, i32 }
%union.ixgbe_adv_tx_desc = type { i32 }

@dma = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_ring*)* @ixgbe_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_clean_tx_ring(%struct.ixgbe_ring* %0) #0 {
  %2 = alloca %struct.ixgbe_ring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_tx_buffer*, align 8
  %5 = alloca %union.ixgbe_adv_tx_desc*, align 8
  %6 = alloca %union.ixgbe_adv_tx_desc*, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %2, align 8
  %7 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %10, i32 0, i32 3
  %12 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %12, i64 %13
  store %struct.ixgbe_tx_buffer* %14, %struct.ixgbe_tx_buffer** %4, align 8
  %15 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %16 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %21 = call i32 @ixgbe_xsk_clean_tx_ring(%struct.ixgbe_ring* %20)
  br label %131

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %121, %22
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %26 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %122

29:                                               ; preds = %23
  %30 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %31 = call i64 @ring_is_xdp(%struct.ixgbe_ring* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @xdp_return_frame(i32 %36)
  br label %43

38:                                               ; preds = %29
  %39 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_kfree_skb_any(i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %45 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %48 = load i32, i32* @dma, align 4
  %49 = call i32 @dma_unmap_addr(%struct.ixgbe_tx_buffer* %47, i32 %48)
  %50 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %51 = load i32, i32* @len, align 4
  %52 = call i64 @dma_unmap_len(%struct.ixgbe_tx_buffer* %50, i32 %51)
  %53 = load i32, i32* @DMA_TO_DEVICE, align 4
  %54 = call i32 @dma_unmap_single(i32 %46, i32 %49, i64 %52, i32 %53)
  %55 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %56 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %55, i32 0, i32 0
  %57 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %56, align 8
  store %union.ixgbe_adv_tx_desc* %57, %union.ixgbe_adv_tx_desc** %5, align 8
  %58 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %59 = load i64, i64* %3, align 8
  %60 = call %union.ixgbe_adv_tx_desc* @IXGBE_TX_DESC(%struct.ixgbe_ring* %58, i64 %59)
  store %union.ixgbe_adv_tx_desc* %60, %union.ixgbe_adv_tx_desc** %6, align 8
  br label %61

61:                                               ; preds = %103, %43
  %62 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %6, align 8
  %63 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %5, align 8
  %64 = icmp ne %union.ixgbe_adv_tx_desc* %62, %63
  br i1 %64, label %65, label %104

65:                                               ; preds = %61
  %66 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %67 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %66, i32 1
  store %struct.ixgbe_tx_buffer* %67, %struct.ixgbe_tx_buffer** %4, align 8
  %68 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %6, align 8
  %69 = getelementptr inbounds %union.ixgbe_adv_tx_desc, %union.ixgbe_adv_tx_desc* %68, i32 1
  store %union.ixgbe_adv_tx_desc* %69, %union.ixgbe_adv_tx_desc** %6, align 8
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %3, align 8
  %72 = load i64, i64* %3, align 8
  %73 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %74 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %65
  store i64 0, i64* %3, align 8
  %81 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %82 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %81, i32 0, i32 3
  %83 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %82, align 8
  store %struct.ixgbe_tx_buffer* %83, %struct.ixgbe_tx_buffer** %4, align 8
  %84 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %85 = call %union.ixgbe_adv_tx_desc* @IXGBE_TX_DESC(%struct.ixgbe_ring* %84, i64 0)
  store %union.ixgbe_adv_tx_desc* %85, %union.ixgbe_adv_tx_desc** %6, align 8
  br label %86

86:                                               ; preds = %80, %65
  %87 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %88 = load i32, i32* @len, align 4
  %89 = call i64 @dma_unmap_len(%struct.ixgbe_tx_buffer* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %93 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %96 = load i32, i32* @dma, align 4
  %97 = call i32 @dma_unmap_addr(%struct.ixgbe_tx_buffer* %95, i32 %96)
  %98 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %99 = load i32, i32* @len, align 4
  %100 = call i64 @dma_unmap_len(%struct.ixgbe_tx_buffer* %98, i32 %99)
  %101 = load i32, i32* @DMA_TO_DEVICE, align 4
  %102 = call i32 @dma_unmap_page(i32 %94, i32 %97, i64 %100, i32 %101)
  br label %103

103:                                              ; preds = %91, %86
  br label %61

104:                                              ; preds = %61
  %105 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %106 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %105, i32 1
  store %struct.ixgbe_tx_buffer* %106, %struct.ixgbe_tx_buffer** %4, align 8
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %3, align 8
  %109 = load i64, i64* %3, align 8
  %110 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %111 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %104
  store i64 0, i64* %3, align 8
  %118 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %119 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %118, i32 0, i32 3
  %120 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %119, align 8
  store %struct.ixgbe_tx_buffer* %120, %struct.ixgbe_tx_buffer** %4, align 8
  br label %121

121:                                              ; preds = %117, %104
  br label %23

122:                                              ; preds = %23
  %123 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %124 = call i64 @ring_is_xdp(%struct.ixgbe_ring* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %128 = call i32 @txring_txq(%struct.ixgbe_ring* %127)
  %129 = call i32 @netdev_tx_reset_queue(i32 %128)
  br label %130

130:                                              ; preds = %126, %122
  br label %131

131:                                              ; preds = %130, %19
  %132 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %133 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  %134 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %135 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  ret void
}

declare dso_local i32 @ixgbe_xsk_clean_tx_ring(%struct.ixgbe_ring*) #1

declare dso_local i64 @ring_is_xdp(%struct.ixgbe_ring*) #1

declare dso_local i32 @xdp_return_frame(i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.ixgbe_tx_buffer*, i32) #1

declare dso_local i64 @dma_unmap_len(%struct.ixgbe_tx_buffer*, i32) #1

declare dso_local %union.ixgbe_adv_tx_desc* @IXGBE_TX_DESC(%struct.ixgbe_ring*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @txring_txq(%struct.ixgbe_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
