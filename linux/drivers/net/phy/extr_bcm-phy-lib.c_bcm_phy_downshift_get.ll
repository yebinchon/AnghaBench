; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm-phy-lib.c_bcm_phy_downshift_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm-phy-lib.c_bcm_phy_downshift_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_BCM54XX_AUXCTL_SHDWSEL_MISC = common dso_local global i32 0, align 4
@MII_BCM54XX_AUXCTL_SHDWSEL_MISC_WIRESPEED_EN = common dso_local global i32 0, align 4
@DOWNSHIFT_DEV_DISABLE = common dso_local global i32 0, align 4
@BCM54XX_SHD_SCR2 = common dso_local global i32 0, align 4
@BCM54XX_SHD_SCR2_WSPD_RTRY_DIS = common dso_local global i32 0, align 4
@BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_SHIFT = common dso_local global i32 0, align 4
@BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_MASK = common dso_local global i32 0, align 4
@BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_phy_downshift_get(%struct.phy_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %8 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_MISC, align 4
  %9 = call i32 @bcm54xx_auxctl_read(%struct.phy_device* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_MISC_WIRESPEED_EN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @DOWNSHIFT_DEV_DISABLE, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  store i32 0, i32* %3, align 4
  br label %49

22:                                               ; preds = %14
  %23 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %24 = load i32, i32* @BCM54XX_SHD_SCR2, align 4
  %25 = call i32 @bcm_phy_read_shadow(%struct.phy_device* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %49

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @BCM54XX_SHD_SCR2_WSPD_RTRY_DIS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  store i32 1, i32* %36, align 4
  br label %48

37:                                               ; preds = %30
  %38 = load i32, i32* @BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_SHIFT, align 4
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_MASK, align 4
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_OFFSET, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %37, %35
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %28, %19, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @bcm54xx_auxctl_read(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm_phy_read_shadow(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
