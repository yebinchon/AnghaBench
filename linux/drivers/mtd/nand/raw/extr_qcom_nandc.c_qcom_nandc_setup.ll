; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_controller = type { i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SFLASHC_BURST_CFG = common dso_local global i32 0, align 4
@NAND_DEV_CMD_VLD = common dso_local global i32 0, align 4
@NAND_DEV_CMD_VLD_VAL = common dso_local global i32 0, align 4
@NAND_CTRL = common dso_local global i32 0, align 4
@BAM_MODE_EN = common dso_local global i32 0, align 4
@NAND_FLASH_CHIP_SELECT = common dso_local global i32 0, align 4
@DM_EN = common dso_local global i32 0, align 4
@NAND_DEV_CMD1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_nand_controller*)* @qcom_nandc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_nandc_setup(%struct.qcom_nand_controller* %0) #0 {
  %2 = alloca %struct.qcom_nand_controller*, align 8
  %3 = alloca i32, align 4
  store %struct.qcom_nand_controller* %0, %struct.qcom_nand_controller** %2, align 8
  %4 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %2, align 8
  %5 = load i32, i32* @SFLASHC_BURST_CFG, align 4
  %6 = call i32 @nandc_write(%struct.qcom_nand_controller* %4, i32 %5, i32 0)
  %7 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %2, align 8
  %8 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %2, align 8
  %9 = load i32, i32* @NAND_DEV_CMD_VLD, align 4
  %10 = call i32 @dev_cmd_reg_addr(%struct.qcom_nand_controller* %8, i32 %9)
  %11 = load i32, i32* @NAND_DEV_CMD_VLD_VAL, align 4
  %12 = call i32 @nandc_write(%struct.qcom_nand_controller* %7, i32 %10, i32 %11)
  %13 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %2, align 8
  %14 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %2, align 8
  %21 = load i32, i32* @NAND_CTRL, align 4
  %22 = call i8* @nandc_read(%struct.qcom_nand_controller* %20, i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %2, align 8
  %25 = load i32, i32* @NAND_CTRL, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @BAM_MODE_EN, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @nandc_write(%struct.qcom_nand_controller* %24, i32 %25, i32 %28)
  br label %35

30:                                               ; preds = %1
  %31 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %2, align 8
  %32 = load i32, i32* @NAND_FLASH_CHIP_SELECT, align 4
  %33 = load i32, i32* @DM_EN, align 4
  %34 = call i32 @nandc_write(%struct.qcom_nand_controller* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %19
  %36 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %2, align 8
  %37 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %2, align 8
  %38 = load i32, i32* @NAND_DEV_CMD1, align 4
  %39 = call i32 @dev_cmd_reg_addr(%struct.qcom_nand_controller* %37, i32 %38)
  %40 = call i8* @nandc_read(%struct.qcom_nand_controller* %36, i32 %39)
  %41 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %2, align 8
  %42 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @NAND_DEV_CMD_VLD_VAL, align 4
  %44 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %2, align 8
  %45 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  ret i32 0
}

declare dso_local i32 @nandc_write(%struct.qcom_nand_controller*, i32, i32) #1

declare dso_local i32 @dev_cmd_reg_addr(%struct.qcom_nand_controller*, i32) #1

declare dso_local i8* @nandc_read(%struct.qcom_nand_controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
