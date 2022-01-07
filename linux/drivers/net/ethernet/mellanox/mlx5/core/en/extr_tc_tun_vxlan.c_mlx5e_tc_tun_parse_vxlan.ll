; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_vxlan.c_mlx5e_tc_tun_parse_vxlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_vxlan.c_mlx5e_tc_tun_parse_vxlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.mlx5e_priv = type { i32, i32 }
%struct.mlx5_flow_spec = type { i32, i32 }
%struct.flow_cls_offload = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.flow_rule = type { i32 }
%struct.flow_match_enc_keyid = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_KEYID = common dso_local global i32 0, align 4
@ft_field_support = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [39 x i8] c"Matching on VXLAN VNI is not supported\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Matching on VXLAN VNI is not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@vxlan_vni = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5_flow_spec*, %struct.flow_cls_offload*, i8*, i8*)* @mlx5e_tc_tun_parse_vxlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tc_tun_parse_vxlan(%struct.mlx5e_priv* %0, %struct.mlx5_flow_spec* %1, %struct.flow_cls_offload* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5_flow_spec*, align 8
  %9 = alloca %struct.flow_cls_offload*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.flow_rule*, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.flow_match_enc_keyid, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %7, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %8, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %18 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %17)
  store %struct.flow_rule* %18, %struct.flow_rule** %12, align 8
  %19 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %20 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %21, align 8
  store %struct.netlink_ext_ack* %22, %struct.netlink_ext_ack** %13, align 8
  %23 = load i32, i32* @fte_match_param, align 4
  %24 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %25 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @misc_parameters, align 4
  %28 = call i8* @MLX5_ADDR_OF(i32 %23, i32 %26, i32 %27)
  store i8* %28, i8** %15, align 8
  %29 = load i32, i32* @fte_match_param, align 4
  %30 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %31 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @misc_parameters, align 4
  %34 = call i8* @MLX5_ADDR_OF(i32 %29, i32 %32, i32 %33)
  store i8* %34, i8** %16, align 8
  %35 = load %struct.flow_rule*, %struct.flow_rule** %12, align 8
  %36 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 4
  %37 = call i32 @flow_rule_match_key(%struct.flow_rule* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %84

40:                                               ; preds = %5
  %41 = load %struct.flow_rule*, %struct.flow_rule** %12, align 8
  %42 = call i32 @flow_rule_match_enc_keyid(%struct.flow_rule* %41, %struct.flow_match_enc_keyid* %14)
  %43 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %14, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %84

49:                                               ; preds = %40
  %50 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %51 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ft_field_support, i32 0, i32 0), align 4
  %54 = call i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %49
  %57 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %58 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %60 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @netdev_warn(i32 %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %84

65:                                               ; preds = %49
  %66 = load i32, i32* @fte_match_set_misc, align 4
  %67 = load i8*, i8** %15, align 8
  %68 = load i32, i32* @vxlan_vni, align 4
  %69 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %14, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @be32_to_cpu(i32 %72)
  %74 = call i32 @MLX5_SET(i32 %66, i8* %67, i32 %68, i32 %73)
  %75 = load i32, i32* @fte_match_set_misc, align 4
  %76 = load i8*, i8** %16, align 8
  %77 = load i32, i32* @vxlan_vni, align 4
  %78 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %14, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @be32_to_cpu(i32 %81)
  %83 = call i32 @MLX5_SET(i32 %75, i8* %76, i32 %77, i32 %82)
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %65, %56, %48, %39
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #1

declare dso_local i32 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_enc_keyid(%struct.flow_rule*, %struct.flow_match_enc_keyid*) #1

declare dso_local i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(i32, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
