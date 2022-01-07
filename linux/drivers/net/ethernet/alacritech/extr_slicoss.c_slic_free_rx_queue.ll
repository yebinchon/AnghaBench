; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_free_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_free_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { %struct.TYPE_2__*, %struct.slic_rx_queue }
%struct.TYPE_2__ = type { i32 }
%struct.slic_rx_queue = type { i32, %struct.slic_rx_buffer* }
%struct.slic_rx_buffer = type { i32 }

@map_addr = common dso_local global i32 0, align 4
@map_len = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*)* @slic_free_rx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_free_rx_queue(%struct.slic_device* %0) #0 {
  %2 = alloca %struct.slic_device*, align 8
  %3 = alloca %struct.slic_rx_queue*, align 8
  %4 = alloca %struct.slic_rx_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.slic_device* %0, %struct.slic_device** %2, align 8
  %6 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %7 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %6, i32 0, i32 1
  store %struct.slic_rx_queue* %7, %struct.slic_rx_queue** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %43, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.slic_rx_queue*, %struct.slic_rx_queue** %3, align 8
  %11 = getelementptr inbounds %struct.slic_rx_queue, %struct.slic_rx_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %8
  %15 = load %struct.slic_rx_queue*, %struct.slic_rx_queue** %3, align 8
  %16 = getelementptr inbounds %struct.slic_rx_queue, %struct.slic_rx_queue* %15, i32 0, i32 1
  %17 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.slic_rx_buffer, %struct.slic_rx_buffer* %17, i64 %19
  store %struct.slic_rx_buffer* %20, %struct.slic_rx_buffer** %4, align 8
  %21 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.slic_rx_buffer, %struct.slic_rx_buffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  br label %43

26:                                               ; preds = %14
  %27 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %28 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %4, align 8
  %32 = load i32, i32* @map_addr, align 4
  %33 = call i32 @dma_unmap_addr(%struct.slic_rx_buffer* %31, i32 %32)
  %34 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %4, align 8
  %35 = load i32, i32* @map_len, align 4
  %36 = call i32 @dma_unmap_len(%struct.slic_rx_buffer* %34, i32 %35)
  %37 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %38 = call i32 @dma_unmap_single(i32* %30, i32 %33, i32 %36, i32 %37)
  %39 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.slic_rx_buffer, %struct.slic_rx_buffer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @consume_skb(i32 %41)
  br label %43

43:                                               ; preds = %26, %25
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %8

46:                                               ; preds = %8
  %47 = load %struct.slic_rx_queue*, %struct.slic_rx_queue** %3, align 8
  %48 = getelementptr inbounds %struct.slic_rx_queue, %struct.slic_rx_queue* %47, i32 0, i32 1
  %49 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %48, align 8
  %50 = call i32 @kfree(%struct.slic_rx_buffer* %49)
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.slic_rx_buffer*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.slic_rx_buffer*, i32) #1

declare dso_local i32 @consume_skb(i32) #1

declare dso_local i32 @kfree(%struct.slic_rx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
