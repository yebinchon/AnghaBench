; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_read_reg_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_read_reg_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_controller = type { i32, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i64 }

@NAND_DEV_CMD_VLD = common dso_local global i32 0, align 4
@NAND_DEV_CMD1 = common dso_local global i32 0, align 4
@NAND_READ_ID = common dso_local global i32 0, align 4
@NAND_FLASH_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_nand_controller*, i32, i32, i32)* @read_reg_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_reg_dma(%struct.qcom_nand_controller* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qcom_nand_controller*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.qcom_nand_controller* %0, %struct.qcom_nand_controller** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %13 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %16 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %14, i64 %18
  store i8* %19, i8** %11, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %22 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NAND_DEV_CMD_VLD, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @NAND_DEV_CMD1, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28, %4
  %33 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dev_cmd_reg_addr(%struct.qcom_nand_controller* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %38 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @prep_bam_dma_desc_cmd(%struct.qcom_nand_controller* %44, i32 1, i32 %45, i8* %46, i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %69

50:                                               ; preds = %36
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @NAND_READ_ID, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @NAND_FLASH_STATUS, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %50
  store i32 1, i32* %10, align 4
  br label %59

59:                                               ; preds = %58, %54
  %60 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @prep_adm_dma_desc(%struct.qcom_nand_controller* %60, i32 1, i32 %61, i8* %62, i32 %66, i32 %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %59, %43
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @dev_cmd_reg_addr(%struct.qcom_nand_controller*, i32) #1

declare dso_local i32 @prep_bam_dma_desc_cmd(%struct.qcom_nand_controller*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @prep_adm_dma_desc(%struct.qcom_nand_controller*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
