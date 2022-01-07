; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_geneve.c_mlx5e_tc_tun_check_udp_dport_geneve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_geneve.c_mlx5e_tc_tun_check_udp_dport_geneve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.flow_cls_offload = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.flow_rule = type { i32 }
%struct.flow_match_ports = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@FLOW_DISSECTOR_KEY_ENC_PORTS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GENEVE_UDP_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Matched UDP dst port is not registered as a GENEVE port\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"UDP port %d is not registered as a GENEVE port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.flow_cls_offload*)* @mlx5e_tc_tun_check_udp_dport_geneve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tc_tun_check_udp_dport_geneve(%struct.mlx5e_priv* %0, %struct.flow_cls_offload* %1) #0 {
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
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
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
  br label %47

22:                                               ; preds = %2
  %23 = load %struct.flow_rule*, %struct.flow_rule** %6, align 8
  %24 = call i32 @flow_rule_match_enc_ports(%struct.flow_rule* %23, %struct.flow_match_ports* %8)
  %25 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %8, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @be16_to_cpu(i32 %28)
  %30 = load i64, i64* @GENEVE_UDP_PORT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %22
  %33 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %34 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %33, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %8, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @be16_to_cpu(i32 %41)
  %43 = call i32 @netdev_warn(i32 %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %32, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_enc_ports(%struct.flow_rule*, %struct.flow_match_ports*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
