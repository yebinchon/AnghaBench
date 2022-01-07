; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_core.c_mlx5_fpga_device_brb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_core.c_mlx5_fpga_device_brb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@MLX5_FPGA_CTRL_OPERATION_SANDBOX_BYPASS_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to set bypass on: %d\0A\00", align 1
@MLX5_FPGA_CTRL_OPERATION_RESET_SANDBOX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to reset SBU: %d\0A\00", align 1
@MLX5_FPGA_CTRL_OPERATION_SANDBOX_BYPASS_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to set bypass off: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_device*)* @mlx5_fpga_device_brb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_device_brb(%struct.mlx5_fpga_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_fpga_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %3, align 8
  %6 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %6, i32 0, i32 0
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_core_dev* %8, %struct.mlx5_core_dev** %5, align 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %10 = load i32, i32* @MLX5_FPGA_CTRL_OPERATION_SANDBOX_BYPASS_ON, align 4
  %11 = call i32 @mlx5_fpga_ctrl_op(%struct.mlx5_core_dev* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %21 = load i32, i32* @MLX5_FPGA_CTRL_OPERATION_RESET_SANDBOX, align 4
  %22 = call i32 @mlx5_fpga_ctrl_op(%struct.mlx5_core_dev* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %42

30:                                               ; preds = %19
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %32 = load i32, i32* @MLX5_FPGA_CTRL_OPERATION_SANDBOX_BYPASS_OFF, align 4
  %33 = call i32 @mlx5_fpga_ctrl_op(%struct.mlx5_core_dev* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %36, %25, %14
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @mlx5_fpga_ctrl_op(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
