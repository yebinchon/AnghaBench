; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_mlx5_cmd_dr_create_flow_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_mlx5_cmd_dr_create_flow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_root_namespace = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_flow_table = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.mlx5dr_table* }
%struct.mlx5dr_table = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i32, %struct.mlx5_flow_table*)* }

@.str = private unnamed_addr constant [31 x i8] c"Failed creating dr flow_table\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i32, %struct.mlx5_flow_table*)* @mlx5_cmd_dr_create_flow_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_cmd_dr_create_flow_table(%struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_table* %1, i32 %2, %struct.mlx5_flow_table* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %7 = alloca %struct.mlx5_flow_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_flow_table*, align 8
  %10 = alloca %struct.mlx5dr_table*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_root_namespace** %6, align 8
  store %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mlx5_flow_table* %3, %struct.mlx5_flow_table** %9, align 8
  %12 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %13 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @mlx5_dr_is_fw_table(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = call %struct.TYPE_6__* (...) @mlx5_fs_cmd_get_fw_cmds()
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i32, %struct.mlx5_flow_table*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i32, %struct.mlx5_flow_table*)** %19, align 8
  %21 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %22 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  %25 = call i32 %20(%struct.mlx5_flow_root_namespace* %21, %struct.mlx5_flow_table* %22, i32 %23, %struct.mlx5_flow_table* %24)
  store i32 %25, i32* %5, align 4
  br label %71

26:                                               ; preds = %4
  %27 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %32 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.mlx5dr_table* @mlx5dr_table_create(i32 %30, i32 %33)
  store %struct.mlx5dr_table* %34, %struct.mlx5dr_table** %10, align 8
  %35 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %10, align 8
  %36 = icmp ne %struct.mlx5dr_table* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %26
  %38 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mlx5_core_err(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %71

44:                                               ; preds = %26
  %45 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %10, align 8
  %46 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %47 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store %struct.mlx5dr_table* %45, %struct.mlx5dr_table** %48, align 8
  %49 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %10, align 8
  %50 = call i32 @mlx5dr_table_get_id(%struct.mlx5dr_table* %49)
  %51 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %52 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  %54 = icmp ne %struct.mlx5_flow_table* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %44
  %56 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %57 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %58 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  %59 = call i32 @set_miss_action(%struct.mlx5_flow_root_namespace* %56, %struct.mlx5_flow_table* %57, %struct.mlx5_flow_table* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %10, align 8
  %64 = call i32 @mlx5dr_table_destroy(%struct.mlx5dr_table* %63)
  %65 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %66 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store %struct.mlx5dr_table* null, %struct.mlx5dr_table** %67, align 8
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %5, align 4
  br label %71

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %44
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %62, %37, %17
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @mlx5_dr_is_fw_table(i32) #1

declare dso_local %struct.TYPE_6__* @mlx5_fs_cmd_get_fw_cmds(...) #1

declare dso_local %struct.mlx5dr_table* @mlx5dr_table_create(i32, i32) #1

declare dso_local i32 @mlx5_core_err(i32, i8*) #1

declare dso_local i32 @mlx5dr_table_get_id(%struct.mlx5dr_table*) #1

declare dso_local i32 @set_miss_action(%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_table*) #1

declare dso_local i32 @mlx5dr_table_destroy(%struct.mlx5dr_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
