; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_core.c_mlx5_fpga_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_core.c_mlx5_fpga_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { %struct.mlx5_core_dev* }

@fpga = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"FPGA capability not present\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Initializing FPGA\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_init(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_fpga_device*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_fpga_device* null, %struct.mlx5_fpga_device** %4, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %6 = load i32, i32* @fpga, align 4
  %7 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %14 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %15 = call %struct.mlx5_fpga_device* (...) @mlx5_fpga_device_alloc()
  store %struct.mlx5_fpga_device* %15, %struct.mlx5_fpga_device** %4, align 8
  %16 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %17 = icmp ne %struct.mlx5_fpga_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %12
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %23 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %23, i32 0, i32 0
  store %struct.mlx5_core_dev* %22, %struct.mlx5_core_dev** %24, align 8
  %25 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %26, i32 0, i32 0
  store %struct.mlx5_fpga_device* %25, %struct.mlx5_fpga_device** %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %21, %18, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*) #1

declare dso_local %struct.mlx5_fpga_device* @mlx5_fpga_device_alloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
