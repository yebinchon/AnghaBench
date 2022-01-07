; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm-phy-lib.c_bcm_phy_enable_apd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm-phy-lib.c_bcm_phy_enable_apd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@BCM54XX_SHD_SCR3 = common dso_local global i32 0, align 4
@BCM54XX_SHD_SCR3_DLLAPD_DIS = common dso_local global i32 0, align 4
@BCM54XX_SHD_APD = common dso_local global i32 0, align 4
@BCM_APD_CLR_MASK = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@BCM54XX_SHD_APD_EN = common dso_local global i32 0, align 4
@BCM_NO_ANEG_APD_EN = common dso_local global i32 0, align 4
@BCM_APD_SINGLELP_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_phy_enable_apd(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %11 = load i32, i32* @BCM54XX_SHD_SCR3, align 4
  %12 = call i32 @bcm_phy_read_shadow(%struct.phy_device* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %58

17:                                               ; preds = %9
  %18 = load i32, i32* @BCM54XX_SHD_SCR3_DLLAPD_DIS, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %22 = load i32, i32* @BCM54XX_SHD_SCR3, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @bcm_phy_write_shadow(%struct.phy_device* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %17, %2
  %26 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %27 = load i32, i32* @BCM54XX_SHD_APD, align 4
  %28 = call i32 @bcm_phy_read_shadow(%struct.phy_device* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %58

33:                                               ; preds = %25
  %34 = load i32, i32* @BCM_APD_CLR_MASK, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %38 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AUTONEG_ENABLE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @BCM54XX_SHD_APD_EN, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %50

46:                                               ; preds = %33
  %47 = load i32, i32* @BCM_NO_ANEG_APD_EN, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @BCM_APD_SINGLELP_EN, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %55 = load i32, i32* @BCM54XX_SHD_APD, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @bcm_phy_write_shadow(%struct.phy_device* %54, i32 %55, i32 %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %50, %31, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @bcm_phy_read_shadow(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm_phy_write_shadow(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
