; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib_vlan.c_mlx5i_pkey_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib_vlan.c_mlx5i_pkey_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.net_device = type { i32*, i32* }
%struct.mlx5e_profile = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@mlx5i_pkey_netdev_ops = common dso_local global i32 0, align 4
@mlx5i_pkey_ethtool_ops = common dso_local global i32 0, align 4
@MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.net_device*, %struct.mlx5e_profile*, i8*)* @mlx5i_pkey_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5i_pkey_init(%struct.mlx5_core_dev* %0, %struct.net_device* %1, %struct.mlx5e_profile* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mlx5e_profile*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx5e_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.mlx5e_profile* %2, %struct.mlx5e_profile** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device* %12)
  store %struct.mlx5e_priv* %13, %struct.mlx5e_priv** %10, align 8
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @mlx5i_init(%struct.mlx5_core_dev* %14, %struct.net_device* %15, %struct.mlx5e_profile* %16, i8* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %33

23:                                               ; preds = %4
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  store i32* @mlx5i_pkey_netdev_ops, i32** %25, align 8
  %26 = load %struct.net_device*, %struct.net_device** %7, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  store i32* @mlx5i_pkey_ethtool_ops, i32** %27, align 8
  %28 = load i32, i32* @MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE, align 4
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %30 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %23, %21
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device*) #1

declare dso_local i32 @mlx5i_init(%struct.mlx5_core_dev*, %struct.net_device*, %struct.mlx5e_profile*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
