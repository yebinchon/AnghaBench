; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_alloc_insert_flow_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_alloc_insert_flow_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_group = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_flow_table = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.list_head = type { i32 }
%struct.mlx5_flow_steering = type { i32 }

@rhash_fg = common dso_local global i32 0, align 4
@del_hw_flow_group = common dso_local global i32 0, align 4
@del_sw_flow_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_group* (%struct.mlx5_flow_table*, i32, i8*, i32, i32, %struct.list_head*)* @alloc_insert_flow_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_group* @alloc_insert_flow_group(%struct.mlx5_flow_table* %0, i32 %1, i8* %2, i32 %3, i32 %4, %struct.list_head* %5) #0 {
  %7 = alloca %struct.mlx5_flow_group*, align 8
  %8 = alloca %struct.mlx5_flow_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca %struct.mlx5_flow_steering*, align 8
  %15 = alloca %struct.mlx5_flow_group*, align 8
  %16 = alloca i32, align 4
  store %struct.mlx5_flow_table* %0, %struct.mlx5_flow_table** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.list_head* %5, %struct.list_head** %13, align 8
  %17 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %18 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %17, i32 0, i32 0
  %19 = call %struct.mlx5_flow_steering* @get_steering(%struct.TYPE_6__* %18)
  store %struct.mlx5_flow_steering* %19, %struct.mlx5_flow_steering** %14, align 8
  %20 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %14, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call %struct.mlx5_flow_group* @alloc_flow_group(%struct.mlx5_flow_steering* %20, i32 %21, i8* %22, i32 %23, i32 %24)
  store %struct.mlx5_flow_group* %25, %struct.mlx5_flow_group** %15, align 8
  %26 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %15, align 8
  %27 = call i64 @IS_ERR(%struct.mlx5_flow_group* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %15, align 8
  store %struct.mlx5_flow_group* %30, %struct.mlx5_flow_group** %7, align 8
  br label %67

31:                                               ; preds = %6
  %32 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %33 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %32, i32 0, i32 1
  %34 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %15, align 8
  %35 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %34, i32 0, i32 1
  %36 = load i32, i32* @rhash_fg, align 4
  %37 = call i32 @rhltable_insert(i32* %33, i32* %35, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %14, align 8
  %42 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %15, align 8
  %43 = call i32 @dealloc_flow_group(%struct.mlx5_flow_steering* %41, %struct.mlx5_flow_group* %42)
  %44 = load i32, i32* %16, align 4
  %45 = call %struct.mlx5_flow_group* @ERR_PTR(i32 %44)
  store %struct.mlx5_flow_group* %45, %struct.mlx5_flow_group** %7, align 8
  br label %67

46:                                               ; preds = %31
  %47 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %15, align 8
  %48 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %47, i32 0, i32 0
  %49 = load i32, i32* @del_hw_flow_group, align 4
  %50 = load i32, i32* @del_sw_flow_group, align 4
  %51 = call i32 @tree_init_node(%struct.TYPE_5__* %48, i32 %49, i32 %50)
  %52 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %15, align 8
  %53 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %52, i32 0, i32 0
  %54 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %55 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %54, i32 0, i32 0
  %56 = call i32 @tree_add_node(%struct.TYPE_5__* %53, %struct.TYPE_6__* %55)
  %57 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %15, align 8
  %58 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.list_head*, %struct.list_head** %13, align 8
  %61 = call i32 @list_add(i32* %59, %struct.list_head* %60)
  %62 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %63 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i32 @atomic_inc(i32* %64)
  %66 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %15, align 8
  store %struct.mlx5_flow_group* %66, %struct.mlx5_flow_group** %7, align 8
  br label %67

67:                                               ; preds = %46, %40, %29
  %68 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  ret %struct.mlx5_flow_group* %68
}

declare dso_local %struct.mlx5_flow_steering* @get_steering(%struct.TYPE_6__*) #1

declare dso_local %struct.mlx5_flow_group* @alloc_flow_group(%struct.mlx5_flow_steering*, i32, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_group*) #1

declare dso_local i32 @rhltable_insert(i32*, i32*, i32) #1

declare dso_local i32 @dealloc_flow_group(%struct.mlx5_flow_steering*, %struct.mlx5_flow_group*) #1

declare dso_local %struct.mlx5_flow_group* @ERR_PTR(i32) #1

declare dso_local i32 @tree_init_node(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @tree_add_node(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
