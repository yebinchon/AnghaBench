; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rx_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rx_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mvneta_rx_desc = type { i32 }
%struct.mvneta_rx_queue = type { i32 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvneta_port*, %struct.mvneta_rx_desc*, %struct.mvneta_rx_queue*, i32)* @mvneta_rx_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_rx_refill(%struct.mvneta_port* %0, %struct.mvneta_rx_desc* %1, %struct.mvneta_rx_queue* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvneta_port*, align 8
  %7 = alloca %struct.mvneta_rx_desc*, align 8
  %8 = alloca %struct.mvneta_rx_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  store %struct.mvneta_port* %0, %struct.mvneta_port** %6, align 8
  store %struct.mvneta_rx_desc* %1, %struct.mvneta_rx_desc** %7, align 8
  store %struct.mvneta_rx_queue* %2, %struct.mvneta_rx_queue** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call %struct.page* @__dev_alloc_page(i32 %12)
  store %struct.page* %13, %struct.page** %11, align 8
  %14 = load %struct.page*, %struct.page** %11, align 8
  %15 = icmp ne %struct.page* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %58

19:                                               ; preds = %4
  %20 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %21 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.page*, %struct.page** %11, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %29 = call i32 @dma_map_page(i32 %25, %struct.page* %26, i32 0, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %31 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @dma_mapping_error(i32 %35, i32 %36)
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %19
  %41 = load %struct.page*, %struct.page** %11, align 8
  %42 = call i32 @__free_page(%struct.page* %41)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %58

45:                                               ; preds = %19
  %46 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %47 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %10, align 4
  %53 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.page*, %struct.page** %11, align 8
  %56 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %8, align 8
  %57 = call i32 @mvneta_rx_desc_fill(%struct.mvneta_rx_desc* %53, i32 %54, %struct.page* %55, %struct.mvneta_rx_queue* %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %45, %40, %16
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.page* @__dev_alloc_page(i32) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @mvneta_rx_desc_fill(%struct.mvneta_rx_desc*, i32, %struct.page*, %struct.mvneta_rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
