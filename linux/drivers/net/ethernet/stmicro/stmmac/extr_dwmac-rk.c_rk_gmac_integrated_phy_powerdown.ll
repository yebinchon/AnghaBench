; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_gmac_integrated_phy_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_gmac_integrated_phy_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_priv_data = type { i64, i32 }

@RK_GRF_MACPHY_CON0 = common dso_local global i32 0, align 4
@RK_MACPHY_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_priv_data*)* @rk_gmac_integrated_phy_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_gmac_integrated_phy_powerdown(%struct.rk_priv_data* %0) #0 {
  %2 = alloca %struct.rk_priv_data*, align 8
  store %struct.rk_priv_data* %0, %struct.rk_priv_data** %2, align 8
  %3 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %4 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @RK_GRF_MACPHY_CON0, align 4
  %7 = load i32, i32* @RK_MACPHY_DISABLE, align 4
  %8 = call i32 @regmap_write(i32 %5, i32 %6, i32 %7)
  %9 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %10 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %15 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @reset_control_assert(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @reset_control_assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
