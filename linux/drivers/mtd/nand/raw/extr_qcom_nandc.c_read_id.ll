; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_read_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_read_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_host = type { %struct.nand_chip }
%struct.nand_chip = type { i32 }
%struct.qcom_nand_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NAND_FLASH_CMD = common dso_local global i32 0, align 4
@OP_FETCH_ID = common dso_local global i32 0, align 4
@NAND_ADDR0 = common dso_local global i32 0, align 4
@NAND_ADDR1 = common dso_local global i32 0, align 4
@NAND_FLASH_CHIP_SELECT = common dso_local global i32 0, align 4
@DM_EN = common dso_local global i32 0, align 4
@NAND_EXEC_CMD = common dso_local global i32 0, align 4
@NAND_BAM_NEXT_SGL = common dso_local global i32 0, align 4
@NAND_READ_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_nand_host*, i32)* @read_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_id(%struct.qcom_nand_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_nand_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca %struct.qcom_nand_controller*, align 8
  store %struct.qcom_nand_host* %0, %struct.qcom_nand_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %4, align 8
  %9 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %8, i32 0, i32 0
  store %struct.nand_chip* %9, %struct.nand_chip** %6, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %11 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %10)
  store %struct.qcom_nand_controller* %11, %struct.qcom_nand_controller** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

15:                                               ; preds = %2
  %16 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %17 = load i32, i32* @NAND_FLASH_CMD, align 4
  %18 = load i32, i32* @OP_FETCH_ID, align 4
  %19 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %16, i32 %17, i32 %18)
  %20 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %21 = load i32, i32* @NAND_ADDR0, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %20, i32 %21, i32 %22)
  %24 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %25 = load i32, i32* @NAND_ADDR1, align 4
  %26 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %24, i32 %25, i32 0)
  %27 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %28 = load i32, i32* @NAND_FLASH_CHIP_SELECT, align 4
  %29 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %30 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %15
  br label %38

36:                                               ; preds = %15
  %37 = load i32, i32* @DM_EN, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi i32 [ 0, %35 ], [ %37, %36 ]
  %40 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %27, i32 %28, i32 %39)
  %41 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %42 = load i32, i32* @NAND_EXEC_CMD, align 4
  %43 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %41, i32 %42, i32 1)
  %44 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %45 = load i32, i32* @NAND_FLASH_CMD, align 4
  %46 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %47 = call i32 @write_reg_dma(%struct.qcom_nand_controller* %44, i32 %45, i32 4, i32 %46)
  %48 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %49 = load i32, i32* @NAND_EXEC_CMD, align 4
  %50 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %51 = call i32 @write_reg_dma(%struct.qcom_nand_controller* %48, i32 %49, i32 1, i32 %50)
  %52 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %53 = load i32, i32* @NAND_READ_ID, align 4
  %54 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %55 = call i32 @read_reg_dma(%struct.qcom_nand_controller* %52, i32 %53, i32 1, i32 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %38, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
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
