; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_add_vlan_pop_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_add_vlan_pop_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5_esw_flow_attr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.flow_action_entry = type { i32 }

@FLOW_ACTION_VLAN_POP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5_esw_flow_attr*, i32*)* @add_vlan_pop_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_vlan_pop_action(%struct.mlx5e_priv* %0, %struct.mlx5_esw_flow_attr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5_esw_flow_attr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.flow_action_entry, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.mlx5_esw_flow_attr* %1, %struct.mlx5_esw_flow_attr** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %9, i32 0, i32 0
  %19 = load i32, i32* @FLOW_ACTION_VLAN_POP, align 4
  store i32 %19, i32* %18, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %33, %3
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %26 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @parse_tc_vlan_action(%struct.mlx5e_priv* %25, %struct.flow_action_entry* %9, %struct.mlx5_esw_flow_attr* %26, i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %36

33:                                               ; preds = %24
  br label %20

34:                                               ; preds = %20
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @parse_tc_vlan_action(%struct.mlx5e_priv*, %struct.flow_action_entry*, %struct.mlx5_esw_flow_attr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
