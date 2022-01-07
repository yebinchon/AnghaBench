; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.net_device = type { i32*, i32*, i32, i32, i32 }
%struct.mlx5e_profile = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@mlx5i_netdev_ops = common dso_local global i32 0, align 4
@mlx5i_ethtool_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5i_init(%struct.mlx5_core_dev* %0, %struct.net_device* %1, %struct.mlx5e_profile* %2, i8* %3) #0 {
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
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %17 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @mlx5e_netdev_init(%struct.net_device* %14, %struct.mlx5e_priv* %15, %struct.mlx5_core_dev* %16, %struct.mlx5e_profile* %17, i8* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %96

24:                                               ; preds = %4
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %26 = call i32 @mlx5e_set_netdev_mtu_boundaries(%struct.mlx5e_priv* %25)
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %34 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %33, i32 0, i32 2
  %35 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %36 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %39 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.net_device*, %struct.net_device** %7, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mlx5e_build_nic_params(%struct.mlx5_core_dev* %32, i32* null, i32* %34, i32* %37, i32 %40, i32 %43)
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %46 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %47 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @mlx5i_build_nic_params(%struct.mlx5_core_dev* %45, i32* %48)
  %50 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %51 = call i32 @mlx5e_timestamp_init(%struct.mlx5e_priv* %50)
  %52 = load i32, i32* @NETIF_F_SG, align 4
  %53 = load %struct.net_device*, %struct.net_device** %7, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %63 = load %struct.net_device*, %struct.net_device** %7, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* @NETIF_F_GRO, align 4
  %68 = load %struct.net_device*, %struct.net_device** %7, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* @NETIF_F_TSO, align 4
  %73 = load %struct.net_device*, %struct.net_device** %7, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* @NETIF_F_TSO6, align 4
  %78 = load %struct.net_device*, %struct.net_device** %7, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %83 = load %struct.net_device*, %struct.net_device** %7, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load i32, i32* @NETIF_F_RXHASH, align 4
  %88 = load %struct.net_device*, %struct.net_device** %7, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.net_device*, %struct.net_device** %7, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 1
  store i32* @mlx5i_netdev_ops, i32** %93, align 8
  %94 = load %struct.net_device*, %struct.net_device** %7, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  store i32* @mlx5i_ethtool_ops, i32** %95, align 8
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %24, %22
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device*) #1

declare dso_local i32 @mlx5e_netdev_init(%struct.net_device*, %struct.mlx5e_priv*, %struct.mlx5_core_dev*, %struct.mlx5e_profile*, i8*) #1

declare dso_local i32 @mlx5e_set_netdev_mtu_boundaries(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_build_nic_params(%struct.mlx5_core_dev*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @mlx5i_build_nic_params(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5e_timestamp_init(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
