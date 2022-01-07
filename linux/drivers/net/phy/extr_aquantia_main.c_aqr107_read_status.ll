; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr107_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr107_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32, i32 }

@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@MDIO_PHYXS_VEND_IF_STATUS = common dso_local global i32 0, align 4
@MDIO_PHYXS_VEND_IF_STATUS_TYPE_MASK = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_10GKR = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_USXGMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_2500BASEX = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_NA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Downshift occurred! Cabling may be defective.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @aqr107_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqr107_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = call i32 @aqr_read_status(%struct.phy_device* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %69

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AUTONEG_DISABLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %12
  store i32 0, i32* %2, align 4
  br label %69

24:                                               ; preds = %17
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %27 = load i32, i32* @MDIO_PHYXS_VEND_IF_STATUS, align 4
  %28 = call i32 @phy_read_mmd(%struct.phy_device* %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %69

33:                                               ; preds = %24
  %34 = load i32, i32* @MDIO_PHYXS_VEND_IF_STATUS_TYPE_MASK, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @FIELD_GET(i32 %34, i32 %35)
  switch i32 %36, label %53 [
    i32 132, label %37
    i32 128, label %37
    i32 129, label %41
    i32 130, label %45
    i32 131, label %49
  ]

37:                                               ; preds = %33, %33
  %38 = load i32, i32* @PHY_INTERFACE_MODE_10GKR, align 4
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %57

41:                                               ; preds = %33
  %42 = load i32, i32* @PHY_INTERFACE_MODE_USXGMII, align 4
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %57

45:                                               ; preds = %33
  %46 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  %47 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %57

49:                                               ; preds = %33
  %50 = load i32, i32* @PHY_INTERFACE_MODE_2500BASEX, align 4
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %57

53:                                               ; preds = %33
  %54 = load i32, i32* @PHY_INTERFACE_MODE_NA, align 4
  %55 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %56 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %49, %45, %41, %37
  %58 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %59 = call i32 @aqr107_read_downshift_event(%struct.phy_device* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %69

64:                                               ; preds = %57
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = call i32 @phydev_warn(%struct.phy_device* %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %68 = call i32 @aqr107_read_rate(%struct.phy_device* %67)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %64, %62, %31, %23, %10
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @aqr_read_status(%struct.phy_device*) #1

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @aqr107_read_downshift_event(%struct.phy_device*) #1

declare dso_local i32 @phydev_warn(%struct.phy_device*, i8*) #1

declare dso_local i32 @aqr107_read_rate(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
