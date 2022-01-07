; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_write_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32*, i32, %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32, i32 }
%struct.mtd_info = type { i64 }

@NAND_NEED_SCRAMBLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @sunxi_nfc_hw_ecc_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nfc_hw_ecc_write_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.nand_ecc_ctrl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %20 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %19)
  store %struct.mtd_info* %20, %struct.mtd_info** %10, align 8
  %21 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 3
  store %struct.nand_ecc_ctrl* %22, %struct.nand_ecc_ctrl** %11, align 8
  store i32 0, i32* %14, align 4
  %23 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %24 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @sunxi_nfc_select_chip(%struct.nand_chip* %23, i32 %26)
  %28 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %28, i32 %29, i32 0, i32* null, i32 0)
  %31 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %32 = call i32 @sunxi_nfc_hw_ecc_enable(%struct.nand_chip* %31)
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %82, %4
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %36 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %85

39:                                               ; preds = %33
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %42 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %47 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 4
  %50 = mul nsw i32 %45, %49
  store i32 %50, i32* %16, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32* %54, i32** %17, align 8
  %55 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32* %60, i32** %18, align 8
  %61 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load i32*, i32** %18, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %68 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @sunxi_nfc_hw_ecc_write_chunk(%struct.nand_chip* %61, i32* %62, i32 %63, i32* %64, i64 %70, i32* %14, i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %39
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %5, align 4
  br label %107

81:                                               ; preds = %39
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %33

85:                                               ; preds = %33
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %85
  %89 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %90 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @NAND_NEED_SCRAMBLING, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88, %85
  %96 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %97 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %98 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @sunxi_nfc_hw_ecc_write_extra_oob(%struct.nand_chip* %96, i32* %99, i32* %14, i32 %100)
  br label %102

102:                                              ; preds = %95, %88
  %103 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %104 = call i32 @sunxi_nfc_hw_ecc_disable(%struct.nand_chip* %103)
  %105 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %106 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %105)
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %102, %79
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_select_chip(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_enable(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_write_chunk(%struct.nand_chip*, i32*, i32, i32*, i64, i32*, i32, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_write_extra_oob(%struct.nand_chip*, i32*, i32*, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_disable(%struct.nand_chip*) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
