; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-meson-g12a.c_g12a_ephy_pll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-meson-g12a.c_g12a_ephy_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.g12a_ephy_pll = type { i64 }

@ETH_PLL_CTL0 = common dso_local global i64 0, align 8
@ETH_PLL_CTL1 = common dso_local global i64 0, align 8
@ETH_PLL_CTL2 = common dso_local global i64 0, align 8
@ETH_PLL_CTL3 = common dso_local global i64 0, align 8
@ETH_PLL_CTL4 = common dso_local global i64 0, align 8
@ETH_PLL_CTL5 = common dso_local global i64 0, align 8
@ETH_PLL_CTL6 = common dso_local global i64 0, align 8
@ETH_PLL_CTL7 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @g12a_ephy_pll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g12a_ephy_pll_init(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.g12a_ephy_pll*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %4 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %5 = call %struct.g12a_ephy_pll* @g12a_ephy_pll_to_dev(%struct.clk_hw* %4)
  store %struct.g12a_ephy_pll* %5, %struct.g12a_ephy_pll** %3, align 8
  %6 = load %struct.g12a_ephy_pll*, %struct.g12a_ephy_pll** %3, align 8
  %7 = getelementptr inbounds %struct.g12a_ephy_pll, %struct.g12a_ephy_pll* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ETH_PLL_CTL0, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 700449802, i64 %10)
  %12 = load %struct.g12a_ephy_pll*, %struct.g12a_ephy_pll** %3, align 8
  %13 = getelementptr inbounds %struct.g12a_ephy_pll, %struct.g12a_ephy_pll* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ETH_PLL_CTL1, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 -1837236224, i64 %16)
  %18 = load %struct.g12a_ephy_pll*, %struct.g12a_ephy_pll** %3, align 8
  %19 = getelementptr inbounds %struct.g12a_ephy_pll, %struct.g12a_ephy_pll* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ETH_PLL_CTL2, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 -1403041307, i64 %22)
  %24 = load %struct.g12a_ephy_pll*, %struct.g12a_ephy_pll** %3, align 8
  %25 = getelementptr inbounds %struct.g12a_ephy_pll, %struct.g12a_ephy_pll* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ETH_PLL_CTL3, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 0, i64 %28)
  %30 = load %struct.g12a_ephy_pll*, %struct.g12a_ephy_pll** %3, align 8
  %31 = getelementptr inbounds %struct.g12a_ephy_pll, %struct.g12a_ephy_pll* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ETH_PLL_CTL4, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 0, i64 %34)
  %36 = load %struct.g12a_ephy_pll*, %struct.g12a_ephy_pll** %3, align 8
  %37 = getelementptr inbounds %struct.g12a_ephy_pll, %struct.g12a_ephy_pll* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ETH_PLL_CTL5, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 538968064, i64 %40)
  %42 = load %struct.g12a_ephy_pll*, %struct.g12a_ephy_pll** %3, align 8
  %43 = getelementptr inbounds %struct.g12a_ephy_pll, %struct.g12a_ephy_pll* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ETH_PLL_CTL6, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 49154, i64 %46)
  %48 = load %struct.g12a_ephy_pll*, %struct.g12a_ephy_pll** %3, align 8
  %49 = getelementptr inbounds %struct.g12a_ephy_pll, %struct.g12a_ephy_pll* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ETH_PLL_CTL7, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 35, i64 %52)
  ret void
}

declare dso_local %struct.g12a_ephy_pll* @g12a_ephy_pll_to_dev(%struct.clk_hw*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
