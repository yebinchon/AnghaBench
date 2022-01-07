; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_format_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_format_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i64 }
%struct.nand_chip = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.mtk_nfc_nand_chip = type { %struct.TYPE_4__, %struct.mtk_nfc_fdm }
%struct.TYPE_4__ = type { i64, i32 (%struct.mtd_info.0*, i32, i32)* }
%struct.mtd_info.0 = type opaque
%struct.mtk_nfc_fdm = type { i32 }
%struct.mtk_nfc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*)* @mtk_nfc_format_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_nfc_format_page(%struct.mtd_info* %0, i32* %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.mtk_nfc_nand_chip*, align 8
  %7 = alloca %struct.mtk_nfc*, align 8
  %8 = alloca %struct.mtk_nfc_fdm*, align 8
  %9 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %11 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %10)
  store %struct.nand_chip* %11, %struct.nand_chip** %5, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = call %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip* %12)
  store %struct.mtk_nfc_nand_chip* %13, %struct.mtk_nfc_nand_chip** %6, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %15 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %14)
  store %struct.mtk_nfc* %15, %struct.mtk_nfc** %7, align 8
  %16 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %6, align 8
  %17 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %16, i32 0, i32 1
  store %struct.mtk_nfc_fdm* %17, %struct.mtk_nfc_fdm** %8, align 8
  %18 = load %struct.mtk_nfc*, %struct.mtk_nfc** %7, align 8
  %19 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call i32 @memset(i32 %20, i32 255, i64 %27)
  store i64 0, i64* %9, align 8
  br label %29

29:                                               ; preds = %81, %2
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %30, %34
  br i1 %35, label %36, label %84

36:                                               ; preds = %29
  %37 = load i32*, i32** %4, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @mtk_data_ptr(%struct.nand_chip* %40, i64 %41)
  %43 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @data_ptr(%struct.nand_chip* %43, i32* %44, i64 %45)
  %47 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %48 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @memcpy(i32 %42, i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %39, %36
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %6, align 8
  %55 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %6, align 8
  %61 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32 (%struct.mtd_info.0*, i32, i32)*, i32 (%struct.mtd_info.0*, i32, i32)** %62, align 8
  %64 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %65 = bitcast %struct.mtd_info* %64 to %struct.mtd_info.0*
  %66 = load %struct.mtk_nfc*, %struct.mtk_nfc** %7, align 8
  %67 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 %63(%struct.mtd_info.0* %65, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %59, %52
  %71 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @mtk_oob_ptr(%struct.nand_chip* %71, i64 %72)
  %74 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @oob_ptr(%struct.nand_chip* %74, i64 %75)
  %77 = load %struct.mtk_nfc_fdm*, %struct.mtk_nfc_fdm** %8, align 8
  %78 = getelementptr inbounds %struct.mtk_nfc_fdm, %struct.mtk_nfc_fdm* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @memcpy(i32 %73, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %70
  %82 = load i64, i64* %9, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %9, align 8
  br label %29

84:                                               ; preds = %29
  ret void
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip*) #1

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mtk_data_ptr(%struct.nand_chip*, i64) #1

declare dso_local i32 @data_ptr(%struct.nand_chip*, i32*, i64) #1

declare dso_local i32 @mtk_oob_ptr(%struct.nand_chip*, i64) #1

declare dso_local i32 @oob_ptr(%struct.nand_chip*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
