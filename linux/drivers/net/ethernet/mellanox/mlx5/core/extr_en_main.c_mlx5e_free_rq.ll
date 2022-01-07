; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_free_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_free_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i32, i32, %struct.mlx5e_dma_info* }
%struct.mlx5e_dma_info = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MLX5E_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_rq*)* @mlx5e_free_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_free_rq(%struct.mlx5e_rq* %0) #0 {
  %2 = alloca %struct.mlx5e_rq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_dma_info*, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %2, align 8
  %5 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %5, i32 0, i32 9
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %10, i32 0, i32 9
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @bpf_prog_put(i64 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %30 [
    i32 128, label %18
  ]

18:                                               ; preds = %14
  %19 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %20 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %19, i32 0, i32 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kvfree(i32 %22)
  %24 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %28 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %27, i32 0, i32 6
  %29 = call i32 @mlx5_core_destroy_mkey(i32 %26, i32* %28)
  br label %38

30:                                               ; preds = %14
  %31 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %32 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @kvfree(i32 %34)
  %36 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %37 = call i32 @mlx5e_free_di_list(%struct.mlx5e_rq* %36)
  br label %38

38:                                               ; preds = %30, %18
  %39 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %40 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %61, %38
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %46 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %44, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %43
  %51 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %52 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %54, i64 %56
  store %struct.mlx5e_dma_info* %57, %struct.mlx5e_dma_info** %4, align 8
  %58 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %59 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %4, align 8
  %60 = call i32 @mlx5e_page_release_dynamic(%struct.mlx5e_rq* %58, %struct.mlx5e_dma_info* %59, i32 0)
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* @MLX5E_CACHE_SIZE, align 4
  %65 = sub nsw i32 %64, 1
  %66 = and i32 %63, %65
  store i32 %66, i32* %3, align 4
  br label %43

67:                                               ; preds = %43
  %68 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %69 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %68, i32 0, i32 3
  %70 = call i32 @xdp_rxq_info_unreg(i32* %69)
  %71 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %72 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @page_pool_destroy(i32 %73)
  %75 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %76 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %75, i32 0, i32 1
  %77 = call i32 @mlx5_wq_destroy(i32* %76)
  ret void
}

declare dso_local i32 @bpf_prog_put(i64) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @mlx5_core_destroy_mkey(i32, i32*) #1

declare dso_local i32 @mlx5e_free_di_list(%struct.mlx5e_rq*) #1

declare dso_local i32 @mlx5e_page_release_dynamic(%struct.mlx5e_rq*, %struct.mlx5e_dma_info*, i32) #1

declare dso_local i32 @xdp_rxq_info_unreg(i32*) #1

declare dso_local i32 @page_pool_destroy(i32) #1

declare dso_local i32 @mlx5_wq_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
