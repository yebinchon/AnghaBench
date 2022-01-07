; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_page_alloc_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_page_alloc_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_dma_info = type { i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rq*, %struct.mlx5e_dma_info*)* @mlx5e_page_alloc_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_page_alloc_pool(%struct.mlx5e_rq* %0, %struct.mlx5e_dma_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca %struct.mlx5e_dma_info*, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %4, align 8
  store %struct.mlx5e_dma_info* %1, %struct.mlx5e_dma_info** %5, align 8
  %6 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %7 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %8 = call i64 @mlx5e_rx_cache_get(%struct.mlx5e_rq* %6, %struct.mlx5e_dma_info* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

11:                                               ; preds = %2
  %12 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @page_pool_dev_alloc_pages(i32 %14)
  %16 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %11
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %66

29:                                               ; preds = %11
  %30 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dma_map_page(i32 %32, i32* %35, i32 0, i32 %36, i32 %40)
  %42 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %43 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %48 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dma_mapping_error(i32 %46, i32 %49)
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %29
  %54 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %58 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @page_pool_recycle_direct(i32 %56, i32* %59)
  %61 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %62 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %53, %26, %10
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @mlx5e_rx_cache_get(%struct.mlx5e_rq*, %struct.mlx5e_dma_info*) #1

declare dso_local i32* @page_pool_dev_alloc_pages(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @page_pool_recycle_direct(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
