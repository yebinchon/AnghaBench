; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_write_reg_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_write_reg_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_controller = type { %struct.TYPE_2__*, %struct.nandc_regs* }
%struct.TYPE_2__ = type { i64 }
%struct.nandc_regs = type { i32, i32 }

@NAND_ERASED_CW_DETECT_CFG = common dso_local global i32 0, align 4
@NAND_ERASED_CW_SET = common dso_local global i32 0, align 4
@NAND_EXEC_CMD = common dso_local global i32 0, align 4
@NAND_BAM_NWD = common dso_local global i32 0, align 4
@NAND_DEV_CMD1_RESTORE = common dso_local global i32 0, align 4
@NAND_DEV_CMD1 = common dso_local global i32 0, align 4
@NAND_DEV_CMD_VLD_RESTORE = common dso_local global i32 0, align 4
@NAND_DEV_CMD_VLD = common dso_local global i32 0, align 4
@NAND_FLASH_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_nand_controller*, i32, i32, i32)* @write_reg_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_reg_dma(%struct.qcom_nand_controller* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qcom_nand_controller*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nandc_regs*, align 8
  %12 = alloca i8*, align 8
  store %struct.qcom_nand_controller* %0, %struct.qcom_nand_controller** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %14 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %13, i32 0, i32 1
  %15 = load %struct.nandc_regs*, %struct.nandc_regs** %14, align 8
  store %struct.nandc_regs* %15, %struct.nandc_regs** %11, align 8
  %16 = load %struct.nandc_regs*, %struct.nandc_regs** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @offset_to_nandc_reg(%struct.nandc_regs* %16, i32 %17)
  store i8* %18, i8** %12, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @NAND_ERASED_CW_DETECT_CFG, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @NAND_ERASED_CW_SET, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.nandc_regs*, %struct.nandc_regs** %11, align 8
  %29 = getelementptr inbounds %struct.nandc_regs, %struct.nandc_regs* %28, i32 0, i32 1
  %30 = bitcast i32* %29 to i8*
  store i8* %30, i8** %12, align 8
  br label %35

31:                                               ; preds = %22
  %32 = load %struct.nandc_regs*, %struct.nandc_regs** %11, align 8
  %33 = getelementptr inbounds %struct.nandc_regs, %struct.nandc_regs* %32, i32 0, i32 0
  %34 = bitcast i32* %33 to i8*
  store i8* %34, i8** %12, align 8
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @NAND_EXEC_CMD, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @NAND_BAM_NWD, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @NAND_DEV_CMD1_RESTORE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @NAND_DEV_CMD1, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %44
  %53 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %54 = load i32, i32* @NAND_DEV_CMD1, align 4
  %55 = call i32 @dev_cmd_reg_addr(%struct.qcom_nand_controller* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @NAND_DEV_CMD_VLD_RESTORE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @NAND_DEV_CMD_VLD, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60, %56
  %65 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %66 = load i32, i32* @NAND_DEV_CMD_VLD, align 4
  %67 = call i32 @dev_cmd_reg_addr(%struct.qcom_nand_controller* %65, i32 %66)
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %70 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @prep_bam_dma_desc_cmd(%struct.qcom_nand_controller* %76, i32 0, i32 %77, i8* %78, i32 %79, i32 %80)
  store i32 %81, i32* %5, align 4
  br label %97

82:                                               ; preds = %68
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @NAND_FLASH_CMD, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 1, i32* %10, align 4
  br label %87

87:                                               ; preds = %86, %82
  %88 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i8*, i8** %12, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @prep_adm_dma_desc(%struct.qcom_nand_controller* %88, i32 0, i32 %89, i8* %90, i32 %94, i32 %95)
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %87, %75
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i8* @offset_to_nandc_reg(%struct.nandc_regs*, i32) #1

declare dso_local i32 @dev_cmd_reg_addr(%struct.qcom_nand_controller*, i32) #1

declare dso_local i32 @prep_bam_dma_desc_cmd(%struct.qcom_nand_controller*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @prep_adm_dma_desc(%struct.qcom_nand_controller*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
