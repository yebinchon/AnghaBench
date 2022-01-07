; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i64, i32, i64 }
%struct.ethtool_modinfo = type { i32, i32 }

@XGBE_PORT_MODE_SFP = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472_LEN = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, %struct.ethtool_modinfo*)* @xgbe_phy_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_module_info(%struct.xgbe_prv_data* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca %struct.ethtool_modinfo*, align 8
  %6 = alloca %struct.xgbe_phy_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %5, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 1
  %9 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %8, align 8
  store %struct.xgbe_phy_data* %9, %struct.xgbe_phy_data** %6, align 8
  %10 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %11 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @XGBE_PORT_MODE_SFP, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %55

18:                                               ; preds = %2
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %20 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @netif_running(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %55

27:                                               ; preds = %18
  %28 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %29 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %55

35:                                               ; preds = %27
  %36 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %37 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %36, i32 0, i32 1
  %38 = call i64 @XGBE_SFP_DIAGS_SUPPORTED(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* @ETH_MODULE_SFF_8472, align 4
  %42 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @ETH_MODULE_SFF_8472_LEN, align 4
  %45 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %54

47:                                               ; preds = %35
  %48 = load i32, i32* @ETH_MODULE_SFF_8079, align 4
  %49 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %52 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %53 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %40
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %32, %24, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i64 @XGBE_SFP_DIAGS_SUPPORTED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
