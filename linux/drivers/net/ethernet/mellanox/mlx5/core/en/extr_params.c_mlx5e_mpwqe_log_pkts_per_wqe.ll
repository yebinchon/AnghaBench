; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_params.c_mlx5e_mpwqe_log_pkts_per_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_params.c_mlx5e_mpwqe_log_pkts_per_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_params = type { i32 }
%struct.mlx5e_xsk_param = type { i32 }

@MLX5_MPWRQ_LOG_WQE_SZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mlx5e_mpwqe_log_pkts_per_wqe(%struct.mlx5e_params* %0, %struct.mlx5e_xsk_param* %1) #0 {
  %3 = alloca %struct.mlx5e_params*, align 8
  %4 = alloca %struct.mlx5e_xsk_param*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5e_params* %0, %struct.mlx5e_params** %3, align 8
  store %struct.mlx5e_xsk_param* %1, %struct.mlx5e_xsk_param** %4, align 8
  %6 = load %struct.mlx5e_params*, %struct.mlx5e_params** %3, align 8
  %7 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %4, align 8
  %8 = call i32 @mlx5e_rx_get_linear_frag_sz(%struct.mlx5e_params* %6, %struct.mlx5e_xsk_param* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i64, i64* @MLX5_MPWRQ_LOG_WQE_SZ, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @order_base_2(i32 %10)
  %12 = sub nsw i64 %9, %11
  ret i64 %12
}

declare dso_local i32 @mlx5e_rx_get_linear_frag_sz(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i64 @order_base_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
