; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_health.c_mlx5e_health_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_health.c_mlx5e_health_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.devlink_health_reporter = type { i32 }
%struct.mlx5e_err_ctx = type { i32 (i32*)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_health_report(%struct.mlx5e_priv* %0, %struct.devlink_health_reporter* %1, i8* %2, %struct.mlx5e_err_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.devlink_health_reporter*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mlx5e_err_ctx*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %6, align 8
  store %struct.devlink_health_reporter* %1, %struct.devlink_health_reporter** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.mlx5e_err_ctx* %3, %struct.mlx5e_err_ctx** %9, align 8
  %10 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %11 = icmp ne %struct.devlink_health_reporter* %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %4
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @netdev_err(i32 %15, i8* %16)
  %18 = load %struct.mlx5e_err_ctx*, %struct.mlx5e_err_ctx** %9, align 8
  %19 = getelementptr inbounds %struct.mlx5e_err_ctx, %struct.mlx5e_err_ctx* %18, i32 0, i32 0
  %20 = load i32 (i32*)*, i32 (i32*)** %19, align 8
  %21 = load %struct.mlx5e_err_ctx*, %struct.mlx5e_err_ctx** %9, align 8
  %22 = getelementptr inbounds %struct.mlx5e_err_ctx, %struct.mlx5e_err_ctx* %21, i32 0, i32 1
  %23 = call i32 %20(i32* %22)
  store i32 %23, i32* %5, align 4
  br label %29

24:                                               ; preds = %4
  %25 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.mlx5e_err_ctx*, %struct.mlx5e_err_ctx** %9, align 8
  %28 = call i32 @devlink_health_report(%struct.devlink_health_reporter* %25, i8* %26, %struct.mlx5e_err_ctx* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %12
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @devlink_health_report(%struct.devlink_health_reporter*, i8*, %struct.mlx5e_err_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
