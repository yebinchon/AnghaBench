; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_rx_cache_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_rx_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, %struct.mlx5e_rq_stats*, %struct.mlx5e_page_cache }
%struct.mlx5e_rq_stats = type { i32, i32, i32 }
%struct.mlx5e_page_cache = type { i64, i64, %struct.mlx5e_dma_info* }
%struct.mlx5e_dma_info = type { i32, i32 }

@MLX5E_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rq*, %struct.mlx5e_dma_info*)* @mlx5e_rx_cache_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rx_cache_get(%struct.mlx5e_rq* %0, %struct.mlx5e_dma_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca %struct.mlx5e_dma_info*, align 8
  %6 = alloca %struct.mlx5e_page_cache*, align 8
  %7 = alloca %struct.mlx5e_rq_stats*, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %4, align 8
  store %struct.mlx5e_dma_info* %1, %struct.mlx5e_dma_info** %5, align 8
  %8 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %8, i32 0, i32 2
  store %struct.mlx5e_page_cache* %9, %struct.mlx5e_page_cache** %6, align 8
  %10 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %10, i32 0, i32 1
  %12 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %11, align 8
  store %struct.mlx5e_rq_stats* %12, %struct.mlx5e_rq_stats** %7, align 8
  %13 = load %struct.mlx5e_page_cache*, %struct.mlx5e_page_cache** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5e_page_cache, %struct.mlx5e_page_cache* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.mlx5e_page_cache*, %struct.mlx5e_page_cache** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5e_page_cache, %struct.mlx5e_page_cache* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %7, align 8
  %25 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  store i32 0, i32* %3, align 4
  br label %79

28:                                               ; preds = %2
  %29 = load %struct.mlx5e_page_cache*, %struct.mlx5e_page_cache** %6, align 8
  %30 = getelementptr inbounds %struct.mlx5e_page_cache, %struct.mlx5e_page_cache* %29, i32 0, i32 2
  %31 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %30, align 8
  %32 = load %struct.mlx5e_page_cache*, %struct.mlx5e_page_cache** %6, align 8
  %33 = getelementptr inbounds %struct.mlx5e_page_cache, %struct.mlx5e_page_cache* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %31, i64 %34
  %36 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @page_ref_count(i32 %37)
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %7, align 8
  %42 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %79

45:                                               ; preds = %28
  %46 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %47 = load %struct.mlx5e_page_cache*, %struct.mlx5e_page_cache** %6, align 8
  %48 = getelementptr inbounds %struct.mlx5e_page_cache, %struct.mlx5e_page_cache* %47, i32 0, i32 2
  %49 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %48, align 8
  %50 = load %struct.mlx5e_page_cache*, %struct.mlx5e_page_cache** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5e_page_cache, %struct.mlx5e_page_cache* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %49, i64 %52
  %54 = bitcast %struct.mlx5e_dma_info* %46 to i8*
  %55 = bitcast %struct.mlx5e_dma_info* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 8, i1 false)
  %56 = load %struct.mlx5e_page_cache*, %struct.mlx5e_page_cache** %6, align 8
  %57 = getelementptr inbounds %struct.mlx5e_page_cache, %struct.mlx5e_page_cache* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  %60 = load i32, i32* @MLX5E_CACHE_SIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = and i64 %59, %62
  %64 = load %struct.mlx5e_page_cache*, %struct.mlx5e_page_cache** %6, align 8
  %65 = getelementptr inbounds %struct.mlx5e_page_cache, %struct.mlx5e_page_cache* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %7, align 8
  %67 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %71 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %74 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %78 = call i32 @dma_sync_single_for_device(i32 %72, i32 %75, i32 %76, i32 %77)
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %45, %40, %23
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @page_ref_count(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
