; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_geneve.c_mlx5e_tc_tun_init_encap_attr_geneve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_geneve.c_mlx5e_tc_tun_init_encap_attr_geneve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_encap_entry = type { i32, i32* }
%struct.netlink_ext_ack = type { i32 }

@geneve_tunnel = common dso_local global i32 0, align 4
@MLX5_REFORMAT_TYPE_L2_TO_VXLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.mlx5e_priv*, %struct.mlx5e_encap_entry*, %struct.netlink_ext_ack*)* @mlx5e_tc_tun_init_encap_attr_geneve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tc_tun_init_encap_attr_geneve(%struct.net_device* %0, %struct.mlx5e_priv* %1, %struct.mlx5e_encap_entry* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5e_encap_entry*, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.mlx5e_priv* %1, %struct.mlx5e_priv** %6, align 8
  store %struct.mlx5e_encap_entry* %2, %struct.mlx5e_encap_entry** %7, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  %9 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %10 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %9, i32 0, i32 1
  store i32* @geneve_tunnel, i32** %10, align 8
  %11 = load i32, i32* @MLX5_REFORMAT_TYPE_L2_TO_VXLAN, align 4
  %12 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %13 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
