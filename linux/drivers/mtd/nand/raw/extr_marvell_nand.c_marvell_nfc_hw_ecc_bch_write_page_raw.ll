; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_hw_ecc_bch_write_page_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_hw_ecc_bch_write_page_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, i32 }
%struct.marvell_hw_ecc_layout = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.marvell_hw_ecc_layout* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @marvell_nfc_hw_ecc_bch_write_page_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_hw_ecc_bch_write_page_raw(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.marvell_hw_ecc_layout*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %18 = call %struct.TYPE_2__* @to_marvell_nand(%struct.nand_chip* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %19, align 8
  store %struct.marvell_hw_ecc_layout* %20, %struct.marvell_hw_ecc_layout** %9, align 8
  %21 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %22 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %25 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %29 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %33 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %36 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %39 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %41 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %42 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %45 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %49 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %15, align 4
  %52 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %53 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @marvell_nfc_select_target(%struct.nand_chip* %52, i32 %55)
  %57 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %57, i32 %58, i32 0, i32* null, i32 0)
  store i32 0, i32* %16, align 4
  br label %60

60:                                               ; preds = %138, %4
  %61 = load i32, i32* %16, align 4
  %62 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %63 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %141

66:                                               ; preds = %60
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %69 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %67, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %74 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  %76 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %77 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %12, align 4
  %79 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %80 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %72, %66
  %83 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %10, align 4
  %86 = mul nsw i32 %84, %85
  %87 = call i32 @nand_change_write_column_op(%struct.nand_chip* %83, i32 %86, i32* null, i32 0, i32 0)
  %88 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %92 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %89, i64 %95
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @nand_write_data_op(%struct.nand_chip* %88, i32* %96, i32 %97, i32 0)
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %82
  br label %138

102:                                              ; preds = %82
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %107 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %108 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @nand_write_data_op(%struct.nand_chip* %106, i32* %112, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %105, %102
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %120 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %121 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @nand_write_data_op(%struct.nand_chip* %119, i32* %125, i32 %126, i32 0)
  br label %128

128:                                              ; preds = %118, %115
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %13, align 4
  %133 = call i64 @ALIGN(i32 %132, i32 32)
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %15, align 4
  br label %138

138:                                              ; preds = %128, %101
  %139 = load i32, i32* %16, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %16, align 4
  br label %60

141:                                              ; preds = %60
  %142 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %143 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %142)
  ret i32 %143
}

declare dso_local %struct.TYPE_2__* @to_marvell_nand(%struct.nand_chip*) #1

declare dso_local i32 @marvell_nfc_select_target(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @nand_change_write_column_op(%struct.nand_chip*, i32, i32*, i32, i32) #1

declare dso_local i32 @nand_write_data_op(%struct.nand_chip*, i32*, i32, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
