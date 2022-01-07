; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_free_rx_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_free_rx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2_rx_ring_info = type { %struct.bnx2_sw_pg* }
%struct.bnx2_sw_pg = type { %struct.page* }
%struct.page = type { i32 }

@mapping = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*, %struct.bnx2_rx_ring_info*, i64)* @bnx2_free_rx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_free_rx_page(%struct.bnx2* %0, %struct.bnx2_rx_ring_info* %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2*, align 8
  %5 = alloca %struct.bnx2_rx_ring_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bnx2_sw_pg*, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %4, align 8
  store %struct.bnx2_rx_ring_info* %1, %struct.bnx2_rx_ring_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %10 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %9, i32 0, i32 0
  %11 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %11, i64 %12
  store %struct.bnx2_sw_pg* %13, %struct.bnx2_sw_pg** %7, align 8
  %14 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %7, align 8
  %15 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %14, i32 0, i32 0
  %16 = load %struct.page*, %struct.page** %15, align 8
  store %struct.page* %16, %struct.page** %8, align 8
  %17 = load %struct.page*, %struct.page** %8, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %35

20:                                               ; preds = %3
  %21 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %22 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %7, align 8
  %26 = load i32, i32* @mapping, align 4
  %27 = call i32 @dma_unmap_addr(%struct.bnx2_sw_pg* %25, i32 %26)
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %30 = call i32 @dma_unmap_page(i32* %24, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.page*, %struct.page** %8, align 8
  %32 = call i32 @__free_page(%struct.page* %31)
  %33 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %7, align 8
  %34 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %33, i32 0, i32 0
  store %struct.page* null, %struct.page** %34, align 8
  br label %35

35:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.bnx2_sw_pg*, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
