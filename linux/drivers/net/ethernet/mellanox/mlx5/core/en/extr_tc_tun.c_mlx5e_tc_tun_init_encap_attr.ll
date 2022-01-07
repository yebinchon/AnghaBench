; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun.c_mlx5e_tc_tun_init_encap_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun.c_mlx5e_tc_tun_init_encap_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_encap_entry = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlx5e_tc_tunnel = type { i32 (%struct.net_device*, %struct.mlx5e_priv.0*, %struct.mlx5e_encap_entry.1*, %struct.netlink_ext_ack*)* }
%struct.mlx5e_priv.0 = type opaque
%struct.mlx5e_encap_entry.1 = type opaque

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_tc_tun_init_encap_attr(%struct.net_device* %0, %struct.mlx5e_priv* %1, %struct.mlx5e_encap_entry* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5e_encap_entry*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.mlx5e_tc_tunnel*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.mlx5e_priv* %1, %struct.mlx5e_priv** %7, align 8
  store %struct.mlx5e_encap_entry* %2, %struct.mlx5e_encap_entry** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.mlx5e_tc_tunnel* @mlx5e_get_tc_tun(%struct.net_device* %11)
  store %struct.mlx5e_tc_tunnel* %12, %struct.mlx5e_tc_tunnel** %10, align 8
  %13 = load %struct.mlx5e_tc_tunnel*, %struct.mlx5e_tc_tunnel** %10, align 8
  %14 = icmp ne %struct.mlx5e_tc_tunnel* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %8, align 8
  %17 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 4
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %31

20:                                               ; preds = %4
  %21 = load %struct.mlx5e_tc_tunnel*, %struct.mlx5e_tc_tunnel** %10, align 8
  %22 = getelementptr inbounds %struct.mlx5e_tc_tunnel, %struct.mlx5e_tc_tunnel* %21, i32 0, i32 0
  %23 = load i32 (%struct.net_device*, %struct.mlx5e_priv.0*, %struct.mlx5e_encap_entry.1*, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.mlx5e_priv.0*, %struct.mlx5e_encap_entry.1*, %struct.netlink_ext_ack*)** %22, align 8
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %26 = bitcast %struct.mlx5e_priv* %25 to %struct.mlx5e_priv.0*
  %27 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %8, align 8
  %28 = bitcast %struct.mlx5e_encap_entry* %27 to %struct.mlx5e_encap_entry.1*
  %29 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %30 = call i32 %23(%struct.net_device* %24, %struct.mlx5e_priv.0* %26, %struct.mlx5e_encap_entry.1* %28, %struct.netlink_ext_ack* %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %20, %15
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.mlx5e_tc_tunnel* @mlx5e_get_tc_tun(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
