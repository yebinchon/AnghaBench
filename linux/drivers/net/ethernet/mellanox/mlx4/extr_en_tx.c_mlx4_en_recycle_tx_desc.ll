; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_mlx4_en_recycle_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_mlx4_en_recycle_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32 }
%struct.mlx4_en_tx_ring = type { i32, %struct.mlx4_en_tx_info* }
%struct.mlx4_en_tx_info = type { i32, i32, i32 }
%struct.mlx4_en_rx_alloc = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_recycle_tx_desc(%struct.mlx4_en_priv* %0, %struct.mlx4_en_tx_ring* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_tx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_en_tx_info*, align 8
  %12 = alloca %struct.mlx4_en_rx_alloc, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %6, align 8
  store %struct.mlx4_en_tx_ring* %1, %struct.mlx4_en_tx_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %13, i32 0, i32 1
  %15 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %15, i64 %17
  store %struct.mlx4_en_tx_info* %18, %struct.mlx4_en_tx_info** %11, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %12, i32 0, i32 0
  %20 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %11, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %12, i32 0, i32 1
  %24 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %11, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mlx4_en_rx_recycle(i32 %29, %struct.mlx4_en_rx_alloc* %12)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %5
  %33 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %11, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dma_unmap_page(i32 %35, i32 %38, i32 %39, i32 %42)
  %44 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %11, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @put_page(i32 %46)
  br label %48

48:                                               ; preds = %32, %5
  %49 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %11, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  ret i32 %51
}

declare dso_local i32 @mlx4_en_rx_recycle(i32, %struct.mlx4_en_rx_alloc*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @put_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
