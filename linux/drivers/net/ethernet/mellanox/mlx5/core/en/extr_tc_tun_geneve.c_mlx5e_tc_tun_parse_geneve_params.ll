; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_geneve.c_mlx5e_tc_tun_parse_geneve_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_geneve.c_mlx5e_tc_tun_parse_geneve_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx5e_priv = type { i32, i32 }
%struct.mlx5_flow_spec = type { i32, i32 }
%struct.flow_cls_offload = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }

@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@ft_field_support = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [40 x i8] c"Matching on GENEVE OAM is not supported\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Matching on GENEVE OAM is not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@geneve_oam = common dso_local global i32 0, align 4
@geneve_protocol_type = common dso_local global i32 0, align 4
@ETH_P_TEB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5_flow_spec*, %struct.flow_cls_offload*)* @mlx5e_tc_tun_parse_geneve_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tc_tun_parse_geneve_params(%struct.mlx5e_priv* %0, %struct.mlx5_flow_spec* %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5_flow_spec*, align 8
  %7 = alloca %struct.flow_cls_offload*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %6, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %7, align 8
  %11 = load i32, i32* @fte_match_param, align 4
  %12 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @misc_parameters, align 4
  %16 = call i8* @MLX5_ADDR_OF(i32 %11, i32 %14, i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i32, i32* @fte_match_param, align 4
  %18 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @misc_parameters, align 4
  %22 = call i8* @MLX5_ADDR_OF(i32 %17, i32 %20, i32 %21)
  store i8* %22, i8** %9, align 8
  %23 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %24 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %25, align 8
  store %struct.netlink_ext_ack* %26, %struct.netlink_ext_ack** %10, align 8
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ft_field_support, i32 0, i32 1), align 4
  %31 = call i64 @MLX5_CAP_ESW_FLOWTABLE_FDB(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %3
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %35 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @netdev_warn(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %68

42:                                               ; preds = %3
  %43 = load i32, i32* @fte_match_set_misc, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @geneve_oam, align 4
  %46 = call i32 @MLX5_SET_TO_ONES(i32 %43, i8* %44, i32 %45)
  %47 = load i32, i32* @fte_match_set_misc, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* @geneve_oam, align 4
  %50 = call i32 @MLX5_SET(i32 %47, i8* %48, i32 %49, i32 0)
  %51 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %52 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ft_field_support, i32 0, i32 0), align 4
  %55 = call i64 @MLX5_CAP_ESW_FLOWTABLE_FDB(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %42
  %58 = load i32, i32* @fte_match_set_misc, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* @geneve_protocol_type, align 4
  %61 = call i32 @MLX5_SET_TO_ONES(i32 %58, i8* %59, i32 %60)
  %62 = load i32, i32* @fte_match_set_misc, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* @geneve_protocol_type, align 4
  %65 = load i32, i32* @ETH_P_TEB, align 4
  %66 = call i32 @MLX5_SET(i32 %62, i8* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %57, %42
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %33
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #1

declare dso_local i64 @MLX5_CAP_ESW_FLOWTABLE_FDB(i32, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
