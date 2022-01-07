; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_fini_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_fini_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { i32, i32, i32, i32, %struct.page**, i64, i32, %struct.efx_nic* }
%struct.page = type { i32 }
%struct.efx_nic = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.efx_rx_buffer = type { i32 }
%struct.efx_rx_page_state = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"shutting down RX queue %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_fini_rx_queue(%struct.efx_rx_queue* %0) #0 {
  %2 = alloca %struct.efx_rx_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.efx_rx_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.efx_rx_page_state*, align 8
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %2, align 8
  %9 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %10 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %9, i32 0, i32 7
  %11 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  store %struct.efx_nic* %11, %struct.efx_nic** %4, align 8
  %12 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %13 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %12, i32 0, i32 7
  %14 = load %struct.efx_nic*, %struct.efx_nic** %13, align 8
  %15 = load i32, i32* @drv, align 4
  %16 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %17 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %16, i32 0, i32 7
  %18 = load %struct.efx_nic*, %struct.efx_nic** %17, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %22 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %21)
  %23 = call i32 @netif_dbg(%struct.efx_nic* %14, i32 %15, i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %25 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %24, i32 0, i32 6
  %26 = call i32 @del_timer_sync(i32* %25)
  %27 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %28 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %1
  %32 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %33 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %53, %31
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %38 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %44 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %42, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.efx_rx_buffer* @efx_rx_buffer(%struct.efx_rx_queue* %47, i32 %48)
  store %struct.efx_rx_buffer* %49, %struct.efx_rx_buffer** %5, align 8
  %50 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %51 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %5, align 8
  %52 = call i32 @efx_fini_rx_buffer(%struct.efx_rx_queue* %50, %struct.efx_rx_buffer* %51)
  br label %53

53:                                               ; preds = %41
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %35

56:                                               ; preds = %35
  br label %57

57:                                               ; preds = %56, %1
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %94, %57
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %61 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp sle i32 %59, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %58
  %65 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %66 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %65, i32 0, i32 4
  %67 = load %struct.page**, %struct.page*** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.page*, %struct.page** %67, i64 %69
  %71 = load %struct.page*, %struct.page** %70, align 8
  store %struct.page* %71, %struct.page** %7, align 8
  %72 = load %struct.page*, %struct.page** %7, align 8
  %73 = icmp eq %struct.page* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %94

75:                                               ; preds = %64
  %76 = load %struct.page*, %struct.page** %7, align 8
  %77 = call %struct.efx_rx_page_state* @page_address(%struct.page* %76)
  store %struct.efx_rx_page_state* %77, %struct.efx_rx_page_state** %8, align 8
  %78 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %79 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load %struct.efx_rx_page_state*, %struct.efx_rx_page_state** %8, align 8
  %83 = getelementptr inbounds %struct.efx_rx_page_state, %struct.efx_rx_page_state* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PAGE_SIZE, align 4
  %86 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %87 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %85, %88
  %90 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %91 = call i32 @dma_unmap_page(i32* %81, i32 %84, i32 %89, i32 %90)
  %92 = load %struct.page*, %struct.page** %7, align 8
  %93 = call i32 @put_page(%struct.page* %92)
  br label %94

94:                                               ; preds = %75, %74
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %58

97:                                               ; preds = %58
  %98 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %99 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %98, i32 0, i32 4
  %100 = load %struct.page**, %struct.page*** %99, align 8
  %101 = call i32 @kfree(%struct.page** %100)
  %102 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %103 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %102, i32 0, i32 4
  store %struct.page** null, %struct.page*** %103, align 8
  ret void
}

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @efx_rx_queue_index(%struct.efx_rx_queue*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local %struct.efx_rx_buffer* @efx_rx_buffer(%struct.efx_rx_queue*, i32) #1

declare dso_local i32 @efx_fini_rx_buffer(%struct.efx_rx_queue*, %struct.efx_rx_buffer*) #1

declare dso_local %struct.efx_rx_page_state* @page_address(%struct.page*) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
