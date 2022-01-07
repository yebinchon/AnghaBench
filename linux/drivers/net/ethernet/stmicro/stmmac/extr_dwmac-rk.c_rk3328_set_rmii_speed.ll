; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk3328_set_rmii_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk3328_set_rmii_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_priv_data = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Missing rockchip,grf property\0A\00", align 1
@RK3328_GRF_MAC_CON2 = common dso_local global i32 0, align 4
@RK3328_GRF_MAC_CON1 = common dso_local global i32 0, align 4
@RK3328_GMAC_RMII_CLK_2_5M = common dso_local global i32 0, align 4
@RK3328_GMAC_SPEED_10M = common dso_local global i32 0, align 4
@RK3328_GMAC_RMII_CLK_25M = common dso_local global i32 0, align 4
@RK3328_GMAC_SPEED_100M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"unknown speed value for RMII! speed=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_priv_data*, i32)* @rk3328_set_rmii_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3328_set_rmii_speed(%struct.rk_priv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.rk_priv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.rk_priv_data* %0, %struct.rk_priv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %8 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %12 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @IS_ERR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %58

19:                                               ; preds = %2
  %20 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %21 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @RK3328_GRF_MAC_CON2, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @RK3328_GRF_MAC_CON1, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %34 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @RK3328_GMAC_RMII_CLK_2_5M, align 4
  %38 = load i32, i32* @RK3328_GMAC_SPEED_10M, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @regmap_write(i32 %35, i32 %36, i32 %39)
  br label %58

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 100
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %46 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @RK3328_GMAC_RMII_CLK_25M, align 4
  %50 = load i32, i32* @RK3328_GMAC_SPEED_100M, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @regmap_write(i32 %47, i32 %48, i32 %51)
  br label %57

53:                                               ; preds = %41
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %44
  br label %58

58:                                               ; preds = %16, %57, %32
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
