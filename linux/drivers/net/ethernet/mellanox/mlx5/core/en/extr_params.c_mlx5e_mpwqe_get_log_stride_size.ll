; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_params.c_mlx5e_mpwqe_get_log_stride_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_params.c_mlx5e_mpwqe_get_log_stride_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_params = type { i32 }
%struct.mlx5e_xsk_param = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_mpwqe_get_log_stride_size(%struct.mlx5_core_dev* %0, %struct.mlx5e_params* %1, %struct.mlx5e_xsk_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5e_params*, align 8
  %7 = alloca %struct.mlx5e_xsk_param*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %6, align 8
  store %struct.mlx5e_xsk_param* %2, %struct.mlx5e_xsk_param** %7, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %9 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %10 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %7, align 8
  %11 = call i64 @mlx5e_rx_mpwqe_is_linear_skb(%struct.mlx5_core_dev* %8, %struct.mlx5e_params* %9, %struct.mlx5e_xsk_param* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %15 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %7, align 8
  %16 = call i32 @mlx5e_rx_get_linear_frag_sz(%struct.mlx5e_params* %14, %struct.mlx5e_xsk_param* %15)
  %17 = call i32 @order_base_2(i32 %16)
  store i32 %17, i32* %4, align 4
  br label %21

18:                                               ; preds = %3
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %20 = call i32 @MLX5_MPWRQ_DEF_LOG_STRIDE_SZ(%struct.mlx5_core_dev* %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i64 @mlx5e_rx_mpwqe_is_linear_skb(%struct.mlx5_core_dev*, %struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @mlx5e_rx_get_linear_frag_sz(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @MLX5_MPWRQ_DEF_LOG_STRIDE_SZ(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
