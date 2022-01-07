; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_gmac_integrated_phy_powerup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_gmac_integrated_phy_powerup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_priv_data = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rk_priv_data*)* }

@RK_GRF_MACPHY_CON0 = common dso_local global i32 0, align 4
@RK_MACPHY_CFG_CLK_50M = common dso_local global i32 0, align 4
@RK_GMAC2PHY_RMII_MODE = common dso_local global i32 0, align 4
@RK_GRF_MACPHY_CON2 = common dso_local global i32 0, align 4
@RK_GRF_CON2_MACPHY_ID = common dso_local global i32 0, align 4
@RK_GRF_MACPHY_CON3 = common dso_local global i32 0, align 4
@RK_GRF_CON3_MACPHY_ID = common dso_local global i32 0, align 4
@RK_MACPHY_DISABLE = common dso_local global i32 0, align 4
@RK_MACPHY_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_priv_data*)* @rk_gmac_integrated_phy_powerup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_gmac_integrated_phy_powerup(%struct.rk_priv_data* %0) #0 {
  %2 = alloca %struct.rk_priv_data*, align 8
  store %struct.rk_priv_data* %0, %struct.rk_priv_data** %2, align 8
  %3 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %4 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.rk_priv_data*)*, i32 (%struct.rk_priv_data*)** %6, align 8
  %8 = icmp ne i32 (%struct.rk_priv_data*)* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %11 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.rk_priv_data*)*, i32 (%struct.rk_priv_data*)** %13, align 8
  %15 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %16 = call i32 %14(%struct.rk_priv_data* %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %19 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RK_GRF_MACPHY_CON0, align 4
  %22 = load i32, i32* @RK_MACPHY_CFG_CLK_50M, align 4
  %23 = call i32 @regmap_write(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %25 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RK_GRF_MACPHY_CON0, align 4
  %28 = load i32, i32* @RK_GMAC2PHY_RMII_MODE, align 4
  %29 = call i32 @regmap_write(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %31 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @RK_GRF_MACPHY_CON2, align 4
  %34 = load i32, i32* @RK_GRF_CON2_MACPHY_ID, align 4
  %35 = call i32 @regmap_write(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %37 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RK_GRF_MACPHY_CON3, align 4
  %40 = load i32, i32* @RK_GRF_CON3_MACPHY_ID, align 4
  %41 = call i32 @regmap_write(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %43 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %82

46:                                               ; preds = %17
  %47 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %48 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @RK_GRF_MACPHY_CON0, align 4
  %51 = load i32, i32* @RK_MACPHY_DISABLE, align 4
  %52 = call i32 @regmap_write(i32 %49, i32 %50, i32 %51)
  %53 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %54 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %59 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @reset_control_assert(i64 %60)
  br label %62

62:                                               ; preds = %57, %46
  %63 = call i32 @usleep_range(i32 10, i32 20)
  %64 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %65 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %70 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @reset_control_deassert(i64 %71)
  br label %73

73:                                               ; preds = %68, %62
  %74 = call i32 @usleep_range(i32 10, i32 20)
  %75 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %76 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @RK_GRF_MACPHY_CON0, align 4
  %79 = load i32, i32* @RK_MACPHY_ENABLE, align 4
  %80 = call i32 @regmap_write(i32 %77, i32 %78, i32 %79)
  %81 = call i32 @msleep(i32 30)
  br label %82

82:                                               ; preds = %73, %17
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @reset_control_assert(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @reset_control_deassert(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
