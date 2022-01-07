; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_activate_lag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_activate_lag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_lag = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.lag_tracker = type { i32 }

@MLX5_LAG_FLAG_ROCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to activate RoCE LAG\0A\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"Failed to activate VF LAG\0AMake sure all VFs are unbound prior to VF LAG activation or deactivation\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_activate_lag(%struct.mlx5_lag* %0, %struct.lag_tracker* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_lag*, align 8
  %6 = alloca %struct.lag_tracker*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5_lag* %0, %struct.mlx5_lag** %5, align 8
  store %struct.lag_tracker* %1, %struct.lag_tracker** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @MLX5_LAG_FLAG_ROCE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.mlx5_lag*, %struct.mlx5_lag** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %22, align 8
  store %struct.mlx5_core_dev* %23, %struct.mlx5_core_dev** %9, align 8
  %24 = load %struct.mlx5_lag*, %struct.mlx5_lag** %5, align 8
  %25 = load %struct.lag_tracker*, %struct.lag_tracker** %6, align 8
  %26 = call i32 @mlx5_create_lag(%struct.mlx5_lag* %24, %struct.lag_tracker* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %34 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %38

35:                                               ; preds = %29
  %36 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %37 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %36, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %46

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.mlx5_lag*, %struct.mlx5_lag** %5, align 8
  %43 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %40, %38
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @mlx5_create_lag(%struct.mlx5_lag*, %struct.lag_tracker*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
