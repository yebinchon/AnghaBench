; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_params.c_mlx5e_mpwqe_get_log_rq_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_params.c_mlx5e_mpwqe_get_log_rq_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_params = type { i64 }
%struct.mlx5e_xsk_param = type { i32 }

@MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE_MPW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mlx5e_mpwqe_get_log_rq_size(%struct.mlx5e_params* %0, %struct.mlx5e_xsk_param* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mlx5e_params*, align 8
  %5 = alloca %struct.mlx5e_xsk_param*, align 8
  %6 = alloca i64, align 8
  store %struct.mlx5e_params* %0, %struct.mlx5e_params** %4, align 8
  store %struct.mlx5e_xsk_param* %1, %struct.mlx5e_xsk_param** %5, align 8
  %7 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %8 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %5, align 8
  %9 = call i64 @mlx5e_mpwqe_log_pkts_per_wqe(%struct.mlx5e_params* %7, %struct.mlx5e_xsk_param* %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE_MPW, align 8
  %15 = add nsw i64 %13, %14
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE_MPW, align 8
  store i64 %18, i64* %3, align 8
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sub nsw i64 %22, %23
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %19, %17
  %26 = load i64, i64* %3, align 8
  ret i64 %26
}

declare dso_local i64 @mlx5e_mpwqe_log_pkts_per_wqe(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
