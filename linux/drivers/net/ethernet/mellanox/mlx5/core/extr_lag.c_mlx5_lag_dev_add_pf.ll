; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_lag_dev_add_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_lag_dev_add_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_lag = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.net_device*, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.mlx5_lag* }
%struct.TYPE_10__ = type { i32 }
%struct.net_device = type { i32 }

@MLX5_MAX_PORTS = common dso_local global i32 0, align 4
@lag_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_lag*, %struct.mlx5_core_dev*, %struct.net_device*)* @mlx5_lag_dev_add_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_lag_dev_add_pf(%struct.mlx5_lag* %0, %struct.mlx5_core_dev* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.mlx5_lag*, align 8
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_lag* %0, %struct.mlx5_lag** %4, align 8
  store %struct.mlx5_core_dev* %1, %struct.mlx5_core_dev** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @PCI_FUNC(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MLX5_MAX_PORTS, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %57

18:                                               ; preds = %3
  %19 = call i32 @mutex_lock(i32* @lag_mutex)
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %21 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store %struct.mlx5_core_dev* %20, %struct.mlx5_core_dev** %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store %struct.net_device* %28, %struct.net_device** %35, align 8
  %36 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.mlx5_lag*, %struct.mlx5_lag** %4, align 8
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %54 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store %struct.mlx5_lag* %52, %struct.mlx5_lag** %55, align 8
  %56 = call i32 @mutex_unlock(i32* @lag_mutex)
  br label %57

57:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
