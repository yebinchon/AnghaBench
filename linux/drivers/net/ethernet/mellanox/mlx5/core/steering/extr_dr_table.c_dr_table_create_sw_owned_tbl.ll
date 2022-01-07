; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_table.c_dr_table_create_sw_owned_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_table.c_dr_table_create_sw_owned_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_table = type { i32, %struct.TYPE_18__*, i32, %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_table*)* @dr_table_create_sw_owned_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_table_create_sw_owned_tbl(%struct.mlx5dr_table* %0) #0 {
  %2 = alloca %struct.mlx5dr_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx5dr_table* %0, %struct.mlx5dr_table** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = icmp ne %struct.TYPE_14__* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %26, %20
  %36 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %37 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %36, i32 0, i32 1
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %42 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %47 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %46, i32 0, i32 1
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, 1
  %54 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %55 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %54, i32 0, i32 0
  %56 = call i32 @mlx5dr_cmd_create_flow_table(i32 %40, i32 %43, i32 %44, i32 %45, i64 %53, i32 1, i32 0, i32* null, i32* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @mlx5dr_cmd_create_flow_table(i32, i32, i32, i32, i64, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
