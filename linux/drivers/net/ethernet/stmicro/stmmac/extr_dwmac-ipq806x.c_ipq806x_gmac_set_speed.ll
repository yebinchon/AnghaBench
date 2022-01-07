; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-ipq806x.c_ipq806x_gmac_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-ipq806x.c_ipq806x_gmac_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipq806x_gmac = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Unsupported PHY mode: \22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NSS_COMMON_CLK_GATE = common dso_local global i32 0, align 4
@NSS_COMMON_CLK_DIV0 = common dso_local global i32 0, align 4
@NSS_COMMON_CLK_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipq806x_gmac*, i32)* @ipq806x_gmac_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipq806x_gmac_set_speed(%struct.ipq806x_gmac* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipq806x_gmac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipq806x_gmac* %0, %struct.ipq806x_gmac** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %10 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %38 [
    i32 129, label %12
    i32 128, label %25
  ]

12:                                               ; preds = %2
  %13 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @get_clk_div_rgmii(%struct.ipq806x_gmac* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %17 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @NSS_COMMON_CLK_GATE_RGMII_RX_EN(i32 %18)
  %20 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %21 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @NSS_COMMON_CLK_GATE_RGMII_TX_EN(i32 %22)
  %24 = or i32 %19, %23
  store i32 %24, i32* %6, align 4
  br label %50

25:                                               ; preds = %2
  %26 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @get_clk_div_sgmii(%struct.ipq806x_gmac* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %30 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @NSS_COMMON_CLK_GATE_GMII_RX_EN(i32 %31)
  %33 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %34 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @NSS_COMMON_CLK_GATE_GMII_TX_EN(i32 %35)
  %37 = or i32 %32, %36
  store i32 %37, i32* %6, align 4
  br label %50

38:                                               ; preds = %2
  %39 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %40 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %44 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @phy_modes(i32 %45)
  %47 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %108

50:                                               ; preds = %25, %12
  %51 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %52 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @NSS_COMMON_CLK_GATE, align 4
  %55 = call i32 @regmap_read(i32 %53, i32 %54, i32* %7)
  %56 = load i32, i32* %6, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %61 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NSS_COMMON_CLK_GATE, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @regmap_write(i32 %62, i32 %63, i32 %64)
  %66 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %67 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NSS_COMMON_CLK_DIV0, align 4
  %70 = call i32 @regmap_read(i32 %68, i32 %69, i32* %7)
  %71 = load i32, i32* @NSS_COMMON_CLK_DIV_MASK, align 4
  %72 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %73 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @NSS_COMMON_CLK_DIV_OFFSET(i32 %74)
  %76 = shl i32 %71, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %82 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @NSS_COMMON_CLK_DIV_OFFSET(i32 %83)
  %85 = shl i32 %80, %84
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %89 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @NSS_COMMON_CLK_DIV0, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @regmap_write(i32 %90, i32 %91, i32 %92)
  %94 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %95 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @NSS_COMMON_CLK_GATE, align 4
  %98 = call i32 @regmap_read(i32 %96, i32 %97, i32* %7)
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %103 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @NSS_COMMON_CLK_GATE, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @regmap_write(i32 %104, i32 %105, i32 %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %50, %38
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @get_clk_div_rgmii(%struct.ipq806x_gmac*, i32) #1

declare dso_local i32 @NSS_COMMON_CLK_GATE_RGMII_RX_EN(i32) #1

declare dso_local i32 @NSS_COMMON_CLK_GATE_RGMII_TX_EN(i32) #1

declare dso_local i32 @get_clk_div_sgmii(%struct.ipq806x_gmac*, i32) #1

declare dso_local i32 @NSS_COMMON_CLK_GATE_GMII_RX_EN(i32) #1

declare dso_local i32 @NSS_COMMON_CLK_GATE_GMII_TX_EN(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @phy_modes(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @NSS_COMMON_CLK_DIV_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
