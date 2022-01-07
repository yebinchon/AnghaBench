; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_actions_match_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_actions_match_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.flow_action = type { i32 }
%struct.mlx5e_tc_flow_parse_attr = type { i32 }
%struct.mlx5e_tc_flow = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@EGRESS = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_DECAP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_VLAN_POP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_DROP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_MOD_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.flow_action*, %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow*, %struct.netlink_ext_ack*)* @actions_match_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @actions_match_supported(%struct.mlx5e_priv* %0, %struct.flow_action* %1, %struct.mlx5e_tc_flow_parse_attr* %2, %struct.mlx5e_tc_flow* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.flow_action*, align 8
  %9 = alloca %struct.mlx5e_tc_flow_parse_attr*, align 8
  %10 = alloca %struct.mlx5e_tc_flow*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %7, align 8
  store %struct.flow_action* %1, %struct.flow_action** %8, align 8
  store %struct.mlx5e_tc_flow_parse_attr* %2, %struct.mlx5e_tc_flow_parse_attr** %9, align 8
  store %struct.mlx5e_tc_flow* %3, %struct.mlx5e_tc_flow** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %13 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %10, align 8
  %14 = call i64 @mlx5e_is_eswitch_flow(%struct.mlx5e_tc_flow* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %10, align 8
  %18 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  br label %28

22:                                               ; preds = %5
  %23 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %10, align 8
  %24 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %10, align 8
  %30 = load i32, i32* @EGRESS, align 4
  %31 = call i64 @flow_flag_test(%struct.mlx5e_tc_flow* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DECAP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_POP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DROP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %62

49:                                               ; preds = %43, %38, %33, %28
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_MOD_HDR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %9, align 8
  %56 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %55, i32 0, i32 0
  %57 = load %struct.flow_action*, %struct.flow_action** %8, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %60 = call i32 @modify_header_match_supported(i32* %56, %struct.flow_action* %57, i32 %58, %struct.netlink_ext_ack* %59)
  store i32 %60, i32* %6, align 4
  br label %62

61:                                               ; preds = %49
  store i32 1, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %54, %48
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i64 @mlx5e_is_eswitch_flow(%struct.mlx5e_tc_flow*) #1

declare dso_local i64 @flow_flag_test(%struct.mlx5e_tc_flow*, i32) #1

declare dso_local i32 @modify_header_match_supported(i32*, %struct.flow_action*, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
