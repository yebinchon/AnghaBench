; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_gmac_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_gmac_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rk_priv_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rk_gmac_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_gmac_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.rk_priv_data*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.rk_priv_data* @get_stmmac_bsp_priv(i32* %6)
  store %struct.rk_priv_data* %7, %struct.rk_priv_data** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call i32 @stmmac_dvr_remove(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %12 = call i32 @rk_gmac_powerdown(%struct.rk_priv_data* %11)
  %13 = load i32, i32* %4, align 4
  ret i32 %13
}

declare dso_local %struct.rk_priv_data* @get_stmmac_bsp_priv(i32*) #1

declare dso_local i32 @stmmac_dvr_remove(i32*) #1

declare dso_local i32 @rk_gmac_powerdown(%struct.rk_priv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
