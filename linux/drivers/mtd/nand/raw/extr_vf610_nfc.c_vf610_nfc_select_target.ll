; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_select_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_select_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.vf610_nfc = type { i64 }

@NFC_VFC610 = common dso_local global i64 0, align 8
@NFC_ROW_ADDR = common dso_local global i32 0, align 4
@ROW_ADDR_CHIP_SEL_RB_MASK = common dso_local global i32 0, align 4
@ROW_ADDR_CHIP_SEL_MASK = common dso_local global i32 0, align 4
@ROW_ADDR_CHIP_SEL_RB_SHIFT = common dso_local global i32 0, align 4
@ROW_ADDR_CHIP_SEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @vf610_nfc_select_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf610_nfc_select_target(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vf610_nfc*, align 8
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = call %struct.vf610_nfc* @chip_to_nfc(%struct.nand_chip* %7)
  store %struct.vf610_nfc* %8, %struct.vf610_nfc** %5, align 8
  %9 = load %struct.vf610_nfc*, %struct.vf610_nfc** %5, align 8
  %10 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NFC_VFC610, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.vf610_nfc*, %struct.vf610_nfc** %5, align 8
  %17 = load i32, i32* @NFC_ROW_ADDR, align 4
  %18 = call i32 @vf610_nfc_read(%struct.vf610_nfc* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @ROW_ADDR_CHIP_SEL_RB_MASK, align 4
  %20 = load i32, i32* @ROW_ADDR_CHIP_SEL_MASK, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @ROW_ADDR_CHIP_SEL_RB_SHIFT, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* @ROW_ADDR_CHIP_SEL_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.vf610_nfc*, %struct.vf610_nfc** %5, align 8
  %36 = load i32, i32* @NFC_ROW_ADDR, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @vf610_nfc_write(%struct.vf610_nfc* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.vf610_nfc* @chip_to_nfc(%struct.nand_chip*) #1

declare dso_local i32 @vf610_nfc_read(%struct.vf610_nfc*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @vf610_nfc_write(%struct.vf610_nfc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
