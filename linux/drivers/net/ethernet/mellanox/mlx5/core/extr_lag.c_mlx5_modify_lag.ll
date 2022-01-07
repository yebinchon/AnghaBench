; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_modify_lag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_modify_lag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_lag = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.lag_tracker = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"modify lag map port 1:%d port 2:%d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to modify LAG (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_modify_lag(%struct.mlx5_lag* %0, %struct.lag_tracker* %1) #0 {
  %3 = alloca %struct.mlx5_lag*, align 8
  %4 = alloca %struct.lag_tracker*, align 8
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_lag* %0, %struct.mlx5_lag** %3, align 8
  store %struct.lag_tracker* %1, %struct.lag_tracker** %4, align 8
  %9 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  store %struct.mlx5_core_dev* %14, %struct.mlx5_core_dev** %5, align 8
  %15 = load %struct.lag_tracker*, %struct.lag_tracker** %4, align 8
  %16 = call i32 @mlx5_infer_tx_affinity_mapping(%struct.lag_tracker* %15, i64* %6, i64* %7)
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %17, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %25, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %24, %2
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %35 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  store i64 %33, i64* %37, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  store i64 %38, i64* %42, align 8
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %44 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %45 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @mlx5_core_info(%struct.mlx5_core_dev* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %53)
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @mlx5_cmd_modify_lag(%struct.mlx5_core_dev* %55, i64 %56, i64 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %32
  %62 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %32
  br label %66

66:                                               ; preds = %65, %24
  ret void
}

declare dso_local i32 @mlx5_infer_tx_affinity_mapping(%struct.lag_tracker*, i64*, i64*) #1

declare dso_local i32 @mlx5_core_info(%struct.mlx5_core_dev*, i8*, i64, i64) #1

declare dso_local i32 @mlx5_cmd_modify_lag(%struct.mlx5_core_dev*, i64, i64) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
