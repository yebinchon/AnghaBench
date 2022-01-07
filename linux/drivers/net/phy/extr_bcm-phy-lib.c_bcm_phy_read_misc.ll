; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm-phy-lib.c_bcm_phy_read_misc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm-phy-lib.c_bcm_phy_read_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_BCM54XX_AUX_CTL = common dso_local global i32 0, align 4
@MII_BCM54XX_AUXCTL_SHDWSEL_MISC = common dso_local global i32 0, align 4
@MII_BCM54XX_AUXCTL_ACTL_SMDSP_ENA = common dso_local global i32 0, align 4
@MII_BCM_CHANNEL_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_phy_read_misc(%struct.phy_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %11 = load i32, i32* @MII_BCM54XX_AUX_CTL, align 4
  %12 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_MISC, align 4
  %13 = call i32 @phy_write(%struct.phy_device* %10, i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %43

18:                                               ; preds = %3
  %19 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %20 = load i32, i32* @MII_BCM54XX_AUX_CTL, align 4
  %21 = call i32 @phy_read(%struct.phy_device* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @MII_BCM54XX_AUXCTL_ACTL_SMDSP_ENA, align 4
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %26 = load i32, i32* @MII_BCM54XX_AUX_CTL, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @phy_write(%struct.phy_device* %25, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %43

33:                                               ; preds = %18
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MII_BCM_CHANNEL_WIDTH, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @bcm_phy_read_exp(%struct.phy_device* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %33, %31, %16
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @bcm_phy_read_exp(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
