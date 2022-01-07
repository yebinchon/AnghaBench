; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm7xxx.c_bcm7xxx_28nm_ephy_eee_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm7xxx.c_bcm7xxx_28nm_ephy_eee_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_BCM7XXX_TEST = common dso_local global i32 0, align 4
@MII_BCM7XXX_SHD_MODE_2 = common dso_local global i32 0, align 4
@MII_BCM7XXX_SHD_2_ADDR_CTRL = common dso_local global i32 0, align 4
@MII_BCM7XXX_SHD_3_AN_EEE_ADV = common dso_local global i32 0, align 4
@MII_BCM7XXX_SHD_2_CTRL_STAT = common dso_local global i32 0, align 4
@MDIO_EEE_100TX = common dso_local global i32 0, align 4
@MII_BCM7XXX_SHD_3_PCS_CTRL_2 = common dso_local global i32 0, align 4
@MII_BCM7XXX_PCS_CTRL_2_DEF = common dso_local global i32 0, align 4
@MII_BCM7XXX_SHD_3_EEE_THRESH = common dso_local global i32 0, align 4
@MII_BCM7XXX_EEE_THRESH_DEF = common dso_local global i32 0, align 4
@MII_BCM7XXX_SHD_3_AN_STAT = common dso_local global i32 0, align 4
@MII_BCM7XXX_AN_NULL_MSG_EN = common dso_local global i32 0, align 4
@MII_BCM7XXX_AN_EEE_EN = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm7xxx_28nm_ephy_eee_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm7xxx_28nm_ephy_eee_enable(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @MII_BCM7XXX_TEST, align 4
  %7 = load i32, i32* @MII_BCM7XXX_SHD_MODE_2, align 4
  %8 = call i32 @phy_set_clr_bits(%struct.phy_device* %5, i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %98

13:                                               ; preds = %1
  %14 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %15 = load i32, i32* @MII_BCM7XXX_SHD_2_ADDR_CTRL, align 4
  %16 = load i32, i32* @MII_BCM7XXX_SHD_3_AN_EEE_ADV, align 4
  %17 = call i32 @phy_write(%struct.phy_device* %14, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %80

21:                                               ; preds = %13
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = load i32, i32* @MII_BCM7XXX_SHD_2_CTRL_STAT, align 4
  %24 = load i32, i32* @MDIO_EEE_100TX, align 4
  %25 = call i32 @phy_write(%struct.phy_device* %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %80

29:                                               ; preds = %21
  %30 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %31 = load i32, i32* @MII_BCM7XXX_SHD_2_ADDR_CTRL, align 4
  %32 = load i32, i32* @MII_BCM7XXX_SHD_3_PCS_CTRL_2, align 4
  %33 = call i32 @phy_write(%struct.phy_device* %30, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %80

37:                                               ; preds = %29
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = load i32, i32* @MII_BCM7XXX_SHD_2_CTRL_STAT, align 4
  %40 = load i32, i32* @MII_BCM7XXX_PCS_CTRL_2_DEF, align 4
  %41 = call i32 @phy_write(%struct.phy_device* %38, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %80

45:                                               ; preds = %37
  %46 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %47 = load i32, i32* @MII_BCM7XXX_SHD_2_ADDR_CTRL, align 4
  %48 = load i32, i32* @MII_BCM7XXX_SHD_3_EEE_THRESH, align 4
  %49 = call i32 @phy_write(%struct.phy_device* %46, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %80

53:                                               ; preds = %45
  %54 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %55 = load i32, i32* @MII_BCM7XXX_SHD_2_CTRL_STAT, align 4
  %56 = load i32, i32* @MII_BCM7XXX_EEE_THRESH_DEF, align 4
  %57 = call i32 @phy_write(%struct.phy_device* %54, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %80

61:                                               ; preds = %53
  %62 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %63 = load i32, i32* @MII_BCM7XXX_SHD_2_ADDR_CTRL, align 4
  %64 = load i32, i32* @MII_BCM7XXX_SHD_3_AN_STAT, align 4
  %65 = call i32 @phy_write(%struct.phy_device* %62, i32 %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %80

69:                                               ; preds = %61
  %70 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %71 = load i32, i32* @MII_BCM7XXX_SHD_2_CTRL_STAT, align 4
  %72 = load i32, i32* @MII_BCM7XXX_AN_NULL_MSG_EN, align 4
  %73 = load i32, i32* @MII_BCM7XXX_AN_EEE_EN, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @phy_write(%struct.phy_device* %70, i32 %71, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %80

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %78, %68, %60, %52, %44, %36, %28, %20
  %81 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %82 = load i32, i32* @MII_BCM7XXX_TEST, align 4
  %83 = load i32, i32* @MII_BCM7XXX_SHD_MODE_2, align 4
  %84 = call i32 @phy_set_clr_bits(%struct.phy_device* %81, i32 %82, i32 0, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %98

89:                                               ; preds = %80
  %90 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %91 = load i32, i32* @MII_BMCR, align 4
  %92 = load i32, i32* @BMCR_SPEED100, align 4
  %93 = load i32, i32* @BMCR_ANENABLE, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @BMCR_ANRESTART, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @phy_write(%struct.phy_device* %90, i32 %91, i32 %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %89, %87, %11
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @phy_set_clr_bits(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
