; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_connect_flow_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_connect_flow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_flow_table = type { i32 }
%struct.fs_prio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@flow_table_properties_nic_receive = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_flow_table*, %struct.fs_prio*)* @connect_flow_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_flow_table(%struct.mlx5_core_dev* %0, %struct.mlx5_flow_table* %1, %struct.fs_prio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_flow_table*, align 8
  %7 = alloca %struct.fs_prio*, align 8
  %8 = alloca %struct.mlx5_flow_table*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table** %6, align 8
  store %struct.fs_prio* %2, %struct.fs_prio** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.fs_prio*, %struct.fs_prio** %7, align 8
  %11 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i64 @list_empty(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %3
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %17 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %18 = load %struct.fs_prio*, %struct.fs_prio** %7, align 8
  %19 = call i32 @connect_prev_fts(%struct.mlx5_core_dev* %16, %struct.mlx5_flow_table* %17, %struct.fs_prio* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %47

24:                                               ; preds = %15
  %25 = load %struct.fs_prio*, %struct.fs_prio** %7, align 8
  %26 = call %struct.mlx5_flow_table* @find_next_chained_ft(%struct.fs_prio* %25)
  store %struct.mlx5_flow_table* %26, %struct.mlx5_flow_table** %8, align 8
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %28 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %29 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %30 = call i32 @connect_fwd_rules(%struct.mlx5_core_dev* %27, %struct.mlx5_flow_table* %28, %struct.mlx5_flow_table* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %47

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @flow_table_properties_nic_receive, i32 0, i32 0), align 4
  %39 = call i64 @MLX5_CAP_FLOWTABLE(%struct.mlx5_core_dev* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %43 = load %struct.fs_prio*, %struct.fs_prio** %7, align 8
  %44 = call i32 @update_root_ft_create(%struct.mlx5_flow_table* %42, %struct.fs_prio* %43)
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %33, %22
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @connect_prev_fts(%struct.mlx5_core_dev*, %struct.mlx5_flow_table*, %struct.fs_prio*) #1

declare dso_local %struct.mlx5_flow_table* @find_next_chained_ft(%struct.fs_prio*) #1

declare dso_local i32 @connect_fwd_rules(%struct.mlx5_core_dev*, %struct.mlx5_flow_table*, %struct.mlx5_flow_table*) #1

declare dso_local i64 @MLX5_CAP_FLOWTABLE(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @update_root_ft_create(%struct.mlx5_flow_table*, %struct.fs_prio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
