; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_write_byte.c"
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
@CON_SEC_SHIFT = common dso_local global i32 0, align 4
@CON_BWR = common dso_local global i32 0, align 4
@NFI_CON = common dso_local global i32 0, align 4
@STAR_EN = common dso_local global i32 0, align 4
@NFI_STRDATA = common dso_local global i32 0, align 4
@NFI_DATAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @mtk_nfc_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_nfc_write_byte(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_nfc*, align 8
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %7)
  store %struct.mtk_nfc* %8, %struct.mtk_nfc** %5, align 8
  %9 = load %struct.mtk_nfc*, %struct.mtk_nfc** %5, align 8
  %10 = load i32, i32* @NFI_STA, align 4
  %11 = call i32 @nfi_readl(%struct.mtk_nfc* %9, i32 %10)
  %12 = load i32, i32* @NFI_FSM_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NFI_FSM_CUSTDATA, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %2
  %18 = load %struct.mtk_nfc*, %struct.mtk_nfc** %5, align 8
  %19 = load i32, i32* @NFI_CNFG, align 4
  %20 = call i32 @nfi_readw(%struct.mtk_nfc* %18, i32 %19)
  %21 = load i32, i32* @CNFG_BYTE_RW, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.mtk_nfc*, %struct.mtk_nfc** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @NFI_CNFG, align 4
  %26 = call i32 @nfi_writew(%struct.mtk_nfc* %23, i32 %24, i32 %25)
  %27 = load %struct.mtk_nfc*, %struct.mtk_nfc** %5, align 8
  %28 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CON_SEC_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* @CON_BWR, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.mtk_nfc*, %struct.mtk_nfc** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @NFI_CON, align 4
  %39 = call i32 @nfi_writel(%struct.mtk_nfc* %36, i32 %37, i32 %38)
  %40 = load %struct.mtk_nfc*, %struct.mtk_nfc** %5, align 8
  %41 = load i32, i32* @STAR_EN, align 4
  %42 = load i32, i32* @NFI_STRDATA, align 4
  %43 = call i32 @nfi_writew(%struct.mtk_nfc* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %17, %2
  %45 = load %struct.mtk_nfc*, %struct.mtk_nfc** %5, align 8
  %46 = call i32 @mtk_nfc_wait_ioready(%struct.mtk_nfc* %45)
  %47 = load %struct.mtk_nfc*, %struct.mtk_nfc** %5, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @NFI_DATAW, align 4
  %50 = call i32 @nfi_writeb(%struct.mtk_nfc* %47, i32 %48, i32 %49)
  ret void
}

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @nfi_readl(%struct.mtk_nfc*, i32) #1

declare dso_local i32 @nfi_readw(%struct.mtk_nfc*, i32) #1

declare dso_local i32 @nfi_writew(%struct.mtk_nfc*, i32, i32) #1

declare dso_local i32 @nfi_writel(%struct.mtk_nfc*, i32, i32) #1

declare dso_local i32 @mtk_nfc_wait_ioready(%struct.mtk_nfc*) #1

declare dso_local i32 @nfi_writeb(%struct.mtk_nfc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
