; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_bcm54xx_setup_forced.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_bcm54xx_setup_forced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32, i32, i64, i64 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_SPD2 = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*, i32, i32)* @bcm54xx_setup_forced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm54xx_setup_forced(%struct.mii_phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %9 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %12 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %15 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %17 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %19 = load i32, i32* @MII_BMCR, align 4
  %20 = call i32 @sungem_phy_read(%struct.mii_phy* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @BMCR_FULLDPLX, align 4
  %22 = load i32, i32* @BMCR_SPEED100, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @BMCR_SPD2, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @BMCR_ANENABLE, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %32 = load i32, i32* @MII_BMCR, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @BMCR_RESET, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @sungem_phy_write(%struct.mii_phy* %31, i32 %32, i32 %35)
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %47 [
    i32 130, label %38
    i32 129, label %39
    i32 128, label %43
  ]

38:                                               ; preds = %3
  br label %47

39:                                               ; preds = %3
  %40 = load i32, i32* @BMCR_SPEED100, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %47

43:                                               ; preds = %3
  %44 = load i32, i32* @BMCR_SPD2, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %3, %39, %38
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @DUPLEX_FULL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @BMCR_FULLDPLX, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %57 = load i32, i32* @MII_BMCR, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @sungem_phy_write(%struct.mii_phy* %56, i32 %57, i32 %58)
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
