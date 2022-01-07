; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_free_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_free_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_bdr = type { i32, i64, i64, i64, i32, %struct.enetc_rx_swbd* }
%struct.enetc_rx_swbd = type { i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_bdr*)* @enetc_free_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_free_rx_ring(%struct.enetc_bdr* %0) #0 {
  %2 = alloca %struct.enetc_bdr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.enetc_rx_swbd*, align 8
  store %struct.enetc_bdr* %0, %struct.enetc_bdr** %2, align 8
  %5 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %6 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %5, i32 0, i32 5
  %7 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %6, align 8
  %8 = icmp ne %struct.enetc_rx_swbd* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %55

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %45, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %14 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %11
  %18 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %19 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %18, i32 0, i32 5
  %20 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %20, i64 %22
  store %struct.enetc_rx_swbd* %23, %struct.enetc_rx_swbd** %4, align 8
  %24 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %4, align 8
  %25 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %45

29:                                               ; preds = %17
  %30 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %31 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %4, align 8
  %34 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %38 = call i32 @dma_unmap_page(i32 %32, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %4, align 8
  %40 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @__free_page(i32* %41)
  %43 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %4, align 8
  %44 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %29, %28
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %11

48:                                               ; preds = %11
  %49 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %50 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %52 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.enetc_bdr*, %struct.enetc_bdr** %2, align 8
  %54 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %48, %9
  ret void
}

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @__free_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
