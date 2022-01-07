; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_free_rx_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_free_rx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i32, i32, i32 }
%struct.ena_rx_buffer = type { %struct.page*, %struct.ena_com_buf }
%struct.page = type { i32 }
%struct.ena_com_buf = type { i32 }

@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Trying to free unallocated buffer\0A\00", align 1
@ENA_PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_ring*, %struct.ena_rx_buffer*)* @ena_free_rx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_free_rx_page(%struct.ena_ring* %0, %struct.ena_rx_buffer* %1) #0 {
  %3 = alloca %struct.ena_ring*, align 8
  %4 = alloca %struct.ena_rx_buffer*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.ena_com_buf*, align 8
  store %struct.ena_ring* %0, %struct.ena_ring** %3, align 8
  store %struct.ena_rx_buffer* %1, %struct.ena_rx_buffer** %4, align 8
  %7 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %7, i32 0, i32 0
  %9 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %9, %struct.page** %5, align 8
  %10 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %10, i32 0, i32 1
  store %struct.ena_com_buf* %11, %struct.ena_com_buf** %6, align 8
  %12 = load %struct.page*, %struct.page** %5, align 8
  %13 = icmp ne %struct.page* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %20 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @rx_err, align 4
  %23 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %24 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netif_warn(i32 %21, i32 %22, i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %41

27:                                               ; preds = %2
  %28 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %29 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ena_com_buf*, %struct.ena_com_buf** %6, align 8
  %32 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ENA_PAGE_SIZE, align 4
  %35 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %36 = call i32 @dma_unmap_page(i32 %30, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.page*, %struct.page** %5, align 8
  %38 = call i32 @__free_page(%struct.page* %37)
  %39 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %39, i32 0, i32 0
  store %struct.page* null, %struct.page** %40, align 8
  br label %41

41:                                               ; preds = %27, %18
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_warn(i32, i32, i32, i8*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
