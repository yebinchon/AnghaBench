; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_cmd_set_sd_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_cmd_set_sd_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }
%struct.mmc_command = type { i32, i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@SD_CMD0 = common dso_local global i32 0, align 4
@SD_CMD_START = common dso_local global i32 0, align 4
@SD_CMD1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*, %struct.mmc_command*)* @sd_cmd_set_sd_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_cmd_set_sd_cmd(%struct.rtsx_pcr* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %6 = load i32, i32* @WRITE_REG_CMD, align 4
  %7 = load i32, i32* @SD_CMD0, align 4
  %8 = load i32, i32* @SD_CMD_START, align 4
  %9 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %8, %11
  %13 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %5, i32 %6, i32 %7, i32 255, i32 %12)
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %15 = load i32, i32* @SD_CMD1, align 4
  %16 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @rtsx_pci_write_be32(%struct.rtsx_pcr* %14, i32 %15, i32 %18)
  ret void
}

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_write_be32(%struct.rtsx_pcr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
