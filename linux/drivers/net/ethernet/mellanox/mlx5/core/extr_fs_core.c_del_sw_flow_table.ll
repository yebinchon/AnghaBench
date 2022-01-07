; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_del_sw_flow_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_del_sw_flow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_node = type { i32 }
%struct.mlx5_flow_table = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.fs_node* }
%struct.fs_prio = type { i32, %struct.TYPE_2__, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_node*)* @del_sw_flow_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_sw_flow_table(%struct.fs_node* %0) #0 {
  %2 = alloca %struct.fs_node*, align 8
  %3 = alloca %struct.mlx5_flow_table*, align 8
  %4 = alloca %struct.fs_prio*, align 8
  store %struct.fs_node* %0, %struct.fs_node** %2, align 8
  %5 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %6 = load %struct.fs_node*, %struct.fs_node** %2, align 8
  %7 = call i32 @fs_get_obj(%struct.mlx5_flow_table* %5, %struct.fs_node* %6)
  %8 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %8, i32 0, i32 2
  %10 = call i32 @rhltable_destroy(i32* %9)
  %11 = load %struct.fs_prio*, %struct.fs_prio** %4, align 8
  %12 = bitcast %struct.fs_prio* %11 to %struct.mlx5_flow_table*
  %13 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.fs_node*, %struct.fs_node** %15, align 8
  %17 = call i32 @fs_get_obj(%struct.mlx5_flow_table* %12, %struct.fs_node* %16)
  %18 = load %struct.fs_prio*, %struct.fs_prio** %4, align 8
  %19 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 8
  %22 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %23 = call i32 @kfree(%struct.mlx5_flow_table* %22)
  ret void
}

declare dso_local i32 @fs_get_obj(%struct.mlx5_flow_table*, %struct.fs_node*) #1

declare dso_local i32 @rhltable_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_flow_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
