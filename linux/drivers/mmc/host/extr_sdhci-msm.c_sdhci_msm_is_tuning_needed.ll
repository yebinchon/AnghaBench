; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_is_tuning_needed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_is_tuning_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i64, i64 }

@CORE_FREQ_100MHZ = common dso_local global i64 0, align 8
@MMC_TIMING_MMC_HS400 = common dso_local global i64 0, align 8
@MMC_TIMING_MMC_HS200 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_SDR104 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @sdhci_msm_is_tuning_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_msm_is_tuning_needed(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  %5 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %6 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.mmc_ios* %8, %struct.mmc_ios** %4, align 8
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CORE_FREQ_100MHZ, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %37, label %14

14:                                               ; preds = %1
  %15 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MMC_TIMING_MMC_HS200, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MMC_TIMING_UHS_SDR104, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26, %20, %14
  %33 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %26, %1
  store i32 0, i32* %2, align 4
  br label %39

38:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
