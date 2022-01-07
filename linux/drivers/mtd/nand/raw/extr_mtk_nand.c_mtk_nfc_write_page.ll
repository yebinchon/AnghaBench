; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_write_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i64 }
%struct.nand_chip = type { i32 }
%struct.mtk_nfc = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mtk_nfc_nand_chip = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.mtd_info.0*, i32*, i32)* }
%struct.mtd_info.0 = type opaque

@NFI_CNFG = common dso_local global i32 0, align 4
@CNFG_AUTO_FMT_EN = common dso_local global i32 0, align 4
@CNFG_HW_ECC_EN = common dso_local global i32 0, align 4
@ECC_ENCODE = common dso_local global i32 0, align 4
@ECC_NFI_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32*, i32, i32)* @mtk_nfc_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nfc_write_page(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtk_nfc*, align 8
  %13 = alloca %struct.mtk_nfc_nand_chip*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %19 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %18)
  store %struct.mtk_nfc* %19, %struct.mtk_nfc** %12, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %21 = call %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip* %20)
  store %struct.mtk_nfc_nand_chip* %21, %struct.mtk_nfc_nand_chip** %13, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %22, i32 %23, i32 0, i32* null, i32 0)
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %95, label %27

27:                                               ; preds = %5
  %28 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %29 = load i32, i32* @NFI_CNFG, align 4
  %30 = call i32 @nfi_readw(%struct.mtk_nfc* %28, i32 %29)
  %31 = load i32, i32* @CNFG_AUTO_FMT_EN, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %16, align 4
  %33 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @CNFG_HW_ECC_EN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @NFI_CNFG, align 4
  %38 = call i32 @nfi_writew(%struct.mtk_nfc* %33, i32 %36, i32 %37)
  %39 = load i32, i32* @ECC_ENCODE, align 4
  %40 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %41 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @ECC_NFI_MODE, align 4
  %44 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %45 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %48 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %51 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %50, i32 0, i32 2
  %52 = call i32 @mtk_ecc_enable(i32 %49, %struct.TYPE_4__* %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %27
  %56 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %57 = load i32, i32* @NFI_CNFG, align 4
  %58 = call i32 @nfi_readw(%struct.mtk_nfc* %56, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* @CNFG_AUTO_FMT_EN, align 4
  %60 = load i32, i32* @CNFG_HW_ECC_EN, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %16, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %16, align 4
  %65 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @NFI_CNFG, align 4
  %68 = call i32 @nfi_writew(%struct.mtk_nfc* %65, i32 %66, i32 %67)
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %6, align 4
  br label %132

70:                                               ; preds = %27
  %71 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %72 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %76 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @memcpy(i32* %73, i32* %74, i64 %77)
  %79 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %13, align 8
  %80 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %81, align 8
  %83 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %84 = bitcast %struct.mtd_info* %83 to %struct.mtd_info.0*
  %85 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %86 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 %82(%struct.mtd_info.0* %84, i32* %87, i32 %88)
  %90 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %91 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %15, align 8
  %93 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %94 = call i32 @mtk_nfc_write_fdm(%struct.nand_chip* %93)
  br label %97

95:                                               ; preds = %5
  %96 = load i32*, i32** %9, align 8
  store i32* %96, i32** %15, align 8
  br label %97

97:                                               ; preds = %95, %70
  %98 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %99 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %105 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  br label %108

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %103
  %109 = phi i64 [ %106, %103 ], [ 0, %107 ]
  %110 = add i64 %100, %109
  store i64 %110, i64* %14, align 8
  %111 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %112 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @mtk_nfc_do_write_page(%struct.mtd_info* %111, %struct.nand_chip* %112, i32* %113, i32 %114, i64 %115)
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %108
  %120 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %121 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @mtk_ecc_disable(i32 %122)
  br label %124

124:                                              ; preds = %119, %108
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* %17, align 4
  store i32 %128, i32* %6, align 4
  br label %132

129:                                              ; preds = %124
  %130 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %131 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %130)
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %129, %127, %55
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip*) #1

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @nfi_readw(%struct.mtk_nfc*, i32) #1

declare dso_local i32 @nfi_writew(%struct.mtk_nfc*, i32, i32) #1

declare dso_local i32 @mtk_ecc_enable(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @mtk_nfc_write_fdm(%struct.nand_chip*) #1

declare dso_local i32 @mtk_nfc_do_write_page(%struct.mtd_info*, %struct.nand_chip*, i32*, i32, i64) #1

declare dso_local i32 @mtk_ecc_disable(i32) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
