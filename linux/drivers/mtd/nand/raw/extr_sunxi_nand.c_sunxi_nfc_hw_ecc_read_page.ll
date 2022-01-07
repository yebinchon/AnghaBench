; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, i32, %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32, i32 }
%struct.mtd_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @sunxi_nfc_hw_ecc_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nfc_hw_ecc_read_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %22 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %21)
  store %struct.mtd_info* %22, %struct.mtd_info** %10, align 8
  %23 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 2
  store %struct.nand_ecc_ctrl* %24, %struct.nand_ecc_ctrl** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %26 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %27 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sunxi_nfc_select_chip(%struct.nand_chip* %25, i32 %28)
  %30 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @nand_read_page_op(%struct.nand_chip* %30, i32 %31, i32 0, i32* null, i32 0)
  %33 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %34 = call i32 @sunxi_nfc_hw_ecc_enable(%struct.nand_chip* %33)
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %90, %4
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %38 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %93

41:                                               ; preds = %35
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %44 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %49 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 4
  %52 = mul nsw i32 %47, %51
  store i32 %52, i32* %18, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32* %56, i32** %19, align 8
  %57 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %58 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32* %62, i32** %20, align 8
  %63 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %64 = load i32*, i32** %19, align 8
  %65 = load i32, i32* %17, align 4
  %66 = load i32*, i32** %20, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %70 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @sunxi_nfc_hw_ecc_read_chunk(%struct.nand_chip* %63, i32* %64, i32 %65, i32* %66, i64 %72, i32* %15, i32* %12, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %41
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %5, align 4
  br label %111

84:                                               ; preds = %41
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 1, i32* %16, align 4
  br label %88

88:                                               ; preds = %87, %84
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %35

93:                                               ; preds = %35
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %98 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %99 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @sunxi_nfc_hw_ecc_read_extra_oob(%struct.nand_chip* %97, i32* %100, i32* %15, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %96, %93
  %108 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %109 = call i32 @sunxi_nfc_hw_ecc_disable(%struct.nand_chip* %108)
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %107, %82
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_select_chip(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_enable(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_read_chunk(%struct.nand_chip*, i32*, i32, i32*, i64, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_read_extra_oob(%struct.nand_chip*, i32*, i32*, i32, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_disable(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
