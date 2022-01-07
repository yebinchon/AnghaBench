; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_read_subpage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_read_subpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, i32, %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32 }
%struct.mtd_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i32, i32*, i32)* @sunxi_nfc_hw_ecc_read_subpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nfc_hw_ecc_read_subpage(%struct.nand_chip* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtd_info*, align 8
  %13 = alloca %struct.nand_ecc_ctrl*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %23 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %22)
  store %struct.mtd_info* %23, %struct.mtd_info** %12, align 8
  %24 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 2
  store %struct.nand_ecc_ctrl* %25, %struct.nand_ecc_ctrl** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %27 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @sunxi_nfc_select_chip(%struct.nand_chip* %26, i32 %29)
  %31 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @nand_read_page_op(%struct.nand_chip* %31, i32 %32, i32 0, i32* null, i32 0)
  %34 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %35 = call i32 @sunxi_nfc_hw_ecc_enable(%struct.nand_chip* %34)
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %13, align 8
  %38 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %36, %39
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %94, %5
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %43, %44
  %46 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %13, align 8
  %47 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DIV_ROUND_UP(i32 %45, i32 %48)
  %50 = icmp slt i32 %42, %49
  br i1 %50, label %51, label %97

51:                                               ; preds = %41
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %13, align 8
  %54 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %13, align 8
  %59 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 4
  %62 = mul nsw i32 %57, %61
  store i32 %62, i32* %19, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %20, align 8
  %67 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %68 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32* %72, i32** %21, align 8
  %73 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %74 = load i32*, i32** %20, align 8
  %75 = load i32, i32* %18, align 4
  %76 = load i32*, i32** %21, align 8
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %80 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @sunxi_nfc_hw_ecc_read_chunk(%struct.nand_chip* %73, i32* %74, i32 %75, i32* %76, i64 %82, i32* %16, i32* %17, i32 %86, i32 0, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %51
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %6, align 4
  br label %101

93:                                               ; preds = %51
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %15, align 4
  br label %41

97:                                               ; preds = %41
  %98 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %99 = call i32 @sunxi_nfc_hw_ecc_disable(%struct.nand_chip* %98)
  %100 = load i32, i32* %17, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %97, %91
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_select_chip(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_enable(%struct.nand_chip*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_read_chunk(%struct.nand_chip*, i32*, i32, i32*, i64, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_disable(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
