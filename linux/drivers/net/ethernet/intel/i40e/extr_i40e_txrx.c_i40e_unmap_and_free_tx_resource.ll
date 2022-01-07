; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_unmap_and_free_tx_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_unmap_and_free_tx_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i32 }
%struct.i40e_tx_buffer = type { i32, i32*, i32*, i32, i32 }

@I40E_TX_FLAGS_FD_SB = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@dma = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_ring*, %struct.i40e_tx_buffer*)* @i40e_unmap_and_free_tx_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_unmap_and_free_tx_resource(%struct.i40e_ring* %0, %struct.i40e_tx_buffer* %1) #0 {
  %3 = alloca %struct.i40e_ring*, align 8
  %4 = alloca %struct.i40e_tx_buffer*, align 8
  store %struct.i40e_ring* %0, %struct.i40e_ring** %3, align 8
  store %struct.i40e_tx_buffer* %1, %struct.i40e_tx_buffer** %4, align 8
  %5 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %54

9:                                                ; preds = %2
  %10 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @I40E_TX_FLAGS_FD_SB, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @kfree(i32 %19)
  br label %36

21:                                               ; preds = %9
  %22 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %23 = call i64 @ring_is_xdp(%struct.i40e_ring* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @xdp_return_frame(i32 %28)
  br label %35

30:                                               ; preds = %21
  %31 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @dev_kfree_skb_any(i32* %33)
  br label %35

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %35, %16
  %37 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %4, align 8
  %38 = load i32, i32* @len, align 4
  %39 = call i64 @dma_unmap_len(%struct.i40e_tx_buffer* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %43 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %4, align 8
  %46 = load i32, i32* @dma, align 4
  %47 = call i32 @dma_unmap_addr(%struct.i40e_tx_buffer* %45, i32 %46)
  %48 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %4, align 8
  %49 = load i32, i32* @len, align 4
  %50 = call i64 @dma_unmap_len(%struct.i40e_tx_buffer* %48, i32 %49)
  %51 = load i32, i32* @DMA_TO_DEVICE, align 4
  %52 = call i32 @dma_unmap_single(i32 %44, i32 %47, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %41, %36
  br label %72

54:                                               ; preds = %2
  %55 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %4, align 8
  %56 = load i32, i32* @len, align 4
  %57 = call i64 @dma_unmap_len(%struct.i40e_tx_buffer* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %61 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %4, align 8
  %64 = load i32, i32* @dma, align 4
  %65 = call i32 @dma_unmap_addr(%struct.i40e_tx_buffer* %63, i32 %64)
  %66 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %4, align 8
  %67 = load i32, i32* @len, align 4
  %68 = call i64 @dma_unmap_len(%struct.i40e_tx_buffer* %66, i32 %67)
  %69 = load i32, i32* @DMA_TO_DEVICE, align 4
  %70 = call i32 @dma_unmap_page(i32 %62, i32 %65, i64 %68, i32 %69)
  br label %71

71:                                               ; preds = %59, %54
  br label %72

72:                                               ; preds = %71, %53
  %73 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %4, align 8
  %74 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %4, align 8
  %76 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  %77 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %4, align 8
  %78 = load i32, i32* @len, align 4
  %79 = call i32 @dma_unmap_len_set(%struct.i40e_tx_buffer* %77, i32 %78, i32 0)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i64 @ring_is_xdp(%struct.i40e_ring*) #1

declare dso_local i32 @xdp_return_frame(i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i64 @dma_unmap_len(%struct.i40e_tx_buffer*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.i40e_tx_buffer*, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.i40e_tx_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
