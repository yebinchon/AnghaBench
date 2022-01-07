; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_host = type { %struct.mmc_host* }
%struct.mmc_host = type { i32 }
%struct.sdhci_sprd_host = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_sprd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_sprd_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.sdhci_sprd_host*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.sdhci_host* %7, %struct.sdhci_host** %3, align 8
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %9 = call %struct.sdhci_sprd_host* @TO_SPRD_HOST(%struct.sdhci_host* %8)
  store %struct.sdhci_sprd_host* %9, %struct.sdhci_sprd_host** %4, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %11 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %10, i32 0, i32 0
  %12 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  store %struct.mmc_host* %12, %struct.mmc_host** %5, align 8
  %13 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %14 = call i32 @mmc_remove_host(%struct.mmc_host* %13)
  %15 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %4, align 8
  %16 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_disable_unprepare(i32 %17)
  %19 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %4, align 8
  %20 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_disable_unprepare(i32 %21)
  %23 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %4, align 8
  %24 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_disable_unprepare(i32 %25)
  %27 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %28 = call i32 @mmc_free_host(%struct.mmc_host* %27)
  ret i32 0
}

declare dso_local %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.sdhci_sprd_host* @TO_SPRD_HOST(%struct.sdhci_host*) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
