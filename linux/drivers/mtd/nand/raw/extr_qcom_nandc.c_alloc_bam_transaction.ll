; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_alloc_bam_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_alloc_bam_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bam_transaction = type { i32, i8*, i8*, i8* }
%struct.qcom_nand_controller = type { i32, i32 }

@QPIC_PER_CW_CMD_ELEMENTS = common dso_local global i32 0, align 4
@QPIC_PER_CW_CMD_SGL = common dso_local global i32 0, align 4
@QPIC_PER_CW_DATA_SGL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bam_transaction* (%struct.qcom_nand_controller*)* @alloc_bam_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bam_transaction* @alloc_bam_transaction(%struct.qcom_nand_controller* %0) #0 {
  %2 = alloca %struct.bam_transaction*, align 8
  %3 = alloca %struct.qcom_nand_controller*, align 8
  %4 = alloca %struct.bam_transaction*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.qcom_nand_controller* %0, %struct.qcom_nand_controller** %3, align 8
  %8 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %3, align 8
  %9 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = load i32, i32* @QPIC_PER_CW_CMD_ELEMENTS, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 1, %14
  %16 = load i32, i32* @QPIC_PER_CW_CMD_SGL, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 1, %17
  %19 = add i64 %15, %18
  %20 = load i32, i32* @QPIC_PER_CW_DATA_SGL, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 1, %21
  %23 = add i64 %19, %22
  %24 = mul i64 %12, %23
  %25 = add i64 32, %24
  store i64 %25, i64* %5, align 8
  %26 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %3, align 8
  %27 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @devm_kzalloc(i32 %28, i64 %29, i32 %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %1
  store %struct.bam_transaction* null, %struct.bam_transaction** %2, align 8
  br label %69

35:                                               ; preds = %1
  %36 = load i8*, i8** %7, align 8
  %37 = bitcast i8* %36 to %struct.bam_transaction*
  store %struct.bam_transaction* %37, %struct.bam_transaction** %4, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr i8, i8* %38, i64 32
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.bam_transaction*, %struct.bam_transaction** %4, align 8
  %42 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @QPIC_PER_CW_CMD_ELEMENTS, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 1, %44
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = mul i64 %45, %47
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr i8, i8* %49, i64 %48
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.bam_transaction*, %struct.bam_transaction** %4, align 8
  %53 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @QPIC_PER_CW_CMD_SGL, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 1, %55
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = mul i64 %56, %58
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr i8, i8* %60, i64 %59
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.bam_transaction*, %struct.bam_transaction** %4, align 8
  %64 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.bam_transaction*, %struct.bam_transaction** %4, align 8
  %66 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %65, i32 0, i32 0
  %67 = call i32 @init_completion(i32* %66)
  %68 = load %struct.bam_transaction*, %struct.bam_transaction** %4, align 8
  store %struct.bam_transaction* %68, %struct.bam_transaction** %2, align 8
  br label %69

69:                                               ; preds = %35, %34
  %70 = load %struct.bam_transaction*, %struct.bam_transaction** %2, align 8
  ret %struct.bam_transaction* %70
}

declare dso_local i8* @devm_kzalloc(i32, i64, i32) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
