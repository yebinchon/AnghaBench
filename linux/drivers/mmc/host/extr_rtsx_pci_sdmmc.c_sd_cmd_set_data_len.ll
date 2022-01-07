; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_cmd_set_data_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_cmd_set_data_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@SD_BLOCK_CNT_L = common dso_local global i32 0, align 4
@SD_BLOCK_CNT_H = common dso_local global i32 0, align 4
@SD_BYTE_CNT_L = common dso_local global i32 0, align 4
@SD_BYTE_CNT_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*, i32, i32)* @sd_cmd_set_data_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_cmd_set_data_len(%struct.rtsx_pcr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtsx_pcr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %8 = load i32, i32* @WRITE_REG_CMD, align 4
  %9 = load i32, i32* @SD_BLOCK_CNT_L, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %7, i32 %8, i32 %9, i32 255, i32 %10)
  %12 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %13 = load i32, i32* @WRITE_REG_CMD, align 4
  %14 = load i32, i32* @SD_BLOCK_CNT_H, align 4
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 8
  %17 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %12, i32 %13, i32 %14, i32 255, i32 %16)
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %19 = load i32, i32* @WRITE_REG_CMD, align 4
  %20 = load i32, i32* @SD_BYTE_CNT_L, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %18, i32 %19, i32 %20, i32 255, i32 %21)
  %23 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %24 = load i32, i32* @WRITE_REG_CMD, align 4
  %25 = load i32, i32* @SD_BYTE_CNT_H, align 4
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 8
  %28 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %23, i32 %24, i32 %25, i32 255, i32 %27)
  ret void
}

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
