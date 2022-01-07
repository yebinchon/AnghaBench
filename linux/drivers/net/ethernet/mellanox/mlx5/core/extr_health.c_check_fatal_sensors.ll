; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_check_fatal_sensors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_health.c_check_fatal_sensors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@MLX5_SENSOR_PCI_COMM_ERR = common dso_local global i32 0, align 4
@MLX5_SENSOR_PCI_ERR = common dso_local global i32 0, align 4
@MLX5_NIC_IFC_DISABLED = common dso_local global i64 0, align 8
@MLX5_SENSOR_NIC_DISABLED = common dso_local global i32 0, align 4
@MLX5_NIC_IFC_SW_RESET = common dso_local global i64 0, align 8
@MLX5_SENSOR_NIC_SW_RESET = common dso_local global i32 0, align 4
@MLX5_SENSOR_FW_SYND_RFR = common dso_local global i32 0, align 4
@MLX5_SENSOR_NO_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @check_fatal_sensors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fatal_sensors(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %5 = call i64 @sensor_pci_not_working(%struct.mlx5_core_dev* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @MLX5_SENSOR_PCI_COMM_ERR, align 4
  store i32 %8, i32* %2, align 4
  br label %39

9:                                                ; preds = %1
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @pci_channel_offline(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @MLX5_SENSOR_PCI_ERR, align 4
  store i32 %16, i32* %2, align 4
  br label %39

17:                                               ; preds = %9
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %19 = call i64 @mlx5_get_nic_state(%struct.mlx5_core_dev* %18)
  %20 = load i64, i64* @MLX5_NIC_IFC_DISABLED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @MLX5_SENSOR_NIC_DISABLED, align 4
  store i32 %23, i32* %2, align 4
  br label %39

24:                                               ; preds = %17
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %26 = call i64 @mlx5_get_nic_state(%struct.mlx5_core_dev* %25)
  %27 = load i64, i64* @MLX5_NIC_IFC_SW_RESET, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @MLX5_SENSOR_NIC_SW_RESET, align 4
  store i32 %30, i32* %2, align 4
  br label %39

31:                                               ; preds = %24
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %33 = call i64 @sensor_fw_synd_rfr(%struct.mlx5_core_dev* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @MLX5_SENSOR_FW_SYND_RFR, align 4
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @MLX5_SENSOR_NO_ERR, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %35, %29, %22, %15, %7
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @sensor_pci_not_working(%struct.mlx5_core_dev*) #1

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i64 @mlx5_get_nic_state(%struct.mlx5_core_dev*) #1

declare dso_local i64 @sensor_fw_synd_rfr(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
