; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_params.c_mlx5e_rx_mpwqe_is_linear_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_params.c_mlx5e_rx_mpwqe_is_linear_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_params = type { i32 }
%struct.mlx5e_xsk_param = type { i32 }

@MLX5_MAX_MPWQE_LOG_WQE_STRIDE_SZ = common dso_local global i64 0, align 8
@ext_stride_num_range = common dso_local global i32 0, align 4
@MLX5_MPWRQ_LOG_WQE_SZ = common dso_local global i64 0, align 8
@MLX5_MPWQE_LOG_NUM_STRIDES_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_rx_mpwqe_is_linear_skb(%struct.mlx5_core_dev* %0, %struct.mlx5e_params* %1, %struct.mlx5e_xsk_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5e_params*, align 8
  %7 = alloca %struct.mlx5e_xsk_param*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %6, align 8
  store %struct.mlx5e_xsk_param* %2, %struct.mlx5e_xsk_param** %7, align 8
  %11 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %12 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %7, align 8
  %13 = call i32 @mlx5e_rx_get_linear_frag_sz(%struct.mlx5e_params* %11, %struct.mlx5e_xsk_param* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %15 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %7, align 8
  %16 = call i32 @mlx5e_rx_is_linear_skb(%struct.mlx5e_params* %14, %struct.mlx5e_xsk_param* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @order_base_2(i32 %20)
  %22 = load i64, i64* @MLX5_MAX_MPWQE_LOG_WQE_STRIDE_SZ, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %42

25:                                               ; preds = %19
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %27 = load i32, i32* @ext_stride_num_range, align 4
  %28 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %42

31:                                               ; preds = %25
  %32 = load i64, i64* @MLX5_MPWRQ_LOG_WQE_SZ, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @order_base_2(i32 %33)
  %35 = sub nsw i64 %32, %34
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @MLX5_MPWQE_LOG_NUM_STRIDES_BASE, align 8
  %38 = sub nsw i64 %36, %37
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp sge i64 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %31, %30, %24, %18
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @mlx5e_rx_get_linear_frag_sz(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @mlx5e_rx_is_linear_skb(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i64 @order_base_2(i32) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
