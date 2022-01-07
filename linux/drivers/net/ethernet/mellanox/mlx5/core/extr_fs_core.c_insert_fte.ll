; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_insert_fte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_insert_fte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_group = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fs_fte = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@rhash_fte = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_group*, %struct.fs_fte*)* @insert_fte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_fte(%struct.mlx5_flow_group* %0, %struct.fs_fte* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_flow_group*, align 8
  %5 = alloca %struct.fs_fte*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_flow_group* %0, %struct.mlx5_flow_group** %4, align 8
  store %struct.fs_fte* %1, %struct.fs_fte** %5, align 8
  %8 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %8, i32 0, i32 1
  %10 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @ida_simple_get(i32* %9, i32 0, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %55

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %26 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %27, i32 0, i32 3
  %29 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %30 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %29, i32 0, i32 2
  %31 = load i32, i32* @rhash_fte, align 4
  %32 = call i32 @rhashtable_insert_fast(i32* %28, i32* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  br label %49

36:                                               ; preds = %19
  %37 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %38 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %37, i32 0, i32 1
  %39 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %39, i32 0, i32 2
  %41 = call i32 @tree_add_node(%struct.TYPE_3__* %38, %struct.TYPE_4__* %40)
  %42 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %43 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @list_add_tail(i32* %44, i32* %47)
  store i32 0, i32* %3, align 4
  br label %55

49:                                               ; preds = %35
  %50 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %51 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %50, i32 0, i32 1
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ida_simple_remove(i32* %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %36, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @tree_add_node(%struct.TYPE_3__*, %struct.TYPE_4__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
