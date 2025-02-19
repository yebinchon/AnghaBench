; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-qcom-ethqos.c_ethqos_dll_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-qcom-ethqos.c_ethqos_dll_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_ethqos = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SDCC_DLL_CONFIG_CDR_EN = common dso_local global i32 0, align 4
@SDCC_HC_REG_DLL_CONFIG = common dso_local global i32 0, align 4
@SDCC_DLL_CONFIG_CDR_EXT_EN = common dso_local global i32 0, align 4
@SDCC_DLL_CONFIG_CK_OUT_EN = common dso_local global i32 0, align 4
@SDCC_DLL_CONFIG_DLL_EN = common dso_local global i32 0, align 4
@SDCC_DLL_MCLK_GATING_EN = common dso_local global i32 0, align 4
@SDCC_DLL_CDR_FINE_PHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Clear CK_OUT_EN timedout\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Set CK_OUT_EN timedout\0A\00", align 1
@SDCC_DLL_CONFIG2_DDR_CAL_EN = common dso_local global i32 0, align 4
@SDCC_HC_REG_DLL_CONFIG2 = common dso_local global i32 0, align 4
@SDCC_DLL_CONFIG2_DLL_CLOCK_DIS = common dso_local global i32 0, align 4
@SDCC_DLL_CONFIG2_MCLK_FREQ_CALC = common dso_local global i32 0, align 4
@SDCC_DLL_CONFIG2_DDR_TRAFFIC_INIT_SEL = common dso_local global i32 0, align 4
@SDCC_DLL_CONFIG2_DDR_TRAFFIC_INIT_SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_ethqos*)* @ethqos_dll_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethqos_dll_configure(%struct.qcom_ethqos* %0) #0 {
  %2 = alloca %struct.qcom_ethqos*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.qcom_ethqos* %0, %struct.qcom_ethqos** %2, align 8
  store i32 1000, i32* %4, align 4
  %5 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %6 = load i32, i32* @SDCC_DLL_CONFIG_CDR_EN, align 4
  %7 = load i32, i32* @SDCC_DLL_CONFIG_CDR_EN, align 4
  %8 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG, align 4
  %9 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %11 = load i32, i32* @SDCC_DLL_CONFIG_CDR_EXT_EN, align 4
  %12 = load i32, i32* @SDCC_DLL_CONFIG_CDR_EXT_EN, align 4
  %13 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG, align 4
  %14 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %16 = load i32, i32* @SDCC_DLL_CONFIG_CK_OUT_EN, align 4
  %17 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG, align 4
  %18 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %15, i32 %16, i32 0, i32 %17)
  %19 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %20 = load i32, i32* @SDCC_DLL_CONFIG_DLL_EN, align 4
  %21 = load i32, i32* @SDCC_DLL_CONFIG_DLL_EN, align 4
  %22 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG, align 4
  %23 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %25 = load i32, i32* @SDCC_DLL_MCLK_GATING_EN, align 4
  %26 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG, align 4
  %27 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %24, i32 %25, i32 0, i32 %26)
  %28 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %29 = load i32, i32* @SDCC_DLL_CDR_FINE_PHASE, align 4
  %30 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG, align 4
  %31 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %28, i32 %29, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %46, %1
  %33 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %34 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG, align 4
  %35 = call i32 @rgmii_readl(%struct.qcom_ethqos* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @SDCC_DLL_CONFIG_CK_OUT_EN, align 4
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %49

42:                                               ; preds = %32
  %43 = call i32 @mdelay(i32 1)
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %32, label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %54 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %52, %49
  %59 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %60 = load i32, i32* @SDCC_DLL_CONFIG_CK_OUT_EN, align 4
  %61 = load i32, i32* @SDCC_DLL_CONFIG_CK_OUT_EN, align 4
  %62 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG, align 4
  %63 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %59, i32 %60, i32 %61, i32 %62)
  store i32 1000, i32* %4, align 4
  br label %64

64:                                               ; preds = %78, %58
  %65 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %66 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG, align 4
  %67 = call i32 @rgmii_readl(%struct.qcom_ethqos* %65, i32 %66)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* @SDCC_DLL_CONFIG_CK_OUT_EN, align 4
  %69 = load i32, i32* %3, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %81

74:                                               ; preds = %64
  %75 = call i32 @mdelay(i32 1)
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %64, label %81

81:                                               ; preds = %78, %73
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %86 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %84, %81
  %91 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %92 = load i32, i32* @SDCC_DLL_CONFIG2_DDR_CAL_EN, align 4
  %93 = load i32, i32* @SDCC_DLL_CONFIG2_DDR_CAL_EN, align 4
  %94 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG2, align 4
  %95 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %91, i32 %92, i32 %93, i32 %94)
  %96 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %97 = load i32, i32* @SDCC_DLL_CONFIG2_DLL_CLOCK_DIS, align 4
  %98 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG2, align 4
  %99 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %96, i32 %97, i32 0, i32 %98)
  %100 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %101 = load i32, i32* @SDCC_DLL_CONFIG2_MCLK_FREQ_CALC, align 4
  %102 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG2, align 4
  %103 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %100, i32 %101, i32 26624, i32 %102)
  %104 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %105 = load i32, i32* @SDCC_DLL_CONFIG2_DDR_TRAFFIC_INIT_SEL, align 4
  %106 = call i32 @BIT(i32 2)
  %107 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG2, align 4
  %108 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %104, i32 %105, i32 %106, i32 %107)
  %109 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %110 = load i32, i32* @SDCC_DLL_CONFIG2_DDR_TRAFFIC_INIT_SW, align 4
  %111 = load i32, i32* @SDCC_DLL_CONFIG2_DDR_TRAFFIC_INIT_SW, align 4
  %112 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG2, align 4
  %113 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %109, i32 %110, i32 %111, i32 %112)
  ret i32 0
}

declare dso_local i32 @rgmii_updatel(%struct.qcom_ethqos*, i32, i32, i32) #1

declare dso_local i32 @rgmii_readl(%struct.qcom_ethqos*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
