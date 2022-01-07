; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_reporter_rx_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_reporter_rx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.devlink_health_reporter*, i32, i32 }
%struct.devlink_health_reporter = type { i32 }
%struct.devlink = type { i32 }

@mlx5_rx_reporter_ops = common dso_local global i32 0, align 4
@MLX5E_REPORTER_RX_GRACEFUL_PERIOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to create rx reporter, err = %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_reporter_rx_create(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca %struct.devlink_health_reporter*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.devlink* @priv_to_devlink(i32 %8)
  store %struct.devlink* %9, %struct.devlink** %4, align 8
  %10 = load %struct.devlink*, %struct.devlink** %4, align 8
  %11 = load i32, i32* @MLX5E_REPORTER_RX_GRACEFUL_PERIOD, align 4
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %13 = call %struct.devlink_health_reporter* @devlink_health_reporter_create(%struct.devlink* %10, i32* @mlx5_rx_reporter_ops, i32 %11, i32 1, %struct.mlx5e_priv* %12)
  store %struct.devlink_health_reporter* %13, %struct.devlink_health_reporter** %5, align 8
  %14 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %15 = call i64 @IS_ERR(%struct.devlink_health_reporter* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %22 = call i32 @PTR_ERR(%struct.devlink_health_reporter* %21)
  %23 = call i32 @netdev_warn(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %25 = call i32 @PTR_ERR(%struct.devlink_health_reporter* %24)
  store i32 %25, i32* %2, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %28, i32 0, i32 0
  store %struct.devlink_health_reporter* %27, %struct.devlink_health_reporter** %29, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.devlink* @priv_to_devlink(i32) #1

declare dso_local %struct.devlink_health_reporter* @devlink_health_reporter_create(%struct.devlink*, i32*, i32, i32, %struct.mlx5e_priv*) #1

declare dso_local i64 @IS_ERR(%struct.devlink_health_reporter*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.devlink_health_reporter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
