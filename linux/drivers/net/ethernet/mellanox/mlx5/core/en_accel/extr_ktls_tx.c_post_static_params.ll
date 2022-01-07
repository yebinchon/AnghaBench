; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ktls_tx.c_post_static_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ktls_tx.c_post_static_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_txqsq = type { i32, i32 }
%struct.mlx5e_ktls_offload_context_tx = type { i32 }
%struct.mlx5e_umr_wqe = type { i32 }

@MLX5E_KTLS_STATIC_UMR_WQE_SZ = common dso_local global i32 0, align 4
@MLX5E_KTLS_STATIC_WQEBBS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_txqsq*, %struct.mlx5e_ktls_offload_context_tx*, i32)* @post_static_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @post_static_params(%struct.mlx5e_txqsq* %0, %struct.mlx5e_ktls_offload_context_tx* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_txqsq*, align 8
  %5 = alloca %struct.mlx5e_ktls_offload_context_tx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_umr_wqe*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5e_txqsq* %0, %struct.mlx5e_txqsq** %4, align 8
  store %struct.mlx5e_ktls_offload_context_tx* %1, %struct.mlx5e_ktls_offload_context_tx** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %10 = load i32, i32* @MLX5E_KTLS_STATIC_UMR_WQE_SZ, align 4
  %11 = call %struct.mlx5e_umr_wqe* @mlx5e_sq_fetch_wqe(%struct.mlx5e_txqsq* %9, i32 %10, i32* %8)
  store %struct.mlx5e_umr_wqe* %11, %struct.mlx5e_umr_wqe** %7, align 8
  %12 = load %struct.mlx5e_umr_wqe*, %struct.mlx5e_umr_wqe** %7, align 8
  %13 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @build_static_params(%struct.mlx5e_umr_wqe* %12, i32 %15, i32 %18, %struct.mlx5e_ktls_offload_context_tx* %19, i32 %20)
  %22 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i64, i64* @MLX5E_KTLS_STATIC_WQEBBS, align 8
  %25 = call i32 @tx_fill_wi(%struct.mlx5e_txqsq* %22, i32 %23, i64 %24, i32 0, i32* null)
  %26 = load i64, i64* @MLX5E_KTLS_STATIC_WQEBBS, align 8
  %27 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  ret void
}

declare dso_local %struct.mlx5e_umr_wqe* @mlx5e_sq_fetch_wqe(%struct.mlx5e_txqsq*, i32, i32*) #1

declare dso_local i32 @build_static_params(%struct.mlx5e_umr_wqe*, i32, i32, %struct.mlx5e_ktls_offload_context_tx*, i32) #1

declare dso_local i32 @tx_fill_wi(%struct.mlx5e_txqsq*, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
