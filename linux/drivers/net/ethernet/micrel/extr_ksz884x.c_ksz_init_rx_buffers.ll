; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_ksz_init_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_ksz_init_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_info = type { i32, i32, %struct.ksz_hw }
%struct.ksz_hw = type { %struct.ksz_desc_info }
%struct.ksz_desc_info = type { i32 }
%struct.ksz_desc = type { i32 }
%struct.ksz_dma_buf = type { i32, i32, i64 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_info*)* @ksz_init_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz_init_rx_buffers(%struct.dev_info* %0) #0 {
  %2 = alloca %struct.dev_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ksz_desc*, align 8
  %5 = alloca %struct.ksz_dma_buf*, align 8
  %6 = alloca %struct.ksz_hw*, align 8
  %7 = alloca %struct.ksz_desc_info*, align 8
  store %struct.dev_info* %0, %struct.dev_info** %2, align 8
  %8 = load %struct.dev_info*, %struct.dev_info** %2, align 8
  %9 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %8, i32 0, i32 2
  store %struct.ksz_hw* %9, %struct.ksz_hw** %6, align 8
  %10 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %11 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %10, i32 0, i32 0
  store %struct.ksz_desc_info* %11, %struct.ksz_desc_info** %7, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %97, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %15 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %100

19:                                               ; preds = %12
  %20 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %7, align 8
  %21 = call i32 @get_rx_pkt(%struct.ksz_desc_info* %20, %struct.ksz_desc** %4)
  %22 = load %struct.ksz_desc*, %struct.ksz_desc** %4, align 8
  %23 = call %struct.ksz_dma_buf* @DMA_BUFFER(%struct.ksz_desc* %22)
  store %struct.ksz_dma_buf* %23, %struct.ksz_dma_buf** %5, align 8
  %24 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %25 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %30 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.dev_info*, %struct.dev_info** %2, align 8
  %33 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.dev_info*, %struct.dev_info** %2, align 8
  %38 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %39 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %40 = call i32 @free_dma_buf(%struct.dev_info* %37, %struct.ksz_dma_buf* %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %28, %19
  %42 = load %struct.dev_info*, %struct.dev_info** %2, align 8
  %43 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %46 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %48 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %41
  %52 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %53 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @GFP_ATOMIC, align 4
  %56 = call i64 @alloc_skb(i32 %54, i32 %55)
  %57 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %58 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %51, %41
  %60 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %61 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %66 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %64
  %70 = load %struct.dev_info*, %struct.dev_info** %2, align 8
  %71 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %74 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @skb_tail_pointer(i64 %75)
  %77 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %78 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %81 = call i32 @pci_map_single(i32 %72, i32 %76, i32 %79, i32 %80)
  %82 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %83 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %69, %64, %59
  %85 = load %struct.ksz_desc*, %struct.ksz_desc** %4, align 8
  %86 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %87 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @set_rx_buf(%struct.ksz_desc* %85, i32 %88)
  %90 = load %struct.ksz_desc*, %struct.ksz_desc** %4, align 8
  %91 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %5, align 8
  %92 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @set_rx_len(%struct.ksz_desc* %90, i32 %93)
  %95 = load %struct.ksz_desc*, %struct.ksz_desc** %4, align 8
  %96 = call i32 @release_desc(%struct.ksz_desc* %95)
  br label %97

97:                                               ; preds = %84
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %12

100:                                              ; preds = %12
  ret void
}

declare dso_local i32 @get_rx_pkt(%struct.ksz_desc_info*, %struct.ksz_desc**) #1

declare dso_local %struct.ksz_dma_buf* @DMA_BUFFER(%struct.ksz_desc*) #1

declare dso_local i32 @free_dma_buf(%struct.dev_info*, %struct.ksz_dma_buf*, i32) #1

declare dso_local i64 @alloc_skb(i32, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_tail_pointer(i64) #1

declare dso_local i32 @set_rx_buf(%struct.ksz_desc*, i32) #1

declare dso_local i32 @set_rx_len(%struct.ksz_desc*, i32) #1

declare dso_local i32 @release_desc(%struct.ksz_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
