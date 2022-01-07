; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_vlan_rx_kill_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_vlan_rx_kill_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ETH_P_8021Q = common dso_local global i64 0, align 8
@MLX5E_VLAN_RULE_TYPE_MATCH_CTAG_VID = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i64 0, align 8
@MLX5E_VLAN_RULE_TYPE_MATCH_STAG_VID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_vlan_rx_kill_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mlx5e_priv* %9, %struct.mlx5e_priv** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @be16_to_cpu(i32 %10)
  %12 = load i64, i64* @ETH_P_8021Q, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clear_bit(i32 %15, i32 %20)
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %23 = load i32, i32* @MLX5E_VLAN_RULE_TYPE_MATCH_CTAG_VID, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @mlx5e_del_vlan_rule(%struct.mlx5e_priv* %22, i32 %23, i32 %24)
  br label %46

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @be16_to_cpu(i32 %27)
  %29 = load i64, i64* @ETH_P_8021AD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %34 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clear_bit(i32 %32, i32 %37)
  %39 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %40 = load i32, i32* @MLX5E_VLAN_RULE_TYPE_MATCH_STAG_VID, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @mlx5e_del_vlan_rule(%struct.mlx5e_priv* %39, i32 %40, i32 %41)
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 @netdev_update_features(%struct.net_device* %43)
  br label %45

45:                                               ; preds = %31, %26
  br label %46

46:                                               ; preds = %45, %14
  ret i32 0
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @mlx5e_del_vlan_rule(%struct.mlx5e_priv*, i32, i32) #1

declare dso_local i32 @netdev_update_features(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
