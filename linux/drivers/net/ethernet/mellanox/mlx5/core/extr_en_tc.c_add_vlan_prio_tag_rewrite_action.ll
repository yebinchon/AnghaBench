; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_add_vlan_prio_tag_rewrite_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_add_vlan_prio_tag_rewrite_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_tc_flow_parse_attr = type { i32 }
%struct.pedit_headers_action = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.flow_action_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@fte_match_set_lyr_2_4 = common dso_local global i32 0, align 4
@first_prio = common dso_local global i32 0, align 4
@MLX5_FLOW_NAMESPACE_FDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5e_tc_flow_parse_attr*, %struct.pedit_headers_action*, i32*, %struct.netlink_ext_ack*)* @add_vlan_prio_tag_rewrite_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_vlan_prio_tag_rewrite_action(%struct.mlx5e_priv* %0, %struct.mlx5e_tc_flow_parse_attr* %1, %struct.pedit_headers_action* %2, i32* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5e_tc_flow_parse_attr*, align 8
  %8 = alloca %struct.pedit_headers_action*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.flow_action_entry, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %6, align 8
  store %struct.mlx5e_tc_flow_parse_attr* %1, %struct.mlx5e_tc_flow_parse_attr** %7, align 8
  store %struct.pedit_headers_action* %2, %struct.pedit_headers_action** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %12 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %7, align 8
  %18 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %17, i32 0, i32 0
  %19 = call i32 @get_match_headers_value(i32 %16, i32* %18)
  %20 = load i32, i32* @first_prio, align 4
  %21 = call i32 @MLX5_GET(i32 %14, i32 %19, i32 %20)
  %22 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %25, i32 0, i32 0
  %27 = call i32 @get_match_headers_criteria(i32 %24, i32* %26)
  %28 = load i32, i32* @first_prio, align 4
  %29 = call i32 @MLX5_GET(i32 %22, i32 %27, i32 %28)
  %30 = and i32 %21, %29
  store i32 %30, i32* %13, align 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %33 = load i32, i32* @MLX5_FLOW_NAMESPACE_FDB, align 4
  %34 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %7, align 8
  %35 = load %struct.pedit_headers_action*, %struct.pedit_headers_action** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %38 = call i32 @add_vlan_rewrite_action(%struct.mlx5e_priv* %32, i32 %33, %struct.flow_action_entry* %11, %struct.mlx5e_tc_flow_parse_attr* %34, %struct.pedit_headers_action* %35, i32* %36, %struct.netlink_ext_ack* %37)
  ret i32 %38
}

declare dso_local i32 @MLX5_GET(i32, i32, i32) #1

declare dso_local i32 @get_match_headers_value(i32, i32*) #1

declare dso_local i32 @get_match_headers_criteria(i32, i32*) #1

declare dso_local i32 @add_vlan_rewrite_action(%struct.mlx5e_priv*, i32, %struct.flow_action_entry*, %struct.mlx5e_tc_flow_parse_attr*, %struct.pedit_headers_action*, i32*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
