; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_pci_sdmmc = type { i32, %struct.rtsx_pcr* }
%struct.rtsx_pcr = type { i32 }

@SDMMC_POWER_OFF = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_CLK_EN = common dso_local global i32 0, align 4
@SD_CLK_EN = common dso_local global i32 0, align 4
@CARD_OE = common dso_local global i32 0, align 4
@SD_OUTPUT_EN = common dso_local global i32 0, align 4
@RTSX_SD_CARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.realtek_pci_sdmmc*)* @sd_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_power_off(%struct.realtek_pci_sdmmc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.realtek_pci_sdmmc*, align 8
  %4 = alloca %struct.rtsx_pcr*, align 8
  %5 = alloca i32, align 4
  store %struct.realtek_pci_sdmmc* %0, %struct.realtek_pci_sdmmc** %3, align 8
  %6 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %3, align 8
  %7 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %6, i32 0, i32 1
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %7, align 8
  store %struct.rtsx_pcr* %8, %struct.rtsx_pcr** %4, align 8
  %9 = load i32, i32* @SDMMC_POWER_OFF, align 4
  %10 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %3, align 8
  %11 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %13 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %12)
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %15 = load i32, i32* @WRITE_REG_CMD, align 4
  %16 = load i32, i32* @CARD_CLK_EN, align 4
  %17 = load i32, i32* @SD_CLK_EN, align 4
  %18 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %14, i32 %15, i32 %16, i32 %17, i32 0)
  %19 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %20 = load i32, i32* @WRITE_REG_CMD, align 4
  %21 = load i32, i32* @CARD_OE, align 4
  %22 = load i32, i32* @SD_OUTPUT_EN, align 4
  %23 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %19, i32 %20, i32 %21, i32 %22, i32 0)
  %24 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %25 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %24, i32 100)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %42

30:                                               ; preds = %1
  %31 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %32 = load i32, i32* @RTSX_SD_CARD, align 4
  %33 = call i32 @rtsx_pci_card_power_off(%struct.rtsx_pcr* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %30
  %39 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %40 = load i32, i32* @RTSX_SD_CARD, align 4
  %41 = call i32 @rtsx_pci_card_pull_ctl_disable(%struct.rtsx_pcr* %39, i32 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %36, %28
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_card_power_off(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_card_pull_ctl_disable(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
