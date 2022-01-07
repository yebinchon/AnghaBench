; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_config_nand_cw_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_config_nand_cw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NAND_READ_LOCATION_0 = common dso_local global i32 0, align 4
@NAND_BAM_NEXT_SGL = common dso_local global i32 0, align 4
@NAND_FLASH_CMD = common dso_local global i32 0, align 4
@NAND_EXEC_CMD = common dso_local global i32 0, align 4
@NAND_FLASH_STATUS = common dso_local global i32 0, align 4
@NAND_ERASED_CW_DETECT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_nand_controller*, i32)* @config_nand_cw_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_nand_cw_read(%struct.qcom_nand_controller* %0, i32 %1) #0 {
  %3 = alloca %struct.qcom_nand_controller*, align 8
  %4 = alloca i32, align 4
  store %struct.qcom_nand_controller* %0, %struct.qcom_nand_controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %3, align 8
  %6 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %3, align 8
  %13 = load i32, i32* @NAND_READ_LOCATION_0, align 4
  %14 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %15 = call i32 @write_reg_dma(%struct.qcom_nand_controller* %12, i32 %13, i32 4, i32 %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %3, align 8
  %18 = load i32, i32* @NAND_FLASH_CMD, align 4
  %19 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %20 = call i32 @write_reg_dma(%struct.qcom_nand_controller* %17, i32 %18, i32 1, i32 %19)
  %21 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %3, align 8
  %22 = load i32, i32* @NAND_EXEC_CMD, align 4
  %23 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %24 = call i32 @write_reg_dma(%struct.qcom_nand_controller* %21, i32 %22, i32 1, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %16
  %28 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %3, align 8
  %29 = load i32, i32* @NAND_FLASH_STATUS, align 4
  %30 = call i32 @read_reg_dma(%struct.qcom_nand_controller* %28, i32 %29, i32 2, i32 0)
  %31 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %3, align 8
  %32 = load i32, i32* @NAND_ERASED_CW_DETECT_STATUS, align 4
  %33 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %34 = call i32 @read_reg_dma(%struct.qcom_nand_controller* %31, i32 %32, i32 1, i32 %33)
  br label %40

35:                                               ; preds = %16
  %36 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %3, align 8
  %37 = load i32, i32* @NAND_FLASH_STATUS, align 4
  %38 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %39 = call i32 @read_reg_dma(%struct.qcom_nand_controller* %36, i32 %37, i32 1, i32 %38)
  br label %40

40:                                               ; preds = %35, %27
  ret void
}

declare dso_local i32 @write_reg_dma(%struct.qcom_nand_controller*, i32, i32, i32) #1

declare dso_local i32 @read_reg_dma(%struct.qcom_nand_controller*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
