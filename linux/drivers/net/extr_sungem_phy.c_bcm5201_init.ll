; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_bcm5201_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_bcm5201_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32 }

@MII_BCM5201_MULTIPHY = common dso_local global i32 0, align 4
@MII_BCM5201_MULTIPHY_SUPERISOLATE = common dso_local global i32 0, align 4
@MII_BCM5201_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*)* @bcm5201_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5201_init(%struct.mii_phy* %0) #0 {
  %2 = alloca %struct.mii_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %2, align 8
  %4 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %5 = load i32, i32* @MII_BCM5201_MULTIPHY, align 4
  %6 = call i32 @sungem_phy_read(%struct.mii_phy* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MII_BCM5201_MULTIPHY_SUPERISOLATE, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %12 = load i32, i32* @MII_BCM5201_MULTIPHY, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @sungem_phy_write(%struct.mii_phy* %11, i32 %12, i32 %13)
  %15 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %16 = load i32, i32* @MII_BCM5201_INTERRUPT, align 4
  %17 = call i32 @sungem_phy_write(%struct.mii_phy* %15, i32 %16, i32 0)
  ret i32 0
}

declare dso_local i32 @sungem_phy_read(%struct.mii_phy*, i32) #1

declare dso_local i32 @sungem_phy_write(%struct.mii_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
