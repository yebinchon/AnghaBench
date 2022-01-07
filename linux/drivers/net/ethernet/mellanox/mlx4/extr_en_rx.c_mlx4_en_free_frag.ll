; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_free_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_free_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32 }
%struct.mlx4_en_rx_alloc = type { i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*, %struct.mlx4_en_rx_alloc*)* @mlx4_en_free_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_free_frag(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_alloc* %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_rx_alloc*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_rx_alloc* %1, %struct.mlx4_en_rx_alloc** %4, align 8
  %5 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %4, align 8
  %6 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dma_unmap_page(i32 %12, i32 %15, i32 %16, i32 %19)
  %21 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %4, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @__free_page(i64 %23)
  br label %25

25:                                               ; preds = %9, %2
  %26 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %4, align 8
  %27 = call i32 @memset(%struct.mlx4_en_rx_alloc* %26, i32 0, i32 16)
  ret void
}

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @__free_page(i64) #1

declare dso_local i32 @memset(%struct.mlx4_en_rx_alloc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
