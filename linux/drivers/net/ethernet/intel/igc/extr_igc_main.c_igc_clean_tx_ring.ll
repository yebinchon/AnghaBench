; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_ring = type { i64, i64, i64, %struct.igc_tx_buffer*, i32 }
%struct.igc_tx_buffer = type { %union.igc_adv_tx_desc*, i32 }
%union.igc_adv_tx_desc = type { i32 }

@dma = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_ring*)* @igc_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_clean_tx_ring(%struct.igc_ring* %0) #0 {
  %2 = alloca %struct.igc_ring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.igc_tx_buffer*, align 8
  %5 = alloca %union.igc_adv_tx_desc*, align 8
  %6 = alloca %union.igc_adv_tx_desc*, align 8
  store %struct.igc_ring* %0, %struct.igc_ring** %2, align 8
  %7 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %8 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %11 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %10, i32 0, i32 3
  %12 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %12, i64 %13
  store %struct.igc_tx_buffer* %14, %struct.igc_tx_buffer** %4, align 8
  br label %15

15:                                               ; preds = %103, %1
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %18 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %104

21:                                               ; preds = %15
  %22 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_kfree_skb_any(i32 %24)
  %26 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %27 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %4, align 8
  %30 = load i32, i32* @dma, align 4
  %31 = call i32 @dma_unmap_addr(%struct.igc_tx_buffer* %29, i32 %30)
  %32 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %4, align 8
  %33 = load i32, i32* @len, align 4
  %34 = call i64 @dma_unmap_len(%struct.igc_tx_buffer* %32, i32 %33)
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  %36 = call i32 @dma_unmap_single(i32 %28, i32 %31, i64 %34, i32 %35)
  %37 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %37, i32 0, i32 0
  %39 = load %union.igc_adv_tx_desc*, %union.igc_adv_tx_desc** %38, align 8
  store %union.igc_adv_tx_desc* %39, %union.igc_adv_tx_desc** %5, align 8
  %40 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %41 = load i64, i64* %3, align 8
  %42 = call %union.igc_adv_tx_desc* @IGC_TX_DESC(%struct.igc_ring* %40, i64 %41)
  store %union.igc_adv_tx_desc* %42, %union.igc_adv_tx_desc** %6, align 8
  br label %43

43:                                               ; preds = %85, %21
  %44 = load %union.igc_adv_tx_desc*, %union.igc_adv_tx_desc** %6, align 8
  %45 = load %union.igc_adv_tx_desc*, %union.igc_adv_tx_desc** %5, align 8
  %46 = icmp ne %union.igc_adv_tx_desc* %44, %45
  br i1 %46, label %47, label %86

47:                                               ; preds = %43
  %48 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %4, align 8
  %49 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %48, i32 1
  store %struct.igc_tx_buffer* %49, %struct.igc_tx_buffer** %4, align 8
  %50 = load %union.igc_adv_tx_desc*, %union.igc_adv_tx_desc** %6, align 8
  %51 = getelementptr inbounds %union.igc_adv_tx_desc, %union.igc_adv_tx_desc* %50, i32 1
  store %union.igc_adv_tx_desc* %51, %union.igc_adv_tx_desc** %6, align 8
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %3, align 8
  %55 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %56 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %47
  store i64 0, i64* %3, align 8
  %63 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %64 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %63, i32 0, i32 3
  %65 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %64, align 8
  store %struct.igc_tx_buffer* %65, %struct.igc_tx_buffer** %4, align 8
  %66 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %67 = call %union.igc_adv_tx_desc* @IGC_TX_DESC(%struct.igc_ring* %66, i64 0)
  store %union.igc_adv_tx_desc* %67, %union.igc_adv_tx_desc** %6, align 8
  br label %68

68:                                               ; preds = %62, %47
  %69 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %4, align 8
  %70 = load i32, i32* @len, align 4
  %71 = call i64 @dma_unmap_len(%struct.igc_tx_buffer* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %75 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %4, align 8
  %78 = load i32, i32* @dma, align 4
  %79 = call i32 @dma_unmap_addr(%struct.igc_tx_buffer* %77, i32 %78)
  %80 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %4, align 8
  %81 = load i32, i32* @len, align 4
  %82 = call i64 @dma_unmap_len(%struct.igc_tx_buffer* %80, i32 %81)
  %83 = load i32, i32* @DMA_TO_DEVICE, align 4
  %84 = call i32 @dma_unmap_page(i32 %76, i32 %79, i64 %82, i32 %83)
  br label %85

85:                                               ; preds = %73, %68
  br label %43

86:                                               ; preds = %43
  %87 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %4, align 8
  %88 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %87, i32 1
  store %struct.igc_tx_buffer* %88, %struct.igc_tx_buffer** %4, align 8
  %89 = load i64, i64* %3, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %3, align 8
  %91 = load i64, i64* %3, align 8
  %92 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %93 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %86
  store i64 0, i64* %3, align 8
  %100 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %101 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %100, i32 0, i32 3
  %102 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %101, align 8
  store %struct.igc_tx_buffer* %102, %struct.igc_tx_buffer** %4, align 8
  br label %103

103:                                              ; preds = %99, %86
  br label %15

104:                                              ; preds = %15
  %105 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %106 = call i32 @txring_txq(%struct.igc_ring* %105)
  %107 = call i32 @netdev_tx_reset_queue(i32 %106)
  %108 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %109 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load %struct.igc_ring*, %struct.igc_ring** %2, align 8
  %111 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.igc_tx_buffer*, i32) #1

declare dso_local i64 @dma_unmap_len(%struct.igc_tx_buffer*, i32) #1

declare dso_local %union.igc_adv_tx_desc* @IGC_TX_DESC(%struct.igc_ring*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @txring_txq(%struct.igc_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
