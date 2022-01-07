; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts525a_switch_output_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts525a_switch_output_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@LDO_CONFIG2 = common dso_local global i32 0, align 4
@LDO_D3318_MASK = common dso_local global i32 0, align 4
@LDO_D3318_33V = common dso_local global i32 0, align 4
@SD_PAD_CTL = common dso_local global i32 0, align 4
@SD_IO_USING_1V8 = common dso_local global i32 0, align 4
@LDO_D3318_18V = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i32)* @rts525a_switch_output_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts525a_switch_output_voltage(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_pcr*, align 8
  %5 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %28 [
    i32 128, label %7
    i32 129, label %17
  ]

7:                                                ; preds = %2
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %9 = load i32, i32* @LDO_CONFIG2, align 4
  %10 = load i32, i32* @LDO_D3318_MASK, align 4
  %11 = load i32, i32* @LDO_D3318_33V, align 4
  %12 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %14 = load i32, i32* @SD_PAD_CTL, align 4
  %15 = load i32, i32* @SD_IO_USING_1V8, align 4
  %16 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %13, i32 %14, i32 %15, i32 0)
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %19 = load i32, i32* @LDO_CONFIG2, align 4
  %20 = load i32, i32* @LDO_D3318_MASK, align 4
  %21 = load i32, i32* @LDO_D3318_18V, align 4
  %22 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %24 = load i32, i32* @SD_PAD_CTL, align 4
  %25 = load i32, i32* @SD_IO_USING_1V8, align 4
  %26 = load i32, i32* @SD_IO_USING_1V8, align 4
  %27 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %23, i32 %24, i32 %25, i32 %26)
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %17, %7
  %32 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %33 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %32)
  %34 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @rts5249_fill_driving(%struct.rtsx_pcr* %34, i32 %35)
  %37 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %38 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %37, i32 100)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %31, %28
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rts5249_fill_driving(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
