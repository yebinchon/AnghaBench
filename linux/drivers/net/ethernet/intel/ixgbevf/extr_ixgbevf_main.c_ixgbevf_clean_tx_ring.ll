; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { i64, i64, i64, %struct.ixgbevf_tx_buffer*, i32 }
%struct.ixgbevf_tx_buffer = type { %union.ixgbe_adv_tx_desc*, i32, i32 }
%union.ixgbe_adv_tx_desc = type { i32 }

@dma = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_ring*)* @ixgbevf_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_clean_tx_ring(%struct.ixgbevf_ring* %0) #0 {
  %2 = alloca %struct.ixgbevf_ring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbevf_tx_buffer*, align 8
  %5 = alloca %union.ixgbe_adv_tx_desc*, align 8
  %6 = alloca %union.ixgbe_adv_tx_desc*, align 8
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %2, align 8
  %7 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %10, i32 0, i32 3
  %12 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %12, i64 %13
  store %struct.ixgbevf_tx_buffer* %14, %struct.ixgbevf_tx_buffer** %4, align 8
  br label %15

15:                                               ; preds = %113, %1
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %114

21:                                               ; preds = %15
  %22 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %23 = call i64 @ring_is_xdp(%struct.ixgbevf_ring* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @page_frag_free(i32 %28)
  br label %35

30:                                               ; preds = %21
  %31 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_kfree_skb_any(i32 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %37 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %40 = load i32, i32* @dma, align 4
  %41 = call i32 @dma_unmap_addr(%struct.ixgbevf_tx_buffer* %39, i32 %40)
  %42 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %43 = load i32, i32* @len, align 4
  %44 = call i64 @dma_unmap_len(%struct.ixgbevf_tx_buffer* %42, i32 %43)
  %45 = load i32, i32* @DMA_TO_DEVICE, align 4
  %46 = call i32 @dma_unmap_single(i32 %38, i32 %41, i64 %44, i32 %45)
  %47 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %48 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %47, i32 0, i32 0
  %49 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %48, align 8
  store %union.ixgbe_adv_tx_desc* %49, %union.ixgbe_adv_tx_desc** %5, align 8
  %50 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %51 = load i64, i64* %3, align 8
  %52 = call %union.ixgbe_adv_tx_desc* @IXGBEVF_TX_DESC(%struct.ixgbevf_ring* %50, i64 %51)
  store %union.ixgbe_adv_tx_desc* %52, %union.ixgbe_adv_tx_desc** %6, align 8
  br label %53

53:                                               ; preds = %95, %35
  %54 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %6, align 8
  %55 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %5, align 8
  %56 = icmp ne %union.ixgbe_adv_tx_desc* %54, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %53
  %58 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %59 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %58, i32 1
  store %struct.ixgbevf_tx_buffer* %59, %struct.ixgbevf_tx_buffer** %4, align 8
  %60 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %6, align 8
  %61 = getelementptr inbounds %union.ixgbe_adv_tx_desc, %union.ixgbe_adv_tx_desc* %60, i32 1
  store %union.ixgbe_adv_tx_desc* %61, %union.ixgbe_adv_tx_desc** %6, align 8
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %3, align 8
  %64 = load i64, i64* %3, align 8
  %65 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %66 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %57
  store i64 0, i64* %3, align 8
  %73 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %74 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %73, i32 0, i32 3
  %75 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %74, align 8
  store %struct.ixgbevf_tx_buffer* %75, %struct.ixgbevf_tx_buffer** %4, align 8
  %76 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %77 = call %union.ixgbe_adv_tx_desc* @IXGBEVF_TX_DESC(%struct.ixgbevf_ring* %76, i64 0)
  store %union.ixgbe_adv_tx_desc* %77, %union.ixgbe_adv_tx_desc** %6, align 8
  br label %78

78:                                               ; preds = %72, %57
  %79 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %80 = load i32, i32* @len, align 4
  %81 = call i64 @dma_unmap_len(%struct.ixgbevf_tx_buffer* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %85 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %88 = load i32, i32* @dma, align 4
  %89 = call i32 @dma_unmap_addr(%struct.ixgbevf_tx_buffer* %87, i32 %88)
  %90 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %91 = load i32, i32* @len, align 4
  %92 = call i64 @dma_unmap_len(%struct.ixgbevf_tx_buffer* %90, i32 %91)
  %93 = load i32, i32* @DMA_TO_DEVICE, align 4
  %94 = call i32 @dma_unmap_page(i32 %86, i32 %89, i64 %92, i32 %93)
  br label %95

95:                                               ; preds = %83, %78
  br label %53

96:                                               ; preds = %53
  %97 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %4, align 8
  %98 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %97, i32 1
  store %struct.ixgbevf_tx_buffer* %98, %struct.ixgbevf_tx_buffer** %4, align 8
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %3, align 8
  %101 = load i64, i64* %3, align 8
  %102 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %103 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %101, %104
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %96
  store i64 0, i64* %3, align 8
  %110 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %111 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %110, i32 0, i32 3
  %112 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %111, align 8
  store %struct.ixgbevf_tx_buffer* %112, %struct.ixgbevf_tx_buffer** %4, align 8
  br label %113

113:                                              ; preds = %109, %96
  br label %15

114:                                              ; preds = %15
  %115 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %116 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %2, align 8
  %118 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  ret void
}

declare dso_local i64 @ring_is_xdp(%struct.ixgbevf_ring*) #1

declare dso_local i32 @page_frag_free(i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.ixgbevf_tx_buffer*, i32) #1

declare dso_local i64 @dma_unmap_len(%struct.ixgbevf_tx_buffer*, i32) #1

declare dso_local %union.ixgbe_adv_tx_desc* @IXGBEVF_TX_DESC(%struct.ixgbevf_ring*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
