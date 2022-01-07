; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_sd_set_sample_push_timing_sd30.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_sd_set_sample_push_timing_sd30.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@SD_CFG1 = common dso_local global i32 0, align 4
@SD_MODE_SELECT_MASK = common dso_local global i32 0, align 4
@SD_ASYNC_FIFO_NOT_RST = common dso_local global i32 0, align 4
@SD_30_MODE = common dso_local global i32 0, align 4
@CLK_CTL = common dso_local global i32 0, align 4
@CLK_LOW_FREQ = common dso_local global i32 0, align 4
@CARD_CLK_SOURCE = common dso_local global i32 0, align 4
@CRC_VAR_CLK0 = common dso_local global i32 0, align 4
@SD30_FIX_CLK = common dso_local global i32 0, align 4
@SAMPLE_VAR_CLK1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*)* @sd_set_sample_push_timing_sd30 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_set_sample_push_timing_sd30(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %3 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %4 = load i32, i32* @SD_CFG1, align 4
  %5 = load i32, i32* @SD_MODE_SELECT_MASK, align 4
  %6 = load i32, i32* @SD_ASYNC_FIFO_NOT_RST, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SD_30_MODE, align 4
  %9 = load i32, i32* @SD_ASYNC_FIFO_NOT_RST, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %3, i32 %4, i32 %7, i32 %10)
  %12 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %13 = load i32, i32* @CLK_CTL, align 4
  %14 = load i32, i32* @CLK_LOW_FREQ, align 4
  %15 = load i32, i32* @CLK_LOW_FREQ, align 4
  %16 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %18 = load i32, i32* @CARD_CLK_SOURCE, align 4
  %19 = load i32, i32* @CRC_VAR_CLK0, align 4
  %20 = load i32, i32* @SD30_FIX_CLK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SAMPLE_VAR_CLK1, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %17, i32 %18, i32 255, i32 %23)
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %26 = load i32, i32* @CLK_CTL, align 4
  %27 = load i32, i32* @CLK_LOW_FREQ, align 4
  %28 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %25, i32 %26, i32 %27, i32 0)
  ret i32 0
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
