; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_correct_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_correct_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.vf610_nfc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mtd_info = type { i32 }

@ECC_SRAM_ADDR = common dso_local global i64 0, align 8
@ECC_STATUS = common dso_local global i64 0, align 8
@ECC_STATUS_ERR_COUNT = common dso_local global i32 0, align 4
@ECC_STATUS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*, i32)* @vf610_nfc_correct_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_nfc_correct_data(%struct.nand_chip* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vf610_nfc*, align 8
  %11 = alloca %struct.mtd_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %17 = call %struct.vf610_nfc* @chip_to_nfc(%struct.nand_chip* %16)
  store %struct.vf610_nfc* %17, %struct.vf610_nfc** %10, align 8
  %18 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %19 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %18)
  store %struct.mtd_info* %19, %struct.mtd_info** %11, align 8
  %20 = call i64 @NFC_MAIN_AREA(i32 0)
  %21 = load i64, i64* @ECC_SRAM_ADDR, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i64, i64* @ECC_STATUS, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* %12, align 8
  %25 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %26 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 2
  store i32 %30, i32* %15, align 4
  %31 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @vf610_nfc_read(%struct.vf610_nfc* %31, i64 %32)
  %34 = and i32 %33, 255
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @ECC_STATUS_ERR_COUNT, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @ECC_STATUS_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %5, align 4
  br label %69

44:                                               ; preds = %4
  %45 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %46 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %48 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %47, i32 0, i32 1
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %52 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @nand_read_oob_op(%struct.TYPE_4__* %48, i32 %49, i32 0, i32* %50, i32 %53)
  %55 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %56 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.vf610_nfc*, %struct.vf610_nfc** %10, align 8
  %59 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %65 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @nand_check_erased_ecc_chunk(i32* %57, i32 %62, i32* %63, i32 %66, i32* null, i32 0, i32 %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %44, %42
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.vf610_nfc* @chip_to_nfc(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @NFC_MAIN_AREA(i32) #1

declare dso_local i32 @vf610_nfc_read(%struct.vf610_nfc*, i64) #1

declare dso_local i32 @nand_read_oob_op(%struct.TYPE_4__*, i32, i32, i32*, i32) #1

declare dso_local i32 @nand_check_erased_ecc_chunk(i32*, i32, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
