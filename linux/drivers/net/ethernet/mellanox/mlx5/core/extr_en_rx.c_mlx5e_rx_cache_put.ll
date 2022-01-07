; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_rx_cache_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_rx_cache_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { %struct.mlx5e_rq_stats*, %struct.mlx5e_page_cache }
%struct.mlx5e_rq_stats = type { i32, i32 }
%struct.mlx5e_page_cache = type { i32, i32, %struct.mlx5e_dma_info* }
%struct.mlx5e_dma_info = type { i32 }

@MLX5E_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rq*, %struct.mlx5e_dma_info*)* @mlx5e_rx_cache_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rx_cache_put(%struct.mlx5e_rq* %0, %struct.mlx5e_dma_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca %struct.mlx5e_dma_info*, align 8
  %6 = alloca %struct.mlx5e_page_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_rq_stats*, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %4, align 8
  store %struct.mlx5e_dma_info* %1, %struct.mlx5e_dma_info** %5, align 8
  %9 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %9, i32 0, i32 1
  store %struct.mlx5e_page_cache* %10, %struct.mlx5e_page_cache** %6, align 8
  %11 = load %struct.mlx5e_page_cache*, %struct.mlx5e_page_cache** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5e_page_cache, %struct.mlx5e_page_cache* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  %15 = load i32, i32* @MLX5E_CACHE_SIZE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %14, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %18, i32 0, i32 0
  %20 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %19, align 8
  store %struct.mlx5e_rq_stats* %20, %struct.mlx5e_rq_stats** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.mlx5e_page_cache*, %struct.mlx5e_page_cache** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5e_page_cache, %struct.mlx5e_page_cache* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %8, align 8
  %28 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %58

31:                                               ; preds = %2
  %32 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mlx5e_page_is_reserved(i32 %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %8, align 8
  %40 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %58

43:                                               ; preds = %31
  %44 = load %struct.mlx5e_page_cache*, %struct.mlx5e_page_cache** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5e_page_cache, %struct.mlx5e_page_cache* %44, i32 0, i32 2
  %46 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %45, align 8
  %47 = load %struct.mlx5e_page_cache*, %struct.mlx5e_page_cache** %6, align 8
  %48 = getelementptr inbounds %struct.mlx5e_page_cache, %struct.mlx5e_page_cache* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %46, i64 %50
  %52 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %53 = bitcast %struct.mlx5e_dma_info* %51 to i8*
  %54 = bitcast %struct.mlx5e_dma_info* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.mlx5e_page_cache*, %struct.mlx5e_page_cache** %6, align 8
  %57 = getelementptr inbounds %struct.mlx5e_page_cache, %struct.mlx5e_page_cache* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %43, %38, %26
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5e_page_is_reserved(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
