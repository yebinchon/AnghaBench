; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_rx.c_mlx5e_xsk_page_alloc_umem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_rx.c_mlx5e_xsk_page_alloc_umem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, %struct.TYPE_4__, %struct.xdp_umem* }
%struct.TYPE_4__ = type { i32 }
%struct.xdp_umem = type { i32 }
%struct.mlx5e_dma_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_xsk_page_alloc_umem(%struct.mlx5e_rq* %0, %struct.mlx5e_dma_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca %struct.mlx5e_dma_info*, align 8
  %6 = alloca %struct.xdp_umem*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %4, align 8
  store %struct.mlx5e_dma_info* %1, %struct.mlx5e_dma_info** %5, align 8
  %8 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %8, i32 0, i32 2
  %10 = load %struct.xdp_umem*, %struct.xdp_umem** %9, align 8
  store %struct.xdp_umem* %10, %struct.xdp_umem** %6, align 8
  %11 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %12 = call i32 @xsk_umem_peek_addr_rq(%struct.xdp_umem* %11, i32* %7)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @xsk_umem_adjust_offset(%struct.xdp_umem* %18, i32 %19, i32 %23)
  %25 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %29 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @xdp_umem_get_data(%struct.xdp_umem* %28, i32 %32)
  %34 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @xdp_umem_get_dma(%struct.xdp_umem* %37, i32 %38)
  %40 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %43 = call i32 @xsk_umem_discard_addr_rq(%struct.xdp_umem* %42)
  %44 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %5, align 8
  %48 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %52 = call i32 @dma_sync_single_for_device(i32 %46, i32 %49, i32 %50, i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %17, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @xsk_umem_peek_addr_rq(%struct.xdp_umem*, i32*) #1

declare dso_local i32 @xsk_umem_adjust_offset(%struct.xdp_umem*, i32, i32) #1

declare dso_local i32 @xdp_umem_get_data(%struct.xdp_umem*, i32) #1

declare dso_local i32 @xdp_umem_get_dma(%struct.xdp_umem*, i32) #1

declare dso_local i32 @xsk_umem_discard_addr_rq(%struct.xdp_umem*) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
