; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_phy.c_emac_mii_reset_gpcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_phy.c_emac_mii_reset_gpcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i64 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISOLATE = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emac_mii_reset_gpcs(%struct.mii_phy* %0) #0 {
  %2 = alloca %struct.mii_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %2, align 8
  store i32 10000, i32* %4, align 4
  %5 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %6 = load i32, i32* @MII_BMCR, align 4
  %7 = call i32 @gpcs_phy_read(%struct.mii_phy* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @BMCR_ISOLATE, align 4
  %9 = load i32, i32* @BMCR_ANENABLE, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @BMCR_RESET, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %18 = load i32, i32* @MII_BMCR, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @gpcs_phy_write(%struct.mii_phy* %17, i32 %18, i32 %19)
  %21 = call i32 @udelay(i32 300)
  br label %22

22:                                               ; preds = %38, %1
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %28 = load i32, i32* @MII_BMCR, align 4
  %29 = call i32 @gpcs_phy_read(%struct.mii_phy* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @BMCR_RESET, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %40

38:                                               ; preds = %32, %26
  %39 = call i32 @udelay(i32 10)
  br label %22

40:                                               ; preds = %37, %22
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @BMCR_ISOLATE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %50 = load i32, i32* @MII_BMCR, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @BMCR_ISOLATE, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 @gpcs_phy_write(%struct.mii_phy* %49, i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %48, %45, %40
  %57 = load i32, i32* %4, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %61 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %67 = call i32 @gpcs_phy_write(%struct.mii_phy* %66, i32 4, i32 33056)
  %68 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %69 = call i32 @gpcs_phy_write(%struct.mii_phy* %68, i32 7, i32 10241)
  %70 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %71 = call i32 @gpcs_phy_write(%struct.mii_phy* %70, i32 0, i32 320)
  br label %72

72:                                               ; preds = %65, %59, %56
  %73 = load i32, i32* %4, align 4
  %74 = icmp sle i32 %73, 0
  %75 = zext i1 %74 to i32
  ret i32 %75
}

declare dso_local i32 @gpcs_phy_read(%struct.mii_phy*, i32) #1

declare dso_local i32 @gpcs_phy_write(%struct.mii_phy*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
