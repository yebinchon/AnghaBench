; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-qcom-ethqos.c_rgmii_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-qcom-ethqos.c_rgmii_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_ethqos = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Rgmii register dump\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"RGMII_IO_MACRO_CONFIG: %x\0A\00", align 1
@RGMII_IO_MACRO_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"SDCC_HC_REG_DLL_CONFIG: %x\0A\00", align 1
@SDCC_HC_REG_DLL_CONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"SDCC_HC_REG_DDR_CONFIG: %x\0A\00", align 1
@SDCC_HC_REG_DDR_CONFIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"SDCC_HC_REG_DLL_CONFIG2: %x\0A\00", align 1
@SDCC_HC_REG_DLL_CONFIG2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"SDC4_STATUS: %x\0A\00", align 1
@SDC4_STATUS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"SDCC_USR_CTL: %x\0A\00", align 1
@SDCC_USR_CTL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"RGMII_IO_MACRO_CONFIG2: %x\0A\00", align 1
@RGMII_IO_MACRO_CONFIG2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"RGMII_IO_MACRO_DEBUG1: %x\0A\00", align 1
@RGMII_IO_MACRO_DEBUG1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"EMAC_SYSTEM_LOW_POWER_DEBUG: %x\0A\00", align 1
@EMAC_SYSTEM_LOW_POWER_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_ethqos*)* @rgmii_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgmii_dump(%struct.qcom_ethqos* %0) #0 {
  %2 = alloca %struct.qcom_ethqos*, align 8
  store %struct.qcom_ethqos* %0, %struct.qcom_ethqos** %2, align 8
  %3 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %4 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %9 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %13 = load i32, i32* @RGMII_IO_MACRO_CONFIG, align 4
  %14 = call i32 @rgmii_readl(%struct.qcom_ethqos* %12, i32 %13)
  %15 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %17 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %21 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG, align 4
  %22 = call i32 @rgmii_readl(%struct.qcom_ethqos* %20, i32 %21)
  %23 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %25 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %29 = load i32, i32* @SDCC_HC_REG_DDR_CONFIG, align 4
  %30 = call i32 @rgmii_readl(%struct.qcom_ethqos* %28, i32 %29)
  %31 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %33 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %37 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG2, align 4
  %38 = call i32 @rgmii_readl(%struct.qcom_ethqos* %36, i32 %37)
  %39 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %41 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %45 = load i32, i32* @SDC4_STATUS, align 4
  %46 = call i32 @rgmii_readl(%struct.qcom_ethqos* %44, i32 %45)
  %47 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  %48 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %49 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %53 = load i32, i32* @SDCC_USR_CTL, align 4
  %54 = call i32 @rgmii_readl(%struct.qcom_ethqos* %52, i32 %53)
  %55 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %54)
  %56 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %57 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %61 = load i32, i32* @RGMII_IO_MACRO_CONFIG2, align 4
  %62 = call i32 @rgmii_readl(%struct.qcom_ethqos* %60, i32 %61)
  %63 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %62)
  %64 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %65 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %69 = load i32, i32* @RGMII_IO_MACRO_DEBUG1, align 4
  %70 = call i32 @rgmii_readl(%struct.qcom_ethqos* %68, i32 %69)
  %71 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %70)
  %72 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %73 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %77 = load i32, i32* @EMAC_SYSTEM_LOW_POWER_DEBUG, align 4
  %78 = call i32 @rgmii_readl(%struct.qcom_ethqos* %76, i32 %77)
  %79 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %78)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @rgmii_readl(%struct.qcom_ethqos*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
