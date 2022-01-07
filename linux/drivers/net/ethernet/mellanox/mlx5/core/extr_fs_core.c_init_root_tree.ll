; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_init_root_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_init_root_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_steering = type { i32 }
%struct.init_tree_node = type { i32, i32* }
%struct.fs_node = type { i32 }
%struct.mlx5_flow_namespace = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_steering*, %struct.init_tree_node*, %struct.fs_node*)* @init_root_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_root_tree(%struct.mlx5_flow_steering* %0, %struct.init_tree_node* %1, %struct.fs_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_flow_steering*, align 8
  %6 = alloca %struct.init_tree_node*, align 8
  %7 = alloca %struct.fs_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_flow_namespace*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5_flow_steering* %0, %struct.mlx5_flow_steering** %5, align 8
  store %struct.init_tree_node* %1, %struct.init_tree_node** %6, align 8
  store %struct.fs_node* %2, %struct.fs_node** %7, align 8
  %11 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %9, align 8
  %12 = load %struct.fs_node*, %struct.fs_node** %7, align 8
  %13 = call i32 @fs_get_obj(%struct.mlx5_flow_namespace* %11, %struct.fs_node* %12)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %38, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.init_tree_node*, %struct.init_tree_node** %6, align 8
  %17 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %5, align 8
  %22 = load %struct.init_tree_node*, %struct.init_tree_node** %6, align 8
  %23 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %9, align 8
  %29 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %28, i32 0, i32 0
  %30 = load %struct.init_tree_node*, %struct.init_tree_node** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @init_root_tree_recursive(%struct.mlx5_flow_steering* %21, i32* %27, i32* %29, %struct.init_tree_node* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %42

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %14

41:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @fs_get_obj(%struct.mlx5_flow_namespace*, %struct.fs_node*) #1

declare dso_local i32 @init_root_tree_recursive(%struct.mlx5_flow_steering*, i32*, i32*, %struct.init_tree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
