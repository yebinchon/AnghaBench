; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_build_rep_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_build_rep_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32*, i32*, i32*, i32 }
%struct.mlx5e_priv = type { %struct.mlx5_core_dev*, %struct.mlx5e_rep_priv* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_rep_priv = type { %struct.mlx5_eswitch_rep* }
%struct.mlx5_eswitch_rep = type { i64 }

@MLX5_VPORT_UPLINK = common dso_local global i64 0, align 8
@mlx5e_netdev_ops_uplink_rep = common dso_local global i32 0, align 4
@mlx5e_uplink_rep_ethtool_ops = common dso_local global i32 0, align 4
@mlx5e_netdev_ops_rep = common dso_local global i32 0, align 4
@mlx5e_rep_ethtool_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@NETIF_F_NETNS_LOCAL = common dso_local global i32 0, align 4
@NETIF_F_HW_TC = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_VLAN_CHALLENGED = common dso_local global i32 0, align 4
@mlx5e_dcbnl_ops = common dso_local global i32 0, align 4
@qos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @mlx5e_build_rep_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_build_rep_netdev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_rep_priv*, align 8
  %5 = alloca %struct.mlx5_eswitch_rep*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.mlx5e_priv* %8, %struct.mlx5e_priv** %3, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 1
  %11 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %10, align 8
  store %struct.mlx5e_rep_priv* %11, %struct.mlx5e_rep_priv** %4, align 8
  %12 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %12, i32 0, i32 0
  %14 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %13, align 8
  store %struct.mlx5_eswitch_rep* %14, %struct.mlx5_eswitch_rep** %5, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 0
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %16, align 8
  store %struct.mlx5_core_dev* %17, %struct.mlx5_core_dev** %6, align 8
  %18 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %26 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SET_NETDEV_DEV(%struct.net_device* %24, i32 %27)
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 4
  store i32* @mlx5e_netdev_ops_uplink_rep, i32** %30, align 8
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mlx5_query_mac_address(%struct.mlx5_core_dev* %31, i32 %34)
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 3
  store i32* @mlx5e_uplink_rep_ethtool_ops, i32** %37, align 8
  br label %45

38:                                               ; preds = %1
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 4
  store i32* @mlx5e_netdev_ops_rep, i32** %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = call i32 @eth_hw_addr_random(%struct.net_device* %41)
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 3
  store i32* @mlx5e_rep_ethtool_ops, i32** %44, align 8
  br label %45

45:                                               ; preds = %38, %23
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 15, %46
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @NETIF_F_NETNS_LOCAL, align 4
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* @NETIF_F_HW_TC, align 4
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @NETIF_F_SG, align 4
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @NETIF_F_GRO, align 4
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @NETIF_F_TSO, align 4
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @NETIF_F_TSO6, align 4
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %91 = load %struct.net_device*, %struct.net_device** %2, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %96 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %45
  %101 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %102 = load %struct.net_device*, %struct.net_device** %2, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %112

106:                                              ; preds = %45
  %107 = load i32, i32* @NETIF_F_VLAN_CHALLENGED, align 4
  %108 = load %struct.net_device*, %struct.net_device** %2, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %106, %100
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  ret void
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @mlx5_query_mac_address(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
