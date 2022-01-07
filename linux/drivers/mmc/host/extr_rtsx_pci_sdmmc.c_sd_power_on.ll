; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_pci_sdmmc = type { i64, %struct.rtsx_pcr* }
%struct.rtsx_pcr = type { i32 }

@SDMMC_POWER_ON = common dso_local global i64 0, align 8
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_SELECT = common dso_local global i32 0, align 4
@SD_MOD_SEL = common dso_local global i32 0, align 4
@CARD_SHARE_MODE = common dso_local global i32 0, align 4
@CARD_SHARE_MASK = common dso_local global i32 0, align 4
@CARD_SHARE_48_SD = common dso_local global i32 0, align 4
@CARD_CLK_EN = common dso_local global i32 0, align 4
@SD_CLK_EN = common dso_local global i32 0, align 4
@RTSX_SD_CARD = common dso_local global i32 0, align 4
@CARD_OE = common dso_local global i32 0, align 4
@SD_OUTPUT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.realtek_pci_sdmmc*)* @sd_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_power_on(%struct.realtek_pci_sdmmc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.realtek_pci_sdmmc*, align 8
  %4 = alloca %struct.rtsx_pcr*, align 8
  %5 = alloca i32, align 4
  store %struct.realtek_pci_sdmmc* %0, %struct.realtek_pci_sdmmc** %3, align 8
  %6 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %3, align 8
  %7 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %6, i32 0, i32 1
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %7, align 8
  store %struct.rtsx_pcr* %8, %struct.rtsx_pcr** %4, align 8
  %9 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %3, align 8
  %10 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SDMMC_POWER_ON, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

15:                                               ; preds = %1
  %16 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %17 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %16)
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %19 = load i32, i32* @WRITE_REG_CMD, align 4
  %20 = load i32, i32* @CARD_SELECT, align 4
  %21 = load i32, i32* @SD_MOD_SEL, align 4
  %22 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %18, i32 %19, i32 %20, i32 7, i32 %21)
  %23 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %24 = load i32, i32* @WRITE_REG_CMD, align 4
  %25 = load i32, i32* @CARD_SHARE_MODE, align 4
  %26 = load i32, i32* @CARD_SHARE_MASK, align 4
  %27 = load i32, i32* @CARD_SHARE_48_SD, align 4
  %28 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %30 = load i32, i32* @WRITE_REG_CMD, align 4
  %31 = load i32, i32* @CARD_CLK_EN, align 4
  %32 = load i32, i32* @SD_CLK_EN, align 4
  %33 = load i32, i32* @SD_CLK_EN, align 4
  %34 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %36 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %35, i32 100)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %15
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %71

41:                                               ; preds = %15
  %42 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %43 = load i32, i32* @RTSX_SD_CARD, align 4
  %44 = call i32 @rtsx_pci_card_pull_ctl_enable(%struct.rtsx_pcr* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %71

49:                                               ; preds = %41
  %50 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %51 = load i32, i32* @RTSX_SD_CARD, align 4
  %52 = call i32 @rtsx_pci_card_power_on(%struct.rtsx_pcr* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %71

57:                                               ; preds = %49
  %58 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %59 = load i32, i32* @CARD_OE, align 4
  %60 = load i32, i32* @SD_OUTPUT_EN, align 4
  %61 = load i32, i32* @SD_OUTPUT_EN, align 4
  %62 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %71

67:                                               ; preds = %57
  %68 = load i64, i64* @SDMMC_POWER_ON, align 8
  %69 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %3, align 8
  %70 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %65, %55, %47, %39, %14
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_card_pull_ctl_enable(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_card_power_on(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
