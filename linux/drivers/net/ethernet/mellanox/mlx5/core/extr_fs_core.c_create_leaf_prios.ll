; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_create_leaf_prios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_create_leaf_prios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_namespace = type { i32 }
%struct.init_tree_node = type { i32, i32 }
%struct.fs_prio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_namespace*, i32, %struct.init_tree_node*)* @create_leaf_prios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_leaf_prios(%struct.mlx5_flow_namespace* %0, i32 %1, %struct.init_tree_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_flow_namespace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.init_tree_node*, align 8
  %8 = alloca %struct.fs_prio*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_flow_namespace* %0, %struct.mlx5_flow_namespace** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.init_tree_node* %2, %struct.init_tree_node** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %31, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.init_tree_node*, %struct.init_tree_node** %7, align 8
  %13 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load %struct.init_tree_node*, %struct.init_tree_node** %7, align 8
  %21 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.fs_prio* @fs_create_prio(%struct.mlx5_flow_namespace* %17, i32 %18, i32 %22)
  store %struct.fs_prio* %23, %struct.fs_prio** %8, align 8
  %24 = load %struct.fs_prio*, %struct.fs_prio** %8, align 8
  %25 = call i64 @IS_ERR(%struct.fs_prio* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load %struct.fs_prio*, %struct.fs_prio** %8, align 8
  %29 = call i32 @PTR_ERR(%struct.fs_prio* %28)
  store i32 %29, i32* %4, align 4
  br label %35

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %10

34:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.fs_prio* @fs_create_prio(%struct.mlx5_flow_namespace*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.fs_prio*) #1

declare dso_local i32 @PTR_ERR(%struct.fs_prio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
