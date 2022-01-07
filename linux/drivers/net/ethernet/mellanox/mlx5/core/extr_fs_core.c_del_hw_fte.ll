; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_del_hw_fte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_del_hw_fte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_node = type { i64 }
%struct.mlx5_flow_root_namespace = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_table*)* }
%struct.mlx5_flow_table = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.fs_node* }
%struct.mlx5_flow_group = type { i32, i32, %struct.TYPE_5__ }
%struct.mlx5_core_dev = type { i32 }
%struct.fs_fte = type { i32, i32, %struct.TYPE_5__ }

@.str = private unnamed_addr constant [64 x i8] c"flow steering can't delete fte in index %d of flow group id %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_node*)* @del_hw_fte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_hw_fte(%struct.fs_node* %0) #0 {
  %2 = alloca %struct.fs_node*, align 8
  %3 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %4 = alloca %struct.mlx5_flow_table*, align 8
  %5 = alloca %struct.mlx5_flow_group*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.fs_fte*, align 8
  %8 = alloca i32, align 4
  store %struct.fs_node* %0, %struct.fs_node** %2, align 8
  %9 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %10 = bitcast %struct.fs_fte* %9 to %struct.mlx5_flow_table*
  %11 = load %struct.fs_node*, %struct.fs_node** %2, align 8
  %12 = call i32 @fs_get_obj(%struct.mlx5_flow_table* %10, %struct.fs_node* %11)
  %13 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %5, align 8
  %14 = bitcast %struct.mlx5_flow_group* %13 to %struct.mlx5_flow_table*
  %15 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %16 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.fs_node*, %struct.fs_node** %17, align 8
  %19 = call i32 @fs_get_obj(%struct.mlx5_flow_table* %14, %struct.fs_node* %18)
  %20 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %21 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.fs_node*, %struct.fs_node** %23, align 8
  %25 = call i32 @fs_get_obj(%struct.mlx5_flow_table* %20, %struct.fs_node* %24)
  %26 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %27 = bitcast %struct.fs_fte* %26 to %struct.mlx5_flow_table*
  %28 = call i32 @trace_mlx5_fs_del_fte(%struct.mlx5_flow_table* %27)
  %29 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %29, i32 0, i32 2
  %31 = call %struct.mlx5_core_dev* @get_dev(%struct.TYPE_5__* %30)
  store %struct.mlx5_core_dev* %31, %struct.mlx5_core_dev** %6, align 8
  %32 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %32, i32 0, i32 2
  %34 = call %struct.mlx5_flow_root_namespace* @find_root(%struct.TYPE_5__* %33)
  store %struct.mlx5_flow_root_namespace* %34, %struct.mlx5_flow_root_namespace** %3, align 8
  %35 = load %struct.fs_node*, %struct.fs_node** %2, align 8
  %36 = getelementptr inbounds %struct.fs_node, %struct.fs_node* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %1
  %40 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %3, align 8
  %41 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_table*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_table*)** %43, align 8
  %45 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %3, align 8
  %46 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %47 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %48 = bitcast %struct.fs_fte* %47 to %struct.mlx5_flow_table*
  %49 = call i32 %44(%struct.mlx5_flow_root_namespace* %45, %struct.mlx5_flow_table* %46, %struct.mlx5_flow_table* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %39
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %54 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %55 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %5, align 8
  %58 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %53, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %52, %39
  %62 = load %struct.fs_node*, %struct.fs_node** %2, align 8
  %63 = getelementptr inbounds %struct.fs_node, %struct.fs_node* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %61, %1
  ret void
}

declare dso_local i32 @fs_get_obj(%struct.mlx5_flow_table*, %struct.fs_node*) #1

declare dso_local i32 @trace_mlx5_fs_del_fte(%struct.mlx5_flow_table*) #1

declare dso_local %struct.mlx5_core_dev* @get_dev(%struct.TYPE_5__*) #1

declare dso_local %struct.mlx5_flow_root_namespace* @find_root(%struct.TYPE_5__*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
