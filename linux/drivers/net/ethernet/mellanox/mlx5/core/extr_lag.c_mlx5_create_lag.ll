; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_create_lag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_create_lag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_lag = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.lag_tracker = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"lag map port 1:%d port 2:%d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to create LAG (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_lag*, %struct.lag_tracker*)* @mlx5_create_lag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_create_lag(%struct.mlx5_lag* %0, %struct.lag_tracker* %1) #0 {
  %3 = alloca %struct.mlx5_lag*, align 8
  %4 = alloca %struct.lag_tracker*, align 8
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_lag* %0, %struct.mlx5_lag** %3, align 8
  store %struct.lag_tracker* %1, %struct.lag_tracker** %4, align 8
  %7 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %5, align 8
  %13 = load %struct.lag_tracker*, %struct.lag_tracker** %4, align 8
  %14 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = call i32 @mlx5_infer_tx_affinity_mapping(%struct.lag_tracker* %13, i32* %17, i32* %21)
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %24 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mlx5_core_info(%struct.mlx5_core_dev* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %33)
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %36 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %42 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mlx5_cmd_create_lag(%struct.mlx5_core_dev* %35, i32 %40, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %2
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %2
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @mlx5_infer_tx_affinity_mapping(%struct.lag_tracker*, i32*, i32*) #1

declare dso_local i32 @mlx5_core_info(%struct.mlx5_core_dev*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_create_lag(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
