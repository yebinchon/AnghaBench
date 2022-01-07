; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_write_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.vf610_nfc = type { i32, i64 }
%struct.mtd_info = type { i32, i32 }

@NAND_CMD_SEQIN = common dso_local global i32 0, align 4
@CMD_BYTE1_SHIFT = common dso_local global i32 0, align 4
@COMMAND_CMD_BYTE1 = common dso_local global i32 0, align 4
@COMMAND_CAR_BYTE1 = common dso_local global i32 0, align 4
@COMMAND_CAR_BYTE2 = common dso_local global i32 0, align 4
@NAND_CMD_PAGEPROG = common dso_local global i32 0, align 4
@CMD_BYTE2_SHIFT = common dso_local global i32 0, align 4
@COMMAND_CMD_BYTE2 = common dso_local global i32 0, align 4
@COMMAND_WRITE_DATA = common dso_local global i32 0, align 4
@COMMAND_RB_HANDSHAKE = common dso_local global i32 0, align 4
@CMD_CODE_SHIFT = common dso_local global i32 0, align 4
@ECC_BYPASS = common dso_local global i32 0, align 4
@NAND_STATUS_FAIL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @vf610_nfc_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_nfc_write_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vf610_nfc*, align 8
  %11 = alloca %struct.mtd_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %20 = call %struct.vf610_nfc* @chip_to_nfc(%struct.nand_chip* %19)
  store %struct.vf610_nfc* %20, %struct.vf610_nfc** %10, align 8
  %21 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %22 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %21)
  store %struct.mtd_info* %22, %struct.mtd_info** %11, align 8
  %23 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %24 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %30 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %31 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vf610_nfc_select_target(%struct.nand_chip* %30, i32 %33)
  %35 = load i32, i32* @NAND_CMD_SEQIN, align 4
  %36 = load i32, i32* @CMD_BYTE1_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %15, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* @COMMAND_CMD_BYTE1, align 4
  %41 = load i32, i32* @COMMAND_CAR_BYTE1, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @COMMAND_CAR_BYTE2, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %16, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %16, align 4
  %47 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @vf610_nfc_fill_row(%struct.nand_chip* %47, i32 %48, i32* %16, i32* %13)
  %50 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %51 = load i32, i32* @CMD_BYTE2_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %14, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* @COMMAND_CMD_BYTE2, align 4
  %56 = load i32, i32* @COMMAND_WRITE_DATA, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %16, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %16, align 4
  %60 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %61 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @NFC_MAIN_AREA(i32 0)
  %64 = add nsw i64 %62, %63
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %67 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @vf610_nfc_wr_to_sram(i64 %64, i32* %65, i32 %68, i32 0)
  %70 = load i32, i32* @COMMAND_RB_HANDSHAKE, align 4
  %71 = load i32, i32* %16, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* @CMD_CODE_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %15, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %15, align 4
  %78 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %79 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %80 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @vf610_nfc_ecc_mode(%struct.vf610_nfc* %78, i32 %81)
  %83 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @vf610_nfc_run(%struct.vf610_nfc* %83, i32 0, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %90 = load i32, i32* @ECC_BYPASS, align 4
  %91 = call i32 @vf610_nfc_ecc_mode(%struct.vf610_nfc* %89, i32 %90)
  %92 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %93 = call i32 @nand_status_op(%struct.nand_chip* %92, i32* %17)
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %4
  %97 = load i32, i32* %18, align 4
  store i32 %97, i32* %5, align 4
  br label %107

98:                                               ; preds = %4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* @NAND_STATUS_FAIL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %107

106:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %103, %96
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.vf610_nfc* @chip_to_nfc(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @vf610_nfc_select_target(%struct.nand_chip*, i32) #1

declare dso_local i32 @vf610_nfc_fill_row(%struct.nand_chip*, i32, i32*, i32*) #1

declare dso_local i32 @vf610_nfc_wr_to_sram(i64, i32*, i32, i32) #1

declare dso_local i64 @NFC_MAIN_AREA(i32) #1

declare dso_local i32 @vf610_nfc_ecc_mode(%struct.vf610_nfc*, i32) #1

declare dso_local i32 @vf610_nfc_run(%struct.vf610_nfc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nand_status_op(%struct.nand_chip*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
