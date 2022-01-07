; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_alloc_rx_sge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_alloc_rx_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2x_fastpath = type { %struct.bnx2x_alloc_pool, %struct.eth_rx_sge*, %struct.sw_rx_page* }
%struct.bnx2x_alloc_pool = type { i64, i32* }
%struct.eth_rx_sge = type { i8*, i8* }
%struct.sw_rx_page = type { i64, i32* }

@PAGES_PER_SGE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SGE_PAGE_SIZE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Can't map sge\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_fastpath*, i64, i32)* @bnx2x_alloc_rx_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_alloc_rx_sge(%struct.bnx2x* %0, %struct.bnx2x_fastpath* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_fastpath*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sw_rx_page*, align 8
  %11 = alloca %struct.eth_rx_sge*, align 8
  %12 = alloca %struct.bnx2x_alloc_pool*, align 8
  %13 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_fastpath* %1, %struct.bnx2x_fastpath** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %7, align 8
  %15 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %14, i32 0, i32 2
  %16 = load %struct.sw_rx_page*, %struct.sw_rx_page** %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.sw_rx_page, %struct.sw_rx_page* %16, i64 %17
  store %struct.sw_rx_page* %18, %struct.sw_rx_page** %10, align 8
  %19 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %7, align 8
  %20 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %19, i32 0, i32 1
  %21 = load %struct.eth_rx_sge*, %struct.eth_rx_sge** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.eth_rx_sge, %struct.eth_rx_sge* %21, i64 %22
  store %struct.eth_rx_sge* %23, %struct.eth_rx_sge** %11, align 8
  %24 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %7, align 8
  %25 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %24, i32 0, i32 0
  store %struct.bnx2x_alloc_pool* %25, %struct.bnx2x_alloc_pool** %12, align 8
  %26 = load %struct.bnx2x_alloc_pool*, %struct.bnx2x_alloc_pool** %12, align 8
  %27 = getelementptr inbounds %struct.bnx2x_alloc_pool, %struct.bnx2x_alloc_pool* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %50, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @PAGES_PER_SGE_SHIFT, align 4
  %33 = call i32* @alloc_pages(i32 %31, i32 %32)
  %34 = load %struct.bnx2x_alloc_pool*, %struct.bnx2x_alloc_pool** %12, align 8
  %35 = getelementptr inbounds %struct.bnx2x_alloc_pool, %struct.bnx2x_alloc_pool* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.bnx2x_alloc_pool*, %struct.bnx2x_alloc_pool** %12, align 8
  %37 = getelementptr inbounds %struct.bnx2x_alloc_pool, %struct.bnx2x_alloc_pool* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %122

47:                                               ; preds = %30
  %48 = load %struct.bnx2x_alloc_pool*, %struct.bnx2x_alloc_pool** %12, align 8
  %49 = getelementptr inbounds %struct.bnx2x_alloc_pool, %struct.bnx2x_alloc_pool* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %4
  %51 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %52 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.bnx2x_alloc_pool*, %struct.bnx2x_alloc_pool** %12, align 8
  %56 = getelementptr inbounds %struct.bnx2x_alloc_pool, %struct.bnx2x_alloc_pool* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.bnx2x_alloc_pool*, %struct.bnx2x_alloc_pool** %12, align 8
  %59 = getelementptr inbounds %struct.bnx2x_alloc_pool, %struct.bnx2x_alloc_pool* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SGE_PAGE_SIZE, align 8
  %62 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %63 = call i32 @dma_map_page(i32* %54, i32* %57, i64 %60, i64 %61, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %65 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @dma_mapping_error(i32* %67, i32 %68)
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %50
  %73 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %122

76:                                               ; preds = %50
  %77 = load %struct.bnx2x_alloc_pool*, %struct.bnx2x_alloc_pool** %12, align 8
  %78 = getelementptr inbounds %struct.bnx2x_alloc_pool, %struct.bnx2x_alloc_pool* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.sw_rx_page*, %struct.sw_rx_page** %10, align 8
  %81 = getelementptr inbounds %struct.sw_rx_page, %struct.sw_rx_page* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  %82 = load %struct.bnx2x_alloc_pool*, %struct.bnx2x_alloc_pool** %12, align 8
  %83 = getelementptr inbounds %struct.bnx2x_alloc_pool, %struct.bnx2x_alloc_pool* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.sw_rx_page*, %struct.sw_rx_page** %10, align 8
  %86 = getelementptr inbounds %struct.sw_rx_page, %struct.sw_rx_page* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.sw_rx_page*, %struct.sw_rx_page** %10, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @dma_unmap_addr_set(%struct.sw_rx_page* %87, i32 %88, i32 %89)
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @U64_HI(i32 %91)
  %93 = call i8* @cpu_to_le32(i32 %92)
  %94 = load %struct.eth_rx_sge*, %struct.eth_rx_sge** %11, align 8
  %95 = getelementptr inbounds %struct.eth_rx_sge, %struct.eth_rx_sge* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @U64_LO(i32 %96)
  %98 = call i8* @cpu_to_le32(i32 %97)
  %99 = load %struct.eth_rx_sge*, %struct.eth_rx_sge** %11, align 8
  %100 = getelementptr inbounds %struct.eth_rx_sge, %struct.eth_rx_sge* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load i64, i64* @SGE_PAGE_SIZE, align 8
  %102 = load %struct.bnx2x_alloc_pool*, %struct.bnx2x_alloc_pool** %12, align 8
  %103 = getelementptr inbounds %struct.bnx2x_alloc_pool, %struct.bnx2x_alloc_pool* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %101
  store i64 %105, i64* %103, align 8
  %106 = load i64, i64* @PAGE_SIZE, align 8
  %107 = load %struct.bnx2x_alloc_pool*, %struct.bnx2x_alloc_pool** %12, align 8
  %108 = getelementptr inbounds %struct.bnx2x_alloc_pool, %struct.bnx2x_alloc_pool* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %106, %109
  %111 = load i64, i64* @SGE_PAGE_SIZE, align 8
  %112 = icmp sge i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %76
  %114 = load %struct.bnx2x_alloc_pool*, %struct.bnx2x_alloc_pool** %12, align 8
  %115 = getelementptr inbounds %struct.bnx2x_alloc_pool, %struct.bnx2x_alloc_pool* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @get_page(i32* %116)
  br label %121

118:                                              ; preds = %76
  %119 = load %struct.bnx2x_alloc_pool*, %struct.bnx2x_alloc_pool** %12, align 8
  %120 = getelementptr inbounds %struct.bnx2x_alloc_pool, %struct.bnx2x_alloc_pool* %119, i32 0, i32 1
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %118, %113
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %72, %44
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32* @alloc_pages(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page(i32*, i32*, i64, i64, i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.sw_rx_page*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @get_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
