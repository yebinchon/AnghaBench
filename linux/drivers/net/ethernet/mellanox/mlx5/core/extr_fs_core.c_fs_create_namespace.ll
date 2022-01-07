; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_fs_create_namespace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_fs_create_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_namespace = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fs_prio = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@del_sw_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_namespace* (%struct.fs_prio*, i32)* @fs_create_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_namespace* @fs_create_namespace(%struct.fs_prio* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_flow_namespace*, align 8
  %4 = alloca %struct.fs_prio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_flow_namespace*, align 8
  store %struct.fs_prio* %0, %struct.fs_prio** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mlx5_flow_namespace* @kzalloc(i32 8, i32 %7)
  store %struct.mlx5_flow_namespace* %8, %struct.mlx5_flow_namespace** %6, align 8
  %9 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %6, align 8
  %10 = icmp ne %struct.mlx5_flow_namespace* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.mlx5_flow_namespace* @ERR_PTR(i32 %13)
  store %struct.mlx5_flow_namespace* %14, %struct.mlx5_flow_namespace** %3, align 8
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %6, align 8
  %17 = call i32 @fs_init_namespace(%struct.mlx5_flow_namespace* %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %6, align 8
  %22 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %21, i32 0, i32 1
  %23 = load i32, i32* @del_sw_ns, align 4
  %24 = call i32 @tree_init_node(%struct.TYPE_4__* %22, i32* null, i32 %23)
  %25 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %6, align 8
  %26 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %25, i32 0, i32 1
  %27 = load %struct.fs_prio*, %struct.fs_prio** %4, align 8
  %28 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %27, i32 0, i32 0
  %29 = call i32 @tree_add_node(%struct.TYPE_4__* %26, %struct.TYPE_5__* %28)
  %30 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %6, align 8
  %31 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.fs_prio*, %struct.fs_prio** %4, align 8
  %34 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @list_add_tail(i32* %32, i32* %35)
  %37 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %6, align 8
  store %struct.mlx5_flow_namespace* %37, %struct.mlx5_flow_namespace** %3, align 8
  br label %38

38:                                               ; preds = %15, %11
  %39 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %3, align 8
  ret %struct.mlx5_flow_namespace* %39
}

declare dso_local %struct.mlx5_flow_namespace* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_flow_namespace* @ERR_PTR(i32) #1

declare dso_local i32 @fs_init_namespace(%struct.mlx5_flow_namespace*) #1

declare dso_local i32 @tree_init_node(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @tree_add_node(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
