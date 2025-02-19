; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_lookup_fte_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_lookup_fte_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_fte = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5_flow_group = type { %struct.TYPE_7__, i32 }

@FS_LOCK_PARENT = common dso_local global i32 0, align 4
@rhash_fte = common dso_local global i32 0, align 4
@FS_LOCK_CHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fs_fte* (%struct.mlx5_flow_group*, i32*, i32)* @lookup_fte_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fs_fte* @lookup_fte_locked(%struct.mlx5_flow_group* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_flow_group*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fs_fte*, align 8
  store %struct.mlx5_flow_group* %0, %struct.mlx5_flow_group** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %11, i32 0, i32 0
  %13 = load i32, i32* @FS_LOCK_PARENT, align 4
  %14 = call i32 @nested_down_write_ref_node(%struct.TYPE_7__* %12, i32 %13)
  br label %20

15:                                               ; preds = %3
  %16 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %16, i32 0, i32 0
  %18 = load i32, i32* @FS_LOCK_PARENT, align 4
  %19 = call i32 @nested_down_read_ref_node(%struct.TYPE_7__* %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %21, i32 0, i32 1
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @rhash_fte, align 4
  %25 = call %struct.fs_fte* @rhashtable_lookup_fast(i32* %22, i32* %23, i32 %24)
  store %struct.fs_fte* %25, %struct.fs_fte** %7, align 8
  %26 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %27 = icmp ne %struct.fs_fte* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %30 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %29, i32 0, i32 0
  %31 = call i32 @tree_get_node(%struct.TYPE_7__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %20
  store %struct.fs_fte* null, %struct.fs_fte** %7, align 8
  br label %49

34:                                               ; preds = %28
  %35 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %36 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %42 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %41, i32 0, i32 0
  %43 = call i32 @tree_put_node(%struct.TYPE_7__* %42, i32 0)
  store %struct.fs_fte* null, %struct.fs_fte** %7, align 8
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %46 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %45, i32 0, i32 0
  %47 = load i32, i32* @FS_LOCK_CHILD, align 4
  %48 = call i32 @nested_down_write_ref_node(%struct.TYPE_7__* %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %40, %33
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %54 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %53, i32 0, i32 0
  %55 = call i32 @up_write_ref_node(%struct.TYPE_7__* %54, i32 0)
  br label %60

56:                                               ; preds = %49
  %57 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %57, i32 0, i32 0
  %59 = call i32 @up_read_ref_node(%struct.TYPE_7__* %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  ret %struct.fs_fte* %61
}

declare dso_local i32 @nested_down_write_ref_node(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @nested_down_read_ref_node(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.fs_fte* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local i32 @tree_get_node(%struct.TYPE_7__*) #1

declare dso_local i32 @tree_put_node(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @up_write_ref_node(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @up_read_ref_node(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
