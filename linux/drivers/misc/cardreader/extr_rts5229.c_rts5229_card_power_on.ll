; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5229.c_rts5229_card_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5229.c_rts5229_card_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_PWR_CTL = common dso_local global i32 0, align 4
@SD_POWER_MASK = common dso_local global i32 0, align 4
@SD_PARTIAL_POWER_ON = common dso_local global i32 0, align 4
@PWR_GATE_CTRL = common dso_local global i32 0, align 4
@LDO3318_PWR_MASK = common dso_local global i32 0, align 4
@SD_POWER_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i32)* @rts5229_card_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts5229_card_power_on(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_pcr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %8 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %7)
  %9 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %10 = load i32, i32* @WRITE_REG_CMD, align 4
  %11 = load i32, i32* @CARD_PWR_CTL, align 4
  %12 = load i32, i32* @SD_POWER_MASK, align 4
  %13 = load i32, i32* @SD_PARTIAL_POWER_ON, align 4
  %14 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %9, i32 %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %16 = load i32, i32* @WRITE_REG_CMD, align 4
  %17 = load i32, i32* @PWR_GATE_CTRL, align 4
  %18 = load i32, i32* @LDO3318_PWR_MASK, align 4
  %19 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %15, i32 %16, i32 %17, i32 %18, i32 2)
  %20 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %21 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %20, i32 100)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %43

26:                                               ; preds = %2
  %27 = call i32 @udelay(i32 150)
  %28 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %29 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %28)
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %31 = load i32, i32* @WRITE_REG_CMD, align 4
  %32 = load i32, i32* @CARD_PWR_CTL, align 4
  %33 = load i32, i32* @SD_POWER_MASK, align 4
  %34 = load i32, i32* @SD_POWER_ON, align 4
  %35 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %30, i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %37 = load i32, i32* @WRITE_REG_CMD, align 4
  %38 = load i32, i32* @PWR_GATE_CTRL, align 4
  %39 = load i32, i32* @LDO3318_PWR_MASK, align 4
  %40 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %36, i32 %37, i32 %38, i32 %39, i32 6)
  %41 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %42 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %41, i32 100)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %26, %24
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
