; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_wait_voltage_stable_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_wait_voltage_stable_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_pci_sdmmc = type { %struct.rtsx_pcr* }
%struct.rtsx_pcr = type { i32 }

@SD_BUS_STAT = common dso_local global i32 0, align 4
@SD_CMD_STATUS = common dso_local global i32 0, align 4
@SD_DAT3_STATUS = common dso_local global i32 0, align 4
@SD_DAT2_STATUS = common dso_local global i32 0, align 4
@SD_DAT1_STATUS = common dso_local global i32 0, align 4
@SD_DAT0_STATUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SD_CLK_FORCE_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.realtek_pci_sdmmc*)* @sd_wait_voltage_stable_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_wait_voltage_stable_1(%struct.realtek_pci_sdmmc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.realtek_pci_sdmmc*, align 8
  %4 = alloca %struct.rtsx_pcr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.realtek_pci_sdmmc* %0, %struct.realtek_pci_sdmmc** %3, align 8
  %7 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %3, align 8
  %8 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %7, i32 0, i32 0
  %9 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %8, align 8
  store %struct.rtsx_pcr* %9, %struct.rtsx_pcr** %4, align 8
  %10 = call i32 @mdelay(i32 1)
  %11 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %12 = load i32, i32* @SD_BUS_STAT, align 4
  %13 = call i32 @rtsx_pci_read_register(%struct.rtsx_pcr* %11, i32 %12, i32* %6)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %44

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SD_CMD_STATUS, align 4
  %21 = load i32, i32* @SD_DAT3_STATUS, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SD_DAT2_STATUS, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SD_DAT1_STATUS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SD_DAT0_STATUS, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %19, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %18
  %35 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %36 = load i32, i32* @SD_BUS_STAT, align 4
  %37 = load i32, i32* @SD_CLK_FORCE_STOP, align 4
  %38 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %35, i32 %36, i32 255, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %41, %31, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtsx_pci_read_register(%struct.rtsx_pcr*, i32, i32*) #1

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
