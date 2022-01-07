; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_umem.c_mlx5e_xsk_map_umem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_umem.c_mlx5e_xsk_map_umem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.xdp_umem = type { i64, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.xdp_umem*)* @mlx5e_xsk_map_umem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_xsk_map_umem(%struct.mlx5e_priv* %0, %struct.xdp_umem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.xdp_umem*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.xdp_umem* %1, %struct.xdp_umem** %5, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %45, %2
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %17 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %23 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %30 = call i64 @dma_map_page(%struct.device* %21, i32 %27, i32 0, i32 %28, i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @dma_mapping_error(%struct.device* %31, i64 %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %49

37:                                               ; preds = %20
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %40 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 %38, i64* %44, align 8
  br label %45

45:                                               ; preds = %37
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %14

48:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %75

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %54, %49
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %7, align 8
  %53 = icmp ne i64 %51, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %57 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %65 = call i32 @dma_unmap_page(%struct.device* %55, i64 %62, i32 %63, i32 %64)
  %66 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %67 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %50

72:                                               ; preds = %50
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %48
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @dma_map_page(%struct.device*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
