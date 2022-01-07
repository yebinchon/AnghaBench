; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-stm32.c_stm32mp1_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-stm32.c_stm32mp1_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plat_stmmacenet_data = type { i32, %struct.stm32_dwmac* }
%struct.stm32_dwmac = type { %struct.TYPE_2__*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@SYSCFG_PMCR_ETH_SEL_MII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SYSCFG init : PHY_INTERFACE_MODE_MII\0A\00", align 1
@SYSCFG_PMCR_ETH_SEL_GMII = common dso_local global i32 0, align 4
@SYSCFG_PMCR_ETH_CLK_SEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"SYSCFG init : PHY_INTERFACE_MODE_GMII\0A\00", align 1
@SYSCFG_PMCR_ETH_SEL_RMII = common dso_local global i32 0, align 4
@SYSCFG_PMCR_ETH_REF_CLK_SEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"SYSCFG init : PHY_INTERFACE_MODE_RMII\0A\00", align 1
@SYSCFG_PMCR_ETH_SEL_RGMII = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"SYSCFG init : PHY_INTERFACE_MODE_RGMII\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"SYSCFG init :  Do not manage %d interface\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SYSCFG_PMCCLRR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.plat_stmmacenet_data*)* @stm32mp1_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32mp1_set_mode(%struct.plat_stmmacenet_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.plat_stmmacenet_data*, align 8
  %4 = alloca %struct.stm32_dwmac*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.plat_stmmacenet_data* %0, %struct.plat_stmmacenet_data** %3, align 8
  %8 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %3, align 8
  %9 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %8, i32 0, i32 1
  %10 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %9, align 8
  store %struct.stm32_dwmac* %10, %struct.stm32_dwmac** %4, align 8
  %11 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %12 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %3, align 8
  %15 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %56 [
    i32 133, label %17
    i32 134, label %20
    i32 128, label %32
    i32 132, label %44
    i32 131, label %44
    i32 130, label %44
    i32 129, label %44
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @SYSCFG_PMCR_ETH_SEL_MII, align 4
  store i32 %18, i32* %6, align 4
  %19 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %63

20:                                               ; preds = %1
  %21 = load i32, i32* @SYSCFG_PMCR_ETH_SEL_GMII, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %23 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @SYSCFG_PMCR_ETH_CLK_SEL, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %63

32:                                               ; preds = %1
  %33 = load i32, i32* @SYSCFG_PMCR_ETH_SEL_RMII, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %35 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @SYSCFG_PMCR_ETH_REF_CLK_SEL, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %32
  %43 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %63

44:                                               ; preds = %1, %1, %1, %1
  %45 = load i32, i32* @SYSCFG_PMCR_ETH_SEL_RGMII, align 4
  store i32 %45, i32* %6, align 4
  %46 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %47 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @SYSCFG_PMCR_ETH_CLK_SEL, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %44
  %55 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %63

56:                                               ; preds = %1
  %57 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %3, align 8
  %58 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %87

63:                                               ; preds = %54, %42, %30, %17
  %64 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %65 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @SYSCFG_PMCCLRR_OFFSET, align 8
  %69 = add nsw i64 %67, %68
  %70 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %71 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @regmap_write(i32 %66, i64 %69, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %77 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %81 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @regmap_update_bits(i32 %78, i64 %79, i32 %84, i32 %85)
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %63, %56
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
