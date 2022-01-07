; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_broadcom.c_bcm50610_a0_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_broadcom.c_bcm50610_a0_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_BCM54XX_EXP_AADJ1CH0 = common dso_local global i32 0, align 4
@MII_BCM54XX_EXP_AADJ1CH0_SWP_ABCD_OEN = common dso_local global i32 0, align 4
@MII_BCM54XX_EXP_AADJ1CH0_SWSEL_THPF = common dso_local global i32 0, align 4
@MII_BCM54XX_EXP_AADJ1CH3 = common dso_local global i32 0, align 4
@MII_BCM54XX_EXP_AADJ1CH3_ADCCKADJ = common dso_local global i32 0, align 4
@MII_BCM54XX_EXP_EXP75 = common dso_local global i32 0, align 4
@MII_BCM54XX_EXP_EXP75_VDACCTRL = common dso_local global i32 0, align 4
@MII_BCM54XX_EXP_EXP96 = common dso_local global i32 0, align 4
@MII_BCM54XX_EXP_EXP96_MYST = common dso_local global i32 0, align 4
@MII_BCM54XX_EXP_EXP97 = common dso_local global i32 0, align 4
@MII_BCM54XX_EXP_EXP97_MYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm50610_a0_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm50610_a0_workaround(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @MII_BCM54XX_EXP_AADJ1CH0, align 4
  %7 = load i32, i32* @MII_BCM54XX_EXP_AADJ1CH0_SWP_ABCD_OEN, align 4
  %8 = load i32, i32* @MII_BCM54XX_EXP_AADJ1CH0_SWSEL_THPF, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @bcm_phy_write_exp(%struct.phy_device* %5, i32 %6, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %17 = load i32, i32* @MII_BCM54XX_EXP_AADJ1CH3, align 4
  %18 = load i32, i32* @MII_BCM54XX_EXP_AADJ1CH3_ADCCKADJ, align 4
  %19 = call i32 @bcm_phy_write_exp(%struct.phy_device* %16, i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %48

24:                                               ; preds = %15
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = load i32, i32* @MII_BCM54XX_EXP_EXP75, align 4
  %27 = load i32, i32* @MII_BCM54XX_EXP_EXP75_VDACCTRL, align 4
  %28 = call i32 @bcm_phy_write_exp(%struct.phy_device* %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %48

33:                                               ; preds = %24
  %34 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %35 = load i32, i32* @MII_BCM54XX_EXP_EXP96, align 4
  %36 = load i32, i32* @MII_BCM54XX_EXP_EXP96_MYST, align 4
  %37 = call i32 @bcm_phy_write_exp(%struct.phy_device* %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %48

42:                                               ; preds = %33
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = load i32, i32* @MII_BCM54XX_EXP_EXP97, align 4
  %45 = load i32, i32* @MII_BCM54XX_EXP_EXP97_MYST, align 4
  %46 = call i32 @bcm_phy_write_exp(%struct.phy_device* %43, i32 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %42, %40, %31, %22, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @bcm_phy_write_exp(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
