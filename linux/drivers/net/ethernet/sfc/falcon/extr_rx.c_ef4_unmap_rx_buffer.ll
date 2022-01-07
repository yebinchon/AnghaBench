; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_rx.c_ef4_unmap_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_rx.c_ef4_unmap_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ef4_rx_buffer = type { %struct.page* }
%struct.page = type { i32 }
%struct.ef4_rx_page_state = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*, %struct.ef4_rx_buffer*)* @ef4_unmap_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_unmap_rx_buffer(%struct.ef4_nic* %0, %struct.ef4_rx_buffer* %1) #0 {
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca %struct.ef4_rx_buffer*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.ef4_rx_page_state*, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  store %struct.ef4_rx_buffer* %1, %struct.ef4_rx_buffer** %4, align 8
  %7 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.ef4_rx_buffer, %struct.ef4_rx_buffer* %7, i32 0, i32 0
  %9 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %9, %struct.page** %5, align 8
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = icmp ne %struct.page* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = call %struct.ef4_rx_page_state* @page_address(%struct.page* %13)
  store %struct.ef4_rx_page_state* %14, %struct.ef4_rx_page_state** %6, align 8
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %16 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.ef4_rx_page_state*, %struct.ef4_rx_page_state** %6, align 8
  %20 = getelementptr inbounds %struct.ef4_rx_page_state, %struct.ef4_rx_page_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %24 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %22, %25
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %28 = call i32 @dma_unmap_page(i32* %18, i32 %21, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %12, %2
  ret void
}

declare dso_local %struct.ef4_rx_page_state* @page_address(%struct.page*) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
