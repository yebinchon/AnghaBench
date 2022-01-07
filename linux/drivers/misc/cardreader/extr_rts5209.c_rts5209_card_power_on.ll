; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5209.c_rts5209_card_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5209.c_rts5209_card_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@SD_POWER_MASK = common dso_local global i32 0, align 4
@SD_PARTIAL_POWER_ON = common dso_local global i32 0, align 4
@SD_POWER_ON = common dso_local global i32 0, align 4
@PCR_MS_PMOS = common dso_local global i32 0, align 4
@RTSX_MS_CARD = common dso_local global i32 0, align 4
@MS_POWER_MASK = common dso_local global i32 0, align 4
@MS_PARTIAL_POWER_ON = common dso_local global i32 0, align 4
@MS_POWER_ON = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_PWR_CTL = common dso_local global i32 0, align 4
@PWR_GATE_CTRL = common dso_local global i32 0, align 4
@LDO3318_PWR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i32)* @rts5209_card_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts5209_card_power_on(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_pcr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @SD_POWER_MASK, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @SD_PARTIAL_POWER_ON, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @SD_POWER_ON, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %14 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCR_MS_PMOS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @RTSX_MS_CARD, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @MS_POWER_MASK, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @MS_PARTIAL_POWER_ON, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @MS_POWER_ON, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %23, %19, %2
  %28 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %29 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %28)
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %31 = load i32, i32* @WRITE_REG_CMD, align 4
  %32 = load i32, i32* @CARD_PWR_CTL, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %30, i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %37 = load i32, i32* @WRITE_REG_CMD, align 4
  %38 = load i32, i32* @PWR_GATE_CTRL, align 4
  %39 = load i32, i32* @LDO3318_PWR_MASK, align 4
  %40 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %36, i32 %37, i32 %38, i32 %39, i32 4)
  %41 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %42 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %41, i32 100)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %64

47:                                               ; preds = %27
  %48 = call i32 @udelay(i32 150)
  %49 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %50 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %49)
  %51 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %52 = load i32, i32* @WRITE_REG_CMD, align 4
  %53 = load i32, i32* @CARD_PWR_CTL, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %58 = load i32, i32* @WRITE_REG_CMD, align 4
  %59 = load i32, i32* @PWR_GATE_CTRL, align 4
  %60 = load i32, i32* @LDO3318_PWR_MASK, align 4
  %61 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %57, i32 %58, i32 %59, i32 %60, i32 0)
  %62 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %63 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %62, i32 100)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %47, %45
  %65 = load i32, i32* %3, align 4
  ret i32 %65
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
