; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_hw_ecc_bch_write_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_hw_ecc_bch_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_7__, i32*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mtd_info = type { i32 }
%struct.marvell_hw_ecc_layout = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.marvell_hw_ecc_layout* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @marvell_nfc_hw_ecc_bch_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_hw_ecc_bch_write_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.marvell_hw_ecc_layout*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %19 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %18)
  store %struct.mtd_info* %19, %struct.mtd_info** %10, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %21 = call %struct.TYPE_8__* @to_marvell_nand(%struct.nand_chip* %20)
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %22, align 8
  store %struct.marvell_hw_ecc_layout* %23, %struct.marvell_hw_ecc_layout** %11, align 8
  %24 = load i32*, i32** %7, align 8
  store i32* %24, i32** %12, align 8
  %25 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %13, align 8
  %28 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %29 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  %31 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %32 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %35 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @marvell_nfc_select_target(%struct.nand_chip* %34, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %4
  %42 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %46 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memset(i32* %44, i32 255, i32 %47)
  br label %49

49:                                               ; preds = %41, %4
  %50 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %51 = call i32 @marvell_nfc_enable_hw_ecc(%struct.nand_chip* %50)
  store i32 0, i32* %16, align 4
  br label %52

52:                                               ; preds = %90, %49
  %53 = load i32, i32* %16, align 4
  %54 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %55 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %52
  %59 = load i32, i32* %16, align 4
  %60 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %61 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %59, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %66 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %11, align 8
  %69 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %64, %58
  %72 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @marvell_nfc_hw_ecc_bch_write_chunk(%struct.nand_chip* %72, i32 %73, i32* %74, i32 %75, i32* %76, i32 %77, i32 %78)
  %80 = load i32, i32* %14, align 4
  %81 = load i32*, i32** %12, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %12, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load i32*, i32** %13, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %13, align 8
  %88 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %89 = call i32 @marvell_nfc_wait_ndrun(%struct.nand_chip* %88)
  br label %90

90:                                               ; preds = %71
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %16, align 4
  br label %52

93:                                               ; preds = %52
  %94 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %95 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %96 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @PSEC_TO_MSEC(i32 %100)
  %102 = call i32 @marvell_nfc_wait_op(%struct.nand_chip* %94, i32 %101)
  store i32 %102, i32* %17, align 4
  %103 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %104 = call i32 @marvell_nfc_disable_hw_ecc(%struct.nand_chip* %103)
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %93
  %108 = load i32, i32* %17, align 4
  store i32 %108, i32* %5, align 4
  br label %110

109:                                              ; preds = %93
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %107
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.TYPE_8__* @to_marvell_nand(%struct.nand_chip*) #1

declare dso_local i32 @marvell_nfc_select_target(%struct.nand_chip*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @marvell_nfc_enable_hw_ecc(%struct.nand_chip*) #1

declare dso_local i32 @marvell_nfc_hw_ecc_bch_write_chunk(%struct.nand_chip*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @marvell_nfc_wait_ndrun(%struct.nand_chip*) #1

declare dso_local i32 @marvell_nfc_wait_op(%struct.nand_chip*, i32) #1

declare dso_local i32 @PSEC_TO_MSEC(i32) #1

declare dso_local i32 @marvell_nfc_disable_hw_ecc(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
