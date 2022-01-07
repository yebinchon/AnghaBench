; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib_vlan.c_mlx5i_pkey_qpn_ht_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib_vlan.c_mlx5i_pkey_qpn_ht_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5i_priv = type { %struct.mlx5i_pkey_qpn_ht* }
%struct.mlx5i_pkey_qpn_ht = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5i_pkey_qpn_ht_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlx5i_priv*, align 8
  %5 = alloca %struct.mlx5i_pkey_qpn_ht*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.mlx5i_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.mlx5i_priv* %7, %struct.mlx5i_priv** %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mlx5i_pkey_qpn_ht* @kzalloc(i32 4, i32 %8)
  store %struct.mlx5i_pkey_qpn_ht* %9, %struct.mlx5i_pkey_qpn_ht** %5, align 8
  %10 = load %struct.mlx5i_pkey_qpn_ht*, %struct.mlx5i_pkey_qpn_ht** %5, align 8
  %11 = icmp ne %struct.mlx5i_pkey_qpn_ht* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.mlx5i_pkey_qpn_ht*, %struct.mlx5i_pkey_qpn_ht** %5, align 8
  %17 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %17, i32 0, i32 0
  store %struct.mlx5i_pkey_qpn_ht* %16, %struct.mlx5i_pkey_qpn_ht** %18, align 8
  %19 = load %struct.mlx5i_pkey_qpn_ht*, %struct.mlx5i_pkey_qpn_ht** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5i_pkey_qpn_ht, %struct.mlx5i_pkey_qpn_ht* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_init(i32* %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %15, %12
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.mlx5i_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mlx5i_pkey_qpn_ht* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
