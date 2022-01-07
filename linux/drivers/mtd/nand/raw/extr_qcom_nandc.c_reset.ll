; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_host = type { %struct.nand_chip }
%struct.nand_chip = type { i32 }
%struct.qcom_nand_controller = type { i32 }

@NAND_FLASH_CMD = common dso_local global i32 0, align 4
@OP_RESET_DEVICE = common dso_local global i32 0, align 4
@NAND_EXEC_CMD = common dso_local global i32 0, align 4
@NAND_BAM_NEXT_SGL = common dso_local global i32 0, align 4
@NAND_FLASH_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_nand_host*)* @reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset(%struct.qcom_nand_host* %0) #0 {
  %2 = alloca %struct.qcom_nand_host*, align 8
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.qcom_nand_controller*, align 8
  store %struct.qcom_nand_host* %0, %struct.qcom_nand_host** %2, align 8
  %5 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %2, align 8
  %6 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %5, i32 0, i32 0
  store %struct.nand_chip* %6, %struct.nand_chip** %3, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %7)
  store %struct.qcom_nand_controller* %8, %struct.qcom_nand_controller** %4, align 8
  %9 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %10 = load i32, i32* @NAND_FLASH_CMD, align 4
  %11 = load i32, i32* @OP_RESET_DEVICE, align 4
  %12 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %9, i32 %10, i32 %11)
  %13 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %14 = load i32, i32* @NAND_EXEC_CMD, align 4
  %15 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %13, i32 %14, i32 1)
  %16 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %17 = load i32, i32* @NAND_FLASH_CMD, align 4
  %18 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %19 = call i32 @write_reg_dma(%struct.qcom_nand_controller* %16, i32 %17, i32 1, i32 %18)
  %20 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %21 = load i32, i32* @NAND_EXEC_CMD, align 4
  %22 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %23 = call i32 @write_reg_dma(%struct.qcom_nand_controller* %20, i32 %21, i32 1, i32 %22)
  %24 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %25 = load i32, i32* @NAND_FLASH_STATUS, align 4
  %26 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %27 = call i32 @read_reg_dma(%struct.qcom_nand_controller* %24, i32 %25, i32 1, i32 %26)
  ret i32 0
}

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @nandc_set_reg(%struct.qcom_nand_controller*, i32, i32) #1

declare dso_local i32 @write_reg_dma(%struct.qcom_nand_controller*, i32, i32, i32) #1

declare dso_local i32 @read_reg_dma(%struct.qcom_nand_controller*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
