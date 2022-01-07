; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtk_nfc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NFI_STA = common dso_local global i32 0, align 4
@NFI_FSM_MASK = common dso_local global i32 0, align 4
@NFI_FSM_CUSTDATA = common dso_local global i32 0, align 4
@NFI_CNFG = common dso_local global i32 0, align 4
@CNFG_BYTE_RW = common dso_local global i32 0, align 4
@CNFG_READ_EN = common dso_local global i32 0, align 4
@CON_SEC_SHIFT = common dso_local global i32 0, align 4
@CON_BRD = common dso_local global i32 0, align 4
@NFI_CON = common dso_local global i32 0, align 4
@STAR_EN = common dso_local global i32 0, align 4
@NFI_STRDATA = common dso_local global i32 0, align 4
@NFI_DATAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @mtk_nfc_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nfc_read_byte(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.mtk_nfc*, align 8
  %4 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %5 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %6 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %5)
  store %struct.mtk_nfc* %6, %struct.mtk_nfc** %3, align 8
  %7 = load %struct.mtk_nfc*, %struct.mtk_nfc** %3, align 8
  %8 = load i32, i32* @NFI_STA, align 4
  %9 = call i32 @nfi_readl(%struct.mtk_nfc* %7, i32 %8)
  %10 = load i32, i32* @NFI_FSM_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @NFI_FSM_CUSTDATA, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %1
  %16 = load %struct.mtk_nfc*, %struct.mtk_nfc** %3, align 8
  %17 = load i32, i32* @NFI_CNFG, align 4
  %18 = call i32 @nfi_readw(%struct.mtk_nfc* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @CNFG_BYTE_RW, align 4
  %20 = load i32, i32* @CNFG_READ_EN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.mtk_nfc*, %struct.mtk_nfc** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @NFI_CNFG, align 4
  %27 = call i32 @nfi_writew(%struct.mtk_nfc* %24, i32 %25, i32 %26)
  %28 = load %struct.mtk_nfc*, %struct.mtk_nfc** %3, align 8
  %29 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CON_SEC_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* @CON_BRD, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %4, align 4
  %37 = load %struct.mtk_nfc*, %struct.mtk_nfc** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @NFI_CON, align 4
  %40 = call i32 @nfi_writel(%struct.mtk_nfc* %37, i32 %38, i32 %39)
  %41 = load %struct.mtk_nfc*, %struct.mtk_nfc** %3, align 8
  %42 = load i32, i32* @STAR_EN, align 4
  %43 = load i32, i32* @NFI_STRDATA, align 4
  %44 = call i32 @nfi_writew(%struct.mtk_nfc* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %15, %1
  %46 = load %struct.mtk_nfc*, %struct.mtk_nfc** %3, align 8
  %47 = call i32 @mtk_nfc_wait_ioready(%struct.mtk_nfc* %46)
  %48 = load %struct.mtk_nfc*, %struct.mtk_nfc** %3, align 8
  %49 = load i32, i32* @NFI_DATAR, align 4
  %50 = call i32 @nfi_readb(%struct.mtk_nfc* %48, i32 %49)
  ret i32 %50
}

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @nfi_readl(%struct.mtk_nfc*, i32) #1

declare dso_local i32 @nfi_readw(%struct.mtk_nfc*, i32) #1

declare dso_local i32 @nfi_writew(%struct.mtk_nfc*, i32, i32) #1

declare dso_local i32 @nfi_writel(%struct.mtk_nfc*, i32, i32) #1

declare dso_local i32 @mtk_nfc_wait_ioready(%struct.mtk_nfc*) #1

declare dso_local i32 @nfi_readb(%struct.mtk_nfc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
