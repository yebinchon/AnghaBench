; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mlx5_eq_table* }
%struct.mlx5_eq_table = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_EVENT_TYPE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_eq_table_init(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_eq_table*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mlx5_eq_table* @kvzalloc(i32 24, i32 %6)
  store %struct.mlx5_eq_table* %7, %struct.mlx5_eq_table** %4, align 8
  %8 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %4, align 8
  %9 = icmp ne %struct.mlx5_eq_table* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %4, align 8
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.mlx5_eq_table* %14, %struct.mlx5_eq_table** %17, align 8
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %19 = call i32 @mlx5_eq_debugfs_init(%struct.mlx5_core_dev* %18)
  %20 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %20, i32 0, i32 2
  %22 = call i32 @mutex_init(i32* %21)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %35, %13
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MLX5_EVENT_TYPE_MAX, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @ATOMIC_INIT_NOTIFIER_HEAD(i32* %33)
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %38, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.mlx5_eq_table* @kvzalloc(i32, i32) #1

declare dso_local i32 @mlx5_eq_debugfs_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ATOMIC_INIT_NOTIFIER_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
