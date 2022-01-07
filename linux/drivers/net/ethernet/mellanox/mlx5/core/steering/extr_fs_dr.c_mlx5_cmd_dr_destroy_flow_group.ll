; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_mlx5_cmd_dr_destroy_flow_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_mlx5_cmd_dr_destroy_flow_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_root_namespace = type { i32 }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_group = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*)* @mlx5_cmd_dr_destroy_flow_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_cmd_dr_destroy_flow_group(%struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_table* %1, %struct.mlx5_flow_group* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %6 = alloca %struct.mlx5_flow_table*, align 8
  %7 = alloca %struct.mlx5_flow_group*, align 8
  store %struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_root_namespace** %5, align 8
  store %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table** %6, align 8
  store %struct.mlx5_flow_group* %2, %struct.mlx5_flow_group** %7, align 8
  %8 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %9 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @mlx5_dr_is_fw_table(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = call %struct.TYPE_4__* (...) @mlx5_fs_cmd_get_fw_cmds()
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*)** %15, align 8
  %17 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %5, align 8
  %18 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %19 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %20 = call i32 %16(%struct.mlx5_flow_root_namespace* %17, %struct.mlx5_flow_table* %18, %struct.mlx5_flow_group* %19)
  store i32 %20, i32* %4, align 4
  br label %27

21:                                               ; preds = %3
  %22 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %23 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mlx5dr_matcher_destroy(i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %21, %13
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @mlx5_dr_is_fw_table(i32) #1

declare dso_local %struct.TYPE_4__* @mlx5_fs_cmd_get_fw_cmds(...) #1

declare dso_local i32 @mlx5dr_matcher_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
