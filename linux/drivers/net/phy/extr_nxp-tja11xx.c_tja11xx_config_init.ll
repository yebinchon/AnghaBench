; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_nxp-tja11xx.c_tja11xx_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_nxp-tja11xx.c_tja11xx_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32, i32, i32 }

@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@PHY_ID_MASK = common dso_local global i32 0, align 4
@MII_CFG1 = common dso_local global i32 0, align 4
@MII_CFG1_AUTO_OP = common dso_local global i32 0, align 4
@MII_CFG1_LED_MODE_MASK = common dso_local global i32 0, align 4
@MII_CFG1_LED_ENABLE = common dso_local global i32 0, align 4
@MII_CFG1_LED_MODE_LINKUP = common dso_local global i32 0, align 4
@MII_COMMCFG = common dso_local global i32 0, align 4
@MII_COMMCFG_AUTO_OP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MII_CFG1_SLEEP_CONFIRM = common dso_local global i32 0, align 4
@MII_CFG2 = common dso_local global i32 0, align 4
@MII_CFG2_SLEEP_REQUEST_TO = common dso_local global i32 0, align 4
@MII_CFG2_SLEEP_REQUEST_TO_16MS = common dso_local global i32 0, align 4
@MII_INTSRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @tja11xx_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tja11xx_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = call i32 @tja11xx_enable_reg_write(%struct.phy_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %93

11:                                               ; preds = %1
  %12 = load i32, i32* @AUTONEG_DISABLE, align 4
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @SPEED_100, align 4
  %16 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @DUPLEX_FULL, align 4
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PHY_ID_MASK, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %55 [
    i32 129, label %26
    i32 128, label %45
  ]

26:                                               ; preds = %11
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = load i32, i32* @MII_CFG1, align 4
  %29 = load i32, i32* @MII_CFG1_AUTO_OP, align 4
  %30 = load i32, i32* @MII_CFG1_LED_MODE_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MII_CFG1_LED_ENABLE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MII_CFG1_AUTO_OP, align 4
  %35 = load i32, i32* @MII_CFG1_LED_MODE_LINKUP, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @MII_CFG1_LED_ENABLE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @phy_modify(%struct.phy_device* %27, i32 %28, i32 %33, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %93

44:                                               ; preds = %26
  br label %58

45:                                               ; preds = %11
  %46 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %47 = load i32, i32* @MII_COMMCFG, align 4
  %48 = load i32, i32* @MII_COMMCFG_AUTO_OP, align 4
  %49 = call i32 @phy_set_bits(%struct.phy_device* %46, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %93

54:                                               ; preds = %45
  br label %58

55:                                               ; preds = %11
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %93

58:                                               ; preds = %54, %44
  %59 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %60 = load i32, i32* @MII_CFG1, align 4
  %61 = load i32, i32* @MII_CFG1_SLEEP_CONFIRM, align 4
  %62 = call i32 @phy_clear_bits(%struct.phy_device* %59, i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %93

67:                                               ; preds = %58
  %68 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %69 = load i32, i32* @MII_CFG2, align 4
  %70 = load i32, i32* @MII_CFG2_SLEEP_REQUEST_TO, align 4
  %71 = load i32, i32* @MII_CFG2_SLEEP_REQUEST_TO_16MS, align 4
  %72 = call i32 @phy_modify(%struct.phy_device* %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %93

77:                                               ; preds = %67
  %78 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %79 = call i32 @tja11xx_wakeup(%struct.phy_device* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %93

84:                                               ; preds = %77
  %85 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %86 = load i32, i32* @MII_INTSRC, align 4
  %87 = call i32 @phy_read(%struct.phy_device* %85, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %90, %82, %75, %65, %55, %52, %42, %9
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @tja11xx_enable_reg_write(%struct.phy_device*) #1

declare dso_local i32 @phy_modify(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_set_bits(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_clear_bits(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @tja11xx_wakeup(%struct.phy_device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
