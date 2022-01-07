; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_preinit_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_preinit_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf610_nfc = type { i32 }

@NFC_FLASH_CONFIG = common dso_local global i32 0, align 4
@CONFIG_16BIT = common dso_local global i32 0, align 4
@CONFIG_ADDR_AUTO_INCR_BIT = common dso_local global i32 0, align 4
@CONFIG_BUFNO_AUTO_INCR_BIT = common dso_local global i32 0, align 4
@CONFIG_BOOT_MODE_BIT = common dso_local global i32 0, align 4
@CONFIG_DMA_REQ_BIT = common dso_local global i32 0, align 4
@CONFIG_FAST_FLASH_BIT = common dso_local global i32 0, align 4
@ECC_BYPASS = common dso_local global i32 0, align 4
@CONFIG_PAGE_CNT_MASK = common dso_local global i32 0, align 4
@CONFIG_PAGE_CNT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vf610_nfc*)* @vf610_nfc_preinit_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf610_nfc_preinit_controller(%struct.vf610_nfc* %0) #0 {
  %2 = alloca %struct.vf610_nfc*, align 8
  store %struct.vf610_nfc* %0, %struct.vf610_nfc** %2, align 8
  %3 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %4 = load i32, i32* @NFC_FLASH_CONFIG, align 4
  %5 = load i32, i32* @CONFIG_16BIT, align 4
  %6 = call i32 @vf610_nfc_clear(%struct.vf610_nfc* %3, i32 %4, i32 %5)
  %7 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %8 = load i32, i32* @NFC_FLASH_CONFIG, align 4
  %9 = load i32, i32* @CONFIG_ADDR_AUTO_INCR_BIT, align 4
  %10 = call i32 @vf610_nfc_clear(%struct.vf610_nfc* %7, i32 %8, i32 %9)
  %11 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %12 = load i32, i32* @NFC_FLASH_CONFIG, align 4
  %13 = load i32, i32* @CONFIG_BUFNO_AUTO_INCR_BIT, align 4
  %14 = call i32 @vf610_nfc_clear(%struct.vf610_nfc* %11, i32 %12, i32 %13)
  %15 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %16 = load i32, i32* @NFC_FLASH_CONFIG, align 4
  %17 = load i32, i32* @CONFIG_BOOT_MODE_BIT, align 4
  %18 = call i32 @vf610_nfc_clear(%struct.vf610_nfc* %15, i32 %16, i32 %17)
  %19 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %20 = load i32, i32* @NFC_FLASH_CONFIG, align 4
  %21 = load i32, i32* @CONFIG_DMA_REQ_BIT, align 4
  %22 = call i32 @vf610_nfc_clear(%struct.vf610_nfc* %19, i32 %20, i32 %21)
  %23 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %24 = load i32, i32* @NFC_FLASH_CONFIG, align 4
  %25 = load i32, i32* @CONFIG_FAST_FLASH_BIT, align 4
  %26 = call i32 @vf610_nfc_set(%struct.vf610_nfc* %23, i32 %24, i32 %25)
  %27 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %28 = load i32, i32* @ECC_BYPASS, align 4
  %29 = call i32 @vf610_nfc_ecc_mode(%struct.vf610_nfc* %27, i32 %28)
  %30 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %31 = load i32, i32* @NFC_FLASH_CONFIG, align 4
  %32 = load i32, i32* @CONFIG_PAGE_CNT_MASK, align 4
  %33 = load i32, i32* @CONFIG_PAGE_CNT_SHIFT, align 4
  %34 = call i32 @vf610_nfc_set_field(%struct.vf610_nfc* %30, i32 %31, i32 %32, i32 %33, i32 1)
  ret void
}

declare dso_local i32 @vf610_nfc_clear(%struct.vf610_nfc*, i32, i32) #1

declare dso_local i32 @vf610_nfc_set(%struct.vf610_nfc*, i32, i32) #1

declare dso_local i32 @vf610_nfc_ecc_mode(%struct.vf610_nfc*, i32) #1

declare dso_local i32 @vf610_nfc_set_field(%struct.vf610_nfc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
