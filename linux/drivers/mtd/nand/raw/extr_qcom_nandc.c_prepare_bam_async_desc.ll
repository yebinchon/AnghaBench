; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_prepare_bam_async_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_prepare_bam_async_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_controller = type { i32, %struct.dma_chan*, i32, %struct.dma_chan*, %struct.bam_transaction* }
%struct.bam_transaction = type { i64, i32, i64, i32, i64, i32, %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor*, %struct.scatterlist*, %struct.scatterlist* }
%struct.dma_async_tx_descriptor = type { i32 }
%struct.scatterlist = type { i32 }
%struct.dma_chan = type { i32 }
%struct.desc_info = type { i32, i32, %struct.dma_async_tx_descriptor*, i8*, %struct.scatterlist* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i8* null, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"failure in mapping desc\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"failure in prep desc\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_nand_controller*, %struct.dma_chan*, i64)* @prepare_bam_async_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_bam_async_desc(%struct.qcom_nand_controller* %0, %struct.dma_chan* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_nand_controller*, align 8
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.desc_info*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bam_transaction*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dma_async_tx_descriptor*, align 8
  store %struct.qcom_nand_controller* %0, %struct.qcom_nand_controller** %5, align 8
  store %struct.dma_chan* %1, %struct.dma_chan** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %16 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %15, i32 0, i32 4
  %17 = load %struct.bam_transaction*, %struct.bam_transaction** %16, align 8
  store %struct.bam_transaction* %17, %struct.bam_transaction** %12, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.desc_info* @kzalloc(i32 32, i32 %18)
  store %struct.desc_info* %19, %struct.desc_info** %8, align 8
  %20 = load %struct.desc_info*, %struct.desc_info** %8, align 8
  %21 = icmp ne %struct.desc_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %202

25:                                               ; preds = %3
  %26 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %27 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %28 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %27, i32 0, i32 1
  %29 = load %struct.dma_chan*, %struct.dma_chan** %28, align 8
  %30 = icmp eq %struct.dma_chan* %26, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  %32 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %33 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %32, i32 0, i32 9
  %34 = load %struct.scatterlist*, %struct.scatterlist** %33, align 8
  %35 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %36 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %34, i64 %37
  store %struct.scatterlist* %38, %struct.scatterlist** %9, align 8
  %39 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %40 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = zext i32 %41 to i64
  %43 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %44 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %42, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %49 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = zext i32 %50 to i64
  %52 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %53 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  store i32 %54, i32* %13, align 4
  %55 = load i8*, i8** @DMA_TO_DEVICE, align 8
  %56 = load %struct.desc_info*, %struct.desc_info** %8, align 8
  %57 = getelementptr inbounds %struct.desc_info, %struct.desc_info* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  br label %119

58:                                               ; preds = %25
  %59 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %60 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %61 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %60, i32 0, i32 3
  %62 = load %struct.dma_chan*, %struct.dma_chan** %61, align 8
  %63 = icmp eq %struct.dma_chan* %59, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %58
  %65 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %66 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %65, i32 0, i32 8
  %67 = load %struct.scatterlist*, %struct.scatterlist** %66, align 8
  %68 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %69 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %67, i64 %70
  store %struct.scatterlist* %71, %struct.scatterlist** %9, align 8
  %72 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %73 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = zext i32 %74 to i64
  %76 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %77 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %75, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %82 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = zext i32 %83 to i64
  %85 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %86 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  store i32 %87, i32* %13, align 4
  %88 = load i8*, i8** @DMA_TO_DEVICE, align 8
  %89 = load %struct.desc_info*, %struct.desc_info** %8, align 8
  %90 = getelementptr inbounds %struct.desc_info, %struct.desc_info* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  br label %118

91:                                               ; preds = %58
  %92 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %93 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %92, i32 0, i32 8
  %94 = load %struct.scatterlist*, %struct.scatterlist** %93, align 8
  %95 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %96 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %94, i64 %97
  store %struct.scatterlist* %98, %struct.scatterlist** %9, align 8
  %99 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %100 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = zext i32 %101 to i64
  %103 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %104 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %102, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %10, align 4
  %108 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %109 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = zext i32 %110 to i64
  %112 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %113 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %112, i32 0, i32 4
  store i64 %111, i64* %113, align 8
  %114 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  store i32 %114, i32* %13, align 4
  %115 = load i8*, i8** @DMA_FROM_DEVICE, align 8
  %116 = load %struct.desc_info*, %struct.desc_info** %8, align 8
  %117 = getelementptr inbounds %struct.desc_info, %struct.desc_info* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %91, %64
  br label %119

119:                                              ; preds = %118, %31
  %120 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %120, i64 %122
  %124 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %123, i64 -1
  %125 = call i32 @sg_mark_end(%struct.scatterlist* %124)
  %126 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %127 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.desc_info*, %struct.desc_info** %8, align 8
  %132 = getelementptr inbounds %struct.desc_info, %struct.desc_info* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @dma_map_sg(i32 %128, %struct.scatterlist* %129, i32 %130, i8* %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %119
  %138 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %139 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @dev_err(i32 %140, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %142 = load %struct.desc_info*, %struct.desc_info** %8, align 8
  %143 = call i32 @kfree(%struct.desc_info* %142)
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %202

146:                                              ; preds = %119
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.desc_info*, %struct.desc_info** %8, align 8
  %149 = getelementptr inbounds %struct.desc_info, %struct.desc_info* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %151 = load %struct.desc_info*, %struct.desc_info** %8, align 8
  %152 = getelementptr inbounds %struct.desc_info, %struct.desc_info* %151, i32 0, i32 4
  store %struct.scatterlist* %150, %struct.scatterlist** %152, align 8
  %153 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %154 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i64, i64* %7, align 8
  %158 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %153, %struct.scatterlist* %154, i32 %155, i32 %156, i64 %157)
  store %struct.dma_async_tx_descriptor* %158, %struct.dma_async_tx_descriptor** %14, align 8
  %159 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %160 = icmp ne %struct.dma_async_tx_descriptor* %159, null
  br i1 %160, label %179, label %161

161:                                              ; preds = %146
  %162 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %163 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @dev_err(i32 %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %166 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %167 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.desc_info*, %struct.desc_info** %8, align 8
  %172 = getelementptr inbounds %struct.desc_info, %struct.desc_info* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @dma_unmap_sg(i32 %168, %struct.scatterlist* %169, i32 %170, i8* %173)
  %175 = load %struct.desc_info*, %struct.desc_info** %8, align 8
  %176 = call i32 @kfree(%struct.desc_info* %175)
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %4, align 4
  br label %202

179:                                              ; preds = %146
  %180 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %181 = load %struct.desc_info*, %struct.desc_info** %8, align 8
  %182 = getelementptr inbounds %struct.desc_info, %struct.desc_info* %181, i32 0, i32 2
  store %struct.dma_async_tx_descriptor* %180, %struct.dma_async_tx_descriptor** %182, align 8
  %183 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %184 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %185 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %184, i32 0, i32 1
  %186 = load %struct.dma_chan*, %struct.dma_chan** %185, align 8
  %187 = icmp eq %struct.dma_chan* %183, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %179
  %189 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %190 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %191 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %190, i32 0, i32 7
  store %struct.dma_async_tx_descriptor* %189, %struct.dma_async_tx_descriptor** %191, align 8
  br label %196

192:                                              ; preds = %179
  %193 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %194 = load %struct.bam_transaction*, %struct.bam_transaction** %12, align 8
  %195 = getelementptr inbounds %struct.bam_transaction, %struct.bam_transaction* %194, i32 0, i32 6
  store %struct.dma_async_tx_descriptor* %193, %struct.dma_async_tx_descriptor** %195, align 8
  br label %196

196:                                              ; preds = %192, %188
  %197 = load %struct.desc_info*, %struct.desc_info** %8, align 8
  %198 = getelementptr inbounds %struct.desc_info, %struct.desc_info* %197, i32 0, i32 1
  %199 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %200 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %199, i32 0, i32 0
  %201 = call i32 @list_add_tail(i32* %198, i32* %200)
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %196, %161, %137, %22
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local %struct.desc_info* @kzalloc(i32, i32) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kfree(%struct.desc_info*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, %struct.scatterlist*, i32, i32, i64) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
