; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_add_skb_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_add_skb_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mlx5e_dma_info = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_rq*, %struct.sk_buff*, %struct.mlx5e_dma_info*, i64, i64, i32)* @mlx5e_add_skb_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_add_skb_frag(%struct.mlx5e_rq* %0, %struct.sk_buff* %1, %struct.mlx5e_dma_info* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.mlx5e_rq*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.mlx5e_dma_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.mlx5e_dma_info* %2, %struct.mlx5e_dma_info** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %14 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %9, align 8
  %17 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* %11, align 8
  %22 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %23 = call i32 @dma_sync_single_for_cpu(i32 %15, i64 %20, i64 %21, i32 %22)
  %24 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %9, align 8
  %25 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @page_ref_inc(i32 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %9, align 8
  %34 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @skb_add_rx_frag(%struct.sk_buff* %28, i32 %32, i32 %35, i64 %36, i64 %37, i32 %38)
  ret void
}

declare dso_local i32 @dma_sync_single_for_cpu(i32, i64, i64, i32) #1

declare dso_local i32 @page_ref_inc(i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32, i64, i64, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
