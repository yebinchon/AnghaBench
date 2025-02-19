; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_phy.c_genmii_setup_forced.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_phy.c_genmii_setup_forced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32, i32, i64, i64, i32 }

@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*, i32, i32)* @genmii_setup_forced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genmii_setup_forced(%struct.mii_phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @AUTONEG_DISABLE, align 4
  %10 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %11 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %14 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %17 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %19 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %21 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %23 = load i32, i32* @MII_BMCR, align 4
  %24 = call i32 @phy_read(%struct.mii_phy* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %72

29:                                               ; preds = %3
  %30 = load i32, i32* @BMCR_FULLDPLX, align 4
  %31 = load i32, i32* @BMCR_SPEED100, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @BMCR_SPEED1000, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @BMCR_ANENABLE, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %41 = load i32, i32* @MII_BMCR, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @BMCR_RESET, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @phy_write(%struct.mii_phy* %40, i32 %41, i32 %44)
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %56 [
    i32 130, label %47
    i32 129, label %48
    i32 128, label %52
  ]

47:                                               ; preds = %29
  br label %59

48:                                               ; preds = %29
  %49 = load i32, i32* @BMCR_SPEED100, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %59

52:                                               ; preds = %29
  %53 = load i32, i32* @BMCR_SPEED1000, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %59

56:                                               ; preds = %29
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %72

59:                                               ; preds = %52, %48, %47
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @DUPLEX_FULL, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* @BMCR_FULLDPLX, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %69 = load i32, i32* @MII_BMCR, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @phy_write(%struct.mii_phy* %68, i32 %69, i32 %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %56, %27
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @phy_read(%struct.mii_phy*, i32) #1

declare dso_local i32 @phy_write(%struct.mii_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
