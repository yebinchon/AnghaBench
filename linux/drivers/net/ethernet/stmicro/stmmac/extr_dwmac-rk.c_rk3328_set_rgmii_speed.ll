; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk3328_set_rgmii_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk3328_set_rgmii_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_priv_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Missing rockchip,grf property\0A\00", align 1
@RK3328_GRF_MAC_CON1 = common dso_local global i32 0, align 4
@RK3328_GMAC_CLK_2_5M = common dso_local global i32 0, align 4
@RK3328_GMAC_CLK_25M = common dso_local global i32 0, align 4
@RK3328_GMAC_CLK_125M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"unknown speed value for RGMII! speed=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_priv_data*, i32)* @rk3328_set_rgmii_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3328_set_rgmii_speed(%struct.rk_priv_data* %0, i32 %1) #0 {
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
  br label %54

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %23 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RK3328_GRF_MAC_CON1, align 4
  %26 = load i32, i32* @RK3328_GMAC_CLK_2_5M, align 4
  %27 = call i32 @regmap_write(i32 %24, i32 %25, i32 %26)
  br label %54

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 100
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %33 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @RK3328_GRF_MAC_CON1, align 4
  %36 = load i32, i32* @RK3328_GMAC_CLK_25M, align 4
  %37 = call i32 @regmap_write(i32 %34, i32 %35, i32 %36)
  br label %53

38:                                               ; preds = %28
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 1000
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %43 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @RK3328_GRF_MAC_CON1, align 4
  %46 = load i32, i32* @RK3328_GMAC_CLK_125M, align 4
  %47 = call i32 @regmap_write(i32 %44, i32 %45, i32 %46)
  br label %52

48:                                               ; preds = %38
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %41
  br label %53

53:                                               ; preds = %52, %31
  br label %54

54:                                               ; preds = %15, %53, %21
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
