; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_put_rx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_put_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ice_rx_buf = type { i32*, i32*, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ICE_RX_DMA_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_ring*, %struct.ice_rx_buf*)* @ice_put_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_put_rx_buf(%struct.ice_ring* %0, %struct.ice_rx_buf* %1) #0 {
  %3 = alloca %struct.ice_ring*, align 8
  %4 = alloca %struct.ice_rx_buf*, align 8
  store %struct.ice_ring* %0, %struct.ice_ring** %3, align 8
  store %struct.ice_rx_buf* %1, %struct.ice_rx_buf** %4, align 8
  %5 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %4, align 8
  %6 = icmp ne %struct.ice_rx_buf* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %44

8:                                                ; preds = %2
  %9 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %4, align 8
  %10 = call i64 @ice_can_reuse_rx_page(%struct.ice_rx_buf* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %14 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %4, align 8
  %15 = call i32 @ice_reuse_rx_page(%struct.ice_ring* %13, %struct.ice_rx_buf* %14)
  %16 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %17 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %39

21:                                               ; preds = %8
  %22 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %23 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %4, align 8
  %26 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %30 = load i32, i32* @ICE_RX_DMA_ATTR, align 4
  %31 = call i32 @dma_unmap_page_attrs(i32 %24, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %4, align 8
  %33 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %4, align 8
  %36 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @__page_frag_cache_drain(i32* %34, i32 %37)
  br label %39

39:                                               ; preds = %21, %12
  %40 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %4, align 8
  %41 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %4, align 8
  %43 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %39, %7
  ret void
}

declare dso_local i64 @ice_can_reuse_rx_page(%struct.ice_rx_buf*) #1

declare dso_local i32 @ice_reuse_rx_page(%struct.ice_ring*, %struct.ice_rx_buf*) #1

declare dso_local i32 @dma_unmap_page_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__page_frag_cache_drain(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
