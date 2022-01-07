; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_icosq_log_wq_sz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_icosq_log_wq_sz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_params = type { i32 }
%struct.mlx5e_rq_param = type { i32 }

@MLX5E_UMR_WQEBBS = common dso_local global i32 0, align 4
@MLX5E_PARAMS_MINIMUM_LOG_SQ_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mlx5e_params*, %struct.mlx5e_rq_param*)* @mlx5e_build_icosq_log_wq_sz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlx5e_build_icosq_log_wq_sz(%struct.mlx5e_params* %0, %struct.mlx5e_rq_param* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mlx5e_params*, align 8
  %5 = alloca %struct.mlx5e_rq_param*, align 8
  store %struct.mlx5e_params* %0, %struct.mlx5e_params** %4, align 8
  store %struct.mlx5e_rq_param* %1, %struct.mlx5e_rq_param** %5, align 8
  %6 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %17 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @MLX5E_UMR_WQEBBS, align 4
  %11 = call i64 @order_base_2(i32 %10)
  %12 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @mlx5e_get_rq_log_wq_sz(i32 %14)
  %16 = add nsw i64 %11, %15
  store i64 %16, i64* %3, align 8
  br label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @MLX5E_PARAMS_MINIMUM_LOG_SQ_SIZE, align 8
  store i64 %18, i64* %3, align 8
  br label %19

19:                                               ; preds = %17, %9
  %20 = load i64, i64* %3, align 8
  ret i64 %20
}

declare dso_local i64 @order_base_2(i32) #1

declare dso_local i64 @mlx5e_get_rq_log_wq_sz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
