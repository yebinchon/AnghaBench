; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_init_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_init_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf610_nfc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NFC_FLASH_CONFIG = common dso_local global i32 0, align 4
@CONFIG_16BIT = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i64 0, align 8
@CONFIG_ECC_SRAM_ADDR_MASK = common dso_local global i32 0, align 4
@CONFIG_ECC_SRAM_ADDR_SHIFT = common dso_local global i32 0, align 4
@ECC_SRAM_ADDR = common dso_local global i32 0, align 4
@CONFIG_ECC_SRAM_REQ_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vf610_nfc*)* @vf610_nfc_init_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf610_nfc_init_controller(%struct.vf610_nfc* %0) #0 {
  %2 = alloca %struct.vf610_nfc*, align 8
  store %struct.vf610_nfc* %0, %struct.vf610_nfc** %2, align 8
  %3 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %4 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %12 = load i32, i32* @NFC_FLASH_CONFIG, align 4
  %13 = load i32, i32* @CONFIG_16BIT, align 4
  %14 = call i32 @vf610_nfc_set(%struct.vf610_nfc* %11, i32 %12, i32 %13)
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %17 = load i32, i32* @NFC_FLASH_CONFIG, align 4
  %18 = load i32, i32* @CONFIG_16BIT, align 4
  %19 = call i32 @vf610_nfc_clear(%struct.vf610_nfc* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %22 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NAND_ECC_HW, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %20
  %29 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %30 = load i32, i32* @NFC_FLASH_CONFIG, align 4
  %31 = load i32, i32* @CONFIG_ECC_SRAM_ADDR_MASK, align 4
  %32 = load i32, i32* @CONFIG_ECC_SRAM_ADDR_SHIFT, align 4
  %33 = load i32, i32* @ECC_SRAM_ADDR, align 4
  %34 = ashr i32 %33, 3
  %35 = call i32 @vf610_nfc_set_field(%struct.vf610_nfc* %29, i32 %30, i32 %31, i32 %32, i32 %34)
  %36 = load %struct.vf610_nfc*, %struct.vf610_nfc** %2, align 8
  %37 = load i32, i32* @NFC_FLASH_CONFIG, align 4
  %38 = load i32, i32* @CONFIG_ECC_SRAM_REQ_BIT, align 4
  %39 = call i32 @vf610_nfc_set(%struct.vf610_nfc* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %28, %20
  ret void
}

declare dso_local i32 @vf610_nfc_set(%struct.vf610_nfc*, i32, i32) #1

declare dso_local i32 @vf610_nfc_clear(%struct.vf610_nfc*, i32, i32) #1

declare dso_local i32 @vf610_nfc_set_field(%struct.vf610_nfc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
