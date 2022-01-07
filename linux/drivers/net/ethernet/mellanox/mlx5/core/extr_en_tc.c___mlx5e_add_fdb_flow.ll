; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c___mlx5e_add_fdb_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c___mlx5e_add_fdb_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_tc_flow = type { i32, i32, i32 }
%struct.mlx5e_priv = type { i32 }
%struct.flow_cls_offload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.net_device = type { i32 }
%struct.mlx5_eswitch_rep = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.flow_rule = type { i32 }
%struct.mlx5e_tc_flow_parse_attr = type { i32, %struct.net_device* }

@MLX5E_TC_FLOW_FLAG_ESWITCH = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5e_tc_flow* (%struct.mlx5e_priv*, %struct.flow_cls_offload*, i64, %struct.net_device*, %struct.mlx5_eswitch_rep*, %struct.mlx5_core_dev*)* @__mlx5e_add_fdb_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5e_tc_flow* @__mlx5e_add_fdb_flow(%struct.mlx5e_priv* %0, %struct.flow_cls_offload* %1, i64 %2, %struct.net_device* %3, %struct.mlx5_eswitch_rep* %4, %struct.mlx5_core_dev* %5) #0 {
  %7 = alloca %struct.mlx5e_tc_flow*, align 8
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca %struct.flow_cls_offload*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.mlx5_eswitch_rep*, align 8
  %13 = alloca %struct.mlx5_core_dev*, align 8
  %14 = alloca %struct.flow_rule*, align 8
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca %struct.mlx5e_tc_flow_parse_attr*, align 8
  %17 = alloca %struct.mlx5e_tc_flow*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %8, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.net_device* %3, %struct.net_device** %11, align 8
  store %struct.mlx5_eswitch_rep* %4, %struct.mlx5_eswitch_rep** %12, align 8
  store %struct.mlx5_core_dev* %5, %struct.mlx5_core_dev** %13, align 8
  %20 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %21 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %20)
  store %struct.flow_rule* %21, %struct.flow_rule** %14, align 8
  %22 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %23 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %24, align 8
  store %struct.netlink_ext_ack* %25, %struct.netlink_ext_ack** %15, align 8
  %26 = load i32, i32* @MLX5E_TC_FLOW_FLAG_ESWITCH, align 4
  %27 = call i64 @BIT(i32 %26)
  %28 = load i64, i64* %10, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %10, align 8
  store i32 4, i32* %18, align 4
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %31 = load i32, i32* %18, align 4
  %32 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @mlx5e_alloc_flow(%struct.mlx5e_priv* %30, i32 %31, %struct.flow_cls_offload* %32, i64 %33, %struct.mlx5e_tc_flow_parse_attr** %16, %struct.mlx5e_tc_flow** %17)
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %19, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  br label %102

38:                                               ; preds = %6
  %39 = load %struct.net_device*, %struct.net_device** %11, align 8
  %40 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %16, align 8
  %41 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %40, i32 0, i32 1
  store %struct.net_device* %39, %struct.net_device** %41, align 8
  %42 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %17, align 8
  %43 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %46 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %16, align 8
  %47 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %48 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %12, align 8
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %50 = call i32 @mlx5e_flow_esw_attr_init(i32 %44, %struct.mlx5e_priv* %45, %struct.mlx5e_tc_flow_parse_attr* %46, %struct.flow_cls_offload* %47, %struct.mlx5_eswitch_rep* %48, %struct.mlx5_core_dev* %49)
  %51 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %17, align 8
  %52 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %17, align 8
  %55 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %16, align 8
  %56 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %55, i32 0, i32 0
  %57 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %58 = load %struct.net_device*, %struct.net_device** %11, align 8
  %59 = call i32 @parse_cls_flower(i32 %53, %struct.mlx5e_tc_flow* %54, i32* %56, %struct.flow_cls_offload* %57, %struct.net_device* %58)
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %38
  br label %98

63:                                               ; preds = %38
  %64 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %65 = load %struct.flow_rule*, %struct.flow_rule** %14, align 8
  %66 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %65, i32 0, i32 0
  %67 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %17, align 8
  %68 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %69 = call i32 @parse_tc_fdb_actions(%struct.mlx5e_priv* %64, i32* %66, %struct.mlx5e_tc_flow* %67, %struct.netlink_ext_ack* %68)
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %98

73:                                               ; preds = %63
  %74 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %75 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %17, align 8
  %76 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %77 = call i32 @mlx5e_tc_add_fdb_flow(%struct.mlx5e_priv* %74, %struct.mlx5e_tc_flow* %75, %struct.netlink_ext_ack* %76)
  store i32 %77, i32* %19, align 4
  %78 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %17, align 8
  %79 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %78, i32 0, i32 0
  %80 = call i32 @complete_all(i32* %79)
  %81 = load i32, i32* %19, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %73
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* @ENETUNREACH, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %90 = call i64 @mlx5_lag_is_multipath(%struct.mlx5_core_dev* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88, %83
  br label %98

93:                                               ; preds = %88
  %94 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %17, align 8
  %95 = call i32 @add_unready_flow(%struct.mlx5e_tc_flow* %94)
  br label %96

96:                                               ; preds = %93, %73
  %97 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %17, align 8
  store %struct.mlx5e_tc_flow* %97, %struct.mlx5e_tc_flow** %7, align 8
  br label %105

98:                                               ; preds = %92, %72, %62
  %99 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %100 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %17, align 8
  %101 = call i32 @mlx5e_flow_put(%struct.mlx5e_priv* %99, %struct.mlx5e_tc_flow* %100)
  br label %102

102:                                              ; preds = %98, %37
  %103 = load i32, i32* %19, align 4
  %104 = call %struct.mlx5e_tc_flow* @ERR_PTR(i32 %103)
  store %struct.mlx5e_tc_flow* %104, %struct.mlx5e_tc_flow** %7, align 8
  br label %105

105:                                              ; preds = %102, %96
  %106 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %7, align 8
  ret %struct.mlx5e_tc_flow* %106
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @mlx5e_alloc_flow(%struct.mlx5e_priv*, i32, %struct.flow_cls_offload*, i64, %struct.mlx5e_tc_flow_parse_attr**, %struct.mlx5e_tc_flow**) #1

declare dso_local i32 @mlx5e_flow_esw_attr_init(i32, %struct.mlx5e_priv*, %struct.mlx5e_tc_flow_parse_attr*, %struct.flow_cls_offload*, %struct.mlx5_eswitch_rep*, %struct.mlx5_core_dev*) #1

declare dso_local i32 @parse_cls_flower(i32, %struct.mlx5e_tc_flow*, i32*, %struct.flow_cls_offload*, %struct.net_device*) #1

declare dso_local i32 @parse_tc_fdb_actions(%struct.mlx5e_priv*, i32*, %struct.mlx5e_tc_flow*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mlx5e_tc_add_fdb_flow(%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i64 @mlx5_lag_is_multipath(%struct.mlx5_core_dev*) #1

declare dso_local i32 @add_unready_flow(%struct.mlx5e_tc_flow*) #1

declare dso_local i32 @mlx5e_flow_put(%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*) #1

declare dso_local %struct.mlx5e_tc_flow* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
