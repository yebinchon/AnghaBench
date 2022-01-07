; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_erase_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_erase_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_host = type { i32, i32, i32, i32, %struct.nand_chip }
%struct.nand_chip = type { i32 }
%struct.qcom_nand_controller = type { i32 }

@NAND_FLASH_CMD = common dso_local global i32 0, align 4
@OP_BLOCK_ERASE = common dso_local global i32 0, align 4
@PAGE_ACC = common dso_local global i32 0, align 4
@LAST_PAGE = common dso_local global i32 0, align 4
@NAND_ADDR0 = common dso_local global i32 0, align 4
@NAND_ADDR1 = common dso_local global i32 0, align 4
@NAND_DEV0_CFG0 = common dso_local global i32 0, align 4
@CW_PER_PAGE = common dso_local global i32 0, align 4
@NAND_DEV0_CFG1 = common dso_local global i32 0, align 4
@NAND_EXEC_CMD = common dso_local global i32 0, align 4
@NAND_FLASH_STATUS = common dso_local global i32 0, align 4
@NAND_READ_STATUS = common dso_local global i32 0, align 4
@NAND_BAM_NEXT_SGL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_nand_host*, i32)* @erase_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erase_block(%struct.qcom_nand_host* %0, i32 %1) #0 {
  %3 = alloca %struct.qcom_nand_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.qcom_nand_controller*, align 8
  store %struct.qcom_nand_host* %0, %struct.qcom_nand_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %8 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %7, i32 0, i32 4
  store %struct.nand_chip* %8, %struct.nand_chip** %5, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %10 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %9)
  store %struct.qcom_nand_controller* %10, %struct.qcom_nand_controller** %6, align 8
  %11 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %12 = load i32, i32* @NAND_FLASH_CMD, align 4
  %13 = load i32, i32* @OP_BLOCK_ERASE, align 4
  %14 = load i32, i32* @PAGE_ACC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @LAST_PAGE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %11, i32 %12, i32 %17)
  %19 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %20 = load i32, i32* @NAND_ADDR0, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %19, i32 %20, i32 %21)
  %23 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %24 = load i32, i32* @NAND_ADDR1, align 4
  %25 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %23, i32 %24, i32 0)
  %26 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %27 = load i32, i32* @NAND_DEV0_CFG0, align 4
  %28 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %29 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CW_PER_PAGE, align 4
  %32 = shl i32 7, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %30, %33
  %35 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %26, i32 %27, i32 %34)
  %36 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %37 = load i32, i32* @NAND_DEV0_CFG1, align 4
  %38 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %39 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %36, i32 %37, i32 %40)
  %42 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %43 = load i32, i32* @NAND_EXEC_CMD, align 4
  %44 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %42, i32 %43, i32 1)
  %45 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %46 = load i32, i32* @NAND_FLASH_STATUS, align 4
  %47 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %48 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %45, i32 %46, i32 %49)
  %51 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %52 = load i32, i32* @NAND_READ_STATUS, align 4
  %53 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %3, align 8
  %54 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %51, i32 %52, i32 %55)
  %57 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %58 = load i32, i32* @NAND_FLASH_CMD, align 4
  %59 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %60 = call i32 @write_reg_dma(%struct.qcom_nand_controller* %57, i32 %58, i32 3, i32 %59)
  %61 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %62 = load i32, i32* @NAND_DEV0_CFG0, align 4
  %63 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %64 = call i32 @write_reg_dma(%struct.qcom_nand_controller* %61, i32 %62, i32 2, i32 %63)
  %65 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %66 = load i32, i32* @NAND_EXEC_CMD, align 4
  %67 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %68 = call i32 @write_reg_dma(%struct.qcom_nand_controller* %65, i32 %66, i32 1, i32 %67)
  %69 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %70 = load i32, i32* @NAND_FLASH_STATUS, align 4
  %71 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %72 = call i32 @read_reg_dma(%struct.qcom_nand_controller* %69, i32 %70, i32 1, i32 %71)
  %73 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %74 = load i32, i32* @NAND_FLASH_STATUS, align 4
  %75 = call i32 @write_reg_dma(%struct.qcom_nand_controller* %73, i32 %74, i32 1, i32 0)
  %76 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %77 = load i32, i32* @NAND_READ_STATUS, align 4
  %78 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %79 = call i32 @write_reg_dma(%struct.qcom_nand_controller* %76, i32 %77, i32 1, i32 %78)
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
