; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_mlx5_error_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_mlx5_error_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MLX5_FW_RESET_WAIT_MS = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@MLX5_SENSOR_FW_SYND_RFR = common dso_local global i64 0, align 8
@MLX5_CRDUMP_WAIT_MS = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@MLX5_NIC_IFC_DISABLED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"NIC IFC still %d after %lums.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_error_sw_reset(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %6 = load i64, i64* @MLX5_FW_RESET_WAIT_MS, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i32, i32* @EBUSY, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %80

18:                                               ; preds = %1
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %20 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %22 = call i64 @check_fatal_sensors(%struct.mlx5_core_dev* %21)
  %23 = load i64, i64* @MLX5_SENSOR_FW_SYND_RFR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %27 = call i32 @lock_sem_sw_reset(%struct.mlx5_core_dev* %26, i32 1)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* @MLX5_CRDUMP_WAIT_MS, align 8
  store i64 %33, i64* %4, align 8
  br label %38

34:                                               ; preds = %25
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %36 = call i32 @reset_fw_if_needed(%struct.mlx5_core_dev* %35)
  br label %37

37:                                               ; preds = %34, %18
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i64, i64* @jiffies, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @msecs_to_jiffies(i64 %40)
  %42 = add i64 %39, %41
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %51, %38
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %45 = call i64 @mlx5_get_nic_state(%struct.mlx5_core_dev* %44)
  %46 = load i64, i64* @MLX5_NIC_IFC_DISABLED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %57

49:                                               ; preds = %43
  %50 = call i32 (...) @cond_resched()
  br label %51

51:                                               ; preds = %49
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @time_after(i64 %52, i64 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br i1 %56, label %43, label %57

57:                                               ; preds = %51, %48
  %58 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %59 = call i64 @mlx5_get_nic_state(%struct.mlx5_core_dev* %58)
  %60 = load i64, i64* @MLX5_NIC_IFC_DISABLED, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %64 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %68 = call i64 @mlx5_get_nic_state(%struct.mlx5_core_dev* %67)
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %68, i64 %69)
  br label %71

71:                                               ; preds = %62, %57
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %76 = call i32 @lock_sem_sw_reset(%struct.mlx5_core_dev* %75, i32 0)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %79 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %17
  %81 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %82 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i64 @check_fatal_sensors(%struct.mlx5_core_dev*) #1

declare dso_local i32 @lock_sem_sw_reset(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @reset_fw_if_needed(%struct.mlx5_core_dev*) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @mlx5_get_nic_state(%struct.mlx5_core_dev*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
