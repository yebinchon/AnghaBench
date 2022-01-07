; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_mdio_mux_syscon_switch_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_mdio_mux_syscon_switch_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sunxi_priv_data* }
%struct.sunxi_priv_data = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Switch mux to internal PHY\00", align 1
@H3_EPHY_MUX_MASK = common dso_local global i32 0, align 4
@H3_EPHY_SELECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Switch mux to external PHY\00", align 1
@H3_EPHY_SHUTDOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid child ID %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @mdio_mux_syscon_switch_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_mux_syscon_switch_fn(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stmmac_priv*, align 8
  %9 = alloca %struct.sunxi_priv_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.stmmac_priv*
  store %struct.stmmac_priv* %15, %struct.stmmac_priv** %8, align 8
  %16 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %17 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %19, align 8
  store %struct.sunxi_priv_data* %20, %struct.sunxi_priv_data** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = xor i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %83

25:                                               ; preds = %3
  %26 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %9, align 8
  %27 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regmap_field_read(i32 %28, i32* %10)
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %53 [
    i32 128, label %31
    i32 129, label %42
  ]

31:                                               ; preds = %25
  %32 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %33 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_info(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @H3_EPHY_MUX_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load i32, i32* @H3_EPHY_SELECT, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %61

42:                                               ; preds = %25
  %43 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %44 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_info(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @H3_EPHY_MUX_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = load i32, i32* @H3_EPHY_SHUTDOWN, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %61

53:                                               ; preds = %25
  %54 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %55 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %85

61:                                               ; preds = %42, %31
  %62 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %9, align 8
  %63 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @regmap_field_write(i32 %64, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %71 = call i32 @sun8i_dwmac_power_internal_phy(%struct.stmmac_priv* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %4, align 4
  br label %85

76:                                               ; preds = %69
  br label %80

77:                                               ; preds = %61
  %78 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %9, align 8
  %79 = call i32 @sun8i_dwmac_unpower_internal_phy(%struct.sunxi_priv_data* %78)
  br label %80

80:                                               ; preds = %77, %76
  %81 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %82 = call i32 @sun8i_dwmac_reset(%struct.stmmac_priv* %81)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %80, %3
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %74, %53
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @regmap_field_read(i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @sun8i_dwmac_power_internal_phy(%struct.stmmac_priv*) #1

declare dso_local i32 @sun8i_dwmac_unpower_internal_phy(%struct.sunxi_priv_data*) #1

declare dso_local i32 @sun8i_dwmac_reset(%struct.stmmac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
