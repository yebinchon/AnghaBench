; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_unmap_tx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_unmap_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i32 }
%struct.ena_tx_buffer = type { i32, i64, %struct.ena_com_buf* }
%struct.ena_com_buf = type { i32 }

@paddr = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_ring*, %struct.ena_tx_buffer*)* @ena_unmap_tx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_unmap_tx_skb(%struct.ena_ring* %0, %struct.ena_tx_buffer* %1) #0 {
  %3 = alloca %struct.ena_ring*, align 8
  %4 = alloca %struct.ena_tx_buffer*, align 8
  %5 = alloca %struct.ena_com_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ena_ring* %0, %struct.ena_ring** %3, align 8
  store %struct.ena_tx_buffer* %1, %struct.ena_tx_buffer** %4, align 8
  %8 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %8, i32 0, i32 2
  %10 = load %struct.ena_com_buf*, %struct.ena_com_buf** %9, align 8
  store %struct.ena_com_buf* %10, %struct.ena_com_buf** %5, align 8
  %11 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %64

21:                                               ; preds = %2
  %22 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %28 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ena_com_buf*, %struct.ena_com_buf** %5, align 8
  %31 = load i32, i32* @paddr, align 4
  %32 = call i32 @dma_unmap_addr(%struct.ena_com_buf* %30, i32 %31)
  %33 = load %struct.ena_com_buf*, %struct.ena_com_buf** %5, align 8
  %34 = load i32, i32* @len, align 4
  %35 = call i32 @dma_unmap_len(%struct.ena_com_buf* %33, i32 %34)
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  %37 = call i32 @dma_unmap_single(i32 %29, i32 %32, i32 %35, i32 %36)
  %38 = load %struct.ena_com_buf*, %struct.ena_com_buf** %5, align 8
  %39 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %38, i32 1
  store %struct.ena_com_buf* %39, %struct.ena_com_buf** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %26, %21
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %49 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ena_com_buf*, %struct.ena_com_buf** %5, align 8
  %52 = load i32, i32* @paddr, align 4
  %53 = call i32 @dma_unmap_addr(%struct.ena_com_buf* %51, i32 %52)
  %54 = load %struct.ena_com_buf*, %struct.ena_com_buf** %5, align 8
  %55 = load i32, i32* @len, align 4
  %56 = call i32 @dma_unmap_len(%struct.ena_com_buf* %54, i32 %55)
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = call i32 @dma_unmap_page(i32 %50, i32 %53, i32 %56, i32 %57)
  %59 = load %struct.ena_com_buf*, %struct.ena_com_buf** %5, align 8
  %60 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %59, i32 1
  store %struct.ena_com_buf* %60, %struct.ena_com_buf** %5, align 8
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %43

64:                                               ; preds = %20, %43
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.ena_com_buf*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.ena_com_buf*, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
