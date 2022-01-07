; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_vxlan.c_mlx5e_tc_tun_init_encap_attr_vxlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_vxlan.c_mlx5e_tc_tun_init_encap_attr_vxlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5e_encap_entry = type { i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@vxlan_tunnel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"vxlan udp dport was not registered with the HW\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%d isn't an offloaded vxlan udp dport\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5_REFORMAT_TYPE_L2_TO_VXLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.mlx5e_priv*, %struct.mlx5e_encap_entry*, %struct.netlink_ext_ack*)* @mlx5e_tc_tun_init_encap_attr_vxlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tc_tun_init_encap_attr_vxlan(%struct.net_device* %0, %struct.mlx5e_priv* %1, %struct.mlx5e_encap_entry* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5e_encap_entry*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.mlx5e_priv* %1, %struct.mlx5e_priv** %7, align 8
  store %struct.mlx5e_encap_entry* %2, %struct.mlx5e_encap_entry** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %11 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %8, align 8
  %12 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @be16_to_cpu(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %8, align 8
  %19 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %18, i32 0, i32 1
  store i32* @vxlan_tunnel, i32** %19, align 8
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %21 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @mlx5_vxlan_lookup_port(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %4
  %29 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %30 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %29, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %32 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @netdev_warn(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %42

38:                                               ; preds = %4
  %39 = load i32, i32* @MLX5_REFORMAT_TYPE_L2_TO_VXLAN, align 4
  %40 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %8, align 8
  %41 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %28
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mlx5_vxlan_lookup_port(i32, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
