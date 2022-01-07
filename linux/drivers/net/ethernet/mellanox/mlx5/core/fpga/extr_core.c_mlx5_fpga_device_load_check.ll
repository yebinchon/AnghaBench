; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_core.c_mlx5_fpga_device_load_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_core.c_mlx5_fpga_device_load_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i32, i32, i32 }
%struct.mlx5_fpga_query = type { i64, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to query status: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Status %u; Admin image %u; Oper image %u\0A\00", align 1
@MLX5_FPGA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"%s image failed to load; status %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_device*)* @mlx5_fpga_device_load_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_device_load_check(%struct.mlx5_fpga_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_fpga_device*, align 8
  %4 = alloca %struct.mlx5_fpga_query, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %3, align 8
  %6 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mlx5_fpga_query(i32 %8, %struct.mlx5_fpga_query* %4)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (%struct.mlx5_fpga_device*, i8*, i32, ...) @mlx5_fpga_err(%struct.mlx5_fpga_device* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %50

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.mlx5_fpga_query, %struct.mlx5_fpga_query* %4, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds %struct.mlx5_fpga_query, %struct.mlx5_fpga_query* %4, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5_fpga_query, %struct.mlx5_fpga_query* %4, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.mlx5_fpga_query, %struct.mlx5_fpga_query* %4, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.mlx5_fpga_query, %struct.mlx5_fpga_query* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %28, i32 %30, i32 %32)
  %34 = getelementptr inbounds %struct.mlx5_fpga_query, %struct.mlx5_fpga_query* %4, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MLX5_FPGA_STATUS_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %17
  %39 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %40 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %41 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mlx5_fpga_image_name(i32 %42)
  %44 = getelementptr inbounds %struct.mlx5_fpga_query, %struct.mlx5_fpga_query* %4, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (%struct.mlx5_fpga_device*, i8*, i32, ...) @mlx5_fpga_err(%struct.mlx5_fpga_device* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %43, i64 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %38, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @mlx5_fpga_query(i32, %struct.mlx5_fpga_query*) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32, ...) #1

declare dso_local i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device*, i8*, i64, i32, i32) #1

declare dso_local i32 @mlx5_fpga_image_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
