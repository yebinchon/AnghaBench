; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_lag_get_roce_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_lag_get_roce_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_lag = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@lag_mutex = common dso_local global i32 0, align 4
@NETDEV_LAG_TX_TYPE_ACTIVEBACKUP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @mlx5_lag_get_roce_netdev(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlx5_lag*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  store %struct.net_device* null, %struct.net_device** %3, align 8
  %5 = call i32 @mutex_lock(i32* @lag_mutex)
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %7 = call %struct.mlx5_lag* @mlx5_lag_dev_get(%struct.mlx5_core_dev* %6)
  store %struct.mlx5_lag* %7, %struct.mlx5_lag** %4, align 8
  %8 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %9 = icmp ne %struct.mlx5_lag* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %12 = call i64 @__mlx5_lag_is_roce(%struct.mlx5_lag* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %1
  br label %61

15:                                               ; preds = %10
  %16 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NETDEV_LAG_TX_TYPE_ACTIVEBACKUP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %15
  %23 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.net_device*, %struct.net_device** %36, align 8
  br label %45

38:                                               ; preds = %22
  %39 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.net_device*, %struct.net_device** %43, align 8
  br label %45

45:                                               ; preds = %38, %31
  %46 = phi %struct.net_device* [ %37, %31 ], [ %44, %38 ]
  store %struct.net_device* %46, %struct.net_device** %3, align 8
  br label %54

47:                                               ; preds = %15
  %48 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %49 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.net_device*, %struct.net_device** %52, align 8
  store %struct.net_device* %53, %struct.net_device** %3, align 8
  br label %54

54:                                               ; preds = %47, %45
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = icmp ne %struct.net_device* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @dev_hold(%struct.net_device* %58)
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %14
  %62 = call i32 @mutex_unlock(i32* @lag_mutex)
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %63
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mlx5_lag* @mlx5_lag_dev_get(%struct.mlx5_core_dev*) #1

declare dso_local i64 @__mlx5_lag_is_roce(%struct.mlx5_lag*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
