; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_rx_page_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_rx_page_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bnxt_rx_ring_info = type { i32* }
%struct.page_pool_params = type { i32, i32*, i32, i32, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_rx_ring_info*)* @bnxt_alloc_rx_page_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_alloc_rx_page_pool(%struct.bnxt* %0, %struct.bnxt_rx_ring_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_rx_ring_info*, align 8
  %6 = alloca %struct.page_pool_params, align 8
  %7 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.bnxt_rx_ring_info* %1, %struct.bnxt_rx_ring_info** %5, align 8
  %8 = bitcast %struct.page_pool_params* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.page_pool_params, %struct.page_pool_params* %6, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @dev_to_node(i32* %16)
  %18 = getelementptr inbounds %struct.page_pool_params, %struct.page_pool_params* %6, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %20 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.page_pool_params, %struct.page_pool_params* %6, i32 0, i32 1
  store i32* %22, i32** %23, align 8
  %24 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %25 = getelementptr inbounds %struct.page_pool_params, %struct.page_pool_params* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = call i32* @page_pool_create(%struct.page_pool_params* %6)
  %27 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %5, align 8
  %28 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %5, align 8
  %30 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @IS_ERR(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %5, align 8
  %36 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @PTR_ERR(i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %5, align 8
  %40 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %34
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_to_node(i32*) #2

declare dso_local i32* @page_pool_create(%struct.page_pool_params*) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
