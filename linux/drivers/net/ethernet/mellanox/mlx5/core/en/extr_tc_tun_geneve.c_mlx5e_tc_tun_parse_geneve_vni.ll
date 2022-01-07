; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_geneve.c_mlx5e_tc_tun_parse_geneve_vni.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_geneve.c_mlx5e_tc_tun_parse_geneve_vni.c"
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
@.str = private unnamed_addr constant [40 x i8] c"Matching on GENEVE VNI is not supported\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Matching on GENEVE VNI is not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@geneve_vni = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5_flow_spec*, %struct.flow_cls_offload*)* @mlx5e_tc_tun_parse_geneve_vni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tc_tun_parse_geneve_vni(%struct.mlx5e_priv* %0, %struct.mlx5_flow_spec* %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5_flow_spec*, align 8
  %7 = alloca %struct.flow_cls_offload*, align 8
  %8 = alloca %struct.flow_rule*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.flow_match_enc_keyid, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %6, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %7, align 8
  %13 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %14 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %13)
  store %struct.flow_rule* %14, %struct.flow_rule** %8, align 8
  %15 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %16 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  store %struct.netlink_ext_ack* %18, %struct.netlink_ext_ack** %9, align 8
  %19 = load i32, i32* @fte_match_param, align 4
  %20 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @misc_parameters, align 4
  %24 = call i8* @MLX5_ADDR_OF(i32 %19, i32 %22, i32 %23)
  store i8* %24, i8** %11, align 8
  %25 = load i32, i32* @fte_match_param, align 4
  %26 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @misc_parameters, align 4
  %30 = call i8* @MLX5_ADDR_OF(i32 %25, i32 %28, i32 %29)
  store i8* %30, i8** %12, align 8
  %31 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %32 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 4
  %33 = call i32 @flow_rule_match_key(%struct.flow_rule* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %80

36:                                               ; preds = %3
  %37 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %38 = call i32 @flow_rule_match_enc_keyid(%struct.flow_rule* %37, %struct.flow_match_enc_keyid* %10)
  %39 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %10, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %80

45:                                               ; preds = %36
  %46 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %47 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ft_field_support, i32 0, i32 0), align 4
  %50 = call i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %45
  %53 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %54 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @netdev_warn(i32 %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %80

61:                                               ; preds = %45
  %62 = load i32, i32* @fte_match_set_misc, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* @geneve_vni, align 4
  %65 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %10, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be32_to_cpu(i32 %68)
  %70 = call i32 @MLX5_SET(i32 %62, i8* %63, i32 %64, i32 %69)
  %71 = load i32, i32* @fte_match_set_misc, align 4
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* @geneve_vni, align 4
  %74 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %10, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @be32_to_cpu(i32 %77)
  %79 = call i32 @MLX5_SET(i32 %71, i8* %72, i32 %73, i32 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %61, %52, %44, %35
  %81 = load i32, i32* %4, align 4
  ret i32 %81
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
