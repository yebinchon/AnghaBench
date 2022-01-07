; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_mlx5_cmd_dr_destroy_flow_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_mlx5_cmd_dr_destroy_flow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_root_namespace = type { i32 }
%struct.mlx5_flow_table = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.mlx5dr_action* }
%struct.mlx5dr_action = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*)* }

@.str = private unnamed_addr constant [35 x i8] c"Failed to destroy flow_table (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to destroy action(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*)* @mlx5_cmd_dr_destroy_flow_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_cmd_dr_destroy_flow_table(%struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %5 = alloca %struct.mlx5_flow_table*, align 8
  %6 = alloca %struct.mlx5dr_action*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_root_namespace** %4, align 8
  store %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table** %5, align 8
  %8 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %10, align 8
  store %struct.mlx5dr_action* %11, %struct.mlx5dr_action** %6, align 8
  %12 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @mlx5_dr_is_fw_table(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = call %struct.TYPE_4__* (...) @mlx5_fs_cmd_get_fw_cmds()
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*)** %19, align 8
  %21 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %4, align 8
  %22 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %23 = call i32 %20(%struct.mlx5_flow_root_namespace* %21, %struct.mlx5_flow_table* %22)
  store i32 %23, i32* %3, align 4
  br label %57

24:                                               ; preds = %2
  %25 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @mlx5dr_table_destroy(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @mlx5_core_err(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %57

39:                                               ; preds = %24
  %40 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %6, align 8
  %41 = icmp ne %struct.mlx5dr_action* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %6, align 8
  %44 = call i32 @mlx5dr_action_destroy(%struct.mlx5dr_action* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %4, align 8
  %49 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @mlx5_core_err(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %57

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %47, %32, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @mlx5_dr_is_fw_table(i32) #1

declare dso_local %struct.TYPE_4__* @mlx5_fs_cmd_get_fw_cmds(...) #1

declare dso_local i32 @mlx5dr_table_destroy(i32) #1

declare dso_local i32 @mlx5_core_err(i32, i8*, i32) #1

declare dso_local i32 @mlx5dr_action_destroy(%struct.mlx5dr_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
