; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_hs400.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_hs400.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, i32 }
%struct.mmc_ios = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_msm_host = type { i32, i64 }

@CORE_FREQ_100MHZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"%s: Failed to calibrate DLL for hs400 mode (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, %struct.mmc_ios*)* @sdhci_msm_hs400 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_msm_hs400(%struct.sdhci_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_msm_host*, align 8
  %7 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %9 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %8)
  store %struct.sdhci_pltfm_host* %9, %struct.sdhci_pltfm_host** %5, align 8
  %10 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %11 = call %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %10)
  store %struct.sdhci_msm_host* %11, %struct.sdhci_msm_host** %6, align 8
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %13 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CORE_FREQ_100MHZ, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %2
  %18 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %19 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %24 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22, %17
  %28 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %29 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %27
  %33 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %34 = call i32 @sdhci_msm_hs400_dll_calibration(%struct.sdhci_host* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %39 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %47

40:                                               ; preds = %32
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @mmc_hostname(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %37
  br label %48

48:                                               ; preds = %47, %27, %22, %2
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_msm_hs400_dll_calibration(%struct.sdhci_host*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
