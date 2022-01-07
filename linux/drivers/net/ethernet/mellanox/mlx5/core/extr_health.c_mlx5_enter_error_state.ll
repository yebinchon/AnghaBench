; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_mlx5_enter_error_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_mlx5_enter_error_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@MLX5_DEVICE_STATE_UNINITIALIZED = common dso_local global i64 0, align 8
@MLX5_DEV_EVENT_SYS_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_enter_error_state(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %44

14:                                               ; preds = %2
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MLX5_DEVICE_STATE_UNINITIALIZED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %44

24:                                               ; preds = %14
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %26 = call i64 @check_fatal_sensors(%struct.mlx5_core_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28, %24
  %32 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %36 = call i32 @mlx5_cmd_flush(%struct.mlx5_core_dev* %35)
  br label %37

37:                                               ; preds = %31, %28
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MLX5_DEV_EVENT_SYS_ERROR, align 4
  %43 = call i32 @mlx5_notifier_call_chain(i32 %41, i32 %42, i8* inttoptr (i64 1 to i8*))
  br label %44

44:                                               ; preds = %37, %20, %13
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %46 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @check_fatal_sensors(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cmd_flush(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_notifier_call_chain(i32, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
