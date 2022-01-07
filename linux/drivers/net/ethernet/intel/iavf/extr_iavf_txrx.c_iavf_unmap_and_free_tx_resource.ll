; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_unmap_and_free_tx_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_unmap_and_free_tx_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_ring = type { i32 }
%struct.iavf_tx_buffer = type { i32, i32*, i32*, i32 }

@IAVF_TX_FLAGS_FD_SB = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@dma = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_ring*, %struct.iavf_tx_buffer*)* @iavf_unmap_and_free_tx_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_unmap_and_free_tx_resource(%struct.iavf_ring* %0, %struct.iavf_tx_buffer* %1) #0 {
  %3 = alloca %struct.iavf_ring*, align 8
  %4 = alloca %struct.iavf_tx_buffer*, align 8
  store %struct.iavf_ring* %0, %struct.iavf_ring** %3, align 8
  store %struct.iavf_tx_buffer* %1, %struct.iavf_tx_buffer** %4, align 8
  %5 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IAVF_TX_FLAGS_FD_SB, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @kfree(i32 %19)
  br label %26

21:                                               ; preds = %9
  %22 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @dev_kfree_skb_any(i32* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %4, align 8
  %28 = load i32, i32* @len, align 4
  %29 = call i64 @dma_unmap_len(%struct.iavf_tx_buffer* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %33 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %4, align 8
  %36 = load i32, i32* @dma, align 4
  %37 = call i32 @dma_unmap_addr(%struct.iavf_tx_buffer* %35, i32 %36)
  %38 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %4, align 8
  %39 = load i32, i32* @len, align 4
  %40 = call i64 @dma_unmap_len(%struct.iavf_tx_buffer* %38, i32 %39)
  %41 = load i32, i32* @DMA_TO_DEVICE, align 4
  %42 = call i32 @dma_unmap_single(i32 %34, i32 %37, i64 %40, i32 %41)
  br label %43

43:                                               ; preds = %31, %26
  br label %62

44:                                               ; preds = %2
  %45 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %4, align 8
  %46 = load i32, i32* @len, align 4
  %47 = call i64 @dma_unmap_len(%struct.iavf_tx_buffer* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %51 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %4, align 8
  %54 = load i32, i32* @dma, align 4
  %55 = call i32 @dma_unmap_addr(%struct.iavf_tx_buffer* %53, i32 %54)
  %56 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %4, align 8
  %57 = load i32, i32* @len, align 4
  %58 = call i64 @dma_unmap_len(%struct.iavf_tx_buffer* %56, i32 %57)
  %59 = load i32, i32* @DMA_TO_DEVICE, align 4
  %60 = call i32 @dma_unmap_page(i32 %52, i32 %55, i64 %58, i32 %59)
  br label %61

61:                                               ; preds = %49, %44
  br label %62

62:                                               ; preds = %61, %43
  %63 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %4, align 8
  %64 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %4, align 8
  %66 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %4, align 8
  %68 = load i32, i32* @len, align 4
  %69 = call i32 @dma_unmap_len_set(%struct.iavf_tx_buffer* %67, i32 %68, i32 0)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i64 @dma_unmap_len(%struct.iavf_tx_buffer*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.iavf_tx_buffer*, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.iavf_tx_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
