; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_entxrx.h_mlx5e_tx_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_entxrx.h_mlx5e_tx_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mlx5e_sq_dma = type { i32, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"mlx5e_tx_dma_unmap unknown DMA type!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.mlx5e_sq_dma*)* @mlx5e_tx_dma_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_tx_dma_unmap(%struct.device* %0, %struct.mlx5e_sq_dma* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mlx5e_sq_dma*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.mlx5e_sq_dma* %1, %struct.mlx5e_sq_dma** %4, align 8
  %5 = load %struct.mlx5e_sq_dma*, %struct.mlx5e_sq_dma** %4, align 8
  %6 = getelementptr inbounds %struct.mlx5e_sq_dma, %struct.mlx5e_sq_dma* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %28 [
    i32 128, label %8
    i32 129, label %18
  ]

8:                                                ; preds = %2
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load %struct.mlx5e_sq_dma*, %struct.mlx5e_sq_dma** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_sq_dma, %struct.mlx5e_sq_dma* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlx5e_sq_dma*, %struct.mlx5e_sq_dma** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_sq_dma, %struct.mlx5e_sq_dma* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DMA_TO_DEVICE, align 4
  %17 = call i32 @dma_unmap_single(%struct.device* %9, i32 %12, i32 %15, i32 %16)
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load %struct.mlx5e_sq_dma*, %struct.mlx5e_sq_dma** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5e_sq_dma, %struct.mlx5e_sq_dma* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlx5e_sq_dma*, %struct.mlx5e_sq_dma** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5e_sq_dma, %struct.mlx5e_sq_dma* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  %27 = call i32 @dma_unmap_page(%struct.device* %19, i32 %22, i32 %25, i32 %26)
  br label %30

28:                                               ; preds = %2
  %29 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %18, %8
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
