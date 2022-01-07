; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_alloc_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_alloc_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, i32, i32 }
%struct.tg3_rx_prodring_set = type { %struct.ring_info*, %struct.TYPE_2__*, %struct.ring_info*, %struct.tg3_rx_buffer_desc* }
%struct.TYPE_2__ = type { %struct.tg3_rx_buffer_desc }
%struct.tg3_rx_buffer_desc = type { i32, i32 }
%struct.ring_info = type { i32* }

@TG3_RX_JMB_MAP_SZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, %struct.tg3_rx_prodring_set*, i32, i32, i32*)* @tg3_alloc_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_alloc_rx_data(%struct.tg3* %0, %struct.tg3_rx_prodring_set* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tg3*, align 8
  %8 = alloca %struct.tg3_rx_prodring_set*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.tg3_rx_buffer_desc*, align 8
  %13 = alloca %struct.ring_info*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %7, align 8
  store %struct.tg3_rx_prodring_set* %1, %struct.tg3_rx_prodring_set** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %61 [
    i32 128, label %20
    i32 129, label %41
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.tg3*, %struct.tg3** %7, align 8
  %23 = getelementptr inbounds %struct.tg3, %struct.tg3* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %21, %24
  store i32 %25, i32* %18, align 4
  %26 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %8, align 8
  %27 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %26, i32 0, i32 3
  %28 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %27, align 8
  %29 = load i32, i32* %18, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %28, i64 %30
  store %struct.tg3_rx_buffer_desc* %31, %struct.tg3_rx_buffer_desc** %12, align 8
  %32 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %8, align 8
  %33 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %32, i32 0, i32 2
  %34 = load %struct.ring_info*, %struct.ring_info** %33, align 8
  %35 = load i32, i32* %18, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %34, i64 %36
  store %struct.ring_info* %37, %struct.ring_info** %13, align 8
  %38 = load %struct.tg3*, %struct.tg3** %7, align 8
  %39 = getelementptr inbounds %struct.tg3, %struct.tg3* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %17, align 4
  br label %64

41:                                               ; preds = %5
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.tg3*, %struct.tg3** %7, align 8
  %44 = getelementptr inbounds %struct.tg3, %struct.tg3* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  store i32 %46, i32* %18, align 4
  %47 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %8, align 8
  %48 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store %struct.tg3_rx_buffer_desc* %53, %struct.tg3_rx_buffer_desc** %12, align 8
  %54 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %8, align 8
  %55 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %54, i32 0, i32 0
  %56 = load %struct.ring_info*, %struct.ring_info** %55, align 8
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %56, i64 %58
  store %struct.ring_info* %59, %struct.ring_info** %13, align 8
  %60 = load i32, i32* @TG3_RX_JMB_MAP_SZ, align 4
  store i32 %60, i32* %17, align 4
  br label %64

61:                                               ; preds = %5
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %137

64:                                               ; preds = %41, %20
  %65 = load i32, i32* %17, align 4
  %66 = load %struct.tg3*, %struct.tg3** %7, align 8
  %67 = call i32 @TG3_RX_OFFSET(%struct.tg3* %66)
  %68 = add nsw i32 %65, %67
  %69 = call i32 @SKB_DATA_ALIGN(i32 %68)
  %70 = call i32 @SKB_DATA_ALIGN(i32 4)
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %64
  %76 = load i32, i32* %16, align 4
  %77 = call i32* @napi_alloc_frag(i32 %76)
  store i32* %77, i32** %14, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load i32*, i32** %11, align 8
  store i32 %78, i32* %79, align 4
  br label %85

80:                                               ; preds = %64
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* @GFP_ATOMIC, align 4
  %83 = call i32* @kmalloc(i32 %81, i32 %82)
  store i32* %83, i32** %14, align 8
  %84 = load i32*, i32** %11, align 8
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %80, %75
  %86 = load i32*, i32** %14, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %137

91:                                               ; preds = %85
  %92 = load %struct.tg3*, %struct.tg3** %7, align 8
  %93 = getelementptr inbounds %struct.tg3, %struct.tg3* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %14, align 8
  %96 = load %struct.tg3*, %struct.tg3** %7, align 8
  %97 = call i32 @TG3_RX_OFFSET(%struct.tg3* %96)
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %102 = call i64 @pci_map_single(i32 %94, i32* %99, i32 %100, i32 %101)
  store i64 %102, i64* %15, align 8
  %103 = load %struct.tg3*, %struct.tg3** %7, align 8
  %104 = getelementptr inbounds %struct.tg3, %struct.tg3* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* %15, align 8
  %107 = call i32 @pci_dma_mapping_error(i32 %105, i64 %106)
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %91
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = icmp sle i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i32*, i32** %14, align 8
  %116 = call i32 @tg3_frag_free(i32 %114, i32* %115)
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %6, align 4
  br label %137

119:                                              ; preds = %91
  %120 = load i32*, i32** %14, align 8
  %121 = load %struct.ring_info*, %struct.ring_info** %13, align 8
  %122 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %121, i32 0, i32 0
  store i32* %120, i32** %122, align 8
  %123 = load %struct.ring_info*, %struct.ring_info** %13, align 8
  %124 = load i64, i64* %15, align 8
  %125 = load i64, i64* %15, align 8
  %126 = call i32 @dma_unmap_addr_set(%struct.ring_info* %123, i64 %124, i64 %125)
  %127 = load i64, i64* %15, align 8
  %128 = trunc i64 %127 to i32
  %129 = ashr i32 %128, 32
  %130 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %12, align 8
  %131 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load i64, i64* %15, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %12, align 8
  %135 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %17, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %119, %110, %88, %61
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @TG3_RX_OFFSET(%struct.tg3*) #1

declare dso_local i32* @napi_alloc_frag(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @pci_map_single(i32, i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_dma_mapping_error(i32, i64) #1

declare dso_local i32 @tg3_frag_free(i32, i32*) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.ring_info*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
