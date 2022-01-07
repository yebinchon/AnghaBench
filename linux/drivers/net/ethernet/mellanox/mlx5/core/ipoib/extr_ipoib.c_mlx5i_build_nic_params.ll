; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_build_nic_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_build_nic_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_params = type { i32, i32, i64, i32 }

@MLX5E_PFLAG_RX_STRIDING_RQ = common dso_local global i32 0, align 4
@MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE = common dso_local global i32 0, align 4
@MLX5I_PARAMS_DEFAULT_LOG_RQ_SIZE = common dso_local global i32 0, align 4
@MLX5_IB_GRH_BYTES = common dso_local global i64 0, align 8
@MLX5_IPOIB_HARD_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, %struct.mlx5e_params*)* @mlx5i_build_nic_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5i_build_nic_params(%struct.mlx5_core_dev* %0, %struct.mlx5e_params* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5e_params*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %4, align 8
  %5 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %6 = load i32, i32* @MLX5E_PFLAG_RX_STRIDING_RQ, align 4
  %7 = call i32 @MLX5E_SET_PFLAG(%struct.mlx5e_params* %5, i32 %6, i32 0)
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %9 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %10 = call i32 @mlx5e_set_rq_type(%struct.mlx5_core_dev* %8, %struct.mlx5e_params* %9)
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %12 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %13 = call i32 @mlx5e_init_rq_type_params(%struct.mlx5_core_dev* %11, %struct.mlx5e_params* %12)
  %14 = call i64 (...) @is_kdump_kernel()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @MLX5I_PARAMS_DEFAULT_LOG_RQ_SIZE, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load i64, i64* @MLX5_IB_GRH_BYTES, align 8
  %27 = load i64, i64* @MLX5_IPOIB_HARD_LEN, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  ret void
}

declare dso_local i32 @MLX5E_SET_PFLAG(%struct.mlx5e_params*, i32, i32) #1

declare dso_local i32 @mlx5e_set_rq_type(%struct.mlx5_core_dev*, %struct.mlx5e_params*) #1

declare dso_local i32 @mlx5e_init_rq_type_params(%struct.mlx5_core_dev*, %struct.mlx5e_params*) #1

declare dso_local i64 @is_kdump_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
