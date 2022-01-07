; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_dest_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_dest_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_destination = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mlx5_flow_table = type { i64 }

@MLX5_FLOW_DESTINATION_TYPE_COUNTER = common dso_local global i64 0, align 8
@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_destination*, i32, %struct.mlx5_flow_table*)* @dest_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dest_is_valid(%struct.mlx5_flow_destination* %0, i32 %1, %struct.mlx5_flow_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_flow_destination*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_flow_table*, align 8
  store %struct.mlx5_flow_destination* %0, %struct.mlx5_flow_destination** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx5_flow_table* %2, %struct.mlx5_flow_table** %7, align 8
  %8 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %9 = icmp ne %struct.mlx5_flow_destination* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MLX5_FLOW_DESTINATION_TYPE_COUNTER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @counter_is_valid(i32 %17)
  store i32 %18, i32* %4, align 4
  br label %46

19:                                               ; preds = %10, %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %46

25:                                               ; preds = %19
  %26 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %27 = icmp ne %struct.mlx5_flow_destination* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %5, align 8
  %36 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %41 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34, %25
  store i32 0, i32* %4, align 4
  br label %46

45:                                               ; preds = %34, %28
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %44, %24, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @counter_is_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
