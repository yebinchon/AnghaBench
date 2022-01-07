; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_add_vlan_push_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_add_vlan_push_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5_esw_flow_attr = type { i32 }
%struct.net_device = type { i32 }
%struct.flow_action_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@FLOW_ACTION_VLAN_PUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5_esw_flow_attr*, %struct.net_device**, i32*)* @add_vlan_push_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_vlan_push_action(%struct.mlx5e_priv* %0, %struct.mlx5_esw_flow_attr* %1, %struct.net_device** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5_esw_flow_attr*, align 8
  %8 = alloca %struct.net_device**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.flow_action_entry, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %6, align 8
  store %struct.mlx5_esw_flow_attr* %1, %struct.mlx5_esw_flow_attr** %7, align 8
  store %struct.net_device** %2, %struct.net_device*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.net_device**, %struct.net_device*** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %10, align 8
  %15 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %11, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %18 = load %struct.net_device*, %struct.net_device** %10, align 8
  %19 = call i32 @vlan_dev_vlan_proto(%struct.net_device* %18)
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %21 = load %struct.net_device*, %struct.net_device** %10, align 8
  %22 = call i32 @vlan_dev_vlan_id(%struct.net_device* %21)
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %11, i32 0, i32 1
  %24 = load i32, i32* @FLOW_ACTION_VLAN_PUSH, align 4
  store i32 %24, i32* %23, align 4
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %26 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @parse_tc_vlan_action(%struct.mlx5e_priv* %25, %struct.flow_action_entry* %11, %struct.mlx5_esw_flow_attr* %26, i32* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %52

33:                                               ; preds = %4
  %34 = load %struct.net_device*, %struct.net_device** %10, align 8
  %35 = call i32 @dev_net(%struct.net_device* %34)
  %36 = load %struct.net_device*, %struct.net_device** %10, align 8
  %37 = call i32 @dev_get_iflink(%struct.net_device* %36)
  %38 = call %struct.net_device* @dev_get_by_index_rcu(i32 %35, i32 %37)
  %39 = load %struct.net_device**, %struct.net_device*** %8, align 8
  store %struct.net_device* %38, %struct.net_device** %39, align 8
  %40 = load %struct.net_device**, %struct.net_device*** %8, align 8
  %41 = load %struct.net_device*, %struct.net_device** %40, align 8
  %42 = call i64 @is_vlan_dev(%struct.net_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %46 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %47 = load %struct.net_device**, %struct.net_device*** %8, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @add_vlan_push_action(%struct.mlx5e_priv* %45, %struct.mlx5_esw_flow_attr* %46, %struct.net_device** %47, i32* %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %44, %33
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %31
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @vlan_dev_vlan_proto(%struct.net_device*) #1

declare dso_local i32 @vlan_dev_vlan_id(%struct.net_device*) #1

declare dso_local i32 @parse_tc_vlan_action(%struct.mlx5e_priv*, %struct.flow_action_entry*, %struct.mlx5_esw_flow_attr*, i32*) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @dev_get_iflink(%struct.net_device*) #1

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
