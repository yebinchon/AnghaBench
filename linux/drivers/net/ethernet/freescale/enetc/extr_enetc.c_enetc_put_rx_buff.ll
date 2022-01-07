; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_put_rx_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_put_rx_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_bdr = type { i32 }
%struct.enetc_rx_swbd = type { i32*, i32, i32 }

@ENETC_RXB_TRUESIZE = common dso_local global i32 0, align 4
@ENETC_RXB_DMA_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_bdr*, %struct.enetc_rx_swbd*)* @enetc_put_rx_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_put_rx_buff(%struct.enetc_bdr* %0, %struct.enetc_rx_swbd* %1) #0 {
  %3 = alloca %struct.enetc_bdr*, align 8
  %4 = alloca %struct.enetc_rx_swbd*, align 8
  store %struct.enetc_bdr* %0, %struct.enetc_bdr** %3, align 8
  store %struct.enetc_rx_swbd* %1, %struct.enetc_rx_swbd** %4, align 8
  %5 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %4, align 8
  %6 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @enetc_page_reusable(i32* %7)
  %9 = call i64 @likely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load i32, i32* @ENETC_RXB_TRUESIZE, align 4
  %13 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %4, align 8
  %14 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %4, align 8
  %18 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @page_ref_inc(i32* %19)
  %21 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %22 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %4, align 8
  %23 = call i32 @enetc_reuse_page(%struct.enetc_bdr* %21, %struct.enetc_rx_swbd* %22)
  %24 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %25 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %4, align 8
  %28 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %4, align 8
  %31 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ENETC_RXB_DMA_SIZE, align 4
  %34 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %35 = call i32 @dma_sync_single_range_for_device(i32 %26, i32 %29, i32 %32, i32 %33, i32 %34)
  br label %46

36:                                               ; preds = %2
  %37 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %38 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %4, align 8
  %41 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %45 = call i32 @dma_unmap_page(i32 %39, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %11
  %47 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %4, align 8
  %48 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @enetc_page_reusable(i32*) #1

declare dso_local i32 @page_ref_inc(i32*) #1

declare dso_local i32 @enetc_reuse_page(%struct.enetc_bdr*, %struct.enetc_rx_swbd*) #1

declare dso_local i32 @dma_sync_single_range_for_device(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
