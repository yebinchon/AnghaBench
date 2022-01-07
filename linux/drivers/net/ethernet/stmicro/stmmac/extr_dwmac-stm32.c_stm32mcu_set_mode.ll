; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-stm32.c_stm32mcu_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-stm32.c_stm32mcu_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plat_stmmacenet_data = type { i32, %struct.stm32_dwmac* }
%struct.stm32_dwmac = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SYSCFG_MCU_ETH_SEL_MII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SYSCFG init : PHY_INTERFACE_MODE_MII\0A\00", align 1
@SYSCFG_MCU_ETH_SEL_RMII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"SYSCFG init : PHY_INTERFACE_MODE_RMII\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"SYSCFG init :  Do not manage %d interface\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.plat_stmmacenet_data*)* @stm32mcu_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32mcu_set_mode(%struct.plat_stmmacenet_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.plat_stmmacenet_data*, align 8
  %4 = alloca %struct.stm32_dwmac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.plat_stmmacenet_data* %0, %struct.plat_stmmacenet_data** %3, align 8
  %7 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %3, align 8
  %8 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %7, i32 0, i32 1
  %9 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %8, align 8
  store %struct.stm32_dwmac* %9, %struct.stm32_dwmac** %4, align 8
  %10 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %11 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %3, align 8
  %14 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %22 [
    i32 129, label %16
    i32 128, label %19
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @SYSCFG_MCU_ETH_SEL_MII, align 4
  store i32 %17, i32* %6, align 4
  %18 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %29

19:                                               ; preds = %1
  %20 = load i32, i32* @SYSCFG_MCU_ETH_SEL_RMII, align 4
  store i32 %20, i32* %6, align 4
  %21 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %29

22:                                               ; preds = %1
  %23 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %3, align 8
  %24 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %42

29:                                               ; preds = %19, %16
  %30 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %31 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %35 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 23
  %41 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %38, i32 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %29, %22
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
