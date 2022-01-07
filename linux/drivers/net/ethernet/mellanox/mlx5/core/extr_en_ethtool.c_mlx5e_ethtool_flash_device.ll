; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_ethtool_flash_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_ethtool_flash_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.net_device*, %struct.mlx5_core_dev* }
%struct.net_device = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.ethtool_flash = type { i64, i32 }
%struct.firmware = type { i32 }

@ETHTOOL_FLASH_ALL_REGIONS = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_ethtool_flash_device(%struct.mlx5e_priv* %0, %struct.ethtool_flash* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.ethtool_flash*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.ethtool_flash* %1, %struct.ethtool_flash** %5, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 1
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %6, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  %16 = load %struct.ethtool_flash*, %struct.ethtool_flash** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ETHTOOL_FLASH_ALL_REGIONS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %48

24:                                               ; preds = %2
  %25 = load %struct.ethtool_flash*, %struct.ethtool_flash** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = call i32 @request_firmware_direct(%struct.firmware** %8, i32 %27, i32* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %48

35:                                               ; preds = %24
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = call i32 @dev_hold(%struct.net_device* %36)
  %38 = call i32 (...) @rtnl_unlock()
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %40 = load %struct.firmware*, %struct.firmware** %8, align 8
  %41 = call i32 @mlx5_firmware_flash(%struct.mlx5_core_dev* %39, %struct.firmware* %40, i32* null)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.firmware*, %struct.firmware** %8, align 8
  %43 = call i32 @release_firmware(%struct.firmware* %42)
  %44 = call i32 (...) @rtnl_lock()
  %45 = load %struct.net_device*, %struct.net_device** %7, align 8
  %46 = call i32 @dev_put(%struct.net_device* %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %35, %33, %21
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @request_firmware_direct(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @mlx5_firmware_flash(%struct.mlx5_core_dev*, %struct.firmware*, i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
