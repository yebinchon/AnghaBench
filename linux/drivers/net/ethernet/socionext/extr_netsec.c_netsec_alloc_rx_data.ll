; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_alloc_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_alloc_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { i32, %struct.netsec_desc_ring* }
%struct.netsec_desc_ring = type { i32 }
%struct.page = type { i32 }

@NETSEC_RING_RX = common dso_local global i64 0, align 8
@NETSEC_RXBUF_HEADROOM = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@NETSEC_RX_BUF_NON_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.netsec_priv*, i64*, i64*)* @netsec_alloc_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @netsec_alloc_rx_data(%struct.netsec_priv* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.netsec_priv*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.netsec_desc_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  store %struct.netsec_priv* %0, %struct.netsec_priv** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %12 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %11, i32 0, i32 1
  %13 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %12, align 8
  %14 = load i64, i64* @NETSEC_RING_RX, align 8
  %15 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %13, i64 %14
  store %struct.netsec_desc_ring* %15, %struct.netsec_desc_ring** %8, align 8
  %16 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %8, align 8
  %17 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.page* @page_pool_dev_alloc_pages(i32 %18)
  store %struct.page* %19, %struct.page** %10, align 8
  %20 = load %struct.page*, %struct.page** %10, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %48

23:                                               ; preds = %3
  %24 = load %struct.page*, %struct.page** %10, align 8
  %25 = call i64 @page_pool_get_dma_addr(%struct.page* %24)
  %26 = load i64, i64* @NETSEC_RXBUF_HEADROOM, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64*, i64** %6, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = load i64, i64* @NETSEC_RX_BUF_NON_DATA, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load i64*, i64** %7, align 8
  store i64 %31, i64* %32, align 8
  %33 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %8, align 8
  %34 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @page_pool_get_dma_dir(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %38 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @dma_sync_single_for_device(i32 %39, i64 %41, i64 %43, i32 %44)
  %46 = load %struct.page*, %struct.page** %10, align 8
  %47 = call i8* @page_address(%struct.page* %46)
  store i8* %47, i8** %4, align 8
  br label %48

48:                                               ; preds = %23, %22
  %49 = load i8*, i8** %4, align 8
  ret i8* %49
}

declare dso_local %struct.page* @page_pool_dev_alloc_pages(i32) #1

declare dso_local i64 @page_pool_get_dma_addr(%struct.page*) #1

declare dso_local i32 @page_pool_get_dma_dir(i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i64, i64, i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
