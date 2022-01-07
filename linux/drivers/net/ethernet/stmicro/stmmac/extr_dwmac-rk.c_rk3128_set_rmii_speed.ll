; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk3128_set_rmii_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk3128_set_rmii_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_priv_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Missing rockchip,grf property\0A\00", align 1
@RK3128_GRF_MAC_CON1 = common dso_local global i32 0, align 4
@RK3128_GMAC_RMII_CLK_2_5M = common dso_local global i32 0, align 4
@RK3128_GMAC_SPEED_10M = common dso_local global i32 0, align 4
@RK3128_GMAC_RMII_CLK_25M = common dso_local global i32 0, align 4
@RK3128_GMAC_SPEED_100M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"unknown speed value for RMII! speed=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_priv_data*, i32)* @rk3128_set_rmii_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3128_set_rmii_speed(%struct.rk_priv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.rk_priv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.rk_priv_data* %0, %struct.rk_priv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %7 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %11 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @IS_ERR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %47

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %23 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RK3128_GRF_MAC_CON1, align 4
  %26 = load i32, i32* @RK3128_GMAC_RMII_CLK_2_5M, align 4
  %27 = load i32, i32* @RK3128_GMAC_SPEED_10M, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @regmap_write(i32 %24, i32 %25, i32 %28)
  br label %47

30:                                               ; preds = %18
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 100
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %35 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RK3128_GRF_MAC_CON1, align 4
  %38 = load i32, i32* @RK3128_GMAC_RMII_CLK_25M, align 4
  %39 = load i32, i32* @RK3128_GMAC_SPEED_100M, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @regmap_write(i32 %36, i32 %37, i32 %40)
  br label %46

42:                                               ; preds = %30
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %33
  br label %47

47:                                               ; preds = %15, %46, %21
  ret void
}

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
