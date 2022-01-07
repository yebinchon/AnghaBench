; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_nandc_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_nandc_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_host = type { %struct.nand_chip }
%struct.nand_chip = type { i32 }
%struct.qcom_nand_controller = type { i32, i32, i32, i32 }

@NAND_FLASH_CMD = common dso_local global i32 0, align 4
@OP_PAGE_READ = common dso_local global i32 0, align 4
@PAGE_ACC = common dso_local global i32 0, align 4
@LAST_PAGE = common dso_local global i32 0, align 4
@NAND_ADDR0 = common dso_local global i32 0, align 4
@NAND_ADDR1 = common dso_local global i32 0, align 4
@NAND_DEV0_CFG0 = common dso_local global i32 0, align 4
@CW_PER_PAGE = common dso_local global i32 0, align 4
@UD_SIZE_BYTES = common dso_local global i32 0, align 4
@NUM_ADDR_CYCLES = common dso_local global i32 0, align 4
@SPARE_SIZE_BYTES = common dso_local global i32 0, align 4
@NAND_DEV0_CFG1 = common dso_local global i32 0, align 4
@NAND_RECOVERY_CYCLES = common dso_local global i32 0, align 4
@CS_ACTIVE_BSY = common dso_local global i32 0, align 4
@BAD_BLOCK_BYTE_NUM = common dso_local global i32 0, align 4
@BAD_BLOCK_IN_SPARE_AREA = common dso_local global i32 0, align 4
@WR_RD_BSY_GAP = common dso_local global i32 0, align 4
@WIDE_FLASH = common dso_local global i32 0, align 4
@DEV0_CFG1_ECC_DISABLE = common dso_local global i32 0, align 4
@NAND_EBI2_ECC_BUF_CFG = common dso_local global i32 0, align 4
@ECC_CFG_ECC_DISABLE = common dso_local global i32 0, align 4
@NAND_DEV_CMD_VLD = common dso_local global i32 0, align 4
@READ_START_VLD = common dso_local global i32 0, align 4
@NAND_DEV_CMD1 = common dso_local global i32 0, align 4
@READ_ADDR = common dso_local global i32 0, align 4
@NAND_CMD_PARAM = common dso_local global i32 0, align 4
@NAND_EXEC_CMD = common dso_local global i32 0, align 4
@NAND_DEV_CMD1_RESTORE = common dso_local global i32 0, align 4
@NAND_DEV_CMD_VLD_RESTORE = common dso_local global i32 0, align 4
@NAND_BAM_NEXT_SGL = common dso_local global i32 0, align 4
@FLASH_BUF_ACC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_nand_host*)* @nandc_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nandc_param(%struct.qcom_nand_host* %0) #0 {
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
  %11 = load i32, i32* @OP_PAGE_READ, align 4
  %12 = load i32, i32* @PAGE_ACC, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @LAST_PAGE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %9, i32 %10, i32 %15)
  %17 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %18 = load i32, i32* @NAND_ADDR0, align 4
  %19 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %17, i32 %18, i32 0)
  %20 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %21 = load i32, i32* @NAND_ADDR1, align 4
  %22 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %20, i32 %21, i32 0)
  %23 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %24 = load i32, i32* @NAND_DEV0_CFG0, align 4
  %25 = load i32, i32* @CW_PER_PAGE, align 4
  %26 = shl i32 0, %25
  %27 = load i32, i32* @UD_SIZE_BYTES, align 4
  %28 = shl i32 512, %27
  %29 = or i32 %26, %28
  %30 = load i32, i32* @NUM_ADDR_CYCLES, align 4
  %31 = shl i32 5, %30
  %32 = or i32 %29, %31
  %33 = load i32, i32* @SPARE_SIZE_BYTES, align 4
  %34 = shl i32 0, %33
  %35 = or i32 %32, %34
  %36 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %23, i32 %24, i32 %35)
  %37 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %38 = load i32, i32* @NAND_DEV0_CFG1, align 4
  %39 = load i32, i32* @NAND_RECOVERY_CYCLES, align 4
  %40 = shl i32 7, %39
  %41 = load i32, i32* @CS_ACTIVE_BSY, align 4
  %42 = shl i32 0, %41
  %43 = or i32 %40, %42
  %44 = load i32, i32* @BAD_BLOCK_BYTE_NUM, align 4
  %45 = shl i32 17, %44
  %46 = or i32 %43, %45
  %47 = load i32, i32* @BAD_BLOCK_IN_SPARE_AREA, align 4
  %48 = shl i32 1, %47
  %49 = or i32 %46, %48
  %50 = load i32, i32* @WR_RD_BSY_GAP, align 4
  %51 = shl i32 2, %50
  %52 = or i32 %49, %51
  %53 = load i32, i32* @WIDE_FLASH, align 4
  %54 = shl i32 0, %53
  %55 = or i32 %52, %54
  %56 = load i32, i32* @DEV0_CFG1_ECC_DISABLE, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %37, i32 %38, i32 %58)
  %60 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %61 = load i32, i32* @NAND_EBI2_ECC_BUF_CFG, align 4
  %62 = load i32, i32* @ECC_CFG_ECC_DISABLE, align 4
  %63 = shl i32 1, %62
  %64 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %60, i32 %61, i32 %63)
  %65 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %66 = load i32, i32* @NAND_DEV_CMD_VLD, align 4
  %67 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %68 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @READ_START_VLD, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %65, i32 %66, i32 %72)
  %74 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %75 = load i32, i32* @NAND_DEV_CMD1, align 4
  %76 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %77 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @READ_ADDR, align 4
  %80 = shl i32 255, %79
  %81 = xor i32 %80, -1
  %82 = and i32 %78, %81
  %83 = load i32, i32* @NAND_CMD_PARAM, align 4
  %84 = load i32, i32* @READ_ADDR, align 4
  %85 = shl i32 %83, %84
  %86 = or i32 %82, %85
  %87 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %74, i32 %75, i32 %86)
  %88 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %89 = load i32, i32* @NAND_EXEC_CMD, align 4
  %90 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %88, i32 %89, i32 1)
  %91 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %92 = load i32, i32* @NAND_DEV_CMD1_RESTORE, align 4
  %93 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %94 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %91, i32 %92, i32 %95)
  %97 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %98 = load i32, i32* @NAND_DEV_CMD_VLD_RESTORE, align 4
  %99 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %100 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %97, i32 %98, i32 %101)
  %103 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %104 = call i32 @nandc_set_read_loc(%struct.qcom_nand_controller* %103, i32 0, i32 0, i32 512, i32 1)
  %105 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %106 = load i32, i32* @NAND_DEV_CMD_VLD, align 4
  %107 = call i32 @write_reg_dma(%struct.qcom_nand_controller* %105, i32 %106, i32 1, i32 0)
  %108 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %109 = load i32, i32* @NAND_DEV_CMD1, align 4
  %110 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %111 = call i32 @write_reg_dma(%struct.qcom_nand_controller* %108, i32 %109, i32 1, i32 %110)
  %112 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %113 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %112, i32 0, i32 2
  store i32 512, i32* %113, align 4
  %114 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %115 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %118 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @memset(i32 %116, i32 255, i32 %119)
  %121 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %122 = call i32 @config_nand_single_cw_page_read(%struct.qcom_nand_controller* %121, i32 0)
  %123 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %124 = load i32, i32* @FLASH_BUF_ACC, align 4
  %125 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %126 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %129 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @read_data_dma(%struct.qcom_nand_controller* %123, i32 %124, i32 %127, i32 %130, i32 0)
  %132 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %133 = load i32, i32* @NAND_DEV_CMD1_RESTORE, align 4
  %134 = call i32 @write_reg_dma(%struct.qcom_nand_controller* %132, i32 %133, i32 1, i32 0)
  %135 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %136 = load i32, i32* @NAND_DEV_CMD_VLD_RESTORE, align 4
  %137 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %138 = call i32 @write_reg_dma(%struct.qcom_nand_controller* %135, i32 %136, i32 1, i32 %137)
  ret i32 0
}

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @nandc_set_reg(%struct.qcom_nand_controller*, i32, i32) #1

declare dso_local i32 @nandc_set_read_loc(%struct.qcom_nand_controller*, i32, i32, i32, i32) #1

declare dso_local i32 @write_reg_dma(%struct.qcom_nand_controller*, i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @config_nand_single_cw_page_read(%struct.qcom_nand_controller*, i32) #1

declare dso_local i32 @read_data_dma(%struct.qcom_nand_controller*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
