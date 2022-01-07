; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_gmac_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_gmac_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_priv_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_priv_data*)* @rk_gmac_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_gmac_powerdown(%struct.rk_priv_data* %0) #0 {
  %2 = alloca %struct.rk_priv_data*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.rk_priv_data* %0, %struct.rk_priv_data** %2, align 8
  %4 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %5 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %9 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %14 = call i32 @rk_gmac_integrated_phy_powerdown(%struct.rk_priv_data* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i32 @pm_runtime_put_sync(%struct.device* %16)
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i32 @pm_runtime_disable(%struct.device* %18)
  %20 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %21 = call i32 @phy_power_on(%struct.rk_priv_data* %20, i32 0)
  %22 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %23 = call i32 @gmac_clk_enable(%struct.rk_priv_data* %22, i32 0)
  ret void
}

declare dso_local i32 @rk_gmac_integrated_phy_powerdown(%struct.rk_priv_data*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @phy_power_on(%struct.rk_priv_data*, i32) #1

declare dso_local i32 @gmac_clk_enable(%struct.rk_priv_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
