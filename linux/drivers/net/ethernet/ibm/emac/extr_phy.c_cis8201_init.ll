; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_phy.c_cis8201_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_phy.c_cis8201_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32 }

@MII_CIS8201_EPCR = common dso_local global i32 0, align 4
@EPCR_MODE_MASK = common dso_local global i32 0, align 4
@EPCR_TBI_MODE = common dso_local global i32 0, align 4
@EPCR_RTBI_MODE = common dso_local global i32 0, align 4
@EPCR_GMII_MODE = common dso_local global i32 0, align 4
@EPCR_RGMII_MODE = common dso_local global i32 0, align 4
@MII_CIS8201_ACSR = common dso_local global i32 0, align 4
@ACSR_PIN_PRIO_SELECT = common dso_local global i32 0, align 4
@MII_CIS8201_10BTCSR = common dso_local global i32 0, align 4
@TENBTCSR_ECHO_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*)* @cis8201_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cis8201_init(%struct.mii_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %3, align 8
  %5 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %6 = load i32, i32* @MII_CIS8201_EPCR, align 4
  %7 = call i32 @phy_read(%struct.mii_phy* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %58

12:                                               ; preds = %1
  %13 = load i32, i32* @EPCR_MODE_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %18 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %33 [
    i32 128, label %20
    i32 129, label %24
    i32 131, label %28
    i32 130, label %32
  ]

20:                                               ; preds = %12
  %21 = load i32, i32* @EPCR_TBI_MODE, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %37

24:                                               ; preds = %12
  %25 = load i32, i32* @EPCR_RTBI_MODE, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %37

28:                                               ; preds = %12
  %29 = load i32, i32* @EPCR_GMII_MODE, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %37

32:                                               ; preds = %12
  br label %33

33:                                               ; preds = %12, %32
  %34 = load i32, i32* @EPCR_RGMII_MODE, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %28, %24, %20
  %38 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %39 = load i32, i32* @MII_CIS8201_EPCR, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @phy_write(%struct.mii_phy* %38, i32 %39, i32 %40)
  %42 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %43 = load i32, i32* @MII_CIS8201_ACSR, align 4
  %44 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %45 = load i32, i32* @MII_CIS8201_ACSR, align 4
  %46 = call i32 @phy_read(%struct.mii_phy* %44, i32 %45)
  %47 = load i32, i32* @ACSR_PIN_PRIO_SELECT, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @phy_write(%struct.mii_phy* %42, i32 %43, i32 %48)
  %50 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %51 = load i32, i32* @MII_CIS8201_10BTCSR, align 4
  %52 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %53 = load i32, i32* @MII_CIS8201_10BTCSR, align 4
  %54 = call i32 @phy_read(%struct.mii_phy* %52, i32 %53)
  %55 = load i32, i32* @TENBTCSR_ECHO_DISABLE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @phy_write(%struct.mii_phy* %50, i32 %51, i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %37, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @phy_read(%struct.mii_phy*, i32) #1

declare dso_local i32 @phy_write(%struct.mii_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
