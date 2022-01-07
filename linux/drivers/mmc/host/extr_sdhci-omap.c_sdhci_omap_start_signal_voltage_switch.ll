; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_start_signal_voltage_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_start_signal_voltage_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32 }
%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_omap_host = type { %struct.device* }
%struct.device = type { i32 }

@MMC_SIGNAL_VOLTAGE_330 = common dso_local global i32 0, align 4
@SDHCI_OMAP_CAPA = common dso_local global i32 0, align 4
@CAPA_VS33 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SDHCI_OMAP_AC12 = common dso_local global i32 0, align 4
@AC12_V1V8_SIGEN = common dso_local global i32 0, align 4
@IOV_3V3 = common dso_local global i32 0, align 4
@MMC_SIGNAL_VOLTAGE_180 = common dso_local global i32 0, align 4
@CAPA_VS18 = common dso_local global i32 0, align 4
@IOV_1V8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to switch IO voltage to %dmV\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"IO voltage switched to %dmV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ios*)* @sdhci_omap_start_signal_voltage_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_omap_start_signal_voltage_switch(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sdhci_host*, align 8
  %10 = alloca %struct.sdhci_pltfm_host*, align 8
  %11 = alloca %struct.sdhci_omap_host*, align 8
  %12 = alloca %struct.device*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %13 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %14 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %13)
  store %struct.sdhci_host* %14, %struct.sdhci_host** %9, align 8
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %16 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %15)
  store %struct.sdhci_pltfm_host* %16, %struct.sdhci_pltfm_host** %10, align 8
  %17 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %10, align 8
  %18 = call %struct.sdhci_omap_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %17)
  store %struct.sdhci_omap_host* %18, %struct.sdhci_omap_host** %11, align 8
  %19 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %11, align 8
  %20 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %12, align 8
  %22 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %23 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MMC_SIGNAL_VOLTAGE_330, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %2
  %28 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %11, align 8
  %29 = load i32, i32* @SDHCI_OMAP_CAPA, align 4
  %30 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @CAPA_VS33, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %109

38:                                               ; preds = %27
  %39 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %11, align 8
  %40 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %41 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sdhci_omap_conf_bus_power(%struct.sdhci_omap_host* %39, i32 %42)
  %44 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %11, align 8
  %45 = load i32, i32* @SDHCI_OMAP_AC12, align 4
  %46 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @AC12_V1V8_SIGEN, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %11, align 8
  %52 = load i32, i32* @SDHCI_OMAP_AC12, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %51, i32 %52, i32 %53)
  %55 = load i32, i32* @IOV_3V3, align 4
  store i32 %55, i32* %8, align 4
  br label %94

56:                                               ; preds = %2
  %57 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %58 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MMC_SIGNAL_VOLTAGE_180, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %56
  %63 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %11, align 8
  %64 = load i32, i32* @SDHCI_OMAP_CAPA, align 4
  %65 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @CAPA_VS18, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @EOPNOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %109

73:                                               ; preds = %62
  %74 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %11, align 8
  %75 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %76 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sdhci_omap_conf_bus_power(%struct.sdhci_omap_host* %74, i32 %77)
  %79 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %11, align 8
  %80 = load i32, i32* @SDHCI_OMAP_AC12, align 4
  %81 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @AC12_V1V8_SIGEN, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %11, align 8
  %86 = load i32, i32* @SDHCI_OMAP_AC12, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %85, i32 %86, i32 %87)
  %89 = load i32, i32* @IOV_1V8, align 4
  store i32 %89, i32* %8, align 4
  br label %93

90:                                               ; preds = %56
  %91 = load i32, i32* @EOPNOTSUPP, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %109

93:                                               ; preds = %73
  br label %94

94:                                               ; preds = %93, %38
  %95 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %11, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @sdhci_omap_enable_iov(%struct.sdhci_omap_host* %95, i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load %struct.device*, %struct.device** %12, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %109

105:                                              ; preds = %94
  %106 = load %struct.device*, %struct.device** %12, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @dev_dbg(%struct.device* %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %100, %90, %70, %35
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_omap_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_omap_readl(%struct.sdhci_omap_host*, i32) #1

declare dso_local i32 @sdhci_omap_conf_bus_power(%struct.sdhci_omap_host*, i32) #1

declare dso_local i32 @sdhci_omap_writel(%struct.sdhci_omap_host*, i32, i32) #1

declare dso_local i32 @sdhci_omap_enable_iov(%struct.sdhci_omap_host*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
