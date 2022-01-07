; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_comm_set_ltr_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_comm_set_ltr_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@MSGTXDATA0 = common dso_local global i32 0, align 4
@MASK_8_BIT_DEF = common dso_local global i32 0, align 4
@MSGTXDATA1 = common dso_local global i32 0, align 4
@MSGTXDATA2 = common dso_local global i32 0, align 4
@MSGTXDATA3 = common dso_local global i32 0, align 4
@LTR_CTL = common dso_local global i32 0, align 4
@LTR_TX_EN_MASK = common dso_local global i32 0, align 4
@LTR_LATENCY_MODE_MASK = common dso_local global i32 0, align 4
@LTR_TX_EN_1 = common dso_local global i32 0, align 4
@LTR_LATENCY_MODE_SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i32)* @rtsx_comm_set_ltr_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_comm_set_ltr_latency(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %6 = load i32, i32* @MSGTXDATA0, align 4
  %7 = load i32, i32* @MASK_8_BIT_DEF, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 255
  %10 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %5, i32 %6, i32 %7, i32 %9)
  %11 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %12 = load i32, i32* @MSGTXDATA1, align 4
  %13 = load i32, i32* @MASK_8_BIT_DEF, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 255
  %17 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %11, i32 %12, i32 %13, i32 %16)
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %19 = load i32, i32* @MSGTXDATA2, align 4
  %20 = load i32, i32* @MASK_8_BIT_DEF, align 4
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 16
  %23 = and i32 %22, 255
  %24 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %18, i32 %19, i32 %20, i32 %23)
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %26 = load i32, i32* @MSGTXDATA3, align 4
  %27 = load i32, i32* @MASK_8_BIT_DEF, align 4
  %28 = load i32, i32* %4, align 4
  %29 = ashr i32 %28, 24
  %30 = and i32 %29, 255
  %31 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %25, i32 %26, i32 %27, i32 %30)
  %32 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %33 = load i32, i32* @LTR_CTL, align 4
  %34 = load i32, i32* @LTR_TX_EN_MASK, align 4
  %35 = load i32, i32* @LTR_LATENCY_MODE_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @LTR_TX_EN_1, align 4
  %38 = load i32, i32* @LTR_LATENCY_MODE_SW, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %32, i32 %33, i32 %36, i32 %39)
  ret i32 0
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
