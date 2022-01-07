; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_bcm5411_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_bcm5411_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@MII_BCM5400_GB_CONTROL = common dso_local global i32 0, align 4
@MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*)* @bcm5411_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5411_init(%struct.mii_phy* %0) #0 {
  %2 = alloca %struct.mii_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %2, align 8
  %4 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %5 = call i32 @sungem_phy_write(%struct.mii_phy* %4, i32 28, i32 35875)
  %6 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %7 = call i32 @sungem_phy_write(%struct.mii_phy* %6, i32 28, i32 36003)
  %8 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %9 = call i32 @sungem_phy_write(%struct.mii_phy* %8, i32 28, i32 35875)
  %10 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %11 = load i32, i32* @MII_BMCR, align 4
  %12 = load i32, i32* @BMCR_RESET, align 4
  %13 = call i32 @sungem_phy_write(%struct.mii_phy* %10, i32 %11, i32 %12)
  %14 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %15 = load i32, i32* @MII_BMCR, align 4
  %16 = call i32 @sungem_phy_write(%struct.mii_phy* %14, i32 %15, i32 4928)
  %17 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %18 = load i32, i32* @MII_BCM5400_GB_CONTROL, align 4
  %19 = call i32 @sungem_phy_read(%struct.mii_phy* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %24 = load i32, i32* @MII_BCM5400_GB_CONTROL, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @sungem_phy_write(%struct.mii_phy* %23, i32 %24, i32 %25)
  %27 = call i32 @udelay(i32 10)
  %28 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %29 = call i32 @reset_one_mii_phy(%struct.mii_phy* %28, i32 31)
  ret i32 0
}

declare dso_local i32 @sungem_phy_write(%struct.mii_phy*, i32, i32) #1

declare dso_local i32 @sungem_phy_read(%struct.mii_phy*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_one_mii_phy(%struct.mii_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
