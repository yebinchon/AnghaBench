; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-st.c_sdhci_st_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-st.c_sdhci_st_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.st_mmc_platform_data = type { i32, %struct.reset_control* }
%struct.reset_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_st_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_st_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.sdhci_pltfm_host*, align 8
  %5 = alloca %struct.st_mmc_platform_data*, align 8
  %6 = alloca %struct.reset_control*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.sdhci_host* %9, %struct.sdhci_host** %3, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %11 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %10)
  store %struct.sdhci_pltfm_host* %11, %struct.sdhci_pltfm_host** %4, align 8
  %12 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %13 = call %struct.st_mmc_platform_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %12)
  store %struct.st_mmc_platform_data* %13, %struct.st_mmc_platform_data** %5, align 8
  %14 = load %struct.st_mmc_platform_data*, %struct.st_mmc_platform_data** %5, align 8
  %15 = getelementptr inbounds %struct.st_mmc_platform_data, %struct.st_mmc_platform_data* %14, i32 0, i32 1
  %16 = load %struct.reset_control*, %struct.reset_control** %15, align 8
  store %struct.reset_control* %16, %struct.reset_control** %6, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = call i32 @sdhci_pltfm_unregister(%struct.platform_device* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.st_mmc_platform_data*, %struct.st_mmc_platform_data** %5, align 8
  %20 = getelementptr inbounds %struct.st_mmc_platform_data, %struct.st_mmc_platform_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @clk_disable_unprepare(i32 %21)
  %23 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %24 = icmp ne %struct.reset_control* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %27 = call i32 @reset_control_assert(%struct.reset_control* %26)
  br label %28

28:                                               ; preds = %25, %1
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.st_mmc_platform_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_pltfm_unregister(%struct.platform_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
