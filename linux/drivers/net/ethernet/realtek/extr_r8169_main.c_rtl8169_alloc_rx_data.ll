; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_alloc_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_alloc_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.rtl8169_private = type { i32 }
%struct.RxDesc = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@R8169_RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to map RX DMA!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.rtl8169_private*, %struct.RxDesc*)* @rtl8169_alloc_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @rtl8169_alloc_rx_data(%struct.rtl8169_private* %0, %struct.RxDesc* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.rtl8169_private*, align 8
  %5 = alloca %struct.RxDesc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %4, align 8
  store %struct.RxDesc* %1, %struct.RxDesc** %5, align 8
  %10 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %11 = call %struct.device* @tp_to_dev(%struct.rtl8169_private* %10)
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call i32 @dev_to_node(%struct.device* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load i32, i32* @R8169_RX_BUF_SIZE, align 4
  %17 = call i32 @get_order(i32 %16)
  %18 = call %struct.page* @alloc_pages_node(i32 %14, i32 %15, i32 %17)
  store %struct.page* %18, %struct.page** %9, align 8
  %19 = load %struct.page*, %struct.page** %9, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store %struct.page* null, %struct.page** %3, align 8
  br label %56

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load %struct.page*, %struct.page** %9, align 8
  %25 = load i32, i32* @R8169_RX_BUF_SIZE, align 4
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = call i32 @dma_map_page(%struct.device* %23, %struct.page* %24, i32 0, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @dma_mapping_error(%struct.device* %28, i32 %29)
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %22
  %34 = call i64 (...) @net_ratelimit()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %38 = load i32, i32* @drv, align 4
  %39 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %40 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @netif_err(%struct.rtl8169_private* %37, i32 %38, i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %36, %33
  %44 = load %struct.page*, %struct.page** %9, align 8
  %45 = load i32, i32* @R8169_RX_BUF_SIZE, align 4
  %46 = call i32 @get_order(i32 %45)
  %47 = call i32 @__free_pages(%struct.page* %44, i32 %46)
  store %struct.page* null, %struct.page** %3, align 8
  br label %56

48:                                               ; preds = %22
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @cpu_to_le64(i32 %49)
  %51 = load %struct.RxDesc*, %struct.RxDesc** %5, align 8
  %52 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.RxDesc*, %struct.RxDesc** %5, align 8
  %54 = call i32 @rtl8169_mark_to_asic(%struct.RxDesc* %53)
  %55 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %55, %struct.page** %3, align 8
  br label %56

56:                                               ; preds = %48, %43, %21
  %57 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %57
}

declare dso_local %struct.device* @tp_to_dev(%struct.rtl8169_private*) #1

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @dma_map_page(%struct.device*, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netif_err(%struct.rtl8169_private*, i32, i32, i8*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @rtl8169_mark_to_asic(%struct.RxDesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
