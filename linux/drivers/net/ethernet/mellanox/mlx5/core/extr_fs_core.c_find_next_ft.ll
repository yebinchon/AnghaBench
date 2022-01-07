; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_find_next_ft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_find_next_ft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.mlx5_flow_table = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fs_prio = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@node = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_table* (%struct.mlx5_flow_table*)* @find_next_ft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_table* @find_next_ft(%struct.mlx5_flow_table* %0) #0 {
  %2 = alloca %struct.mlx5_flow_table*, align 8
  %3 = alloca %struct.mlx5_flow_table*, align 8
  %4 = alloca %struct.fs_prio*, align 8
  store %struct.mlx5_flow_table* %0, %struct.mlx5_flow_table** %3, align 8
  %5 = load %struct.fs_prio*, %struct.fs_prio** %4, align 8
  %6 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @fs_get_obj(%struct.fs_prio* %5, i32 %9)
  %11 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.fs_prio*, %struct.fs_prio** %4, align 8
  %15 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i32 @list_is_last(i32* %13, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %3, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node, i32 0, i32 0), align 4
  %22 = call %struct.mlx5_flow_table* @list_next_entry(%struct.mlx5_flow_table* %20, i32 %21)
  store %struct.mlx5_flow_table* %22, %struct.mlx5_flow_table** %2, align 8
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.fs_prio*, %struct.fs_prio** %4, align 8
  %25 = call %struct.mlx5_flow_table* @find_next_chained_ft(%struct.fs_prio* %24)
  store %struct.mlx5_flow_table* %25, %struct.mlx5_flow_table** %2, align 8
  br label %26

26:                                               ; preds = %23, %19
  %27 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %2, align 8
  ret %struct.mlx5_flow_table* %27
}

declare dso_local i32 @fs_get_obj(%struct.fs_prio*, i32) #1

declare dso_local i32 @list_is_last(i32*, i32*) #1

declare dso_local %struct.mlx5_flow_table* @list_next_entry(%struct.mlx5_flow_table*, i32) #1

declare dso_local %struct.mlx5_flow_table* @find_next_chained_ft(%struct.fs_prio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
