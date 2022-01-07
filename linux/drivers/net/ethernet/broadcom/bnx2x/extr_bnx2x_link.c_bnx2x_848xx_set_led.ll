; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_848xx_set_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_848xx_set_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_reg_set = type { i32, i32, i32, i32, i32, i32 }
%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i64 }

@bnx2x_848xx_set_led.reg_set = internal global [5 x %struct.bnx2x_reg_set] [%struct.bnx2x_reg_set { i32 133, i32 132, i32 128, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 133, i32 131, i32 24, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 133, i32 130, i32 6, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 133, i32 128, i32 129, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 134, i32 65531, i32 65533, i32 0, i32 0, i32 0 }], align 16
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858 = common dso_local global i64 0, align 8
@MDIO_PMA_REG_8481_LED5_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8481_LED3_BLINK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8481_LINK_SIGNAL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_84833_CTL_LED_CTL_1 = common dso_local global i32 0, align 4
@MDIO_PMA_REG_84823_CTL_LED_CTL_1 = common dso_local global i32 0, align 4
@MDIO_PMA_REG_84858_ALLOW_GPHY_ACT = common dso_local global i32 0, align 4
@MDIO_PMA_REG_84823_LED3_STRETCH_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_phy*)* @bnx2x_848xx_set_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_848xx_set_led(%struct.bnx2x* %0, %struct.bnx2x_phy* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %4, align 8
  %9 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %10 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %17 = load i32, i32* @MDIO_PMA_REG_8481_LED5_MASK, align 4
  %18 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %15, %struct.bnx2x_phy* %16, i32 133, i32 %17, i32 144)
  store i32 15, i32* %6, align 4
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %19, %14
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %23 = load i32, i32* @MDIO_PMA_REG_8481_LED3_BLINK, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %21, %struct.bnx2x_phy* %22, i32 133, i32 %23, i32 %24)
  %26 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %27 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %28 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %29 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %26, %struct.bnx2x_phy* %27, i32 133, i32 %28, i32* %5)
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 65024
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, 146
  store i32 %33, i32* %5, align 4
  %34 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %35 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %20
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, 8192
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %20
  %43 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %44 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %45 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %43, %struct.bnx2x_phy* %44, i32 133, i32 %45, i32 %46)
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %71, %42
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ARRAY_SIZE(%struct.bnx2x_reg_set* getelementptr inbounds ([5 x %struct.bnx2x_reg_set], [5 x %struct.bnx2x_reg_set]* @bnx2x_848xx_set_led.reg_set, i64 0, i64 0))
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %48
  %53 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %54 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [5 x %struct.bnx2x_reg_set], [5 x %struct.bnx2x_reg_set]* @bnx2x_848xx_set_led.reg_set, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [5 x %struct.bnx2x_reg_set], [5 x %struct.bnx2x_reg_set]* @bnx2x_848xx_set_led.reg_set, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [5 x %struct.bnx2x_reg_set], [5 x %struct.bnx2x_reg_set]* @bnx2x_848xx_set_led.reg_set, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %53, %struct.bnx2x_phy* %54, i32 %59, i32 %64, i32 %69)
  br label %71

71:                                               ; preds = %52
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %48

74:                                               ; preds = %48
  %75 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %76 = call i64 @bnx2x_is_8483x_8485x(%struct.bnx2x_phy* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @MDIO_PMA_REG_84833_CTL_LED_CTL_1, align 4
  store i32 %79, i32* %7, align 4
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @MDIO_PMA_REG_84823_CTL_LED_CTL_1, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %84 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* @MDIO_PMA_REG_84858_ALLOW_GPHY_ACT, align 4
  %90 = load i32, i32* @MDIO_PMA_REG_84823_LED3_STRETCH_EN, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %5, align 4
  br label %94

92:                                               ; preds = %82
  %93 = load i32, i32* @MDIO_PMA_REG_84823_LED3_STRETCH_EN, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %88
  %95 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %96 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @bnx2x_cl45_read_or_write(%struct.bnx2x* %95, %struct.bnx2x_phy* %96, i32 133, i32 %97, i32 %98)
  ret void
}

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bnx2x_reg_set*) #1

declare dso_local i64 @bnx2x_is_8483x_8485x(%struct.bnx2x_phy*) #1

declare dso_local i32 @bnx2x_cl45_read_or_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
