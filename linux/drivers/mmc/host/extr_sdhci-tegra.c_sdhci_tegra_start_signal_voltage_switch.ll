; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_sdhci_tegra_start_signal_voltage_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_sdhci_tegra_start_signal_voltage_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32 }
%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { i64 }

@MMC_SIGNAL_VOLTAGE_330 = common dso_local global i32 0, align 4
@MMC_SIGNAL_VOLTAGE_180 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ios*)* @sdhci_tegra_start_signal_voltage_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_tegra_start_signal_voltage_switch(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca %struct.sdhci_pltfm_host*, align 8
  %8 = alloca %struct.sdhci_tegra*, align 8
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %11 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %10)
  store %struct.sdhci_host* %11, %struct.sdhci_host** %6, align 8
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %13 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %12)
  store %struct.sdhci_pltfm_host* %13, %struct.sdhci_pltfm_host** %7, align 8
  %14 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %15 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %14)
  store %struct.sdhci_tegra* %15, %struct.sdhci_tegra** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MMC_SIGNAL_VOLTAGE_330, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %23 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %24 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @tegra_sdhci_set_padctrl(%struct.sdhci_host* %22, i32 %25, i32 1)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %66

31:                                               ; preds = %21
  %32 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %33 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %34 = call i32 @sdhci_start_signal_voltage_switch(%struct.mmc_host* %32, %struct.mmc_ios* %33)
  store i32 %34, i32* %9, align 4
  br label %56

35:                                               ; preds = %2
  %36 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %37 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MMC_SIGNAL_VOLTAGE_180, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %43 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %44 = call i32 @sdhci_start_signal_voltage_switch(%struct.mmc_host* %42, %struct.mmc_ios* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %66

49:                                               ; preds = %41
  %50 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %51 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %52 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @tegra_sdhci_set_padctrl(%struct.sdhci_host* %50, i32 %53, i32 1)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %49, %35
  br label %56

56:                                               ; preds = %55, %31
  %57 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %58 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %63 = call i32 @tegra_sdhci_pad_autocalib(%struct.sdhci_host* %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %47, %29
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @tegra_sdhci_set_padctrl(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_start_signal_voltage_switch(%struct.mmc_host*, %struct.mmc_ios*) #1

declare dso_local i32 @tegra_sdhci_pad_autocalib(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
