; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.xgbe_prv_data = type { i32, %struct.xgbe_hw_features }
%struct.xgbe_hw_features = type { i32 }

@XGBE_DRV_NAME = common dso_local global i32 0, align 4
@XGBE_DRV_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@MAC_VR = common dso_local global i32 0, align 4
@USERVER = common dso_local global i32 0, align 4
@DEVID = common dso_local global i32 0, align 4
@SNPSVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @xgbe_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.xgbe_prv_data*, align 8
  %6 = alloca %struct.xgbe_hw_features*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %7)
  store %struct.xgbe_prv_data* %8, %struct.xgbe_prv_data** %5, align 8
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 1
  store %struct.xgbe_hw_features* %10, %struct.xgbe_hw_features** %6, align 8
  %11 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @XGBE_DRV_NAME, align 4
  %15 = call i32 @strlcpy(i32 %13, i32 %14, i32 4)
  %16 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @XGBE_DRV_VERSION, align 4
  %20 = call i32 @strlcpy(i32 %18, i32 %19, i32 4)
  %21 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %25 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_name(i32 %26)
  %28 = call i32 @strlcpy(i32 %23, i32 %27, i32 4)
  %29 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %33 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAC_VR, align 4
  %36 = load i32, i32* @USERVER, align 4
  %37 = call i32 @XGMAC_GET_BITS(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %39 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MAC_VR, align 4
  %42 = load i32, i32* @DEVID, align 4
  %43 = call i32 @XGMAC_GET_BITS(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.xgbe_hw_features*, %struct.xgbe_hw_features** %6, align 8
  %45 = getelementptr inbounds %struct.xgbe_hw_features, %struct.xgbe_hw_features* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MAC_VR, align 4
  %48 = load i32, i32* @SNPSVER, align 4
  %49 = call i32 @XGMAC_GET_BITS(i32 %46, i32 %47, i32 %48)
  %50 = call i32 @snprintf(i32 %31, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %43, i32 %49)
  ret void
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @XGMAC_GET_BITS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
