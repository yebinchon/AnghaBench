; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_hw_ecc_bch_read_page_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_hw_ecc_bch_read_page_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, i32 }
%struct.mtd_info = type { i32 }
%struct.marvell_hw_ecc_layout = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.marvell_hw_ecc_layout* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @marvell_nfc_hw_ecc_bch_read_page_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_hw_ecc_bch_read_page_raw(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.marvell_hw_ecc_layout*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %19 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %18)
  store %struct.mtd_info* %19, %struct.mtd_info** %9, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %21 = call %struct.TYPE_2__* @to_marvell_nand(%struct.nand_chip* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %22, align 8
  store %struct.marvell_hw_ecc_layout* %23, %struct.marvell_hw_ecc_layout** %10, align 8
  %24 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %11, align 8
  %27 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %28 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %31 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %35 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %12, align 4
  %38 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %39 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %42 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %46 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %13, align 4
  %49 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %50 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %14, align 4
  %52 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %53 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %15, align 4
  %55 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %56 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %16, align 4
  %58 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %59 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %60 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @marvell_nfc_select_target(%struct.nand_chip* %58, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %4
  %66 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %67 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %70 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memset(i32* %68, i32 255, i32 %71)
  br label %73

73:                                               ; preds = %65, %4
  %74 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @nand_read_page_op(%struct.nand_chip* %74, i32 %75, i32 0, i32* null, i32 0)
  store i32 0, i32* %17, align 4
  br label %77

77:                                               ; preds = %140, %73
  %78 = load i32, i32* %17, align 4
  %79 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %80 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %143

83:                                               ; preds = %77
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %86 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %91 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %14, align 4
  %93 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %94 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %15, align 4
  %96 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %97 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %89, %83
  %100 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %12, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32*, i32** %6, align 8
  %105 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %106 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %17, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %104, i64 %110
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @nand_change_read_column_op(%struct.nand_chip* %100, i32 %103, i32* %111, i32 %112, i32 0)
  %114 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %117 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %17, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %115, i64 %121
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @nand_read_data_op(%struct.nand_chip* %114, i32* %122, i32 %123, i32 0)
  %125 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %10, align 8
  %131 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ALIGN(i32 %132, i32 32)
  %134 = load i32, i32* %17, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %129, i64 %136
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @nand_read_data_op(%struct.nand_chip* %125, i32* %137, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %99
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %17, align 4
  br label %77

143:                                              ; preds = %77
  ret i32 0
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.TYPE_2__* @to_marvell_nand(%struct.nand_chip*) #1

declare dso_local i32 @marvell_nfc_select_target(%struct.nand_chip*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @nand_change_read_column_op(%struct.nand_chip*, i32, i32*, i32, i32) #1

declare dso_local i32 @nand_read_data_op(%struct.nand_chip*, i32*, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
