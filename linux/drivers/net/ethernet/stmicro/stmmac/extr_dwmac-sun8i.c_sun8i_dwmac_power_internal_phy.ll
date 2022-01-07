; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_sun8i_dwmac_power_internal_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_sun8i_dwmac_power_internal_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sunxi_priv_data* }
%struct.sunxi_priv_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Internal PHY already powered\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Powering internal PHY\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot enable internal PHY\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Cannot deassert internal phy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*)* @sun8i_dwmac_power_internal_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_dwmac_power_internal_phy(%struct.stmmac_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca %struct.sunxi_priv_data*, align 8
  %5 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  %6 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %7 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %9, align 8
  store %struct.sunxi_priv_data* %10, %struct.sunxi_priv_data** %4, align 8
  %11 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %4, align 8
  %12 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %17 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_warn(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %61

20:                                               ; preds = %1
  %21 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %22 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_info(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %4, align 8
  %26 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_prepare_enable(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %33 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %61

37:                                               ; preds = %20
  %38 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %4, align 8
  %39 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @reset_control_assert(i32 %40)
  %42 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %4, align 8
  %43 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @reset_control_deassert(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %37
  %49 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %50 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %4, align 8
  %54 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clk_disable_unprepare(i32 %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %61

58:                                               ; preds = %37
  %59 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %4, align 8
  %60 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %48, %31, %15
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
