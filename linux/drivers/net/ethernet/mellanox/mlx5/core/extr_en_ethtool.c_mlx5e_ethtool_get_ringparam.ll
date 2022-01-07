; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_ethtool_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_ethtool_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32 }

@MLX5E_PARAMS_MAXIMUM_LOG_RQ_SIZE = common dso_local global i32 0, align 4
@MLX5E_PARAMS_MAXIMUM_LOG_SQ_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_ethtool_get_ringparam(%struct.mlx5e_priv* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %5 = load i32, i32* @MLX5E_PARAMS_MAXIMUM_LOG_RQ_SIZE, align 4
  %6 = shl i32 1, %5
  %7 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %8 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @MLX5E_PARAMS_MAXIMUM_LOG_SQ_SIZE, align 4
  %10 = shl i32 1, %9
  %11 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 1, %17
  %19 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
