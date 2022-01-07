; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5227.c_rts5227_card_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5227.c_rts5227_card_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_PWR_CTL = common dso_local global i32 0, align 4
@SD_POWER_MASK = common dso_local global i32 0, align 4
@SD_PARTIAL_POWER_ON = common dso_local global i32 0, align 4
@PWR_GATE_CTRL = common dso_local global i32 0, align 4
@LDO3318_PWR_MASK = common dso_local global i32 0, align 4
@SD_POWER_ON = common dso_local global i32 0, align 4
@CARD_OE = common dso_local global i32 0, align 4
@SD_OUTPUT_EN = common dso_local global i32 0, align 4
@MS_OUTPUT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i32)* @rts5227_card_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts5227_card_power_on(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_pcr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %8 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %14 = call i32 @rtsx_pci_enable_ocp(%struct.rtsx_pcr* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %17 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %16)
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %19 = load i32, i32* @WRITE_REG_CMD, align 4
  %20 = load i32, i32* @CARD_PWR_CTL, align 4
  %21 = load i32, i32* @SD_POWER_MASK, align 4
  %22 = load i32, i32* @SD_PARTIAL_POWER_ON, align 4
  %23 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %25 = load i32, i32* @WRITE_REG_CMD, align 4
  %26 = load i32, i32* @PWR_GATE_CTRL, align 4
  %27 = load i32, i32* @LDO3318_PWR_MASK, align 4
  %28 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %24, i32 %25, i32 %26, i32 %27, i32 2)
  %29 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %30 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %29, i32 100)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %15
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %64

35:                                               ; preds = %15
  %36 = call i32 @msleep(i32 20)
  %37 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %38 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %37)
  %39 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %40 = load i32, i32* @WRITE_REG_CMD, align 4
  %41 = load i32, i32* @CARD_PWR_CTL, align 4
  %42 = load i32, i32* @SD_POWER_MASK, align 4
  %43 = load i32, i32* @SD_POWER_ON, align 4
  %44 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %46 = load i32, i32* @WRITE_REG_CMD, align 4
  %47 = load i32, i32* @PWR_GATE_CTRL, align 4
  %48 = load i32, i32* @LDO3318_PWR_MASK, align 4
  %49 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %45, i32 %46, i32 %47, i32 %48, i32 6)
  %50 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %51 = load i32, i32* @WRITE_REG_CMD, align 4
  %52 = load i32, i32* @CARD_OE, align 4
  %53 = load i32, i32* @SD_OUTPUT_EN, align 4
  %54 = load i32, i32* @SD_OUTPUT_EN, align 4
  %55 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %57 = load i32, i32* @WRITE_REG_CMD, align 4
  %58 = load i32, i32* @CARD_OE, align 4
  %59 = load i32, i32* @MS_OUTPUT_EN, align 4
  %60 = load i32, i32* @MS_OUTPUT_EN, align 4
  %61 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %63 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %62, i32 100)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %35, %33
  %65 = load i32, i32* %3, align 4
  ret i32 %65
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
