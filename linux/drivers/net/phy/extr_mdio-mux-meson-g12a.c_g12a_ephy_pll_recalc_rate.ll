; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-meson-g12a.c_g12a_ephy_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-meson-g12a.c_g12a_ephy_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.g12a_ephy_pll = type { i64 }

@ETH_PLL_CTL0 = common dso_local global i64 0, align 8
@PLL_CTL0_M = common dso_local global i32 0, align 4
@PLL_CTL0_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @g12a_ephy_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @g12a_ephy_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.g12a_ephy_pll*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.g12a_ephy_pll* @g12a_ephy_pll_to_dev(%struct.clk_hw* %9)
  store %struct.g12a_ephy_pll* %10, %struct.g12a_ephy_pll** %5, align 8
  %11 = load %struct.g12a_ephy_pll*, %struct.g12a_ephy_pll** %5, align 8
  %12 = getelementptr inbounds %struct.g12a_ephy_pll, %struct.g12a_ephy_pll* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ETH_PLL_CTL0, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @readl(i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i32, i32* @PLL_CTL0_M, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @FIELD_GET(i32 %17, i64 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i32, i32* @PLL_CTL0_N, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @FIELD_GET(i32 %20, i64 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = mul i64 %23, %24
  %26 = load i64, i64* %8, align 8
  %27 = udiv i64 %25, %26
  ret i64 %27
}

declare dso_local %struct.g12a_ephy_pll* @g12a_ephy_pll_to_dev(%struct.clk_hw*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @FIELD_GET(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
