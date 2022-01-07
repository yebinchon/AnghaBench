; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rtsx_base_card_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rtsx_base_card_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.rtsx_cr_option }
%struct.rtsx_cr_option = type { i64 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_PWR_CTL = common dso_local global i32 0, align 4
@SD_POWER_MASK = common dso_local global i32 0, align 4
@SD_VCC_PARTIAL_POWER_ON = common dso_local global i32 0, align 4
@PWR_GATE_CTRL = common dso_local global i32 0, align 4
@LDO3318_PWR_MASK = common dso_local global i32 0, align 4
@SD_VCC_POWER_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i32)* @rtsx_base_card_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_base_card_power_on(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_pcr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtsx_cr_option*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %9 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %8, i32 0, i32 0
  store %struct.rtsx_cr_option* %9, %struct.rtsx_cr_option** %7, align 8
  %10 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %7, align 8
  %11 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %16 = call i32 @rtsx_pci_enable_ocp(%struct.rtsx_pcr* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %19 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %18)
  %20 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %21 = load i32, i32* @WRITE_REG_CMD, align 4
  %22 = load i32, i32* @CARD_PWR_CTL, align 4
  %23 = load i32, i32* @SD_POWER_MASK, align 4
  %24 = load i32, i32* @SD_VCC_PARTIAL_POWER_ON, align 4
  %25 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %20, i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %27 = load i32, i32* @WRITE_REG_CMD, align 4
  %28 = load i32, i32* @PWR_GATE_CTRL, align 4
  %29 = load i32, i32* @LDO3318_PWR_MASK, align 4
  %30 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %26, i32 %27, i32 %28, i32 %29, i32 2)
  %31 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %32 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %31, i32 100)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %17
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %54

37:                                               ; preds = %17
  %38 = call i32 @msleep(i32 5)
  %39 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %40 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %39)
  %41 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %42 = load i32, i32* @WRITE_REG_CMD, align 4
  %43 = load i32, i32* @CARD_PWR_CTL, align 4
  %44 = load i32, i32* @SD_POWER_MASK, align 4
  %45 = load i32, i32* @SD_VCC_POWER_ON, align 4
  %46 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %48 = load i32, i32* @WRITE_REG_CMD, align 4
  %49 = load i32, i32* @PWR_GATE_CTRL, align 4
  %50 = load i32, i32* @LDO3318_PWR_MASK, align 4
  %51 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %47, i32 %48, i32 %49, i32 %50, i32 6)
  %52 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %53 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %52, i32 100)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %37, %35
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @rtsx_pci_enable_ocp(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
