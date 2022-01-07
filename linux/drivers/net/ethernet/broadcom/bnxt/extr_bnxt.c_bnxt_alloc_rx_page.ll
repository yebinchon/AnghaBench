; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_rx_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_rx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.bnxt_rx_ring_info = type { i64, i32, %struct.bnxt_sw_rx_agg_bd*, i32, %struct.page*, %struct.rx_bd** }
%struct.bnxt_sw_rx_agg_bd = type { i32, i32, %struct.page* }
%struct.page = type { i32 }
%struct.rx_bd = type { i64, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@BNXT_RX_PAGE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DMA_ATTR_WEAK_ORDERING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_rx_ring_info*, i64, i32)* @bnxt_alloc_rx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_alloc_rx_page(%struct.bnxt* %0, %struct.bnxt_rx_ring_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_rx_ring_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rx_bd*, align 8
  %11 = alloca %struct.bnxt_sw_rx_agg_bd*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store %struct.bnxt_rx_ring_info* %1, %struct.bnxt_rx_ring_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %18 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %17, i32 0, i32 5
  %19 = load %struct.rx_bd**, %struct.rx_bd*** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @RX_RING(i64 %20)
  %22 = getelementptr inbounds %struct.rx_bd*, %struct.rx_bd** %19, i64 %21
  %23 = load %struct.rx_bd*, %struct.rx_bd** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @RX_IDX(i64 %24)
  %26 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %23, i64 %25
  store %struct.rx_bd* %26, %struct.rx_bd** %10, align 8
  %27 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %28 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %27, i32 0, i32 0
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %12, align 8
  %30 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %31 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = load i64, i64* @BNXT_RX_PAGE_SIZE, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %80

36:                                               ; preds = %4
  %37 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %38 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %37, i32 0, i32 4
  %39 = load %struct.page*, %struct.page** %38, align 8
  store %struct.page* %39, %struct.page** %13, align 8
  %40 = load %struct.page*, %struct.page** %13, align 8
  %41 = icmp ne %struct.page* %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = call %struct.page* @alloc_page(i32 %43)
  store %struct.page* %44, %struct.page** %13, align 8
  %45 = load %struct.page*, %struct.page** %13, align 8
  %46 = icmp ne %struct.page* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %151

50:                                               ; preds = %42
  %51 = load %struct.page*, %struct.page** %13, align 8
  %52 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %53 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %52, i32 0, i32 4
  store %struct.page* %51, %struct.page** %53, align 8
  %54 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %55 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %50, %36
  %57 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %58 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %16, align 4
  %60 = load i64, i64* @BNXT_RX_PAGE_SIZE, align 8
  %61 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %62 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = zext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  %67 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %68 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %56
  %74 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %75 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %74, i32 0, i32 4
  store %struct.page* null, %struct.page** %75, align 8
  br label %79

76:                                               ; preds = %56
  %77 = load %struct.page*, %struct.page** %13, align 8
  %78 = call i32 @get_page(%struct.page* %77)
  br label %79

79:                                               ; preds = %76, %73
  br label %89

80:                                               ; preds = %4
  %81 = load i32, i32* %9, align 4
  %82 = call %struct.page* @alloc_page(i32 %81)
  store %struct.page* %82, %struct.page** %13, align 8
  %83 = load %struct.page*, %struct.page** %13, align 8
  %84 = icmp ne %struct.page* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %151

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %79
  %90 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load %struct.page*, %struct.page** %13, align 8
  %93 = load i32, i32* %16, align 4
  %94 = load i64, i64* @BNXT_RX_PAGE_SIZE, align 8
  %95 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %96 = load i32, i32* @DMA_ATTR_WEAK_ORDERING, align 4
  %97 = call i32 @dma_map_page_attrs(i32* %91, %struct.page* %92, i32 %93, i64 %94, i32 %95, i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %14, align 4
  %101 = call i64 @dma_mapping_error(i32* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %89
  %104 = load %struct.page*, %struct.page** %13, align 8
  %105 = call i32 @__free_page(%struct.page* %104)
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %151

108:                                              ; preds = %89
  %109 = load i64, i64* %15, align 8
  %110 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %111 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @test_bit(i64 %109, i32 %112)
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %118 = load i64, i64* %15, align 8
  %119 = call i64 @bnxt_find_next_agg_idx(%struct.bnxt_rx_ring_info* %117, i64 %118)
  store i64 %119, i64* %15, align 8
  br label %120

120:                                              ; preds = %116, %108
  %121 = load i64, i64* %15, align 8
  %122 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %123 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @__set_bit(i64 %121, i32 %124)
  %126 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %127 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %126, i32 0, i32 2
  %128 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %127, align 8
  %129 = load i64, i64* %15, align 8
  %130 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %128, i64 %129
  store %struct.bnxt_sw_rx_agg_bd* %130, %struct.bnxt_sw_rx_agg_bd** %11, align 8
  %131 = load i64, i64* %15, align 8
  %132 = call i64 @NEXT_RX_AGG(i64 %131)
  %133 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %134 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.page*, %struct.page** %13, align 8
  %136 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %11, align 8
  %137 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %136, i32 0, i32 2
  store %struct.page* %135, %struct.page** %137, align 8
  %138 = load i32, i32* %16, align 4
  %139 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %11, align 8
  %140 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %14, align 4
  %142 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %11, align 8
  %143 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @cpu_to_le64(i32 %144)
  %146 = load %struct.rx_bd*, %struct.rx_bd** %10, align 8
  %147 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = load i64, i64* %15, align 8
  %149 = load %struct.rx_bd*, %struct.rx_bd** %10, align 8
  %150 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %120, %103, %85, %47
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i64 @RX_RING(i64) #1

declare dso_local i64 @RX_IDX(i64) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @dma_map_page_attrs(i32*, %struct.page*, i32, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i64 @bnxt_find_next_agg_idx(%struct.bnxt_rx_ring_info*, i64) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i64 @NEXT_RX_AGG(i64) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
