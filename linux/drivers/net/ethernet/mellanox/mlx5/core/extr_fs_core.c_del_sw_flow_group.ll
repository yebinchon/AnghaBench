; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_del_sw_flow_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_del_sw_flow_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_node = type { i32 }
%struct.mlx5_flow_steering = type { i32 }
%struct.mlx5_flow_group = type { i32, i32, %struct.TYPE_3__, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.fs_node* }
%struct.mlx5_flow_table = type { i32, i32, %struct.TYPE_3__, i32, i32, %struct.TYPE_4__ }

@rhash_fg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_node*)* @del_sw_flow_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_sw_flow_group(%struct.fs_node* %0) #0 {
  %2 = alloca %struct.fs_node*, align 8
  %3 = alloca %struct.mlx5_flow_steering*, align 8
  %4 = alloca %struct.mlx5_flow_group*, align 8
  %5 = alloca %struct.mlx5_flow_table*, align 8
  %6 = alloca i32, align 4
  store %struct.fs_node* %0, %struct.fs_node** %2, align 8
  %7 = load %struct.fs_node*, %struct.fs_node** %2, align 8
  %8 = call %struct.mlx5_flow_steering* @get_steering(%struct.fs_node* %7)
  store %struct.mlx5_flow_steering* %8, %struct.mlx5_flow_steering** %3, align 8
  %9 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %10 = bitcast %struct.mlx5_flow_group* %9 to %struct.mlx5_flow_table*
  %11 = load %struct.fs_node*, %struct.fs_node** %2, align 8
  %12 = call i32 @fs_get_obj(%struct.mlx5_flow_table* %10, %struct.fs_node* %11)
  %13 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %14 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.fs_node*, %struct.fs_node** %16, align 8
  %18 = call i32 @fs_get_obj(%struct.mlx5_flow_table* %13, %struct.fs_node* %17)
  %19 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %19, i32 0, i32 4
  %21 = call i32 @rhashtable_destroy(i32* %20)
  %22 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %22, i32 0, i32 3
  %24 = call i32 @ida_destroy(i32* %23)
  %25 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %30, %1
  %37 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %37, i32 0, i32 1
  %39 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %39, i32 0, i32 0
  %41 = load i32, i32* @rhash_fg, align 4
  %42 = call i32 @rhltable_remove(i32* %38, i32* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %46 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %49 = bitcast %struct.mlx5_flow_group* %48 to %struct.mlx5_flow_table*
  %50 = call i32 @kmem_cache_free(i32 %47, %struct.mlx5_flow_table* %49)
  ret void
}

declare dso_local %struct.mlx5_flow_steering* @get_steering(%struct.fs_node*) #1

declare dso_local i32 @fs_get_obj(%struct.mlx5_flow_table*, %struct.fs_node*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @ida_destroy(i32*) #1

declare dso_local i32 @rhltable_remove(i32*, i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.mlx5_flow_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
