; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_mlx5_try_fast_unload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_mlx5_try_fast_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"force teardown firmware support=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"fast teardown firmware support=%d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Device in internal error state, giving up\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Firmware couldn't do fast unload error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @mlx5_try_fast_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_try_fast_unload(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %66

27:                                               ; preds = %21, %1
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %35 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %66

38:                                               ; preds = %27
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %40 = call i32 @mlx5_drain_health_wq(%struct.mlx5_core_dev* %39)
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %42 = call i32 @mlx5_stop_health_poll(%struct.mlx5_core_dev* %41, i32 0)
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %44 = call i32 @mlx5_cmd_fast_teardown_hca(%struct.mlx5_core_dev* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %61

48:                                               ; preds = %38
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %50 = call i32 @mlx5_cmd_force_teardown_hca(%struct.mlx5_core_dev* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %61

54:                                               ; preds = %48
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_dbg(%struct.mlx5_core_dev* %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %59 = call i32 @mlx5_start_health_poll(%struct.mlx5_core_dev* %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %66

61:                                               ; preds = %53, %47
  %62 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %63 = call i32 @mlx5_enter_error_state(%struct.mlx5_core_dev* %62, i32 1)
  %64 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %65 = call i32 @mlx5_core_eq_free_irqs(%struct.mlx5_core_dev* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %54, %33, %24
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @mlx5_drain_health_wq(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_stop_health_poll(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_cmd_fast_teardown_hca(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cmd_force_teardown_hca(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_start_health_poll(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_enter_error_state(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_eq_free_irqs(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
