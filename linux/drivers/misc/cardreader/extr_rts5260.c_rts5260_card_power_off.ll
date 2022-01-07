; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_card_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_card_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@LDO_VCC_CFG1 = common dso_local global i32 0, align 4
@LDO_POW_SDVDD1_MASK = common dso_local global i32 0, align 4
@LDO_POW_SDVDD1_OFF = common dso_local global i32 0, align 4
@LDO_CONFIG2 = common dso_local global i32 0, align 4
@DV331812_POWERON = common dso_local global i32 0, align 4
@DV331812_POWEROFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i32)* @rts5260_card_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts5260_card_power_off(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %7 = call i32 @rts5260_card_before_power_off(%struct.rtsx_pcr* %6)
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %9 = load i32, i32* @LDO_VCC_CFG1, align 4
  %10 = load i32, i32* @LDO_POW_SDVDD1_MASK, align 4
  %11 = load i32, i32* @LDO_POW_SDVDD1_OFF, align 4
  %12 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %8, i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %14 = load i32, i32* @LDO_CONFIG2, align 4
  %15 = load i32, i32* @DV331812_POWERON, align 4
  %16 = load i32, i32* @DV331812_POWEROFF, align 4
  %17 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %13, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %19 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %25 = call i32 @rtsx_pci_disable_ocp(%struct.rtsx_pcr* %24)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @rts5260_card_before_power_off(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_disable_ocp(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
