; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5209.c_rts5209_extra_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5209.c_rts5209_extra_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_GPIO = common dso_local global i32 0, align 4
@ASPM_FORCE_CTL = common dso_local global i32 0, align 4
@PETXCFG = common dso_local global i32 0, align 4
@CARD_GPIO_DIR = common dso_local global i32 0, align 4
@SD30_DRIVE_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*)* @rts5209_extra_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts5209_extra_init_hw(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %3 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %4 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %3)
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %6 = load i32, i32* @WRITE_REG_CMD, align 4
  %7 = load i32, i32* @CARD_GPIO, align 4
  %8 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %5, i32 %6, i32 %7, i32 255, i32 3)
  %9 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %10 = load i32, i32* @WRITE_REG_CMD, align 4
  %11 = load i32, i32* @ASPM_FORCE_CTL, align 4
  %12 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %9, i32 %10, i32 %11, i32 63, i32 0)
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %14 = load i32, i32* @WRITE_REG_CMD, align 4
  %15 = load i32, i32* @PETXCFG, align 4
  %16 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %13, i32 %14, i32 %15, i32 8, i32 8)
  %17 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %18 = load i32, i32* @WRITE_REG_CMD, align 4
  %19 = load i32, i32* @CARD_GPIO_DIR, align 4
  %20 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %17, i32 %18, i32 %19, i32 255, i32 3)
  %21 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %22 = load i32, i32* @WRITE_REG_CMD, align 4
  %23 = load i32, i32* @SD30_DRIVE_SEL, align 4
  %24 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %25 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %21, i32 %22, i32 %23, i32 255, i32 %26)
  %28 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %29 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %28, i32 100)
  ret i32 %29
}

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
