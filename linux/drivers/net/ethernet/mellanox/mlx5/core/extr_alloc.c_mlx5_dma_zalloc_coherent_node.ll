; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_alloc.c_mlx5_dma_zalloc_coherent_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_alloc.c_mlx5_dma_zalloc_coherent_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.device*, %struct.mlx5_priv }
%struct.device = type { i32 }
%struct.mlx5_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mlx5_core_dev*, i64, i32*, i32)* @mlx5_dma_zalloc_coherent_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mlx5_dma_zalloc_coherent_node(%struct.mlx5_core_dev* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_priv*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %13, i32 0, i32 1
  store %struct.mlx5_priv* %14, %struct.mlx5_priv** %9, align 8
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %10, align 8
  %18 = load %struct.mlx5_priv*, %struct.mlx5_priv** %9, align 8
  %19 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.device*, %struct.device** %10, align 8
  %22 = call i32 @dev_to_node(%struct.device* %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.device*, %struct.device** %10, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @set_dev_node(%struct.device* %23, i32 %24)
  %26 = load %struct.device*, %struct.device** %10, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @dma_alloc_coherent(%struct.device* %26, i64 %27, i32* %28, i32 %29)
  store i8* %30, i8** %12, align 8
  %31 = load %struct.device*, %struct.device** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @set_dev_node(%struct.device* %31, i32 %32)
  %34 = load %struct.mlx5_priv*, %struct.mlx5_priv** %9, align 8
  %35 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i8*, i8** %12, align 8
  ret i8* %37
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local i32 @set_dev_node(%struct.device*, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
