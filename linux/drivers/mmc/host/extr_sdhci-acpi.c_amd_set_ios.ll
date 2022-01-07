; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_amd_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_amd_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32 }
%struct.sdhci_host = type { i32 }

@MMC_TIMING_MMC_HS200 = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS400 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @amd_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.sdhci_host* %8, %struct.sdhci_host** %5, align 8
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %10 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %13 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %14 = call i32 @sdhci_set_ios(%struct.mmc_host* %12, %struct.mmc_ios* %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MMC_TIMING_MMC_HS200, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MMC_TIMING_MMC_HS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %26 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %27 = call i32 @sdhci_writew(%struct.sdhci_host* %25, i32 9, i32 %26)
  br label %28

28:                                               ; preds = %24, %18, %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MMC_TIMING_MMC_HS400, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MMC_TIMING_MMC_HS400, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %40 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %41 = call i32 @sdhci_writew(%struct.sdhci_host* %39, i32 128, i32 %40)
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %43 = call i32 @sdhci_acpi_amd_hs400_dll(%struct.sdhci_host* %42)
  br label %44

44:                                               ; preds = %38, %32, %28
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @sdhci_set_ios(%struct.mmc_host*, %struct.mmc_ios*) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_acpi_amd_hs400_dll(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
