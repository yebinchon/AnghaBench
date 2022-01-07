; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw-phy-sel.c_cpsw_gmii_sel_am3352.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw-phy-sel.c_cpsw_gmii_sel_am3352.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_phy_sel_priv = type { i32, i64, i32 }

@AM33XX_GMII_SEL_MODE_RMII = common dso_local global i32 0, align 4
@AM33XX_GMII_SEL_MODE_RGMII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unsupported PHY mode: \22%s\22. Defaulting to MII.\0A\00", align 1
@AM33XX_GMII_SEL_MODE_MII = common dso_local global i32 0, align 4
@GMII_SEL_MODE_MASK = common dso_local global i32 0, align 4
@AM33XX_GMII_SEL_RMII1_IO_CLK_EN = common dso_local global i32 0, align 4
@AM33XX_GMII_SEL_RMII2_IO_CLK_EN = common dso_local global i32 0, align 4
@AM33XX_GMII_SEL_RGMII1_IDMODE = common dso_local global i32 0, align 4
@AM33XX_GMII_SEL_RGMII2_IDMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_phy_sel_priv*, i32, i32)* @cpsw_gmii_sel_am3352 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_gmii_sel_am3352(%struct.cpsw_phy_sel_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpsw_phy_sel_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpsw_phy_sel_priv* %0, %struct.cpsw_phy_sel_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %4, align 8
  %12 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @readl(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %22 [
    i32 128, label %16
    i32 132, label %18
    i32 131, label %20
    i32 130, label %20
    i32 129, label %20
    i32 133, label %29
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @AM33XX_GMII_SEL_MODE_RMII, align 4
  store i32 %17, i32* %9, align 4
  br label %31

18:                                               ; preds = %3
  %19 = load i32, i32* @AM33XX_GMII_SEL_MODE_RGMII, align 4
  store i32 %19, i32* %9, align 4
  br label %31

20:                                               ; preds = %3, %3, %3
  %21 = load i32, i32* @AM33XX_GMII_SEL_MODE_RGMII, align 4
  store i32 %21, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %31

22:                                               ; preds = %3
  %23 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %4, align 8
  %24 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @phy_modes(i32 %26)
  %28 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %3, %22
  %30 = load i32, i32* @AM33XX_GMII_SEL_MODE_MII, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %29, %20, %18, %16
  %32 = load i32, i32* @GMII_SEL_MODE_MASK, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %33, 2
  %35 = shl i32 %32, %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 6
  %38 = call i32 @BIT(i32 %37)
  %39 = or i32 %35, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 4
  %42 = call i32 @BIT(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %45, 2
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %4, align 8
  %50 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %31
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @AM33XX_GMII_SEL_RMII1_IO_CLK_EN, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @AM33XX_GMII_SEL_RMII2_IO_CLK_EN, align 4
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %31
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* @AM33XX_GMII_SEL_RGMII1_IDMODE, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %79

75:                                               ; preds = %68
  %76 = load i32, i32* @AM33XX_GMII_SEL_RGMII2_IDMODE, align 4
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %65
  %81 = load i32, i32* %8, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %4, align 8
  %90 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @writel(i32 %88, i32 %91)
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @phy_modes(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
