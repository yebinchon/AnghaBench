; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_write_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_write_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32 }
%struct.mtd_info = type { i32 }
%struct.qcom_nand_host = type { i32, i32, i32 }
%struct.qcom_nand_controller = type { i32, i64 }

@FLASH_BUF_ACC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failure to write oob\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @qcom_nandc_write_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_nandc_write_oob(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.qcom_nand_host*, align 8
  %8 = alloca %struct.qcom_nand_controller*, align 8
  %9 = alloca %struct.nand_ecc_ctrl*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %15 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %14)
  store %struct.mtd_info* %15, %struct.mtd_info** %6, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %17 = call %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip* %16)
  store %struct.qcom_nand_host* %17, %struct.qcom_nand_host** %7, align 8
  %18 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %19 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %18)
  store %struct.qcom_nand_controller* %19, %struct.qcom_nand_controller** %8, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 1
  store %struct.nand_ecc_ctrl* %21, %struct.nand_ecc_ctrl** %9, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %7, align 8
  %26 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %28 = call i32 @clear_bam_transaction(%struct.qcom_nand_controller* %27)
  %29 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %9, align 8
  %30 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %9, align 8
  %33 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = shl i32 %35, 2
  %37 = sub nsw i32 %31, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %42 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %7, align 8
  %45 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memset(i64 %43, i32 255, i32 %46)
  %48 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %49 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %50 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %57 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mtd_ooblayout_get_databytes(%struct.mtd_info* %48, i64 %54, i32* %55, i32 0, i32 %58)
  %60 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %7, align 8
  %61 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %7, align 8
  %62 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %9, align 8
  %65 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = mul nsw i32 %63, %67
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @set_address(%struct.qcom_nand_host* %60, i32 %68, i32 %69)
  %71 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %7, align 8
  %72 = call i32 @update_rw_regs(%struct.qcom_nand_host* %71, i32 1, i32 0)
  %73 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %74 = call i32 @config_nand_page_write(%struct.qcom_nand_controller* %73)
  %75 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %76 = load i32, i32* @FLASH_BUF_ACC, align 4
  %77 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %78 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i32 @write_data_dma(%struct.qcom_nand_controller* %75, i32 %76, i64 %79, i32 %82, i32 0)
  %84 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %85 = call i32 @config_nand_cw_write(%struct.qcom_nand_controller* %84)
  %86 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %87 = call i32 @submit_descs(%struct.qcom_nand_controller* %86)
  store i32 %87, i32* %13, align 4
  %88 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %89 = call i32 @free_descs(%struct.qcom_nand_controller* %88)
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %2
  %93 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %94 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %102

99:                                               ; preds = %2
  %100 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %101 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %100)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %92
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip*) #1

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @clear_bam_transaction(%struct.qcom_nand_controller*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @mtd_ooblayout_get_databytes(%struct.mtd_info*, i64, i32*, i32, i32) #1

declare dso_local i32 @set_address(%struct.qcom_nand_host*, i32, i32) #1

declare dso_local i32 @update_rw_regs(%struct.qcom_nand_host*, i32, i32) #1

declare dso_local i32 @config_nand_page_write(%struct.qcom_nand_controller*) #1

declare dso_local i32 @write_data_dma(%struct.qcom_nand_controller*, i32, i64, i32, i32) #1

declare dso_local i32 @config_nand_cw_write(%struct.qcom_nand_controller*) #1

declare dso_local i32 @submit_descs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @free_descs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
