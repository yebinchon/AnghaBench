; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_copy_last_cw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_copy_last_cw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_host = type { i32, i32, i64, %struct.nand_chip }
%struct.nand_chip = type { %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32 }
%struct.qcom_nand_controller = type { i32, i32 }

@FLASH_BUF_ACC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to copy last codeword\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_nand_host*, i32)* @copy_last_cw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_last_cw(%struct.qcom_nand_host* %0, i32 %1) #0 {
  %3 = alloca %struct.qcom_nand_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.qcom_nand_controller*, align 8
  %7 = alloca %struct.nand_ecc_ctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qcom_nand_host* %0, %struct.qcom_nand_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %11 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %10, i32 0, i32 3
  store %struct.nand_chip* %11, %struct.nand_chip** %5, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %12)
  store %struct.qcom_nand_controller* %13, %struct.qcom_nand_controller** %6, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %15 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %15, %struct.nand_ecc_ctrl** %7, align 8
  %16 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %17 = call i32 @clear_read_regs(%struct.qcom_nand_controller* %16)
  %18 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %19 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %24 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %28 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i32 [ %25, %22 ], [ %29, %26 ]
  store i32 %31, i32* %8, align 4
  %32 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %33 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @memset(i32 %34, i32 255, i32 %35)
  %37 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %38 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %39 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %7, align 8
  %42 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = mul nsw i32 %40, %44
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @set_address(%struct.qcom_nand_host* %37, i32 %45, i32 %46)
  %48 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %49 = call i32 @update_rw_regs(%struct.qcom_nand_host* %48, i32 1, i32 1)
  %50 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %51 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %52 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @config_nand_single_cw_page_read(%struct.qcom_nand_controller* %50, i64 %53)
  %55 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %56 = load i32, i32* @FLASH_BUF_ACC, align 4
  %57 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %58 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @read_data_dma(%struct.qcom_nand_controller* %55, i32 %56, i32 %59, i32 %60, i32 0)
  %62 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %63 = call i32 @submit_descs(%struct.qcom_nand_controller* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %30
  %67 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %68 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %66, %30
  %72 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %73 = call i32 @free_descs(%struct.qcom_nand_controller* %72)
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @clear_read_regs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_address(%struct.qcom_nand_host*, i32, i32) #1

declare dso_local i32 @update_rw_regs(%struct.qcom_nand_host*, i32, i32) #1

declare dso_local i32 @config_nand_single_cw_page_read(%struct.qcom_nand_controller*, i64) #1

declare dso_local i32 @read_data_dma(%struct.qcom_nand_controller*, i32, i32, i32, i32) #1

declare dso_local i32 @submit_descs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @free_descs(%struct.qcom_nand_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
