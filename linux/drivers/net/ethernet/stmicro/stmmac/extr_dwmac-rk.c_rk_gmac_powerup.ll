; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_gmac_powerup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_gmac_powerup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_priv_data = type { i32, i64, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { {}*, i32 (%struct.rk_priv_data*, i32, i32)* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"init for RGMII\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"init for RGMII_ID\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"init for RGMII_RXID\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"init for RGMII_TXID\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"init for RMII\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"NO interface defined!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_priv_data*)* @rk_gmac_powerup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_gmac_powerup(%struct.rk_priv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rk_priv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.rk_priv_data* %0, %struct.rk_priv_data** %3, align 8
  %6 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %7 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %6, i32 0, i32 5
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %11 = call i32 @gmac_clk_enable(%struct.rk_priv_data* %10, i32 1)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %108

16:                                               ; preds = %1
  %17 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %18 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %83 [
    i32 132, label %20
    i32 131, label %36
    i32 130, label %46
    i32 129, label %59
    i32 128, label %72
  ]

20:                                               ; preds = %16
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call i32 @dev_info(%struct.device* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %24 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32 (%struct.rk_priv_data*, i32, i32)*, i32 (%struct.rk_priv_data*, i32, i32)** %26, align 8
  %28 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %29 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %30 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %33 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %27(%struct.rk_priv_data* %28, i32 %31, i32 %34)
  br label %86

36:                                               ; preds = %16
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = call i32 @dev_info(%struct.device* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %40 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32 (%struct.rk_priv_data*, i32, i32)*, i32 (%struct.rk_priv_data*, i32, i32)** %42, align 8
  %44 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %45 = call i32 %43(%struct.rk_priv_data* %44, i32 0, i32 0)
  br label %86

46:                                               ; preds = %16
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i32 @dev_info(%struct.device* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %50 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32 (%struct.rk_priv_data*, i32, i32)*, i32 (%struct.rk_priv_data*, i32, i32)** %52, align 8
  %54 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %55 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %56 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %53(%struct.rk_priv_data* %54, i32 %57, i32 0)
  br label %86

59:                                               ; preds = %16
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = call i32 @dev_info(%struct.device* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %63 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32 (%struct.rk_priv_data*, i32, i32)*, i32 (%struct.rk_priv_data*, i32, i32)** %65, align 8
  %67 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %68 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %69 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 %66(%struct.rk_priv_data* %67, i32 0, i32 %70)
  br label %86

72:                                               ; preds = %16
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = call i32 @dev_info(%struct.device* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %76 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = bitcast {}** %78 to i32 (%struct.rk_priv_data*)**
  %80 = load i32 (%struct.rk_priv_data*)*, i32 (%struct.rk_priv_data*)** %79, align 8
  %81 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %82 = call i32 %80(%struct.rk_priv_data* %81)
  br label %86

83:                                               ; preds = %16
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %72, %59, %46, %36, %20
  %87 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %88 = call i32 @phy_power_on(%struct.rk_priv_data* %87, i32 1)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %93 = call i32 @gmac_clk_enable(%struct.rk_priv_data* %92, i32 0)
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %108

95:                                               ; preds = %86
  %96 = load %struct.device*, %struct.device** %5, align 8
  %97 = call i32 @pm_runtime_enable(%struct.device* %96)
  %98 = load %struct.device*, %struct.device** %5, align 8
  %99 = call i32 @pm_runtime_get_sync(%struct.device* %98)
  %100 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %101 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %106 = call i32 @rk_gmac_integrated_phy_powerup(%struct.rk_priv_data* %105)
  br label %107

107:                                              ; preds = %104, %95
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %91, %14
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @gmac_clk_enable(%struct.rk_priv_data*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @phy_power_on(%struct.rk_priv_data*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @rk_gmac_integrated_phy_powerup(%struct.rk_priv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
