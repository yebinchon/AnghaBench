; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts525a_card_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts525a_card_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@LDO_VCC_CFG1 = common dso_local global i32 0, align 4
@LDO_VCC_TUNE_MASK = common dso_local global i32 0, align 4
@LDO_VCC_3V3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i32)* @rts525a_card_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts525a_card_power_on(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %6 = load i32, i32* @LDO_VCC_CFG1, align 4
  %7 = load i32, i32* @LDO_VCC_TUNE_MASK, align 4
  %8 = load i32, i32* @LDO_VCC_3V3, align 4
  %9 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @rtsx_base_card_power_on(%struct.rtsx_pcr* %10, i32 %11)
  ret i32 %12
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @rtsx_base_card_power_on(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
