; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_prep_bam_dma_desc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_prep_bam_dma_desc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_controller = type { i32, %struct.bam_transaction* }
%struct.bam_transaction = type { i64, i64, i64, i32*, %struct.bam_cmd_element* }
%struct.bam_cmd_element = type { i32 }

@BAM_READ_COMMAND = common dso_local global i32 0, align 4
@BAM_WRITE_COMMAND = common dso_local global i32 0, align 4
@NAND_BAM_NEXT_SGL = common dso_local global i32 0, align 4
@NAND_BAM_NWD = common dso_local global i32 0, align 4
@DMA_PREP_FENCE = common dso_local global i32 0, align 4
@DMA_PREP_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_nand_controller*, i32, i32, i8*, i32, i32)* @prep_bam_dma_desc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prep_bam_dma_desc_cmd(%struct.qcom_nand_controller* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qcom_nand_controller*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bam_cmd_element*, align 8
  %18 = alloca %struct.bam_transaction*, align 8
  store %struct.qcom_nand_controller* %0, %struct.qcom_nand_controller** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %20 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %19, i32 0, i32 1
  %21 = load %struct.bam_transaction*, %struct.bam_transaction** %20, align 8
  store %struct.bam_transaction* %21, %struct.bam_transaction** %18, align 8
  %22 = load %struct.bam_transaction*, %struct.bam_transaction** %18, align 8
  %23 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %22, i32 0, i32 4
  %24 = load %struct.bam_cmd_element*, %struct.bam_cmd_element** %23, align 8
  %25 = load %struct.bam_transaction*, %struct.bam_transaction** %18, align 8
  %26 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.bam_cmd_element, %struct.bam_cmd_element* %24, i64 %27
  store %struct.bam_cmd_element* %28, %struct.bam_cmd_element** %17, align 8
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %76, %6
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %79

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load %struct.bam_cmd_element*, %struct.bam_cmd_element** %17, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.bam_cmd_element, %struct.bam_cmd_element* %37, i64 %39
  %41 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %15, align 4
  %44 = mul nsw i32 4, %43
  %45 = add nsw i32 %42, %44
  %46 = call i32 @nandc_reg_phys(%struct.qcom_nand_controller* %41, i32 %45)
  %47 = load i32, i32* @BAM_READ_COMMAND, align 4
  %48 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @reg_buf_dma_addr(%struct.qcom_nand_controller* %48, i32* %53)
  %55 = call i32 @bam_prep_ce(%struct.bam_cmd_element* %40, i32 %46, i32 %47, i32 %54)
  br label %75

56:                                               ; preds = %33
  %57 = load %struct.bam_cmd_element*, %struct.bam_cmd_element** %17, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.bam_cmd_element, %struct.bam_cmd_element* %57, i64 %59
  %61 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %15, align 4
  %64 = mul nsw i32 4, %63
  %65 = add nsw i32 %62, %64
  %66 = call i32 @nandc_reg_phys(%struct.qcom_nand_controller* %61, i32 %65)
  %67 = load i32, i32* @BAM_WRITE_COMMAND, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @bam_prep_ce_le32(%struct.bam_cmd_element* %60, i32 %66, i32 %67, i32 %73)
  br label %75

75:                                               ; preds = %56, %36
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %29

79:                                               ; preds = %29
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.bam_transaction*, %struct.bam_transaction** %18, align 8
  %83 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @NAND_BAM_NEXT_SGL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %145

90:                                               ; preds = %79
  %91 = load %struct.bam_transaction*, %struct.bam_transaction** %18, align 8
  %92 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %91, i32 0, i32 4
  %93 = load %struct.bam_cmd_element*, %struct.bam_cmd_element** %92, align 8
  %94 = load %struct.bam_transaction*, %struct.bam_transaction** %18, align 8
  %95 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.bam_cmd_element, %struct.bam_cmd_element* %93, i64 %96
  store %struct.bam_cmd_element* %97, %struct.bam_cmd_element** %17, align 8
  %98 = load %struct.bam_transaction*, %struct.bam_transaction** %18, align 8
  %99 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.bam_transaction*, %struct.bam_transaction** %18, align 8
  %102 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %100, %103
  %105 = mul i64 %104, 4
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %14, align 4
  %107 = load %struct.bam_transaction*, %struct.bam_transaction** %18, align 8
  %108 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.bam_transaction*, %struct.bam_transaction** %18, align 8
  %111 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load %struct.bam_cmd_element*, %struct.bam_cmd_element** %17, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @sg_set_buf(i32* %113, %struct.bam_cmd_element* %114, i32 %115)
  %117 = load %struct.bam_transaction*, %struct.bam_transaction** %18, align 8
  %118 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %118, align 8
  %121 = load %struct.bam_transaction*, %struct.bam_transaction** %18, align 8
  %122 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.bam_transaction*, %struct.bam_transaction** %18, align 8
  %125 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @NAND_BAM_NWD, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %90
  %131 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %132 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %133 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @DMA_PREP_FENCE, align 4
  %136 = load i32, i32* @DMA_PREP_CMD, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @prepare_bam_async_desc(%struct.qcom_nand_controller* %131, i32 %134, i32 %137)
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %130
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %7, align 4
  br label %146

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %143, %90
  br label %145

145:                                              ; preds = %144, %79
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %145, %141
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @bam_prep_ce(%struct.bam_cmd_element*, i32, i32, i32) #1

declare dso_local i32 @nandc_reg_phys(%struct.qcom_nand_controller*, i32) #1

declare dso_local i32 @reg_buf_dma_addr(%struct.qcom_nand_controller*, i32*) #1

declare dso_local i32 @bam_prep_ce_le32(%struct.bam_cmd_element*, i32, i32, i32) #1

declare dso_local i32 @sg_set_buf(i32*, %struct.bam_cmd_element*, i32) #1

declare dso_local i32 @prepare_bam_async_desc(%struct.qcom_nand_controller*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
