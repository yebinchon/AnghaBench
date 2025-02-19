; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rtsx_base_card_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rtsx_base_card_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.rtsx_cr_option }
%struct.rtsx_cr_option = type { i64 }

@CARD_PWR_CTL = common dso_local global i32 0, align 4
@SD_POWER_MASK = common dso_local global i32 0, align 4
@SD_POWER_OFF = common dso_local global i32 0, align 4
@PWR_GATE_CTRL = common dso_local global i32 0, align 4
@LDO3318_PWR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i32)* @rtsx_base_card_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_base_card_power_off(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_cr_option*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %7 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %6, i32 0, i32 0
  store %struct.rtsx_cr_option* %7, %struct.rtsx_cr_option** %5, align 8
  %8 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %5, align 8
  %9 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %14 = call i32 @rtsx_pci_disable_ocp(%struct.rtsx_pcr* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %17 = load i32, i32* @CARD_PWR_CTL, align 4
  %18 = load i32, i32* @SD_POWER_MASK, align 4
  %19 = load i32, i32* @SD_POWER_OFF, align 4
  %20 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %22 = load i32, i32* @PWR_GATE_CTRL, align 4
  %23 = load i32, i32* @LDO3318_PWR_MASK, align 4
  %24 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %21, i32 %22, i32 %23, i32 0)
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
