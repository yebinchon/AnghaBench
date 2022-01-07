; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, i32 }
%struct.vf610_nfc = type { i64, i32 }
%struct.mtd_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@CMD_BYTE1_SHIFT = common dso_local global i32 0, align 4
@COMMAND_CMD_BYTE1 = common dso_local global i32 0, align 4
@COMMAND_CAR_BYTE1 = common dso_local global i32 0, align 4
@COMMAND_CAR_BYTE2 = common dso_local global i32 0, align 4
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@CMD_BYTE2_SHIFT = common dso_local global i32 0, align 4
@COMMAND_CMD_BYTE2 = common dso_local global i32 0, align 4
@COMMAND_RB_HANDSHAKE = common dso_local global i32 0, align 4
@COMMAND_READ_DATA = common dso_local global i32 0, align 4
@CMD_CODE_SHIFT = common dso_local global i32 0, align 4
@ECC_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @vf610_nfc_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_nfc_read_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
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
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %19 = call %struct.vf610_nfc* @chip_to_nfc(%struct.nand_chip* %18)
  store %struct.vf610_nfc* %19, %struct.vf610_nfc** %10, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %21 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %20)
  store %struct.mtd_info* %21, %struct.mtd_info** %11, align 8
  %22 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %29 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %30 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @vf610_nfc_select_target(%struct.nand_chip* %29, i32 %32)
  %34 = load i32, i32* @NAND_CMD_READ0, align 4
  %35 = load i32, i32* @CMD_BYTE1_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %15, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* @COMMAND_CMD_BYTE1, align 4
  %40 = load i32, i32* @COMMAND_CAR_BYTE1, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @COMMAND_CAR_BYTE2, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %16, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %16, align 4
  %46 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @vf610_nfc_fill_row(%struct.nand_chip* %46, i32 %47, i32* %16, i32* %13)
  %49 = load i32, i32* @NAND_CMD_READSTART, align 4
  %50 = load i32, i32* @CMD_BYTE2_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %14, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* @COMMAND_CMD_BYTE2, align 4
  %55 = load i32, i32* @COMMAND_RB_HANDSHAKE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @COMMAND_READ_DATA, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %16, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @CMD_CODE_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* %15, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %15, align 4
  %66 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %67 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %68 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @vf610_nfc_ecc_mode(%struct.vf610_nfc* %66, i32 %69)
  %71 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @vf610_nfc_run(%struct.vf610_nfc* %71, i32 0, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %78 = load i32, i32* @ECC_BYPASS, align 4
  %79 = call i32 @vf610_nfc_ecc_mode(%struct.vf610_nfc* %77, i32 %78)
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %82 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @NFC_MAIN_AREA(i32 0)
  %85 = add nsw i64 %83, %84
  %86 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %87 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @vf610_nfc_rd_from_sram(i32* %80, i64 %85, i32 %88, i32 0)
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %4
  %93 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %94 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %97 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @NFC_MAIN_AREA(i32 0)
  %100 = add nsw i64 %98, %99
  %101 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %102 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %100, %104
  %106 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %107 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @vf610_nfc_rd_from_sram(i32* %95, i64 %105, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %92, %4
  %111 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %114 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @vf610_nfc_correct_data(%struct.nand_chip* %111, i32* %112, i32* %115, i32 %116)
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %110
  %121 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %122 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  store i32 0, i32* %5, align 4
  br label %134

126:                                              ; preds = %110
  %127 = load i32, i32* %17, align 4
  %128 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %129 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %127
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* %17, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %126, %120
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local %struct.vf610_nfc* @chip_to_nfc(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @vf610_nfc_select_target(%struct.nand_chip*, i32) #1

declare dso_local i32 @vf610_nfc_fill_row(%struct.nand_chip*, i32, i32*, i32*) #1

declare dso_local i32 @vf610_nfc_ecc_mode(%struct.vf610_nfc*, i32) #1

declare dso_local i32 @vf610_nfc_run(%struct.vf610_nfc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vf610_nfc_rd_from_sram(i32*, i64, i32, i32) #1

declare dso_local i64 @NFC_MAIN_AREA(i32) #1

declare dso_local i32 @vf610_nfc_correct_data(%struct.nand_chip*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
