; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_clear_bam_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_clear_bam_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_controller = type { i32, %struct.TYPE_2__*, %struct.bam_transaction* }
%struct.TYPE_2__ = type { i32 }
%struct.bam_transaction = type { i32, i32, i32, i32, i32*, i64, i64, i64, i64, i64, i64, i64, i64 }

@QPIC_PER_CW_CMD_SGL = common dso_local global i32 0, align 4
@QPIC_PER_CW_DATA_SGL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_nand_controller*)* @clear_bam_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_bam_transaction(%struct.qcom_nand_controller* %0) #0 {
  %2 = alloca %struct.qcom_nand_controller*, align 8
  %3 = alloca %struct.bam_transaction*, align 8
  store %struct.qcom_nand_controller* %0, %struct.qcom_nand_controller** %2, align 8
  %4 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %2, align 8
  %5 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %4, i32 0, i32 2
  %6 = load %struct.bam_transaction*, %struct.bam_transaction** %5, align 8
  store %struct.bam_transaction* %6, %struct.bam_transaction** %3, align 8
  %7 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %2, align 8
  %8 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.bam_transaction*, %struct.bam_transaction** %3, align 8
  %16 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %15, i32 0, i32 12
  store i64 0, i64* %16, align 8
  %17 = load %struct.bam_transaction*, %struct.bam_transaction** %3, align 8
  %18 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %17, i32 0, i32 11
  store i64 0, i64* %18, align 8
  %19 = load %struct.bam_transaction*, %struct.bam_transaction** %3, align 8
  %20 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %19, i32 0, i32 10
  store i64 0, i64* %20, align 8
  %21 = load %struct.bam_transaction*, %struct.bam_transaction** %3, align 8
  %22 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %21, i32 0, i32 9
  store i64 0, i64* %22, align 8
  %23 = load %struct.bam_transaction*, %struct.bam_transaction** %3, align 8
  %24 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %23, i32 0, i32 8
  store i64 0, i64* %24, align 8
  %25 = load %struct.bam_transaction*, %struct.bam_transaction** %3, align 8
  %26 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %25, i32 0, i32 7
  store i64 0, i64* %26, align 8
  %27 = load %struct.bam_transaction*, %struct.bam_transaction** %3, align 8
  %28 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  %29 = load %struct.bam_transaction*, %struct.bam_transaction** %3, align 8
  %30 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.bam_transaction*, %struct.bam_transaction** %3, align 8
  %32 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %31, i32 0, i32 4
  store i32* null, i32** %32, align 8
  %33 = load %struct.bam_transaction*, %struct.bam_transaction** %3, align 8
  %34 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.bam_transaction*, %struct.bam_transaction** %3, align 8
  %36 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %2, align 8
  %39 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @QPIC_PER_CW_CMD_SGL, align 4
  %42 = mul nsw i32 %40, %41
  %43 = call i32 @sg_init_table(i32 %37, i32 %42)
  %44 = load %struct.bam_transaction*, %struct.bam_transaction** %3, align 8
  %45 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %2, align 8
  %48 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @QPIC_PER_CW_DATA_SGL, align 4
  %51 = mul nsw i32 %49, %50
  %52 = call i32 @sg_init_table(i32 %46, i32 %51)
  %53 = load %struct.bam_transaction*, %struct.bam_transaction** %3, align 8
  %54 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %53, i32 0, i32 1
  %55 = call i32 @reinit_completion(i32* %54)
  br label %56

56:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
