; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw-phy-sel.c_cpsw_gmii_sel_dra7xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw-phy-sel.c_cpsw_gmii_sel_dra7xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_phy_sel_priv = type { i32, i32, i64 }

@AM33XX_GMII_SEL_MODE_RMII = common dso_local global i32 0, align 4
@AM33XX_GMII_SEL_MODE_RGMII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unsupported PHY mode: \22%s\22. Defaulting to MII.\0A\00", align 1
@AM33XX_GMII_SEL_MODE_MII = common dso_local global i32 0, align 4
@GMII_SEL_MODE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid slave number...\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"RMII External clock is not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_phy_sel_priv*, i32, i32)* @cpsw_gmii_sel_dra7xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_gmii_sel_dra7xx(%struct.cpsw_phy_sel_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpsw_phy_sel_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpsw_phy_sel_priv* %0, %struct.cpsw_phy_sel_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %4, align 8
  %11 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @readl(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %19 [
    i32 128, label %15
    i32 132, label %17
    i32 131, label %17
    i32 130, label %17
    i32 129, label %17
    i32 133, label %26
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @AM33XX_GMII_SEL_MODE_RMII, align 4
  store i32 %16, i32* %9, align 4
  br label %28

17:                                               ; preds = %3, %3, %3, %3
  %18 = load i32, i32* @AM33XX_GMII_SEL_MODE_RGMII, align 4
  store i32 %18, i32* %9, align 4
  br label %28

19:                                               ; preds = %3
  %20 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %4, align 8
  %21 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @phy_modes(i32 %23)
  %25 = call i32 @dev_warn(i32 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %3, %19
  %27 = load i32, i32* @AM33XX_GMII_SEL_MODE_MII, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %26, %17, %15
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %37 [
    i32 0, label %30
    i32 1, label %32
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @GMII_SEL_MODE_MASK, align 4
  store i32 %31, i32* %8, align 4
  br label %42

32:                                               ; preds = %28
  %33 = load i32, i32* @GMII_SEL_MODE_MASK, align 4
  %34 = shl i32 %33, 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = shl i32 %35, 4
  store i32 %36, i32* %9, align 4
  br label %42

37:                                               ; preds = %28
  %38 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %4, align 8
  %39 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %65

42:                                               ; preds = %32, %30
  %43 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %4, align 8
  %44 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %4, align 8
  %49 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %8, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %4, align 8
  %62 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @writel(i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %52, %37
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @phy_modes(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
