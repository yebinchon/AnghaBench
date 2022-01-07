; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtk_nfc = type { i32 }

@NAND_ALE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@CNFG_OP_CUST = common dso_local global i32 0, align 4
@NFI_CNFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @mtk_nfc_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_nfc_cmd_ctrl(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtk_nfc*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %9 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %8)
  store %struct.mtk_nfc* %9, %struct.mtk_nfc** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @NAND_ALE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.mtk_nfc*, %struct.mtk_nfc** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @mtk_nfc_send_address(%struct.mtk_nfc* %15, i32 %16)
  br label %34

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @NAND_CLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.mtk_nfc*, %struct.mtk_nfc** %7, align 8
  %25 = call i32 @mtk_nfc_hw_reset(%struct.mtk_nfc* %24)
  %26 = load %struct.mtk_nfc*, %struct.mtk_nfc** %7, align 8
  %27 = load i32, i32* @CNFG_OP_CUST, align 4
  %28 = load i32, i32* @NFI_CNFG, align 4
  %29 = call i32 @nfi_writew(%struct.mtk_nfc* %26, i32 %27, i32 %28)
  %30 = load %struct.mtk_nfc*, %struct.mtk_nfc** %7, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @mtk_nfc_send_command(%struct.mtk_nfc* %30, i32 %31)
  br label %33

33:                                               ; preds = %23, %18
  br label %34

34:                                               ; preds = %33, %14
  ret void
}

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @mtk_nfc_send_address(%struct.mtk_nfc*, i32) #1

declare dso_local i32 @mtk_nfc_hw_reset(%struct.mtk_nfc*) #1

declare dso_local i32 @nfi_writew(%struct.mtk_nfc*, i32, i32) #1

declare dso_local i32 @mtk_nfc_send_command(%struct.mtk_nfc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
