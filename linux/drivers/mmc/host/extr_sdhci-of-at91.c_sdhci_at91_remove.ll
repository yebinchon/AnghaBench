; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-at91.c_sdhci_at91_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-at91.c_sdhci_at91_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_at91_priv = type { %struct.clk*, %struct.clk*, %struct.clk* }
%struct.clk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_at91_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_at91_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.sdhci_pltfm_host*, align 8
  %5 = alloca %struct.sdhci_at91_priv*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.sdhci_host* %10, %struct.sdhci_host** %3, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %12 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %11)
  store %struct.sdhci_pltfm_host* %12, %struct.sdhci_pltfm_host** %4, align 8
  %13 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %14 = call %struct.sdhci_at91_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %13)
  store %struct.sdhci_at91_priv* %14, %struct.sdhci_at91_priv** %5, align 8
  %15 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %5, align 8
  %16 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %15, i32 0, i32 2
  %17 = load %struct.clk*, %struct.clk** %16, align 8
  store %struct.clk* %17, %struct.clk** %6, align 8
  %18 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %5, align 8
  %19 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %18, i32 0, i32 1
  %20 = load %struct.clk*, %struct.clk** %19, align 8
  store %struct.clk* %20, %struct.clk** %7, align 8
  %21 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %5, align 8
  %22 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %21, i32 0, i32 0
  %23 = load %struct.clk*, %struct.clk** %22, align 8
  store %struct.clk* %23, %struct.clk** %8, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @pm_runtime_get_sync(i32* %25)
  %27 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @pm_runtime_disable(i32* %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @pm_runtime_put_noidle(i32* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %34 = call i32 @sdhci_pltfm_unregister(%struct.platform_device* %33)
  %35 = load %struct.clk*, %struct.clk** %6, align 8
  %36 = call i32 @clk_disable_unprepare(%struct.clk* %35)
  %37 = load %struct.clk*, %struct.clk** %7, align 8
  %38 = call i32 @clk_disable_unprepare(%struct.clk* %37)
  %39 = load %struct.clk*, %struct.clk** %8, align 8
  %40 = call i32 @clk_disable_unprepare(%struct.clk* %39)
  ret i32 0
}

declare dso_local %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_at91_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @sdhci_pltfm_unregister(%struct.platform_device*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
