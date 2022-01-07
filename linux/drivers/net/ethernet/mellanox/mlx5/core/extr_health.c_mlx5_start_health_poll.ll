; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_mlx5_start_health_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_mlx5_start_health_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.mlx5_core_health }
%struct.mlx5_core_health = type { %struct.TYPE_7__, i32*, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@poll_health = common dso_local global i32 0, align 4
@MLX5_SENSOR_NO_ERR = common dso_local global i32 0, align 4
@MLX5_DROP_NEW_HEALTH_WORK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MLX5_HEALTH_POLL_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_start_health_poll(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_core_health*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store %struct.mlx5_core_health* %6, %struct.mlx5_core_health** %3, align 8
  %7 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %7, i32 0, i32 0
  %9 = load i32, i32* @poll_health, align 4
  %10 = call i32 @timer_setup(%struct.TYPE_7__* %8, i32 %9, i32 0)
  %11 = load i32, i32* @MLX5_SENSOR_NO_ERR, align 4
  %12 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @MLX5_DROP_NEW_HEALTH_WORK, align 4
  %15 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %15, i32 0, i32 3
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* @MLX5_HEALTH_POLL_INTERVAL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @round_jiffies(i64 %32)
  %34 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %35 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.mlx5_core_health*, %struct.mlx5_core_health** %3, align 8
  %38 = getelementptr inbounds %struct.mlx5_core_health, %struct.mlx5_core_health* %37, i32 0, i32 0
  %39 = call i32 @add_timer(%struct.TYPE_7__* %38)
  ret void
}

declare dso_local i32 @timer_setup(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
