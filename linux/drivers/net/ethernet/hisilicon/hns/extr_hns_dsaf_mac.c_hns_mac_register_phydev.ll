; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_register_phydev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_register_phydev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32, i32* }
%struct.hns_mac_cb = type { %struct.phy_device*, i32 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"phy-mode\00", align 1
@PHY_INTERFACE_MODE_XGMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"registered phy fail at address %i\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"registered phy at address %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, %struct.hns_mac_cb*, i64)* @hns_mac_register_phydev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_mac_register_phydev(%struct.mii_bus* %0, %struct.hns_mac_cb* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca %struct.hns_mac_cb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.phy_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store %struct.hns_mac_cb* %1, %struct.hns_mac_cb** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %13 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @fwnode_property_read_string(i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %82

20:                                               ; preds = %3
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* @PHY_INTERFACE_MODE_XGMII, align 4
  %23 = call i32 @phy_modes(i32 %22)
  %24 = call i32 @strcmp(i8* %21, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 1, i32* %10, align 4
  br label %38

27:                                               ; preds = %20
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  %30 = call i32 @phy_modes(i32 %29)
  %31 = call i32 @strcmp(i8* %28, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @ENODATA, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %82

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %26
  %39 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call %struct.phy_device* @get_phy_device(%struct.mii_bus* %39, i64 %40, i32 %41)
  store %struct.phy_device* %42, %struct.phy_device** %8, align 8
  %43 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %44 = icmp ne %struct.phy_device* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %47 = call i64 @IS_ERR(%struct.phy_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %38
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %82

52:                                               ; preds = %45
  %53 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %54 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %60 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %62 = call i32 @phy_device_register(%struct.phy_device* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %52
  %66 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %67 = call i32 @phy_device_free(%struct.phy_device* %66)
  %68 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %69 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %68, i32 0, i32 0
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %82

74:                                               ; preds = %52
  %75 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %76 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %77 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %76, i32 0, i32 0
  store %struct.phy_device* %75, %struct.phy_device** %77, align 8
  %78 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %79 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %78, i32 0, i32 0
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @dev_dbg(i32* %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %74, %65, %49, %34, %18
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @fwnode_property_read_string(i32, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @phy_modes(i32) #1

declare dso_local %struct.phy_device* @get_phy_device(%struct.mii_bus*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @phy_device_register(%struct.phy_device*) #1

declare dso_local i32 @phy_device_free(%struct.phy_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
