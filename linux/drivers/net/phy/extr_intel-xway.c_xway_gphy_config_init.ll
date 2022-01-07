; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_intel-xway.c_xway_gphy_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_intel-xway.c_xway_gphy_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@XWAY_MDIO_IMASK = common dso_local global i32 0, align 4
@XWAY_MDIO_ISTAT = common dso_local global i32 0, align 4
@MDIO_MMD_VEND2 = common dso_local global i32 0, align 4
@XWAY_MMD_LEDCH = common dso_local global i32 0, align 4
@XWAY_MMD_LEDCH_NACS_NONE = common dso_local global i32 0, align 4
@XWAY_MMD_LEDCH_SBF_F02HZ = common dso_local global i32 0, align 4
@XWAY_MMD_LEDCH_FBF_F16HZ = common dso_local global i32 0, align 4
@XWAY_MMD_LEDCL = common dso_local global i32 0, align 4
@XWAY_MMD_LEDCH_CBLINK_NONE = common dso_local global i32 0, align 4
@XWAY_MMD_LEDCH_SCAN_NONE = common dso_local global i32 0, align 4
@XWAY_MMD_LEDxH_BLINKF_NONE = common dso_local global i32 0, align 4
@XWAY_MMD_LEDxH_CON_LINK10XX = common dso_local global i32 0, align 4
@XWAY_MMD_LEDxL_PULSE_TXACT = common dso_local global i32 0, align 4
@XWAY_MMD_LEDxL_PULSE_RXACT = common dso_local global i32 0, align 4
@XWAY_MMD_LEDxL_BLINKS_NONE = common dso_local global i32 0, align 4
@XWAY_MMD_LED0H = common dso_local global i32 0, align 4
@XWAY_MMD_LED0L = common dso_local global i32 0, align 4
@XWAY_MMD_LED1H = common dso_local global i32 0, align 4
@XWAY_MMD_LED1L = common dso_local global i32 0, align 4
@XWAY_MMD_LED2H = common dso_local global i32 0, align 4
@XWAY_MMD_LED2L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @xway_gphy_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xway_gphy_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = load i32, i32* @XWAY_MDIO_IMASK, align 4
  %9 = call i32 @phy_write(%struct.phy_device* %7, i32 %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %72

14:                                               ; preds = %1
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = load i32, i32* @XWAY_MDIO_ISTAT, align 4
  %17 = call i32 @phy_read(%struct.phy_device* %15, i32 %16)
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = load i32, i32* @MDIO_MMD_VEND2, align 4
  %20 = load i32, i32* @XWAY_MMD_LEDCH, align 4
  %21 = load i32, i32* @XWAY_MMD_LEDCH_NACS_NONE, align 4
  %22 = load i32, i32* @XWAY_MMD_LEDCH_SBF_F02HZ, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @XWAY_MMD_LEDCH_FBF_F16HZ, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @phy_write_mmd(%struct.phy_device* %18, i32 %19, i32 %20, i32 %25)
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = load i32, i32* @MDIO_MMD_VEND2, align 4
  %29 = load i32, i32* @XWAY_MMD_LEDCL, align 4
  %30 = load i32, i32* @XWAY_MMD_LEDCH_CBLINK_NONE, align 4
  %31 = load i32, i32* @XWAY_MMD_LEDCH_SCAN_NONE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @phy_write_mmd(%struct.phy_device* %27, i32 %28, i32 %29, i32 %32)
  %34 = load i32, i32* @XWAY_MMD_LEDxH_BLINKF_NONE, align 4
  %35 = load i32, i32* @XWAY_MMD_LEDxH_CON_LINK10XX, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @XWAY_MMD_LEDxL_PULSE_TXACT, align 4
  %38 = load i32, i32* @XWAY_MMD_LEDxL_PULSE_RXACT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @XWAY_MMD_LEDxL_BLINKS_NONE, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %43 = load i32, i32* @MDIO_MMD_VEND2, align 4
  %44 = load i32, i32* @XWAY_MMD_LED0H, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @phy_write_mmd(%struct.phy_device* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %48 = load i32, i32* @MDIO_MMD_VEND2, align 4
  %49 = load i32, i32* @XWAY_MMD_LED0L, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @phy_write_mmd(%struct.phy_device* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %53 = load i32, i32* @MDIO_MMD_VEND2, align 4
  %54 = load i32, i32* @XWAY_MMD_LED1H, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @phy_write_mmd(%struct.phy_device* %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %58 = load i32, i32* @MDIO_MMD_VEND2, align 4
  %59 = load i32, i32* @XWAY_MMD_LED1L, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @phy_write_mmd(%struct.phy_device* %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %63 = load i32, i32* @MDIO_MMD_VEND2, align 4
  %64 = load i32, i32* @XWAY_MMD_LED2H, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @phy_write_mmd(%struct.phy_device* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %68 = load i32, i32* @MDIO_MMD_VEND2, align 4
  %69 = load i32, i32* @XWAY_MMD_LED2L, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @phy_write_mmd(%struct.phy_device* %67, i32 %68, i32 %69, i32 %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %14, %12
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write_mmd(%struct.phy_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
