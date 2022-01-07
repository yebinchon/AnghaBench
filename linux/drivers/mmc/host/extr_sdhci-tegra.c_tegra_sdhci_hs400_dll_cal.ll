; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_hs400_dll_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_hs400_dll_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i64 }

@SDHCI_TEGRA_VENDOR_DLLCAL_CFG = common dso_local global i32 0, align 4
@SDHCI_TEGRA_DLLCAL_CALIBRATE = common dso_local global i32 0, align 4
@SDHCI_TEGRA_VENDOR_DLLCAL_STA = common dso_local global i64 0, align 8
@SDHCI_TEGRA_DLLCAL_STA_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"HS400 delay line calibration timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @tegra_sdhci_hs400_dll_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sdhci_hs400_dll_cal(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %5 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %6 = load i32, i32* @SDHCI_TEGRA_VENDOR_DLLCAL_CFG, align 4
  %7 = call i32 @sdhci_readl(%struct.sdhci_host* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @SDHCI_TEGRA_DLLCAL_CALIBRATE, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SDHCI_TEGRA_VENDOR_DLLCAL_CFG, align 4
  %14 = call i32 @sdhci_writel(%struct.sdhci_host* %11, i32 %12, i32 %13)
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %16 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SDHCI_TEGRA_VENDOR_DLLCAL_STA, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @SDHCI_TEGRA_DLLCAL_STA_ACTIVE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @readl_poll_timeout(i64 %19, i32 %20, i32 %26, i32 1000, i32 5000)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %32 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mmc_dev(i32 %33)
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %30, %1
  ret void
}

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
