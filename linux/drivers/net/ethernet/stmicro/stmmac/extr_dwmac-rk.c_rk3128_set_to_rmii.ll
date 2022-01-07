; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk3128_set_to_rmii.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk3128_set_to_rmii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_priv_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Missing rockchip,grf property\0A\00", align 1
@RK3128_GRF_MAC_CON1 = common dso_local global i32 0, align 4
@RK3128_GMAC_PHY_INTF_SEL_RMII = common dso_local global i32 0, align 4
@RK3128_GMAC_RMII_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_priv_data*)* @rk3128_set_to_rmii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3128_set_to_rmii(%struct.rk_priv_data* %0) #0 {
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
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @IS_ERR(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i32 @dev_err(%struct.device* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.rk_priv_data*, %struct.rk_priv_data** %2, align 8
  %18 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RK3128_GRF_MAC_CON1, align 4
  %21 = load i32, i32* @RK3128_GMAC_PHY_INTF_SEL_RMII, align 4
  %22 = load i32, i32* @RK3128_GMAC_RMII_MODE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @regmap_write(i32 %19, i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %16, %13
  ret void
}

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
