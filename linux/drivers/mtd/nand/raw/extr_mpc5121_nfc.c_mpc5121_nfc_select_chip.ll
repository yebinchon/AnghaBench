; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_mpc5121_nfc_select_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_mpc5121_nfc_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }

@NFC_CONFIG1 = common dso_local global i32 0, align 4
@NFC_CE = common dso_local global i32 0, align 4
@NFC_BUF_ADDR = common dso_local global i32 0, align 4
@NFC_ACTIVE_CS_MASK = common dso_local global i32 0, align 4
@NFC_ACTIVE_CS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @mpc5121_nfc_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc5121_nfc_select_chip(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %6)
  store %struct.mtd_info* %7, %struct.mtd_info** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %12 = load i32, i32* @NFC_CONFIG1, align 4
  %13 = load i32, i32* @NFC_CE, align 4
  %14 = call i32 @nfc_clear(%struct.mtd_info* %11, i32 %12, i32 %13)
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %17 = load i32, i32* @NFC_BUF_ADDR, align 4
  %18 = load i32, i32* @NFC_ACTIVE_CS_MASK, align 4
  %19 = call i32 @nfc_clear(%struct.mtd_info* %16, i32 %17, i32 %18)
  %20 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %21 = load i32, i32* @NFC_BUF_ADDR, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @NFC_ACTIVE_CS_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* @NFC_ACTIVE_CS_MASK, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @nfc_set(%struct.mtd_info* %20, i32 %21, i32 %26)
  %28 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %29 = load i32, i32* @NFC_CONFIG1, align 4
  %30 = load i32, i32* @NFC_CE, align 4
  %31 = call i32 @nfc_set(%struct.mtd_info* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %15, %10
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nfc_clear(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @nfc_set(%struct.mtd_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
