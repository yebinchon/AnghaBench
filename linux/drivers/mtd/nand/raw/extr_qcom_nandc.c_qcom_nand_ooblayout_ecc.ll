; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nand_ooblayout_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nand_ooblayout_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_oob_region = type { i64, i64 }
%struct.nand_chip = type { %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32 }
%struct.qcom_nand_host = type { i64, i64, i64 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @qcom_nand_ooblayout_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_nand_ooblayout_ecc(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca %struct.qcom_nand_host*, align 8
  %10 = alloca %struct.nand_ecc_ctrl*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %12 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %11)
  store %struct.nand_chip* %12, %struct.nand_chip** %8, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %14 = call %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip* %13)
  store %struct.qcom_nand_host* %14, %struct.qcom_nand_host** %9, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %16, %struct.nand_ecc_ctrl** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ERANGE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %63

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %22
  %26 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %10, align 8
  %27 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %10, align 8
  %30 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = mul nsw i32 %28, %32
  %34 = sext i32 %33 to i64
  %35 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %36 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %40 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %42 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %62

43:                                               ; preds = %22
  %44 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %45 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %48 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %52 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %54 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %57 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %61 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %43, %25
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %19
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
