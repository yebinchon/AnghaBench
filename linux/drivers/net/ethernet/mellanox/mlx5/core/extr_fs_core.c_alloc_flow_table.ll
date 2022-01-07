; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_alloc_flow_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_alloc_flow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_table = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rhash_fg = common dso_local global i32 0, align 4
@FS_TYPE_FLOW_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_table* (i32, i32, i32, i32, i32, i32)* @alloc_flow_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_table* @alloc_flow_table(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mlx5_flow_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_flow_table*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mlx5_flow_table* @kzalloc(i32 40, i32 %16)
  store %struct.mlx5_flow_table* %17, %struct.mlx5_flow_table** %14, align 8
  %18 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %19 = icmp ne %struct.mlx5_flow_table* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.mlx5_flow_table* @ERR_PTR(i32 %22)
  store %struct.mlx5_flow_table* %23, %struct.mlx5_flow_table** %7, align 8
  br label %65

24:                                               ; preds = %6
  %25 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %26 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %25, i32 0, i32 9
  %27 = call i32 @rhltable_init(i32* %26, i32* @rhash_fg)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %32 = call i32 @kfree(%struct.mlx5_flow_table* %31)
  %33 = load i32, i32* %15, align 4
  %34 = call %struct.mlx5_flow_table* @ERR_PTR(i32 %33)
  store %struct.mlx5_flow_table* %34, %struct.mlx5_flow_table** %7, align 8
  br label %65

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %38 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @FS_TYPE_FLOW_TABLE, align 4
  %40 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %41 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %45 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %48 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %51 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %54 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %57 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %59 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %58, i32 0, i32 5
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %62 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %61, i32 0, i32 4
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  store %struct.mlx5_flow_table* %64, %struct.mlx5_flow_table** %7, align 8
  br label %65

65:                                               ; preds = %35, %30, %20
  %66 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  ret %struct.mlx5_flow_table* %66
}

declare dso_local %struct.mlx5_flow_table* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_flow_table* @ERR_PTR(i32) #1

declare dso_local i32 @rhltable_init(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_flow_table*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
