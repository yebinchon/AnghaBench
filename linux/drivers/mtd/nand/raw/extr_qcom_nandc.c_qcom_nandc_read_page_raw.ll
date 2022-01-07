; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_read_page_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_read_page_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32 }
%struct.mtd_info = type { i32 }
%struct.qcom_nand_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @qcom_nandc_read_page_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_nandc_read_page_raw(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.qcom_nand_host*, align 8
  %12 = alloca %struct.nand_ecc_ctrl*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %18 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %17)
  store %struct.mtd_info* %18, %struct.mtd_info** %10, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %20 = call %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip* %19)
  store %struct.qcom_nand_host* %20, %struct.qcom_nand_host** %11, align 8
  %21 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 1
  store %struct.nand_ecc_ctrl* %22, %struct.nand_ecc_ctrl** %12, align 8
  %23 = load i32*, i32** %7, align 8
  store i32* %23, i32** %15, align 8
  %24 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %16, align 8
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %58, %4
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %30 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %27
  %34 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %35 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @qcom_nandc_read_cw_raw(%struct.mtd_info* %34, %struct.nand_chip* %35, i32* %36, i32* %37, i32 %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %5, align 4
  br label %62

45:                                               ; preds = %33
  %46 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %11, align 8
  %47 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %15, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %15, align 8
  %52 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %53 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %16, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %16, align 8
  br label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %27

61:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip*) #1

declare dso_local i32 @qcom_nandc_read_cw_raw(%struct.mtd_info*, %struct.nand_chip*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
