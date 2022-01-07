; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_hc_select_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_hc_select_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i64 }

@MMC_TIMING_MMC_HS400 = common dso_local global i64 0, align 8
@SDHCI_HS400_TUNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_msm_hc_select_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_msm_hc_select_mode(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.mmc_ios, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %4 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %5 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = bitcast %struct.mmc_ios* %3 to i8*
  %9 = bitcast %struct.mmc_ios* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 8, i1 false)
  %10 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %3, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %16 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SDHCI_HS400_TUNING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14, %1
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %23 = call i32 @msm_hc_select_hs400(%struct.sdhci_host* %22)
  br label %27

24:                                               ; preds = %14
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %26 = call i32 @msm_hc_select_default(%struct.sdhci_host* %25)
  br label %27

27:                                               ; preds = %24, %21
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @msm_hc_select_hs400(%struct.sdhci_host*) #2

declare dso_local i32 @msm_hc_select_default(%struct.sdhci_host*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
