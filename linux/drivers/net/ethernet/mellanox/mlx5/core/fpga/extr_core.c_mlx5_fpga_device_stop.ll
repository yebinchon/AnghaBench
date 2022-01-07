; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_core.c_mlx5_fpga_device_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_core.c_mlx5_fpga_device_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { i64, i64, i32, i32, i32, i32 }

@MLX5_FPGA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@MLX5_FPGA_STATUS_NONE = common dso_local global i64 0, align 8
@MLX5_FPGA_IMAGE_USER = common dso_local global i64 0, align 8
@MLX5_FPGA_CTRL_OPERATION_SANDBOX_BYPASS_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to re-set SBU bypass on: %d\0A\00", align 1
@shell_caps = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_fpga_device_stop(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_fpga_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 0
  %9 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %8, align 8
  store %struct.mlx5_fpga_device* %9, %struct.mlx5_fpga_device** %3, align 8
  %10 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %11 = icmp ne %struct.mlx5_fpga_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %73

13:                                               ; preds = %1
  %14 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %14, i32 0, i32 5
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MLX5_FPGA_STATUS_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %24, i32 0, i32 5
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %73

28:                                               ; preds = %13
  %29 = load i64, i64* @MLX5_FPGA_STATUS_NONE, align 8
  %30 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %32, i32 0, i32 5
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MLX5_FPGA_IMAGE_USER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %28
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %43 = load i32, i32* @MLX5_FPGA_CTRL_OPERATION_SANDBOX_BYPASS_ON, align 4
  %44 = call i32 @mlx5_fpga_ctrl_op(%struct.mlx5_core_dev* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %41
  br label %52

52:                                               ; preds = %51, %28
  %53 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %54 = call i32 @mlx5_fpga_conn_device_cleanup(%struct.mlx5_fpga_device* %53)
  %55 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %56 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %59 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %58, i32 0, i32 4
  %60 = call i32 @mlx5_eq_notifier_unregister(i32 %57, i32* %59)
  %61 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %62 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %65 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %64, i32 0, i32 2
  %66 = call i32 @mlx5_eq_notifier_unregister(i32 %63, i32* %65)
  %67 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shell_caps, i32 0, i32 0), align 4
  %69 = call i32 @MLX5_CAP_FPGA(%struct.mlx5_core_dev* %67, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @mlx5_core_unreserve_gids(%struct.mlx5_core_dev* %70, i32 %71)
  br label %73

73:                                               ; preds = %52, %23, %12
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mlx5_fpga_ctrl_op(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local i32 @mlx5_fpga_conn_device_cleanup(%struct.mlx5_fpga_device*) #1

declare dso_local i32 @mlx5_eq_notifier_unregister(i32, i32*) #1

declare dso_local i32 @MLX5_CAP_FPGA(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_unreserve_gids(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
