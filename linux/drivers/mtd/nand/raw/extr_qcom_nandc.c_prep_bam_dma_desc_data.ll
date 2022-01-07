; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_prep_bam_dma_desc_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_prep_bam_dma_desc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_controller = type { i32, %struct.bam_transaction* }
%struct.bam_transaction = type { i64, i64, i32* }

@NAND_BAM_NO_EOT = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_nand_controller*, i32, i8*, i32, i32)* @prep_bam_dma_desc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prep_bam_dma_desc_data(%struct.qcom_nand_controller* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qcom_nand_controller*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bam_transaction*, align 8
  store %struct.qcom_nand_controller* %0, %struct.qcom_nand_controller** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %15 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %14, i32 0, i32 1
  %16 = load %struct.bam_transaction*, %struct.bam_transaction** %15, align 8
  store %struct.bam_transaction* %16, %struct.bam_transaction** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %5
  %20 = load %struct.bam_transaction*, %struct.bam_transaction** %13, align 8
  %21 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.bam_transaction*, %struct.bam_transaction** %13, align 8
  %24 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @sg_set_buf(i32* %26, i8* %27, i32 %28)
  %30 = load %struct.bam_transaction*, %struct.bam_transaction** %13, align 8
  %31 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %31, align 8
  br label %66

34:                                               ; preds = %5
  %35 = load %struct.bam_transaction*, %struct.bam_transaction** %13, align 8
  %36 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.bam_transaction*, %struct.bam_transaction** %13, align 8
  %39 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @sg_set_buf(i32* %41, i8* %42, i32 %43)
  %45 = load %struct.bam_transaction*, %struct.bam_transaction** %13, align 8
  %46 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @NAND_BAM_NO_EOT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %34
  %54 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %55 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %7, align 8
  %56 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %59 = call i32 @prepare_bam_async_desc(%struct.qcom_nand_controller* %54, i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %6, align 4
  br label %67

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %34
  br label %66

66:                                               ; preds = %65, %19
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @sg_set_buf(i32*, i8*, i32) #1

declare dso_local i32 @prepare_bam_async_desc(%struct.qcom_nand_controller*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
