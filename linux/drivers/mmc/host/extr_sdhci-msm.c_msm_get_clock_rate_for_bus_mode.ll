; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_msm_get_clock_rate_for_bus_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_msm_get_clock_rate_for_bus_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i64 }

@MMC_TIMING_UHS_DDR50 = common dso_local global i64 0, align 8
@MMC_TIMING_MMC_DDR52 = common dso_local global i64 0, align 8
@MMC_TIMING_MMC_HS400 = common dso_local global i64 0, align 8
@SDHCI_HS400_TUNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32)* @msm_get_clock_rate_for_bus_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_get_clock_rate_for_bus_mode(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_ios, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %7 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast %struct.mmc_ios* %5 to i8*
  %11 = bitcast %struct.mmc_ios* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false)
  %12 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %5, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MMC_TIMING_UHS_DDR50, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %33, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %5, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MMC_TIMING_MMC_DDR52, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %28 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SDHCI_HS400_TUNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26, %21, %16, %2
  %34 = load i32, i32* %4, align 4
  %35 = mul i32 %34, 2
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
