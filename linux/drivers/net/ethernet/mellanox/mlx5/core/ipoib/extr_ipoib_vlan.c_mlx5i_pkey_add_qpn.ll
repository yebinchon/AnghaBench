; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib_vlan.c_mlx5i_pkey_add_qpn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib_vlan.c_mlx5i_pkey_add_qpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5i_priv = type { %struct.mlx5i_pkey_qpn_ht* }
%struct.mlx5i_pkey_qpn_ht = type { i32, i32* }
%struct.qpn_to_netdev = type { i32, i32, %struct.net_device* }

@MLX5I_MAX_LOG_PKEY_SUP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5i_pkey_add_qpn(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5i_priv*, align 8
  %7 = alloca %struct.mlx5i_pkey_qpn_ht*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qpn_to_netdev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlx5i_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx5i_priv* %11, %struct.mlx5i_priv** %6, align 8
  %12 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %12, i32 0, i32 0
  %14 = load %struct.mlx5i_pkey_qpn_ht*, %struct.mlx5i_pkey_qpn_ht** %13, align 8
  store %struct.mlx5i_pkey_qpn_ht* %14, %struct.mlx5i_pkey_qpn_ht** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MLX5I_MAX_LOG_PKEY_SUP, align 4
  %17 = call i64 @hash_32(i32 %15, i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.qpn_to_netdev* @kzalloc(i32 16, i32 %18)
  store %struct.qpn_to_netdev* %19, %struct.qpn_to_netdev** %9, align 8
  %20 = load %struct.qpn_to_netdev*, %struct.qpn_to_netdev** %9, align 8
  %21 = icmp ne %struct.qpn_to_netdev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = load %struct.qpn_to_netdev*, %struct.qpn_to_netdev** %9, align 8
  %28 = getelementptr inbounds %struct.qpn_to_netdev, %struct.qpn_to_netdev* %27, i32 0, i32 2
  store %struct.net_device* %26, %struct.net_device** %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.qpn_to_netdev*, %struct.qpn_to_netdev** %9, align 8
  %31 = getelementptr inbounds %struct.qpn_to_netdev, %struct.qpn_to_netdev* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mlx5i_pkey_qpn_ht*, %struct.mlx5i_pkey_qpn_ht** %7, align 8
  %33 = getelementptr inbounds %struct.mlx5i_pkey_qpn_ht, %struct.mlx5i_pkey_qpn_ht* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_bh(i32* %33)
  %35 = load %struct.qpn_to_netdev*, %struct.qpn_to_netdev** %9, align 8
  %36 = getelementptr inbounds %struct.qpn_to_netdev, %struct.qpn_to_netdev* %35, i32 0, i32 0
  %37 = load %struct.mlx5i_pkey_qpn_ht*, %struct.mlx5i_pkey_qpn_ht** %7, align 8
  %38 = getelementptr inbounds %struct.mlx5i_pkey_qpn_ht, %struct.mlx5i_pkey_qpn_ht* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32 @hlist_add_head(i32* %36, i32* %41)
  %43 = load %struct.mlx5i_pkey_qpn_ht*, %struct.mlx5i_pkey_qpn_ht** %7, align 8
  %44 = getelementptr inbounds %struct.mlx5i_pkey_qpn_ht, %struct.mlx5i_pkey_qpn_ht* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_bh(i32* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %25, %22
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.mlx5i_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @hash_32(i32, i32) #1

declare dso_local %struct.qpn_to_netdev* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
