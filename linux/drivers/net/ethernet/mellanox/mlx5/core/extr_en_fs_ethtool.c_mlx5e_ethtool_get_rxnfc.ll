; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_mlx5e_ethtool_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_mlx5e_ethtool_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_ethtool_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx5e_priv* %10, %struct.mlx5e_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %39 [
    i32 130, label %14
    i32 129, label %22
    i32 131, label %30
    i32 128, label %35
  ]

14:                                               ; preds = %3
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  br label %42

22:                                               ; preds = %3
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %24 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %25 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mlx5e_ethtool_get_flow(%struct.mlx5e_priv* %23, %struct.ethtool_rxnfc* %24, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %42

30:                                               ; preds = %3
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %32 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @mlx5e_ethtool_get_all_flows(%struct.mlx5e_priv* %31, %struct.ethtool_rxnfc* %32, i32* %33)
  store i32 %34, i32* %8, align 4
  br label %42

35:                                               ; preds = %3
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %37 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %38 = call i32 @mlx5e_get_rss_hash_opt(%struct.mlx5e_priv* %36, %struct.ethtool_rxnfc* %37)
  store i32 %38, i32* %8, align 4
  br label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %35, %30, %22, %14
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx5e_ethtool_get_flow(%struct.mlx5e_priv*, %struct.ethtool_rxnfc*, i32) #1

declare dso_local i32 @mlx5e_ethtool_get_all_flows(%struct.mlx5e_priv*, %struct.ethtool_rxnfc*, i32*) #1

declare dso_local i32 @mlx5e_get_rss_hash_opt(%struct.mlx5e_priv*, %struct.ethtool_rxnfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
