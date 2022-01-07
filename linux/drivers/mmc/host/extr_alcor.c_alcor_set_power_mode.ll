; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i32 }
%struct.alcor_sdmmc_host = type { i32, %struct.alcor_pci_priv* }
%struct.alcor_pci_priv = type { i32 }

@AU6601_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@AU6601_POWER_CONTROL = common dso_local global i32 0, align 4
@AU6601_SD_CARD = common dso_local global i32 0, align 4
@AU6601_ACTIVE_CTRL = common dso_local global i32 0, align 4
@AU6601_OPT = common dso_local global i32 0, align 4
@AU6601_CLK_DELAY = common dso_local global i32 0, align 4
@AU6601_REG_BUS_CTRL = common dso_local global i32 0, align 4
@AU6601_DATA_WRITE = common dso_local global i32 0, align 4
@AU6601_DATA_XFER_CTRL = common dso_local global i32 0, align 4
@AU6601_TIME_OUT_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown power parameter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @alcor_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_set_power_mode(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.alcor_sdmmc_host*, align 8
  %6 = alloca %struct.alcor_pci_priv*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.alcor_sdmmc_host* %8, %struct.alcor_sdmmc_host** %5, align 8
  %9 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %10 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %9, i32 0, i32 1
  %11 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %10, align 8
  store %struct.alcor_pci_priv* %11, %struct.alcor_pci_priv** %6, align 8
  %12 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %69 [
    i32 130, label %15
    i32 128, label %27
    i32 129, label %28
  ]

15:                                               ; preds = %2
  %16 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %17 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @alcor_set_clock(%struct.alcor_sdmmc_host* %16, i32 %19)
  %21 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %6, align 8
  %22 = load i32, i32* @AU6601_OUTPUT_ENABLE, align 4
  %23 = call i32 @alcor_write8(%struct.alcor_pci_priv* %21, i32 0, i32 %22)
  %24 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %6, align 8
  %25 = load i32, i32* @AU6601_POWER_CONTROL, align 4
  %26 = call i32 @alcor_write8(%struct.alcor_pci_priv* %24, i32 0, i32 %25)
  br label %74

27:                                               ; preds = %2
  br label %74

28:                                               ; preds = %2
  %29 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %6, align 8
  %30 = load i32, i32* @AU6601_SD_CARD, align 4
  %31 = load i32, i32* @AU6601_ACTIVE_CTRL, align 4
  %32 = call i32 @alcor_write8(%struct.alcor_pci_priv* %29, i32 %30, i32 %31)
  %33 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %6, align 8
  %34 = load i32, i32* @AU6601_OPT, align 4
  %35 = call i32 @alcor_write8(%struct.alcor_pci_priv* %33, i32 0, i32 %34)
  %36 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %6, align 8
  %37 = load i32, i32* @AU6601_CLK_DELAY, align 4
  %38 = call i32 @alcor_write8(%struct.alcor_pci_priv* %36, i32 32, i32 %37)
  %39 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %6, align 8
  %40 = load i32, i32* @AU6601_REG_BUS_CTRL, align 4
  %41 = call i32 @alcor_write8(%struct.alcor_pci_priv* %39, i32 0, i32 %40)
  %42 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %43 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @alcor_set_clock(%struct.alcor_sdmmc_host* %42, i32 %45)
  %47 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %6, align 8
  %48 = load i32, i32* @AU6601_SD_CARD, align 4
  %49 = load i32, i32* @AU6601_POWER_CONTROL, align 4
  %50 = call i32 @alcor_write8(%struct.alcor_pci_priv* %47, i32 %48, i32 %49)
  %51 = call i32 @mdelay(i32 20)
  %52 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %53 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @alcor_set_clock(%struct.alcor_sdmmc_host* %52, i32 %55)
  %57 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %6, align 8
  %58 = load i32, i32* @AU6601_SD_CARD, align 4
  %59 = load i32, i32* @AU6601_OUTPUT_ENABLE, align 4
  %60 = call i32 @alcor_write8(%struct.alcor_pci_priv* %57, i32 %58, i32 %59)
  %61 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %6, align 8
  %62 = load i32, i32* @AU6601_DATA_WRITE, align 4
  %63 = load i32, i32* @AU6601_DATA_XFER_CTRL, align 4
  %64 = call i32 @alcor_write8(%struct.alcor_pci_priv* %61, i32 %62, i32 %63)
  %65 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %6, align 8
  %66 = load i32, i32* @AU6601_TIME_OUT_CTRL, align 4
  %67 = call i32 @alcor_write8(%struct.alcor_pci_priv* %65, i32 125, i32 %66)
  %68 = call i32 @mdelay(i32 100)
  br label %74

69:                                               ; preds = %2
  %70 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %71 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %28, %27, %15
  ret void
}

declare dso_local %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @alcor_set_clock(%struct.alcor_sdmmc_host*, i32) #1

declare dso_local i32 @alcor_write8(%struct.alcor_pci_priv*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
