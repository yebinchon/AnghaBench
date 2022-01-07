; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_lag_dev_remove_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_lag_dev_remove_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_lag = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@MLX5_MAX_PORTS = common dso_local global i32 0, align 4
@lag_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_lag*, %struct.mlx5_core_dev*)* @mlx5_lag_dev_remove_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_lag_dev_remove_pf(%struct.mlx5_lag* %0, %struct.mlx5_core_dev* %1) #0 {
  %3 = alloca %struct.mlx5_lag*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_lag* %0, %struct.mlx5_lag** %3, align 8
  store %struct.mlx5_core_dev* %1, %struct.mlx5_core_dev** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %23, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MLX5_MAX_PORTS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %17, align 8
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %20 = icmp eq %struct.mlx5_core_dev* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %26

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %6

26:                                               ; preds = %21, %6
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MLX5_MAX_PORTS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %44

31:                                               ; preds = %26
  %32 = call i32 @mutex_lock(i32* @lag_mutex)
  %33 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = call i32 @memset(%struct.TYPE_4__* %38, i32 0, i32 8)
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = call i32 @mutex_unlock(i32* @lag_mutex)
  br label %44

44:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
