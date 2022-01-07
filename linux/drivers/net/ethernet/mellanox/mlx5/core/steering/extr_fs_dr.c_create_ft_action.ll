; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_create_ft_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_create_ft_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_action = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_flow_rule = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_flow_table* }
%struct.mlx5_flow_table = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5dr_action* (%struct.mlx5_core_dev*, %struct.mlx5_flow_rule*)* @create_ft_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5dr_action* @create_ft_action(%struct.mlx5_core_dev* %0, %struct.mlx5_flow_rule* %1) #0 {
  %3 = alloca %struct.mlx5dr_action*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_flow_rule*, align 8
  %6 = alloca %struct.mlx5_flow_table*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_flow_rule* %1, %struct.mlx5_flow_rule** %5, align 8
  %7 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %5, align 8
  %8 = getelementptr inbounds %struct.mlx5_flow_rule, %struct.mlx5_flow_rule* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  store %struct.mlx5_flow_table* %10, %struct.mlx5_flow_table** %6, align 8
  %11 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @mlx5_dr_is_fw_table(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %19 = call %struct.mlx5dr_action* @mlx5dr_create_action_dest_flow_fw_table(%struct.mlx5_flow_table* %17, %struct.mlx5_core_dev* %18)
  store %struct.mlx5dr_action* %19, %struct.mlx5dr_action** %3, align 8
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %22 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.mlx5dr_action* @mlx5dr_action_create_dest_table(i32 %24)
  store %struct.mlx5dr_action* %25, %struct.mlx5dr_action** %3, align 8
  br label %26

26:                                               ; preds = %20, %16
  %27 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  ret %struct.mlx5dr_action* %27
}

declare dso_local i64 @mlx5_dr_is_fw_table(i32) #1

declare dso_local %struct.mlx5dr_action* @mlx5dr_create_action_dest_flow_fw_table(%struct.mlx5_flow_table*, %struct.mlx5_core_dev*) #1

declare dso_local %struct.mlx5dr_action* @mlx5dr_action_create_dest_table(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
