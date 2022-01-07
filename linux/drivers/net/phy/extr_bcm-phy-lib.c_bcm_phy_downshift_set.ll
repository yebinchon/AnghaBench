; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm-phy-lib.c_bcm_phy_downshift_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm-phy-lib.c_bcm_phy_downshift_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_OFFSET = common dso_local global i32 0, align 4
@BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_MASK = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@MII_BCM54XX_AUXCTL_SHDWSEL_MISC = common dso_local global i32 0, align 4
@MII_BCM54XX_AUXCTL_MISC_WREN = common dso_local global i32 0, align 4
@DOWNSHIFT_DEV_DISABLE = common dso_local global i32 0, align 4
@MII_BCM54XX_AUXCTL_SHDWSEL_MISC_WIRESPEED_EN = common dso_local global i32 0, align 4
@BCM54XX_SHD_SCR2 = common dso_local global i32 0, align 4
@BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_SHIFT = common dso_local global i32 0, align 4
@BCM54XX_SHD_SCR2_WSPD_RTRY_DIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_phy_downshift_set(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_OFFSET, align 4
  %10 = sub nsw i32 %8, %9
  %11 = load i32, i32* @BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_MASK, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 128
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @ERANGE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %91

19:                                               ; preds = %13, %2
  %20 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %21 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_MISC, align 4
  %22 = call i32 @bcm54xx_auxctl_read(%struct.phy_device* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %91

27:                                               ; preds = %19
  %28 = load i32, i32* @MII_BCM54XX_AUXCTL_MISC_WREN, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @DOWNSHIFT_DEV_DISABLE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_MISC_WIRESPEED_EN, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %40 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_MISC, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @bcm54xx_auxctl_write(%struct.phy_device* %39, i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %91

43:                                               ; preds = %27
  %44 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_MISC_WIRESPEED_EN, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %48 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_MISC, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @bcm54xx_auxctl_write(%struct.phy_device* %47, i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %91

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %58 = load i32, i32* @BCM54XX_SHD_SCR2, align 4
  %59 = call i32 @bcm_phy_read_shadow(%struct.phy_device* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_MASK, align 4
  %61 = load i32, i32* @BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* @BCM54XX_SHD_SCR2_WSPD_RTRY_DIS, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  switch i32 %68, label %78 [
    i32 1, label %69
    i32 128, label %73
  ]

69:                                               ; preds = %56
  %70 = load i32, i32* @BCM54XX_SHD_SCR2_WSPD_RTRY_DIS, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %86

73:                                               ; preds = %56
  %74 = load i32, i32* @BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_SHIFT, align 4
  %75 = shl i32 1, %74
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %86

78:                                               ; preds = %56
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_OFFSET, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32, i32* @BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %78, %73, %69
  %87 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %88 = load i32, i32* @BCM54XX_SHD_SCR2, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @bcm_phy_write_shadow(%struct.phy_device* %87, i32 %88, i32 %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %53, %34, %25, %16
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @bcm54xx_auxctl_read(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm54xx_auxctl_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @bcm_phy_read_shadow(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm_phy_write_shadow(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
