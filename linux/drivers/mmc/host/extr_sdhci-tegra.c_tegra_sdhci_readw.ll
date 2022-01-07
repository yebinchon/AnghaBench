; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_readw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_readw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { %struct.sdhci_tegra_soc_data* }
%struct.sdhci_tegra_soc_data = type { i32 }

@NVQUIRK_FORCE_SDHCI_SPEC_200 = common dso_local global i32 0, align 4
@SDHCI_HOST_VERSION = common dso_local global i32 0, align 4
@SDHCI_SPEC_200 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32)* @tegra_sdhci_readw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sdhci_readw(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_pltfm_host*, align 8
  %7 = alloca %struct.sdhci_tegra*, align 8
  %8 = alloca %struct.sdhci_tegra_soc_data*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %10 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %9)
  store %struct.sdhci_pltfm_host* %10, %struct.sdhci_pltfm_host** %6, align 8
  %11 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %6, align 8
  %12 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %11)
  store %struct.sdhci_tegra* %12, %struct.sdhci_tegra** %7, align 8
  %13 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %7, align 8
  %14 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %13, i32 0, i32 0
  %15 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %14, align 8
  store %struct.sdhci_tegra_soc_data* %15, %struct.sdhci_tegra_soc_data** %8, align 8
  %16 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %8, align 8
  %17 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NVQUIRK_FORCE_SDHCI_SPEC_200, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SDHCI_HOST_VERSION, align 4
  %25 = icmp eq i32 %23, %24
  br label %26

26:                                               ; preds = %22, %2
  %27 = phi i1 [ false, %2 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @SDHCI_SPEC_200, align 4
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %26
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %35 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = call i32 @readw(i64 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %33, %31
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
