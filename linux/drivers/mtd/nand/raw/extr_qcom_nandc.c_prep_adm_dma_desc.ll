; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_prep_adm_dma_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_prep_adm_dma_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_controller = type { i32, i32, i32, i32, i64, i32 }
%struct.desc_info = type { i32, %struct.dma_async_tx_descriptor*, i32, %struct.scatterlist }
%struct.dma_async_tx_descriptor = type { i32 }
%struct.scatterlist = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to configure dma channel\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to prepare desc\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_nand_controller*, i32, i32, i8*, i32, i32)* @prep_adm_dma_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prep_adm_dma_desc(%struct.qcom_nand_controller* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qcom_nand_controller*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.desc_info*, align 8
  %15 = alloca %struct.dma_async_tx_descriptor*, align 8
  %16 = alloca %struct.scatterlist*, align 8
  %17 = alloca %struct.dma_slave_config, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.qcom_nand_controller* %0, %struct.qcom_nand_controller** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.desc_info* @kzalloc(i32 24, i32 %20)
  store %struct.desc_info* %21, %struct.desc_info** %14, align 8
  %22 = load %struct.desc_info*, %struct.desc_info** %14, align 8
  %23 = icmp ne %struct.desc_info* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %133

27:                                               ; preds = %6
  %28 = load %struct.desc_info*, %struct.desc_info** %14, align 8
  %29 = getelementptr inbounds %struct.desc_info, %struct.desc_info* %28, i32 0, i32 3
  store %struct.scatterlist* %29, %struct.scatterlist** %16, align 8
  %30 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @sg_init_one(%struct.scatterlist* %30, i8* %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %39 = load %struct.desc_info*, %struct.desc_info** %14, align 8
  %40 = getelementptr inbounds %struct.desc_info, %struct.desc_info* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  br label %46

41:                                               ; preds = %27
  %42 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = load %struct.desc_info*, %struct.desc_info** %14, align 8
  %45 = getelementptr inbounds %struct.desc_info, %struct.desc_info* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %48 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %51 = load %struct.desc_info*, %struct.desc_info** %14, align 8
  %52 = getelementptr inbounds %struct.desc_info, %struct.desc_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dma_map_sg(i32 %49, %struct.scatterlist* %50, i32 1, i32 %53)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %19, align 4
  br label %129

60:                                               ; preds = %46
  %61 = call i32 @memset(%struct.dma_slave_config* %17, i32 0, i32 32)
  %62 = load i32, i32* %13, align 4
  %63 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %17, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %17, i32 0, i32 1
  store i32 16, i32* %67, align 4
  %68 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %69 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %17, i32 0, i32 5
  store i64 %73, i64* %74, align 8
  %75 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %76 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %17, i32 0, i32 3
  store i32 %77, i32* %78, align 4
  br label %92

79:                                               ; preds = %60
  %80 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %17, i32 0, i32 2
  store i32 16, i32* %80, align 8
  %81 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %82 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %17, i32 0, i32 4
  store i64 %86, i64* %87, align 8
  %88 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %89 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %17, i32 0, i32 3
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %79, %66
  %93 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %94 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dmaengine_slave_config(i32 %95, %struct.dma_slave_config* %17)
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %101 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %129

104:                                              ; preds = %92
  %105 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %106 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %109 = load i32, i32* %18, align 4
  %110 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %107, %struct.scatterlist* %108, i32 1, i32 %109, i32 0)
  store %struct.dma_async_tx_descriptor* %110, %struct.dma_async_tx_descriptor** %15, align 8
  %111 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %15, align 8
  %112 = icmp ne %struct.dma_async_tx_descriptor* %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %104
  %114 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %115 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %19, align 4
  br label %129

120:                                              ; preds = %104
  %121 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %15, align 8
  %122 = load %struct.desc_info*, %struct.desc_info** %14, align 8
  %123 = getelementptr inbounds %struct.desc_info, %struct.desc_info* %122, i32 0, i32 1
  store %struct.dma_async_tx_descriptor* %121, %struct.dma_async_tx_descriptor** %123, align 8
  %124 = load %struct.desc_info*, %struct.desc_info** %14, align 8
  %125 = getelementptr inbounds %struct.desc_info, %struct.desc_info* %124, i32 0, i32 0
  %126 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %127 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %126, i32 0, i32 0
  %128 = call i32 @list_add_tail(i32* %125, i32* %127)
  store i32 0, i32* %7, align 4
  br label %133

129:                                              ; preds = %113, %99, %57
  %130 = load %struct.desc_info*, %struct.desc_info** %14, align 8
  %131 = call i32 @kfree(%struct.desc_info* %130)
  %132 = load i32, i32* %19, align 4
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %129, %120, %24
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local %struct.desc_info* @kzalloc(i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @memset(%struct.dma_slave_config*, i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.dma_slave_config*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.desc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
