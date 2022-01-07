; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-meson-g12a.c_g12a_enable_internal_mdio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-meson-g12a.c_g12a_enable_internal_mdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g12a_mdio_mux = type { i32, i64, i32 }

@EPHY_G12A_ID = common dso_local global i32 0, align 4
@ETH_PHY_CNTL0 = common dso_local global i64 0, align 8
@PHY_CNTL1_ST_MODE = common dso_local global i32 0, align 4
@PHY_CNTL1_ST_PHYADD = common dso_local global i32 0, align 4
@EPHY_DFLT_ADD = common dso_local global i32 0, align 4
@PHY_CNTL1_MII_MODE = common dso_local global i32 0, align 4
@EPHY_MODE_RMII = common dso_local global i32 0, align 4
@PHY_CNTL1_CLK_EN = common dso_local global i32 0, align 4
@PHY_CNTL1_CLKFREQ = common dso_local global i32 0, align 4
@PHY_CNTL1_PHY_ENB = common dso_local global i32 0, align 4
@ETH_PHY_CNTL1 = common dso_local global i64 0, align 8
@PHY_CNTL2_USE_INTERNAL = common dso_local global i32 0, align 4
@PHY_CNTL2_SMI_SRC_MAC = common dso_local global i32 0, align 4
@PHY_CNTL2_RX_CLK_EPHY = common dso_local global i32 0, align 4
@ETH_PHY_CNTL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g12a_mdio_mux*)* @g12a_enable_internal_mdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g12a_enable_internal_mdio(%struct.g12a_mdio_mux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g12a_mdio_mux*, align 8
  %4 = alloca i32, align 4
  store %struct.g12a_mdio_mux* %0, %struct.g12a_mdio_mux** %3, align 8
  %5 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %3, align 8
  %6 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %3, align 8
  %11 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @clk_prepare_enable(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %62

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %3, align 8
  %21 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* @EPHY_G12A_ID, align 4
  %23 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %3, align 8
  %24 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ETH_PHY_CNTL0, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load i32, i32* @PHY_CNTL1_ST_MODE, align 4
  %30 = call i32 @FIELD_PREP(i32 %29, i32 3)
  %31 = load i32, i32* @PHY_CNTL1_ST_PHYADD, align 4
  %32 = load i32, i32* @EPHY_DFLT_ADD, align 4
  %33 = call i32 @FIELD_PREP(i32 %31, i32 %32)
  %34 = or i32 %30, %33
  %35 = load i32, i32* @PHY_CNTL1_MII_MODE, align 4
  %36 = load i32, i32* @EPHY_MODE_RMII, align 4
  %37 = call i32 @FIELD_PREP(i32 %35, i32 %36)
  %38 = or i32 %34, %37
  %39 = load i32, i32* @PHY_CNTL1_CLK_EN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @PHY_CNTL1_CLKFREQ, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PHY_CNTL1_PHY_ENB, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %3, align 8
  %46 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ETH_PHY_CNTL1, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load i32, i32* @PHY_CNTL2_USE_INTERNAL, align 4
  %52 = load i32, i32* @PHY_CNTL2_SMI_SRC_MAC, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @PHY_CNTL2_RX_CLK_EPHY, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %3, align 8
  %57 = getelementptr inbounds %struct.g12a_mdio_mux, %struct.g12a_mdio_mux* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ETH_PHY_CNTL2, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %19, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
