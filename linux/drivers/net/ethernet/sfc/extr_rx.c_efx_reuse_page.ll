; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_reuse_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_reuse_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.efx_rx_queue = type { i32, i32, i32, i32, i32, %struct.page**, %struct.efx_nic* }
%struct.efx_nic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.efx_rx_page_state = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.efx_rx_queue*)* @efx_reuse_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @efx_reuse_page(%struct.efx_rx_queue* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.efx_rx_queue*, align 8
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.efx_rx_page_state*, align 8
  %7 = alloca i32, align 4
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %3, align 8
  %8 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %9 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %8, i32 0, i32 6
  %10 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  store %struct.efx_nic* %10, %struct.efx_nic** %4, align 8
  %11 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %12 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %15 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %13, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %19 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %18, i32 0, i32 5
  %20 = load %struct.page**, %struct.page*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.page*, %struct.page** %20, i64 %22
  %24 = load %struct.page*, %struct.page** %23, align 8
  store %struct.page* %24, %struct.page** %5, align 8
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = icmp eq %struct.page* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store %struct.page* null, %struct.page** %2, align 8
  br label %81

28:                                               ; preds = %1
  %29 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %30 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %29, i32 0, i32 5
  %31 = load %struct.page**, %struct.page*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.page*, %struct.page** %31, i64 %33
  store %struct.page* null, %struct.page** %34, align 8
  %35 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %36 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %39 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %28
  %43 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %44 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %42, %28
  %48 = load %struct.page*, %struct.page** %5, align 8
  %49 = call i32 @page_count(%struct.page* %48)
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %53 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %56, %struct.page** %2, align 8
  br label %81

57:                                               ; preds = %47
  %58 = load %struct.page*, %struct.page** %5, align 8
  %59 = call %struct.efx_rx_page_state* @page_address(%struct.page* %58)
  store %struct.efx_rx_page_state* %59, %struct.efx_rx_page_state** %6, align 8
  %60 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %61 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.efx_rx_page_state*, %struct.efx_rx_page_state** %6, align 8
  %65 = getelementptr inbounds %struct.efx_rx_page_state, %struct.efx_rx_page_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %69 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 %67, %70
  %72 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %73 = call i32 @dma_unmap_page(i32* %63, i32 %66, i32 %71, i32 %72)
  %74 = load %struct.page*, %struct.page** %5, align 8
  %75 = call i32 @put_page(%struct.page* %74)
  %76 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %77 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %57
  store %struct.page* null, %struct.page** %2, align 8
  br label %81

81:                                               ; preds = %80, %51, %27
  %82 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %82
}

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local %struct.efx_rx_page_state* @page_address(%struct.page*) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
