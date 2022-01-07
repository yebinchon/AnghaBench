; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun.c_mlx5e_tc_tun_parse_udp_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun.c_mlx5e_tc_tun_parse_udp_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5_flow_spec = type { i32 }
%struct.flow_cls_offload = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.flow_rule = type { i32 }
%struct.flow_match_ports = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@FLOW_DISSECTOR_KEY_ENC_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"UDP tunnel decap filter must include enc_dst_port condition\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"UDP tunnel decap filter must include enc_dst_port condition\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"UDP tunnel decap filter must match enc_dst_port fully\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"UDP tunnel decap filter must match enc_dst_port fully\0A\00", align 1
@fte_match_set_lyr_2_4 = common dso_local global i32 0, align 4
@ip_protocol = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@udp_dport = common dso_local global i32 0, align 4
@udp_sport = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_tc_tun_parse_udp_ports(%struct.mlx5e_priv* %0, %struct.mlx5_flow_spec* %1, %struct.flow_cls_offload* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5_flow_spec*, align 8
  %9 = alloca %struct.flow_cls_offload*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.flow_rule*, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.flow_match_ports, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %7, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %8, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %16 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %15)
  store %struct.flow_rule* %16, %struct.flow_rule** %12, align 8
  %17 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %18 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  store %struct.netlink_ext_ack* %20, %struct.netlink_ext_ack** %13, align 8
  %21 = load %struct.flow_rule*, %struct.flow_rule** %12, align 8
  %22 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_PORTS, align 4
  %23 = call i32 @flow_rule_match_key(%struct.flow_rule* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %5
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %27 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %26, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @netdev_warn(i32 %30, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %97

34:                                               ; preds = %5
  %35 = load %struct.flow_rule*, %struct.flow_rule** %12, align 8
  %36 = call i32 @flow_rule_match_enc_ports(%struct.flow_rule* %35, %struct.flow_match_ports* %14)
  %37 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %14, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = call i64 @memchr_inv(i32* %39, i32 255, i32 4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %44 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %43, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %46 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @netdev_warn(i32 %47, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %97

51:                                               ; preds = %34
  %52 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* @ip_protocol, align 4
  %55 = call i32 @MLX5_SET_TO_ONES(i32 %52, i8* %53, i32 %54)
  %56 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* @ip_protocol, align 4
  %59 = load i32, i32* @IPPROTO_UDP, align 4
  %60 = call i32 @MLX5_SET(i32 %56, i8* %57, i32 %58, i32 %59)
  %61 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* @udp_dport, align 4
  %64 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %14, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ntohs(i32 %67)
  %69 = call i32 @MLX5_SET(i32 %61, i8* %62, i32 %63, i32 %68)
  %70 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* @udp_dport, align 4
  %73 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %14, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ntohs(i32 %76)
  %78 = call i32 @MLX5_SET(i32 %70, i8* %71, i32 %72, i32 %77)
  %79 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* @udp_sport, align 4
  %82 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %14, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ntohs(i32 %85)
  %87 = call i32 @MLX5_SET(i32 %79, i8* %80, i32 %81, i32 %86)
  %88 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* @udp_sport, align 4
  %91 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %14, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ntohs(i32 %94)
  %96 = call i32 @MLX5_SET(i32 %88, i8* %89, i32 %90, i32 %95)
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %51, %42, %25
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @flow_rule_match_enc_ports(%struct.flow_rule*, %struct.flow_match_ports*) #1

declare dso_local i64 @memchr_inv(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
