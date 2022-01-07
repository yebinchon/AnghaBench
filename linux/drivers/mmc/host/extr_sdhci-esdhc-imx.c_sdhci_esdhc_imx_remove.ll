; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_sdhci_esdhc_imx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_sdhci_esdhc_imx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_host = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.pltfm_imx_data = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SDHCI_INT_STATUS = common dso_local global i64 0, align 8
@ESDHC_FLAG_PMQOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_esdhc_imx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_esdhc_imx_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.sdhci_pltfm_host*, align 8
  %5 = alloca %struct.pltfm_imx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.sdhci_host* %8, %struct.sdhci_host** %3, align 8
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %9)
  store %struct.sdhci_pltfm_host* %10, %struct.sdhci_pltfm_host** %4, align 8
  %11 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %12 = call %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %11)
  store %struct.pltfm_imx_data* %12, %struct.pltfm_imx_data** %5, align 8
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SDHCI_INT_STATUS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  %19 = icmp eq i32 %18, -1
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @pm_runtime_get_sync(i32* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @pm_runtime_disable(i32* %25)
  %27 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @pm_runtime_put_noidle(i32* %28)
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @sdhci_remove_host(%struct.sdhci_host* %30, i32 %31)
  %33 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %5, align 8
  %34 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @clk_disable_unprepare(i32 %35)
  %37 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %5, align 8
  %38 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_disable_unprepare(i32 %39)
  %41 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %5, align 8
  %42 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @clk_disable_unprepare(i32 %43)
  %45 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %5, align 8
  %46 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ESDHC_FLAG_PMQOS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %1
  %54 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %5, align 8
  %55 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %54, i32 0, i32 0
  %56 = call i32 @pm_qos_remove_request(i32* %55)
  br label %57

57:                                               ; preds = %53, %1
  %58 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %59 = call i32 @sdhci_pltfm_free(%struct.platform_device* %58)
  ret i32 0
}

declare dso_local %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @sdhci_remove_host(%struct.sdhci_host*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_qos_remove_request(i32*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
