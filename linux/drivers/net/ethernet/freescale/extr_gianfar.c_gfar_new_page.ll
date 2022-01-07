; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_new_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_new_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_priv_rx_q = type { i32 }
%struct.gfar_rx_buff = type { i64, %struct.page*, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfar_priv_rx_q*, %struct.gfar_rx_buff*)* @gfar_new_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_new_page(%struct.gfar_priv_rx_q* %0, %struct.gfar_rx_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfar_priv_rx_q*, align 8
  %5 = alloca %struct.gfar_rx_buff*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.gfar_priv_rx_q* %0, %struct.gfar_priv_rx_q** %4, align 8
  store %struct.gfar_rx_buff* %1, %struct.gfar_rx_buff** %5, align 8
  %8 = call %struct.page* (...) @dev_alloc_page()
  store %struct.page* %8, %struct.page** %6, align 8
  %9 = load %struct.page*, %struct.page** %6, align 8
  %10 = icmp ne %struct.page* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %4, align 8
  %18 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %23 = call i32 @dma_map_page(i32 %19, %struct.page* %20, i32 0, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %4, align 8
  %25 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dma_mapping_error(i32 %26, i32 %27)
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %16
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = call i32 @__free_page(%struct.page* %32)
  store i32 0, i32* %3, align 4
  br label %43

34:                                               ; preds = %16
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %5, align 8
  %37 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.page*, %struct.page** %6, align 8
  %39 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %5, align 8
  %40 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %39, i32 0, i32 1
  store %struct.page* %38, %struct.page** %40, align 8
  %41 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %5, align 8
  %42 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %34, %31, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.page* @dev_alloc_page(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
