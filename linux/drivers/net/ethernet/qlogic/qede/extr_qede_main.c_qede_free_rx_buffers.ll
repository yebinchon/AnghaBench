; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_free_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_free_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qede_rx_queue = type { i64, i64, i32, %struct.sw_rx_data* }
%struct.sw_rx_data = type { %struct.page*, i32 }
%struct.page = type { i32 }

@NUM_RX_BDS_MAX = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*, %struct.qede_rx_queue*)* @qede_free_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_free_rx_buffers(%struct.qede_dev* %0, %struct.qede_rx_queue* %1) #0 {
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca %struct.qede_rx_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sw_rx_data*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store %struct.qede_rx_queue* %1, %struct.qede_rx_queue** %4, align 8
  %8 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %4, align 8
  %9 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %44, %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %4, align 8
  %14 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %11
  %18 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %4, align 8
  %19 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %18, i32 0, i32 3
  %20 = load %struct.sw_rx_data*, %struct.sw_rx_data** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @NUM_RX_BDS_MAX, align 8
  %23 = and i64 %21, %22
  %24 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %20, i64 %23
  store %struct.sw_rx_data* %24, %struct.sw_rx_data** %6, align 8
  %25 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %26 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %25, i32 0, i32 0
  %27 = load %struct.page*, %struct.page** %26, align 8
  store %struct.page* %27, %struct.page** %7, align 8
  %28 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %29 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %33 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %4, align 8
  %37 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dma_unmap_page(i32* %31, i32 %34, i32 %35, i32 %38)
  %40 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %41 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %40, i32 0, i32 0
  store %struct.page* null, %struct.page** %41, align 8
  %42 = load %struct.page*, %struct.page** %7, align 8
  %43 = call i32 @__free_page(%struct.page* %42)
  br label %44

44:                                               ; preds = %17
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %11

47:                                               ; preds = %11
  ret void
}

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
