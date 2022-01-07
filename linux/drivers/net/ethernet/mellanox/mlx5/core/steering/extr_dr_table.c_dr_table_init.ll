; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_table.c_dr_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_table.c_dr_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_table = type { %struct.TYPE_5__*, %struct.TYPE_6__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32* }

@MLX5_FLOW_TABLE_TYPE_NIC_RX = common dso_local global i32 0, align 4
@MLX5_FLOW_TABLE_TYPE_NIC_TX = common dso_local global i32 0, align 4
@MLX5_FLOW_TABLE_TYPE_FDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_table*)* @dr_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_table_init(%struct.mlx5dr_table* %0) #0 {
  %2 = alloca %struct.mlx5dr_table*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx5dr_table* %0, %struct.mlx5dr_table** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %4, i32 0, i32 4
  %6 = call i32 @INIT_LIST_HEAD(i32* %5)
  %7 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %75 [
    i32 129, label %17
    i32 128, label %35
    i32 130, label %53
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @MLX5_FLOW_TABLE_TYPE_NIC_RX, align 4
  %19 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %20 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32* %25, i32** %28, align 8
  %29 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %30 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %33 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %32, i32 0, i32 2
  %34 = call i32 @dr_table_init_nic(%struct.TYPE_5__* %31, %struct.TYPE_6__* %33)
  store i32 %34, i32* %3, align 4
  br label %77

35:                                               ; preds = %1
  %36 = load i32, i32* @MLX5_FLOW_TABLE_TYPE_NIC_TX, align 4
  %37 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %38 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %40 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %45 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32* %43, i32** %46, align 8
  %47 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %48 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %51 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %50, i32 0, i32 1
  %52 = call i32 @dr_table_init_nic(%struct.TYPE_5__* %49, %struct.TYPE_6__* %51)
  store i32 %52, i32* %3, align 4
  br label %77

53:                                               ; preds = %1
  %54 = load i32, i32* @MLX5_FLOW_TABLE_TYPE_FDB, align 4
  %55 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %56 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %58 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %63 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32* %61, i32** %64, align 8
  %65 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %66 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %71 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32* %69, i32** %72, align 8
  %73 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %74 = call i32 @dr_table_init_fdb(%struct.mlx5dr_table* %73)
  store i32 %74, i32* %3, align 4
  br label %77

75:                                               ; preds = %1
  %76 = call i32 @WARN_ON(i32 1)
  br label %77

77:                                               ; preds = %75, %53, %35, %17
  %78 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %2, align 8
  %79 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dr_table_init_nic(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @dr_table_init_fdb(%struct.mlx5dr_table*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
