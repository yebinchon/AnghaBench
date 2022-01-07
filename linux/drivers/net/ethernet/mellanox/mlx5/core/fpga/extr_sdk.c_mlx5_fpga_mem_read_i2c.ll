; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_sdk.c_mlx5_fpga_mem_read_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_sdk.c_mlx5_fpga_mem_read_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i32 }

@MLX5_FPGA_ACCESS_REG_SIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to read over I2C: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_device*, i64, i64, i64*)* @mlx5_fpga_mem_read_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_mem_read_i2c(%struct.mlx5_fpga_device* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_fpga_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i64, i64* @MLX5_FPGA_ACCESS_REG_SIZE_MAX, align 8
  store i64 %14, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %62

20:                                               ; preds = %4
  %21 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %6, align 8
  %22 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOTCONN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %62

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %56, %28
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %11, align 8
  %37 = sub i64 %35, %36
  %38 = call i64 @min(i64 %34, i64 %37)
  store i64 %38, i64* %12, align 8
  %39 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %6, align 8
  %40 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %43, %44
  %46 = load i64*, i64** %9, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = call i32 @mlx5_fpga_access_reg(i32 %41, i64 %42, i64 %45, i64* %48, i32 0)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %33
  %53 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %6, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %60

56:                                               ; preds = %33
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %11, align 8
  br label %29

60:                                               ; preds = %52, %29
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %25, %17
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @mlx5_fpga_access_reg(i32, i64, i64, i64*, i32) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
