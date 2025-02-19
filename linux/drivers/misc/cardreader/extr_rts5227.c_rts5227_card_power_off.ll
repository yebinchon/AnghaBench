; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5227.c_rts5227_card_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5227.c_rts5227_card_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CARD_PWR_CTL = common dso_local global i32 0, align 4
@SD_POWER_MASK = common dso_local global i32 0, align 4
@PMOS_STRG_MASK = common dso_local global i32 0, align 4
@SD_POWER_OFF = common dso_local global i32 0, align 4
@PMOS_STRG_400mA = common dso_local global i32 0, align 4
@PWR_GATE_CTRL = common dso_local global i32 0, align 4
@LDO3318_PWR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i32)* @rts5227_card_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts5227_card_power_off(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %6 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %12 = call i32 @rtsx_pci_disable_ocp(%struct.rtsx_pcr* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %15 = load i32, i32* @CARD_PWR_CTL, align 4
  %16 = load i32, i32* @SD_POWER_MASK, align 4
  %17 = load i32, i32* @PMOS_STRG_MASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SD_POWER_OFF, align 4
  %20 = load i32, i32* @PMOS_STRG_400mA, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %14, i32 %15, i32 %18, i32 %21)
  %23 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %24 = load i32, i32* @PWR_GATE_CTRL, align 4
  %25 = load i32, i32* @LDO3318_PWR_MASK, align 4
  %26 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %23, i32 %24, i32 %25, i32 0)
  ret i32 0
}

declare dso_local i32 @rtsx_pci_disable_ocp(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
