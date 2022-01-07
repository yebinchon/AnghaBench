; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c__fs_create_prio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c__fs_create_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_prio = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx5_flow_namespace = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@del_sw_prio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fs_prio* (%struct.mlx5_flow_namespace*, i32, i32, i32)* @_fs_create_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fs_prio* @_fs_create_prio(%struct.mlx5_flow_namespace* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fs_prio*, align 8
  %6 = alloca %struct.mlx5_flow_namespace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fs_prio*, align 8
  store %struct.mlx5_flow_namespace* %0, %struct.mlx5_flow_namespace** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.fs_prio* @kzalloc(i32 16, i32 %11)
  store %struct.fs_prio* %12, %struct.fs_prio** %10, align 8
  %13 = load %struct.fs_prio*, %struct.fs_prio** %10, align 8
  %14 = icmp ne %struct.fs_prio* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.fs_prio* @ERR_PTR(i32 %17)
  store %struct.fs_prio* %18, %struct.fs_prio** %5, align 8
  br label %47

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.fs_prio*, %struct.fs_prio** %10, align 8
  %22 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.fs_prio*, %struct.fs_prio** %10, align 8
  %25 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %24, i32 0, i32 2
  %26 = load i32, i32* @del_sw_prio, align 4
  %27 = call i32 @tree_init_node(%struct.TYPE_4__* %25, i32* null, i32 %26)
  %28 = load %struct.fs_prio*, %struct.fs_prio** %10, align 8
  %29 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %28, i32 0, i32 2
  %30 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %6, align 8
  %31 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %30, i32 0, i32 0
  %32 = call i32 @tree_add_node(%struct.TYPE_4__* %29, %struct.TYPE_5__* %31)
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.fs_prio*, %struct.fs_prio** %10, align 8
  %35 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.fs_prio*, %struct.fs_prio** %10, align 8
  %38 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.fs_prio*, %struct.fs_prio** %10, align 8
  %40 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %6, align 8
  %43 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @list_add_tail(i32* %41, i32* %44)
  %46 = load %struct.fs_prio*, %struct.fs_prio** %10, align 8
  store %struct.fs_prio* %46, %struct.fs_prio** %5, align 8
  br label %47

47:                                               ; preds = %19, %15
  %48 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  ret %struct.fs_prio* %48
}

declare dso_local %struct.fs_prio* @kzalloc(i32, i32) #1

declare dso_local %struct.fs_prio* @ERR_PTR(i32) #1

declare dso_local i32 @tree_init_node(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @tree_add_node(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
