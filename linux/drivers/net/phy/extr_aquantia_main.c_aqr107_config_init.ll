; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr107_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr107_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_2500BASEX = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_XGMII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_USXGMII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_10GKR = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [116 x i8] c"Your devicetree is out of date, please update it. The AQR107 family doesn't support XGMII, maybe you mean USXGMII.\0A\00", align 1
@MDIO_AN_VEND_PROV_DOWNSHIFT_DFLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @aqr107_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqr107_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %1
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PHY_INTERFACE_MODE_2500BASEX, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PHY_INTERFACE_MODE_USXGMII, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PHY_INTERFACE_MODE_10GKR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %58

37:                                               ; preds = %28, %22, %16, %10, %1
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN(i32 %43, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = call i32 @aqr107_wait_reset_complete(%struct.phy_device* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %37
  %50 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %51 = call i32 @aqr107_chip_info(%struct.phy_device* %50)
  br label %52

52:                                               ; preds = %49, %37
  %53 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %54 = call i32 @aqr107_read_downshift_event(%struct.phy_device* %53)
  %55 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %56 = load i32, i32* @MDIO_AN_VEND_PROV_DOWNSHIFT_DFLT, align 4
  %57 = call i32 @aqr107_set_downshift(%struct.phy_device* %55, i32 %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %34
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @aqr107_wait_reset_complete(%struct.phy_device*) #1

declare dso_local i32 @aqr107_chip_info(%struct.phy_device*) #1

declare dso_local i32 @aqr107_read_downshift_event(%struct.phy_device*) #1

declare dso_local i32 @aqr107_set_downshift(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
