; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_build_rep_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_build_rep_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.TYPE_2__, %struct.mlx5_core_dev*, %struct.mlx5e_rep_priv* }
%struct.TYPE_2__ = type { %struct.mlx5e_params }
%struct.mlx5e_params = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_rep_priv = type { %struct.mlx5_eswitch_rep* }
%struct.mlx5_eswitch_rep = type { i64 }

@cq_period_start_from_cqe = common dso_local global i32 0, align 4
@MLX5_CQ_PERIOD_MODE_START_FROM_CQE = common dso_local global i32 0, align 4
@MLX5_CQ_PERIOD_MODE_START_FROM_EQE = common dso_local global i32 0, align 4
@MLX5E_ETH_HARD_MTU = common dso_local global i32 0, align 4
@MLX5_VPORT_UPLINK = common dso_local global i64 0, align 8
@MLX5E_PARAMS_DEFAULT_LOG_SQ_SIZE = common dso_local global i32 0, align 4
@MLX5E_REP_PARAMS_DEF_LOG_SQ_SIZE = common dso_local global i32 0, align 4
@cq_moderation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @mlx5e_build_rep_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_build_rep_params(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_rep_priv*, align 8
  %5 = alloca %struct.mlx5_eswitch_rep*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5e_params*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx5e_priv* %10, %struct.mlx5e_priv** %3, align 8
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 3
  %13 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %12, align 8
  store %struct.mlx5e_rep_priv* %13, %struct.mlx5e_rep_priv** %4, align 8
  %14 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %14, i32 0, i32 0
  %16 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %15, align 8
  store %struct.mlx5_eswitch_rep* %16, %struct.mlx5_eswitch_rep** %5, align 8
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 2
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %18, align 8
  store %struct.mlx5_core_dev* %19, %struct.mlx5_core_dev** %6, align 8
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %21 = load i32, i32* @cq_period_start_from_cqe, align 4
  %22 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_CQE, align 4
  br label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_EQE, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %8, align 4
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.mlx5e_params* %32, %struct.mlx5e_params** %7, align 8
  %33 = load i32, i32* @MLX5E_ETH_HARD_MTU, align 4
  %34 = load %struct.mlx5e_params*, %struct.mlx5e_params** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx5e_params*, %struct.mlx5e_params** %7, align 8
  %40 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %28
  %47 = load i32, i32* @MLX5E_PARAMS_DEFAULT_LOG_SQ_SIZE, align 4
  %48 = load %struct.mlx5e_params*, %struct.mlx5e_params** %7, align 8
  %49 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  br label %54

50:                                               ; preds = %28
  %51 = load i32, i32* @MLX5E_REP_PARAMS_DEF_LOG_SQ_SIZE, align 4
  %52 = load %struct.mlx5e_params*, %struct.mlx5e_params** %7, align 8
  %53 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %56 = load %struct.mlx5e_params*, %struct.mlx5e_params** %7, align 8
  %57 = call i32 @mlx5e_build_rq_params(%struct.mlx5_core_dev* %55, %struct.mlx5e_params* %56)
  %58 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %59 = load i32, i32* @cq_moderation, align 4
  %60 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %58, i32 %59)
  %61 = load %struct.mlx5e_params*, %struct.mlx5e_params** %7, align 8
  %62 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  %63 = load %struct.mlx5e_params*, %struct.mlx5e_params** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @mlx5e_set_rx_cq_mode_params(%struct.mlx5e_params* %63, i32 %64)
  %66 = load %struct.mlx5e_params*, %struct.mlx5e_params** %7, align 8
  %67 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.mlx5e_params*, %struct.mlx5e_params** %7, align 8
  %69 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %71 = load %struct.mlx5e_params*, %struct.mlx5e_params** %7, align 8
  %72 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %71, i32 0, i32 3
  %73 = call i32 @mlx5_query_min_inline(%struct.mlx5_core_dev* %70, i32* %72)
  %74 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %75 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %74, i32 0, i32 0
  %76 = load %struct.mlx5e_params*, %struct.mlx5e_params** %7, align 8
  %77 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @mlx5e_build_rss_params(i32* %75, i32 %78)
  ret void
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5e_build_rq_params(%struct.mlx5_core_dev*, %struct.mlx5e_params*) #1

declare dso_local i32 @mlx5e_set_rx_cq_mode_params(%struct.mlx5e_params*, i32) #1

declare dso_local i32 @mlx5_query_min_inline(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5e_build_rss_params(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
