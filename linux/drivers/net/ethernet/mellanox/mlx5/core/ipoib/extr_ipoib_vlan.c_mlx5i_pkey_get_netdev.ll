; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib_vlan.c_mlx5i_pkey_get_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib_vlan.c_mlx5i_pkey_get_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5i_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qpn_to_netdev = type { %struct.net_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @mlx5i_pkey_get_netdev(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5i_priv*, align 8
  %7 = alloca %struct.qpn_to_netdev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mlx5i_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mlx5i_priv* %9, %struct.mlx5i_priv** %6, align 8
  %10 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.qpn_to_netdev* @mlx5i_find_qpn_to_netdev_node(i32 %14, i32 %15)
  store %struct.qpn_to_netdev* %16, %struct.qpn_to_netdev** %7, align 8
  %17 = load %struct.qpn_to_netdev*, %struct.qpn_to_netdev** %7, align 8
  %18 = icmp ne %struct.qpn_to_netdev* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.qpn_to_netdev*, %struct.qpn_to_netdev** %7, align 8
  %22 = getelementptr inbounds %struct.qpn_to_netdev, %struct.qpn_to_netdev* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %3, align 8
  br label %24

24:                                               ; preds = %20, %19
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %25
}

declare dso_local %struct.mlx5i_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.qpn_to_netdev* @mlx5i_find_qpn_to_netdev_node(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
