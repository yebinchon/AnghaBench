; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_block_markbad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_block_markbad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32 }
%struct.qcom_nand_host = type { i32, i32 }
%struct.qcom_nand_controller = type { i32, i32 }

@FLASH_BUF_ACC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failure to update BBM\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @qcom_nandc_block_markbad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_nandc_block_markbad(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qcom_nand_host*, align 8
  %7 = alloca %struct.qcom_nand_controller*, align 8
  %8 = alloca %struct.nand_ecc_ctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %12 = call %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip* %11)
  store %struct.qcom_nand_host* %12, %struct.qcom_nand_host** %6, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %14 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %13)
  store %struct.qcom_nand_controller* %14, %struct.qcom_nand_controller** %7, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 2
  store %struct.nand_ecc_ctrl* %16, %struct.nand_ecc_ctrl** %8, align 8
  %17 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %18 = call i32 @clear_read_regs(%struct.qcom_nand_controller* %17)
  %19 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %20 = call i32 @clear_bam_transaction(%struct.qcom_nand_controller* %19)
  %21 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %22 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %25 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memset(i32 %23, i32 0, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %28, %31
  %33 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %34 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %32, %35
  store i32 %36, i32* %9, align 4
  %37 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %38 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %40 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %41 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %8, align 8
  %44 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = mul nsw i32 %42, %46
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @set_address(%struct.qcom_nand_host* %39, i32 %47, i32 %48)
  %50 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %51 = call i32 @update_rw_regs(%struct.qcom_nand_host* %50, i32 1, i32 0)
  %52 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %53 = call i32 @config_nand_page_write(%struct.qcom_nand_controller* %52)
  %54 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %55 = load i32, i32* @FLASH_BUF_ACC, align 4
  %56 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %57 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %60 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @write_data_dma(%struct.qcom_nand_controller* %54, i32 %55, i32 %58, i32 %61, i32 0)
  %63 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %64 = call i32 @config_nand_cw_write(%struct.qcom_nand_controller* %63)
  %65 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %66 = call i32 @submit_descs(%struct.qcom_nand_controller* %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %68 = call i32 @free_descs(%struct.qcom_nand_controller* %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %2
  %72 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %73 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %81

78:                                               ; preds = %2
  %79 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %80 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %71
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip*) #1

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @clear_read_regs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @clear_bam_transaction(%struct.qcom_nand_controller*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_address(%struct.qcom_nand_host*, i32, i32) #1

declare dso_local i32 @update_rw_regs(%struct.qcom_nand_host*, i32, i32) #1

declare dso_local i32 @config_nand_page_write(%struct.qcom_nand_controller*) #1

declare dso_local i32 @write_data_dma(%struct.qcom_nand_controller*, i32, i32, i32, i32) #1

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
