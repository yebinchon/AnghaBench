; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_block_bad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_block_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32, %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32 }
%struct.mtd_info = type { i32 }
%struct.qcom_nand_host = type { i32, i32 }
%struct.qcom_nand_controller = type { i32*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"error when trying to read BBM\0A\00", align 1
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @qcom_nandc_block_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_nandc_block_bad(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.qcom_nand_host*, align 8
  %7 = alloca %struct.qcom_nand_controller*, align 8
  %8 = alloca %struct.nand_ecc_ctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %14 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %5, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %16 = call %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip* %15)
  store %struct.qcom_nand_host* %16, %struct.qcom_nand_host** %6, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %18 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %17)
  store %struct.qcom_nand_controller* %18, %struct.qcom_nand_controller** %7, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 3
  store %struct.nand_ecc_ctrl* %20, %struct.nand_ecc_ctrl** %8, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %21, %24
  %26 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %27 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %31 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %33 = call i32 @clear_bam_transaction(%struct.qcom_nand_controller* %32)
  %34 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @copy_last_cw(%struct.qcom_nand_host* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  br label %94

40:                                               ; preds = %2
  %41 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %42 = call i64 @check_flash_errors(%struct.qcom_nand_host* %41, i32 1)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %46 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_warn(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %94

49:                                               ; preds = %40
  %50 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %51 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %54 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %8, align 8
  %57 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = mul nsw i32 %55, %59
  %61 = sub nsw i32 %52, %60
  store i32 %61, i32* %11, align 4
  %62 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %63 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 255
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %12, align 4
  %71 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %72 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %49
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %77
  %81 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %82 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 255
  br label %90

90:                                               ; preds = %80, %77
  %91 = phi i1 [ true, %77 ], [ %89, %80 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %90, %49
  br label %94

94:                                               ; preds = %93, %44, %39
  %95 = load i32, i32* %12, align 4
  ret i32 %95
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip*) #1

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @clear_bam_transaction(%struct.qcom_nand_controller*) #1

declare dso_local i32 @copy_last_cw(%struct.qcom_nand_host*, i32) #1

declare dso_local i64 @check_flash_errors(%struct.qcom_nand_host*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
