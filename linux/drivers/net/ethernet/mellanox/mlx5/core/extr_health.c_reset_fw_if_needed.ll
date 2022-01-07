; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_reset_fw_if_needed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_reset_fw_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MLX5_FW_RESET_SUPPORTED_OFFSET = common dso_local global i32 0, align 4
@MLX5_SENSOR_PCI_COMM_ERR = common dso_local global i64 0, align 8
@MLX5_SENSOR_NIC_DISABLED = common dso_local global i64 0, align 8
@MLX5_SENSOR_NIC_SW_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Not issuing FW reset. Either it's already done or won't help.\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Issuing FW Reset\0A\00", align 1
@MLX5_NIC_IFC_SW_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @reset_fw_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_fw_if_needed(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @ioread32be(i32* %9)
  %11 = load i32, i32* @MLX5_FW_RESET_SUPPORTED_OFFSET, align 4
  %12 = ashr i32 %10, %11
  %13 = and i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

17:                                               ; preds = %1
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %19 = call i64 @check_fatal_sensors(%struct.mlx5_core_dev* %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @MLX5_SENSOR_PCI_COMM_ERR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @MLX5_SENSOR_NIC_DISABLED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @MLX5_SENSOR_NIC_SW_RESET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %23, %17
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %33 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %32, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %40

34:                                               ; preds = %27
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %36 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %38 = load i32, i32* @MLX5_NIC_IFC_SW_RESET, align 4
  %39 = call i32 @mlx5_set_nic_state(%struct.mlx5_core_dev* %37, i32 %38)
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %31, %16
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i64 @check_fatal_sensors(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5_set_nic_state(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
