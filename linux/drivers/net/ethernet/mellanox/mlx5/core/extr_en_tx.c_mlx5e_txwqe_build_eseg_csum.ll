; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tx.c_mlx5e_txwqe_build_eseg_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tx.c_mlx5e_txwqe_build_eseg_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_txqsq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.mlx5_wqe_eth_seg = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@MLX5_ETH_WQE_L3_CSUM = common dso_local global i32 0, align 4
@MLX5_ETH_WQE_L3_INNER_CSUM = common dso_local global i32 0, align 4
@MLX5_ETH_WQE_L4_INNER_CSUM = common dso_local global i32 0, align 4
@MLX5_ETH_WQE_L4_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_txqsq*, %struct.sk_buff*, %struct.mlx5_wqe_eth_seg*)* @mlx5e_txwqe_build_eseg_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_txwqe_build_eseg_csum(%struct.mlx5e_txqsq* %0, %struct.sk_buff* %1, %struct.mlx5_wqe_eth_seg* %2) #0 {
  %4 = alloca %struct.mlx5e_txqsq*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mlx5_wqe_eth_seg*, align 8
  store %struct.mlx5e_txqsq* %0, %struct.mlx5e_txqsq** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.mlx5_wqe_eth_seg* %2, %struct.mlx5_wqe_eth_seg** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %3
  %16 = load i32, i32* @MLX5_ETH_WQE_L3_CSUM, align 4
  %17 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = load i32, i32* @MLX5_ETH_WQE_L3_INNER_CSUM, align 4
  %25 = load i32, i32* @MLX5_ETH_WQE_L4_INNER_CSUM, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %49

37:                                               ; preds = %15
  %38 = load i32, i32* @MLX5_ETH_WQE_L4_CSUM, align 4
  %39 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %6, align 8
  %40 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %37, %23
  br label %57

50:                                               ; preds = %3
  %51 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %49
  ret void
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
