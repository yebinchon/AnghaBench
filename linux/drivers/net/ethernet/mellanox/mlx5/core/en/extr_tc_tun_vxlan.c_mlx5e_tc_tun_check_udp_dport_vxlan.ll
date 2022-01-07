; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_vxlan.c_mlx5e_tc_tun_check_udp_dport_vxlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_vxlan.c_mlx5e_tc_tun_check_udp_dport_vxlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.flow_cls_offload = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.flow_rule = type { i32 }
%struct.flow_match_ports = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@FLOW_DISSECTOR_KEY_ENC_PORTS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Matched UDP dst port is not registered as a VXLAN port\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"UDP port %d is not registered as a VXLAN port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.flow_cls_offload*)* @mlx5e_tc_tun_check_udp_dport_vxlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tc_tun_check_udp_dport_vxlan(%struct.mlx5e_priv* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.flow_cls_offload*, align 8
  %6 = alloca %struct.flow_rule*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.flow_match_ports, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %5, align 8
  %9 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %10 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %9)
  store %struct.flow_rule* %10, %struct.flow_rule** %6, align 8
  %11 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %12 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  store %struct.netlink_ext_ack* %14, %struct.netlink_ext_ack** %7, align 8
  %15 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %16 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_PORTS, align 4
  %17 = call i32 @flow_rule_match_key(%struct.flow_rule* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %24 = call i32 @flow_rule_match_enc_ports(%struct.flow_rule* %23, %struct.flow_match_ports* %8)
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %8, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be16_to_cpu(i32 %33)
  %35 = call i32 @mlx5_vxlan_lookup_port(i32 %29, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %22
  %38 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %39 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %38, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %8, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be16_to_cpu(i32 %46)
  %48 = call i32 @netdev_warn(i32 %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %37, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_enc_ports(%struct.flow_rule*, %struct.flow_match_ports*) #1

declare dso_local i32 @mlx5_vxlan_lookup_port(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
