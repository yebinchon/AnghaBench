; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_get_rx_page_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_get_rx_page_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_page_info = type { i32, i32 }
%struct.be_rx_obj = type { %struct.be_rx_page_info*, %struct.be_queue_info, %struct.be_adapter* }
%struct.be_queue_info = type { i64, i32 }
%struct.be_adapter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@bus = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@rx_frag_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.be_rx_page_info* (%struct.be_rx_obj*)* @get_rx_page_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj* %0) #0 {
  %2 = alloca %struct.be_rx_obj*, align 8
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_rx_page_info*, align 8
  %5 = alloca %struct.be_queue_info*, align 8
  %6 = alloca i64, align 8
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %2, align 8
  %7 = load %struct.be_rx_obj*, %struct.be_rx_obj** %2, align 8
  %8 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %7, i32 0, i32 2
  %9 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  store %struct.be_adapter* %9, %struct.be_adapter** %3, align 8
  %10 = load %struct.be_rx_obj*, %struct.be_rx_obj** %2, align 8
  %11 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %10, i32 0, i32 1
  store %struct.be_queue_info* %11, %struct.be_queue_info** %5, align 8
  %12 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %13 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.be_rx_obj*, %struct.be_rx_obj** %2, align 8
  %16 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %15, i32 0, i32 0
  %17 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %17, i64 %18
  store %struct.be_rx_page_info* %19, %struct.be_rx_page_info** %4, align 8
  %20 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %4, align 8
  %21 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %4, align 8
  %28 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %1
  %32 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %4, align 8
  %37 = load i32, i32* @bus, align 4
  %38 = call i32 @dma_unmap_addr(%struct.be_rx_page_info* %36, i32 %37)
  %39 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 @dma_unmap_page(i32* %35, i32 %38, i32 %41, i32 %42)
  %44 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %4, align 8
  %45 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  br label %57

46:                                               ; preds = %1
  %47 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %4, align 8
  %52 = load i32, i32* @bus, align 4
  %53 = call i32 @dma_unmap_addr(%struct.be_rx_page_info* %51, i32 %52)
  %54 = load i32, i32* @rx_frag_size, align 4
  %55 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %56 = call i32 @dma_sync_single_for_cpu(i32* %50, i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %46, %31
  %58 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %59 = call i32 @queue_tail_inc(%struct.be_queue_info* %58)
  %60 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %61 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %60, i32 0, i32 1
  %62 = call i32 @atomic_dec(i32* %61)
  %63 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %4, align 8
  ret %struct.be_rx_page_info* %63
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.be_rx_page_info*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i32 @queue_tail_inc(%struct.be_queue_info*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
