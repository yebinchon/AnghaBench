; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_table.c_mlx5dr_table_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_table.c_mlx5dr_table_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_table = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_table_destroy(%struct.mlx5dr_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5dr_table*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5dr_table* %0, %struct.mlx5dr_table** %3, align 8
  %5 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %5, i32 0, i32 2
  %7 = call i32 @refcount_read(i32* %6)
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %3, align 8
  %14 = call i32 @dr_table_destroy_sw_owned_tbl(%struct.mlx5dr_table* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %41

19:                                               ; preds = %12
  %20 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %3, align 8
  %21 = call i32 @dr_table_uninit(%struct.mlx5dr_table* %20)
  %22 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @refcount_dec(i32* %30)
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @refcount_dec(i32* %36)
  %38 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %3, align 8
  %39 = call i32 @kfree(%struct.mlx5dr_table* %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %32, %17, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @dr_table_destroy_sw_owned_tbl(%struct.mlx5dr_table*) #1

declare dso_local i32 @dr_table_uninit(%struct.mlx5dr_table*) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5dr_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
