; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag_mp.c_mlx5_lag_mp_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag_mp.c_mlx5_lag_mp_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_lag = type { %struct.lag_mp }
%struct.lag_mp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_lag_mp_cleanup(%struct.mlx5_lag* %0) #0 {
  %2 = alloca %struct.mlx5_lag*, align 8
  %3 = alloca %struct.lag_mp*, align 8
  store %struct.mlx5_lag* %0, %struct.mlx5_lag** %2, align 8
  %4 = load %struct.mlx5_lag*, %struct.mlx5_lag** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %4, i32 0, i32 0
  store %struct.lag_mp* %5, %struct.lag_mp** %3, align 8
  %6 = load %struct.lag_mp*, %struct.lag_mp** %3, align 8
  %7 = getelementptr inbounds %struct.lag_mp, %struct.lag_mp* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.lag_mp*, %struct.lag_mp** %3, align 8
  %14 = getelementptr inbounds %struct.lag_mp, %struct.lag_mp* %13, i32 0, i32 0
  %15 = call i32 @unregister_fib_notifier(%struct.TYPE_2__* %14)
  %16 = load %struct.lag_mp*, %struct.lag_mp** %3, align 8
  %17 = getelementptr inbounds %struct.lag_mp, %struct.lag_mp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @unregister_fib_notifier(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
