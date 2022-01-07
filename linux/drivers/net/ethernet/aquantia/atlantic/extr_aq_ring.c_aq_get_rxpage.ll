; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_get_rxpage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_get_rxpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_rxpage = type { i32, i64, i32, %struct.page* }
%struct.page = type { i32 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_rxpage*, i32, %struct.device*)* @aq_get_rxpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_get_rxpage(%struct.aq_rxpage* %0, i32 %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aq_rxpage*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.aq_rxpage* %0, %struct.aq_rxpage** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.device* %2, %struct.device** %7, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.page* @dev_alloc_pages(i32 %13)
  store %struct.page* %14, %struct.page** %8, align 8
  %15 = load %struct.page*, %struct.page** %8, align 8
  %16 = icmp ne %struct.page* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %52

22:                                               ; preds = %3
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = load %struct.page*, %struct.page** %8, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %29 = call i32 @dma_map_page(%struct.device* %23, %struct.page* %24, i32 0, i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @dma_mapping_error(%struct.device* %30, i32 %31)
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %48

36:                                               ; preds = %22
  %37 = load %struct.page*, %struct.page** %8, align 8
  %38 = load %struct.aq_rxpage*, %struct.aq_rxpage** %5, align 8
  %39 = getelementptr inbounds %struct.aq_rxpage, %struct.aq_rxpage* %38, i32 0, i32 3
  store %struct.page* %37, %struct.page** %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.aq_rxpage*, %struct.aq_rxpage** %5, align 8
  %42 = getelementptr inbounds %struct.aq_rxpage, %struct.aq_rxpage* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.aq_rxpage*, %struct.aq_rxpage** %5, align 8
  %45 = getelementptr inbounds %struct.aq_rxpage, %struct.aq_rxpage* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.aq_rxpage*, %struct.aq_rxpage** %5, align 8
  %47 = getelementptr inbounds %struct.aq_rxpage, %struct.aq_rxpage* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  store i32 0, i32* %4, align 4
  br label %54

48:                                               ; preds = %35
  %49 = load %struct.page*, %struct.page** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @__free_pages(%struct.page* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %21
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %36
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.page* @dev_alloc_pages(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page(%struct.device*, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
