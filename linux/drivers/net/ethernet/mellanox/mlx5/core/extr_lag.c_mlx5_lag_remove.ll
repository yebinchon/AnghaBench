; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_lag_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_lag_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_lag = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@MLX5_MAX_PORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_lag_remove(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_lag*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %6 = call %struct.mlx5_lag* @mlx5_lag_dev_get(%struct.mlx5_core_dev* %5)
  store %struct.mlx5_lag* %6, %struct.mlx5_lag** %3, align 8
  %7 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %8 = icmp ne %struct.mlx5_lag* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %62

10:                                               ; preds = %1
  %11 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %12 = call i64 @__mlx5_lag_is_active(%struct.mlx5_lag* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %16 = call i32 @mlx5_deactivate_lag(%struct.mlx5_lag* %15)
  br label %17

17:                                               ; preds = %14, %10
  %18 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %20 = call i32 @mlx5_lag_dev_remove_pf(%struct.mlx5_lag* %18, %struct.mlx5_core_dev* %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %37, %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MLX5_MAX_PORTS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %40

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %21

40:                                               ; preds = %35, %21
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @MLX5_MAX_PORTS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %46 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %52 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %51, i32 0, i32 1
  %53 = call i32 @unregister_netdevice_notifier(%struct.TYPE_4__* %52)
  br label %54

54:                                               ; preds = %50, %44
  %55 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %56 = call i32 @mlx5_lag_mp_cleanup(%struct.mlx5_lag* %55)
  %57 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %58 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %57, i32 0, i32 0
  %59 = call i32 @cancel_delayed_work_sync(i32* %58)
  %60 = load %struct.mlx5_lag*, %struct.mlx5_lag** %3, align 8
  %61 = call i32 @mlx5_lag_dev_free(%struct.mlx5_lag* %60)
  br label %62

62:                                               ; preds = %9, %54, %40
  ret void
}

declare dso_local %struct.mlx5_lag* @mlx5_lag_dev_get(%struct.mlx5_core_dev*) #1

declare dso_local i64 @__mlx5_lag_is_active(%struct.mlx5_lag*) #1

declare dso_local i32 @mlx5_deactivate_lag(%struct.mlx5_lag*) #1

declare dso_local i32 @mlx5_lag_dev_remove_pf(%struct.mlx5_lag*, %struct.mlx5_core_dev*) #1

declare dso_local i32 @unregister_netdevice_notifier(%struct.TYPE_4__*) #1

declare dso_local i32 @mlx5_lag_mp_cleanup(%struct.mlx5_lag*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mlx5_lag_dev_free(%struct.mlx5_lag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
