; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_write_subpage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_write_subpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, i32, %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32 }
%struct.mtd_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i32, i32*, i32, i32)* @sunxi_nfc_hw_ecc_write_subpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nfc_hw_ecc_write_subpage(%struct.nand_chip* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mtd_info*, align 8
  %15 = alloca %struct.nand_ecc_ctrl*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %24 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %23)
  store %struct.mtd_info* %24, %struct.mtd_info** %14, align 8
  %25 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 2
  store %struct.nand_ecc_ctrl* %26, %struct.nand_ecc_ctrl** %15, align 8
  store i32 0, i32* %18, align 4
  %27 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %28 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sunxi_nfc_select_chip(%struct.nand_chip* %27, i32 %30)
  %32 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %32, i32 %33, i32 0, i32* null, i32 0)
  %35 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %36 = call i32 @sunxi_nfc_hw_ecc_enable(%struct.nand_chip* %35)
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %39 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %37, %40
  store i32 %41, i32* %17, align 4
  br label %42

42:                                               ; preds = %95, %6
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %44, %45
  %47 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %48 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DIV_ROUND_UP(i32 %46, i32 %49)
  %51 = icmp slt i32 %43, %50
  br i1 %51, label %52, label %98

52:                                               ; preds = %42
  %53 = load i32, i32* %17, align 4
  %54 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %55 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %60 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 4
  %63 = mul nsw i32 %58, %62
  store i32 %63, i32* %20, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32* %67, i32** %21, align 8
  %68 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %69 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32* %73, i32** %22, align 8
  %74 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %75 = load i32*, i32** %21, align 8
  %76 = load i32, i32* %19, align 4
  %77 = load i32*, i32** %22, align 8
  %78 = load i32, i32* %20, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %81 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @sunxi_nfc_hw_ecc_write_chunk(%struct.nand_chip* %74, i32* %75, i32 %76, i32* %77, i64 %83, i32* %18, i32 %87, i32 %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %52
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %7, align 4
  br label %103

94:                                               ; preds = %52
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %17, align 4
  br label %42

98:                                               ; preds = %42
  %99 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %100 = call i32 @sunxi_nfc_hw_ecc_disable(%struct.nand_chip* %99)
  %101 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %102 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %101)
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %98, %92
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_select_chip(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_enable(%struct.nand_chip*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_write_chunk(%struct.nand_chip*, i32*, i32, i32*, i64, i32*, i32, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_disable(%struct.nand_chip*) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
