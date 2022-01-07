; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_init_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_init_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i64, i64, %struct.stmmac_rx_queue* }
%struct.stmmac_rx_queue = type { i32, %struct.stmmac_rx_buffer* }
%struct.stmmac_rx_buffer = type { i8*, i32*, i32*, i8* }
%struct.dma_desc = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BUF_SIZE_16KiB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*, %struct.dma_desc*, i32, i32, i64)* @stmmac_init_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_init_rx_buffers(%struct.stmmac_priv* %0, %struct.dma_desc* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.stmmac_priv*, align 8
  %8 = alloca %struct.dma_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.stmmac_rx_queue*, align 8
  %13 = alloca %struct.stmmac_rx_buffer*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %7, align 8
  store %struct.dma_desc* %1, %struct.dma_desc** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %15 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %14, i32 0, i32 2
  %16 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %15, align 8
  %17 = load i64, i64* %11, align 8
  %18 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %16, i64 %17
  store %struct.stmmac_rx_queue* %18, %struct.stmmac_rx_queue** %12, align 8
  %19 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %12, align 8
  %20 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %19, i32 0, i32 1
  %21 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %21, i64 %23
  store %struct.stmmac_rx_buffer* %24, %struct.stmmac_rx_buffer** %13, align 8
  %25 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %12, align 8
  %26 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @page_pool_dev_alloc_pages(i32 %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %13, align 8
  %31 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %13, align 8
  %33 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %5
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %98

39:                                               ; preds = %5
  %40 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %41 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %39
  %45 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %12, align 8
  %46 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @page_pool_dev_alloc_pages(i32 %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %13, align 8
  %51 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %13, align 8
  %53 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %44
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %98

59:                                               ; preds = %44
  %60 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %13, align 8
  %61 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i8* @page_pool_get_dma_addr(i32* %62)
  %64 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %13, align 8
  %65 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %67 = load %struct.dma_desc*, %struct.dma_desc** %8, align 8
  %68 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %13, align 8
  %69 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @stmmac_set_desc_sec_addr(%struct.stmmac_priv* %66, %struct.dma_desc* %67, i8* %70)
  br label %75

72:                                               ; preds = %39
  %73 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %13, align 8
  %74 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %72, %59
  %76 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %13, align 8
  %77 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i8* @page_pool_get_dma_addr(i32* %78)
  %80 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %13, align 8
  %81 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %83 = load %struct.dma_desc*, %struct.dma_desc** %8, align 8
  %84 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %13, align 8
  %85 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @stmmac_set_desc_addr(%struct.stmmac_priv* %82, %struct.dma_desc* %83, i8* %86)
  %88 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %89 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @BUF_SIZE_16KiB, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %75
  %94 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %95 = load %struct.dma_desc*, %struct.dma_desc** %8, align 8
  %96 = call i32 @stmmac_init_desc3(%struct.stmmac_priv* %94, %struct.dma_desc* %95)
  br label %97

97:                                               ; preds = %93, %75
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %56, %36
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i8* @page_pool_dev_alloc_pages(i32) #1

declare dso_local i8* @page_pool_get_dma_addr(i32*) #1

declare dso_local i32 @stmmac_set_desc_sec_addr(%struct.stmmac_priv*, %struct.dma_desc*, i8*) #1

declare dso_local i32 @stmmac_set_desc_addr(%struct.stmmac_priv*, %struct.dma_desc*, i8*) #1

declare dso_local i32 @stmmac_init_desc3(%struct.stmmac_priv*, %struct.dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
