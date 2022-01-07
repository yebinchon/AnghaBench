; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-qcom-ethqos.c_ethqos_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-qcom-ethqos.c_ethqos_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_ethqos = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SDCC_DLL_CONFIG_DLL_RST = common dso_local global i32 0, align 4
@SDCC_HC_REG_DLL_CONFIG = common dso_local global i32 0, align 4
@SDCC_DLL_CONFIG_PDN = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@SDCC_DLL_CONFIG_DLL_EN = common dso_local global i32 0, align 4
@SDCC_DLL_CONFIG_CK_OUT_EN = common dso_local global i32 0, align 4
@SDCC_USR_CTL = common dso_local global i32 0, align 4
@SDC4_STATUS = common dso_local global i32 0, align 4
@SDC4_STATUS_DLL_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Timeout while waiting for DLL lock\0A\00", align 1
@SPEED_1000 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_ethqos*)* @ethqos_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethqos_configure(%struct.qcom_ethqos* %0) #0 {
  %2 = alloca %struct.qcom_ethqos*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qcom_ethqos* %0, %struct.qcom_ethqos** %2, align 8
  store i32 1000, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %31, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %9 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %6
  %13 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %14 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %15 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %23 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rgmii_writel(%struct.qcom_ethqos* %13, i32 %21, i32 %29)
  br label %31

31:                                               ; preds = %12
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %6

34:                                               ; preds = %6
  %35 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %36 = call i32 @ethqos_set_func_clk_en(%struct.qcom_ethqos* %35)
  %37 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %38 = load i32, i32* @SDCC_DLL_CONFIG_DLL_RST, align 4
  %39 = load i32, i32* @SDCC_DLL_CONFIG_DLL_RST, align 4
  %40 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG, align 4
  %41 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %43 = load i32, i32* @SDCC_DLL_CONFIG_PDN, align 4
  %44 = load i32, i32* @SDCC_DLL_CONFIG_PDN, align 4
  %45 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG, align 4
  %46 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %48 = load i32, i32* @SDCC_DLL_CONFIG_DLL_RST, align 4
  %49 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG, align 4
  %50 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %47, i32 %48, i32 0, i32 %49)
  %51 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %52 = load i32, i32* @SDCC_DLL_CONFIG_PDN, align 4
  %53 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG, align 4
  %54 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %51, i32 %52, i32 0, i32 %53)
  %55 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %56 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SPEED_100, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %106

60:                                               ; preds = %34
  %61 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %62 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SPEED_10, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %106

66:                                               ; preds = %60
  %67 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %68 = load i32, i32* @SDCC_DLL_CONFIG_DLL_EN, align 4
  %69 = load i32, i32* @SDCC_DLL_CONFIG_DLL_EN, align 4
  %70 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG, align 4
  %71 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %67, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %73 = load i32, i32* @SDCC_DLL_CONFIG_CK_OUT_EN, align 4
  %74 = load i32, i32* @SDCC_DLL_CONFIG_CK_OUT_EN, align 4
  %75 = load i32, i32* @SDCC_HC_REG_DLL_CONFIG, align 4
  %76 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %78 = call i32 @GENMASK(i32 26, i32 24)
  %79 = call i32 @BIT(i32 26)
  %80 = load i32, i32* @SDCC_USR_CTL, align 4
  %81 = call i32 @rgmii_updatel(%struct.qcom_ethqos* %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %93, %66
  %83 = call i32 @mdelay(i32 1)
  %84 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %85 = load i32, i32* @SDC4_STATUS, align 4
  %86 = call i32 @rgmii_readl(%struct.qcom_ethqos* %84, i32 %85)
  store volatile i32 %86, i32* %3, align 4
  %87 = load volatile i32, i32* %3, align 4
  %88 = load volatile i32, i32* @SDC4_STATUS_DLL_LOCK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %96

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %5, align 4
  %95 = icmp ugt i32 %94, 0
  br i1 %95, label %82, label %96

96:                                               ; preds = %93, %91
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %101 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %99, %96
  br label %106

106:                                              ; preds = %105, %60, %34
  %107 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %108 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SPEED_1000, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %114 = call i32 @ethqos_dll_configure(%struct.qcom_ethqos* %113)
  br label %115

115:                                              ; preds = %112, %106
  %116 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %2, align 8
  %117 = call i32 @ethqos_rgmii_macro_init(%struct.qcom_ethqos* %116)
  ret i32 0
}

declare dso_local i32 @rgmii_writel(%struct.qcom_ethqos*, i32, i32) #1

declare dso_local i32 @ethqos_set_func_clk_en(%struct.qcom_ethqos*) #1

declare dso_local i32 @rgmii_updatel(%struct.qcom_ethqos*, i32, i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rgmii_readl(%struct.qcom_ethqos*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ethqos_dll_configure(%struct.qcom_ethqos*) #1

declare dso_local i32 @ethqos_rgmii_macro_init(%struct.qcom_ethqos*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
