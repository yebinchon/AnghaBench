; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_create_flow_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_create_flow_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_group = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.mlx5_flow_table = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.mlx5_flow_root_namespace = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i32*, %struct.mlx5_flow_group*)* }

@create_flow_group_in = common dso_local global i32 0, align 4
@start_flow_index = common dso_local global i32 0, align 4
@end_flow_index = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@match_criteria = common dso_local global i8* null, align 8
@match_criteria_enable = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_flow_group* @mlx5_create_flow_group(%struct.mlx5_flow_table* %0, i32* %1) #0 {
  %3 = alloca %struct.mlx5_flow_group*, align 8
  %4 = alloca %struct.mlx5_flow_table*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5_flow_group*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_flow_table* %0, %struct.mlx5_flow_table** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %13, i32 0, i32 0
  %15 = call %struct.mlx5_flow_root_namespace* @find_root(%struct.TYPE_11__* %14)
  store %struct.mlx5_flow_root_namespace* %15, %struct.mlx5_flow_root_namespace** %6, align 8
  %16 = load i32, i32* @create_flow_group_in, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = ptrtoint i8* %18 to i32
  %20 = call i8* @MLX5_ADDR_OF(i32 %16, i32* %17, i32 %19)
  store i8* %20, i8** %7, align 8
  %21 = load i32, i32* @create_flow_group_in, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = ptrtoint i8* %23 to i32
  %25 = call i8* @MLX5_GET(i32 %21, i32* %22, i32 %24)
  store i8* %25, i8** %8, align 8
  %26 = load i32, i32* @create_flow_group_in, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @start_flow_index, align 4
  %29 = call i8* @MLX5_GET(i32 %26, i32* %27, i32 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @create_flow_group_in, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @end_flow_index, align 4
  %34 = call i8* @MLX5_GET(i32 %31, i32* %32, i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.mlx5_flow_group* @ERR_PTR(i32 %43)
  store %struct.mlx5_flow_group* %44, %struct.mlx5_flow_group** %3, align 8
  br label %94

45:                                               ; preds = %2
  %46 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %47 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %46, i32 0, i32 0
  %48 = call i32 @down_write_ref_node(%struct.TYPE_11__* %47, i32 0)
  %49 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.mlx5_flow_group* @alloc_insert_flow_group(%struct.mlx5_flow_table* %49, i8* %50, i8* %51, i32 %52, i32 %53, i32 %58)
  store %struct.mlx5_flow_group* %59, %struct.mlx5_flow_group** %11, align 8
  %60 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %61 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %60, i32 0, i32 0
  %62 = call i32 @up_write_ref_node(%struct.TYPE_11__* %61, i32 0)
  %63 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %11, align 8
  %64 = call i64 @IS_ERR(%struct.mlx5_flow_group* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %45
  %67 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %11, align 8
  store %struct.mlx5_flow_group* %67, %struct.mlx5_flow_group** %3, align 8
  br label %94

68:                                               ; preds = %45
  %69 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %70 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i32*, %struct.mlx5_flow_group*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i32*, %struct.mlx5_flow_group*)** %72, align 8
  %74 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %75 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %11, align 8
  %78 = call i32 %73(%struct.mlx5_flow_root_namespace* %74, %struct.mlx5_flow_table* %75, i32* %76, %struct.mlx5_flow_group* %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %68
  %82 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %11, align 8
  %83 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %82, i32 0, i32 0
  %84 = call i32 @tree_put_node(%struct.TYPE_12__* %83, i32 0)
  %85 = load i32, i32* %12, align 4
  %86 = call %struct.mlx5_flow_group* @ERR_PTR(i32 %85)
  store %struct.mlx5_flow_group* %86, %struct.mlx5_flow_group** %3, align 8
  br label %94

87:                                               ; preds = %68
  %88 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %11, align 8
  %89 = call i32 @trace_mlx5_fs_add_fg(%struct.mlx5_flow_group* %88)
  %90 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %11, align 8
  %91 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 4
  %93 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %11, align 8
  store %struct.mlx5_flow_group* %93, %struct.mlx5_flow_group** %3, align 8
  br label %94

94:                                               ; preds = %87, %81, %66, %41
  %95 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %3, align 8
  ret %struct.mlx5_flow_group* %95
}

declare dso_local %struct.mlx5_flow_root_namespace* @find_root(%struct.TYPE_11__*) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i8* @MLX5_GET(i32, i32*, i32) #1

declare dso_local %struct.mlx5_flow_group* @ERR_PTR(i32) #1

declare dso_local i32 @down_write_ref_node(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.mlx5_flow_group* @alloc_insert_flow_group(%struct.mlx5_flow_table*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @up_write_ref_node(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_group*) #1

declare dso_local i32 @tree_put_node(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @trace_mlx5_fs_add_fg(%struct.mlx5_flow_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
