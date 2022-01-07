; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_update_ecc_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_update_ecc_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nand_chip = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mtk_nfc = type { i32 }
%struct.mtk_nfc_nand_chip = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mtk_ecc_stats = type { i32, i64, i64 }

@NFI_STA = common dso_local global i32 0, align 4
@STA_EMP_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32, i32)* @mtk_nfc_update_ecc_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nfc_update_ecc_stats(%struct.mtd_info* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca %struct.mtk_nfc*, align 8
  %12 = alloca %struct.mtk_nfc_nand_chip*, align 8
  %13 = alloca %struct.mtk_ecc_stats, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %18 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %17)
  store %struct.nand_chip* %18, %struct.nand_chip** %10, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %20 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %19)
  store %struct.mtk_nfc* %20, %struct.mtk_nfc** %11, align 8
  %21 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %22 = call %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip* %21)
  store %struct.mtk_nfc_nand_chip* %22, %struct.mtk_nfc_nand_chip** %12, align 8
  %23 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %12, align 8
  %24 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load %struct.mtk_nfc*, %struct.mtk_nfc** %11, align 8
  %28 = load i32, i32* @NFI_STA, align 4
  %29 = call i32 @nfi_readl(%struct.mtk_nfc* %27, i32 %28)
  %30 = load i32, i32* @STA_EMP_PAGE, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %36, %40
  %42 = call i32 @memset(i32* %35, i32 255, i32 %41)
  store i32 0, i32* %16, align 4
  br label %43

43:                                               ; preds = %55, %34
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i32* @oob_ptr(%struct.nand_chip* %48, i32 %51)
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @memset(i32* %52, i32 255, i32 %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %16, align 4
  br label %43

58:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %85

59:                                               ; preds = %4
  %60 = load %struct.mtk_nfc*, %struct.mtk_nfc** %11, align 8
  %61 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @mtk_ecc_get_stats(i32 %62, %struct.mtk_ecc_stats* %13, i32 %63)
  %65 = getelementptr inbounds %struct.mtk_ecc_stats, %struct.mtk_ecc_stats* %13, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %68 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %66
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = getelementptr inbounds %struct.mtk_ecc_stats, %struct.mtk_ecc_stats* %13, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %77 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %75
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  %83 = getelementptr inbounds %struct.mtk_ecc_stats, %struct.mtk_ecc_stats* %13, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %59, %58
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip*) #1

declare dso_local i32 @nfi_readl(%struct.mtk_nfc*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @oob_ptr(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtk_ecc_get_stats(i32, %struct.mtk_ecc_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
