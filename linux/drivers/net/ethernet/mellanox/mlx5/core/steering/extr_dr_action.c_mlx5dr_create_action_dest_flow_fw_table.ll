; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_mlx5dr_create_action_dest_flow_fw_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_mlx5dr_create_action_dest_flow_fw_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_action = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_core_dev*, %struct.mlx5_flow_table* }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@DR_ACTION_TYP_FT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5dr_action* @mlx5dr_create_action_dest_flow_fw_table(%struct.mlx5_flow_table* %0, %struct.mlx5_core_dev* %1) #0 {
  %3 = alloca %struct.mlx5dr_action*, align 8
  %4 = alloca %struct.mlx5_flow_table*, align 8
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5dr_action*, align 8
  store %struct.mlx5_flow_table* %0, %struct.mlx5_flow_table** %4, align 8
  store %struct.mlx5_core_dev* %1, %struct.mlx5_core_dev** %5, align 8
  %7 = load i32, i32* @DR_ACTION_TYP_FT, align 4
  %8 = call %struct.mlx5dr_action* @dr_action_create_generic(i32 %7)
  store %struct.mlx5dr_action* %8, %struct.mlx5dr_action** %6, align 8
  %9 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %6, align 8
  %10 = icmp ne %struct.mlx5dr_action* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.mlx5dr_action* null, %struct.mlx5dr_action** %3, align 8
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %17 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store %struct.mlx5_flow_table* %16, %struct.mlx5_flow_table** %20, align 8
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %22 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.mlx5_core_dev* %21, %struct.mlx5_core_dev** %25, align 8
  %26 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %6, align 8
  store %struct.mlx5dr_action* %26, %struct.mlx5dr_action** %3, align 8
  br label %27

27:                                               ; preds = %12, %11
  %28 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  ret %struct.mlx5dr_action* %28
}

declare dso_local %struct.mlx5dr_action* @dr_action_create_generic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
