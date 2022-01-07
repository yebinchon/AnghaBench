; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_alloc_rx_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_alloc_rx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftmac100 = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ftmac100_rxdes = type { i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"failed to allocate rx page\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to map rx page\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftmac100*, %struct.ftmac100_rxdes*, i32)* @ftmac100_alloc_rx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftmac100_alloc_rx_page(%struct.ftmac100* %0, %struct.ftmac100_rxdes* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ftmac100*, align 8
  %6 = alloca %struct.ftmac100_rxdes*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store %struct.ftmac100* %0, %struct.ftmac100** %5, align 8
  store %struct.ftmac100_rxdes* %1, %struct.ftmac100_rxdes** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ftmac100*, %struct.ftmac100** %5, align 8
  %12 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.page* @alloc_page(i32 %14)
  store %struct.page* %15, %struct.page** %9, align 8
  %16 = load %struct.page*, %struct.page** %9, align 8
  %17 = icmp ne %struct.page* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = call i64 (...) @net_ratelimit()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = call i32 @netdev_err(%struct.net_device* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %65

27:                                               ; preds = %3
  %28 = load %struct.ftmac100*, %struct.ftmac100** %5, align 8
  %29 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.page*, %struct.page** %9, align 8
  %32 = load i32, i32* @RX_BUF_SIZE, align 4
  %33 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %34 = call i32 @dma_map_page(i32 %30, %struct.page* %31, i32 0, i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.ftmac100*, %struct.ftmac100** %5, align 8
  %36 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @dma_mapping_error(i32 %37, i32 %38)
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %27
  %43 = call i64 (...) @net_ratelimit()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = call i32 @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.page*, %struct.page** %9, align 8
  %50 = call i32 @__free_page(%struct.page* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %65

53:                                               ; preds = %27
  %54 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %6, align 8
  %55 = load %struct.page*, %struct.page** %9, align 8
  %56 = call i32 @ftmac100_rxdes_set_page(%struct.ftmac100_rxdes* %54, %struct.page* %55)
  %57 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @ftmac100_rxdes_set_dma_addr(%struct.ftmac100_rxdes* %57, i32 %58)
  %60 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %6, align 8
  %61 = load i32, i32* @RX_BUF_SIZE, align 4
  %62 = call i32 @ftmac100_rxdes_set_buffer_size(%struct.ftmac100_rxdes* %60, i32 %61)
  %63 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %6, align 8
  %64 = call i32 @ftmac100_rxdes_set_dma_own(%struct.ftmac100_rxdes* %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %53, %48, %24
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @ftmac100_rxdes_set_page(%struct.ftmac100_rxdes*, %struct.page*) #1

declare dso_local i32 @ftmac100_rxdes_set_dma_addr(%struct.ftmac100_rxdes*, i32) #1

declare dso_local i32 @ftmac100_rxdes_set_buffer_size(%struct.ftmac100_rxdes*, i32) #1

declare dso_local i32 @ftmac100_rxdes_set_dma_own(%struct.ftmac100_rxdes*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
