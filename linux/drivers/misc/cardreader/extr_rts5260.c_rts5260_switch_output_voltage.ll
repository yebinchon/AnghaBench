; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_switch_output_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_switch_output_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@LDO_CONFIG2 = common dso_local global i32 0, align 4
@DV331812_VDD1 = common dso_local global i32 0, align 4
@LDO_DV18_CFG = common dso_local global i32 0, align 4
@DV331812_MASK = common dso_local global i32 0, align 4
@DV331812_33 = common dso_local global i32 0, align 4
@SD_PAD_CTL = common dso_local global i32 0, align 4
@SD_IO_USING_1V8 = common dso_local global i32 0, align 4
@DV331812_17 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i32)* @rts5260_switch_output_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts5260_switch_output_voltage(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_pcr*, align 8
  %5 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %38 [
    i32 128, label %7
    i32 129, label %22
  ]

7:                                                ; preds = %2
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %9 = load i32, i32* @LDO_CONFIG2, align 4
  %10 = load i32, i32* @DV331812_VDD1, align 4
  %11 = load i32, i32* @DV331812_VDD1, align 4
  %12 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %14 = load i32, i32* @LDO_DV18_CFG, align 4
  %15 = load i32, i32* @DV331812_MASK, align 4
  %16 = load i32, i32* @DV331812_33, align 4
  %17 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %19 = load i32, i32* @SD_PAD_CTL, align 4
  %20 = load i32, i32* @SD_IO_USING_1V8, align 4
  %21 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %18, i32 %19, i32 %20, i32 0)
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %24 = load i32, i32* @LDO_CONFIG2, align 4
  %25 = load i32, i32* @DV331812_VDD1, align 4
  %26 = load i32, i32* @DV331812_VDD1, align 4
  %27 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %29 = load i32, i32* @LDO_DV18_CFG, align 4
  %30 = load i32, i32* @DV331812_MASK, align 4
  %31 = load i32, i32* @DV331812_17, align 4
  %32 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %34 = load i32, i32* @SD_PAD_CTL, align 4
  %35 = load i32, i32* @SD_IO_USING_1V8, align 4
  %36 = load i32, i32* @SD_IO_USING_1V8, align 4
  %37 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %33, i32 %34, i32 %35, i32 %36)
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %22, %7
  %42 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @rts5260_fill_driving(%struct.rtsx_pcr* %42, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @rts5260_fill_driving(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
