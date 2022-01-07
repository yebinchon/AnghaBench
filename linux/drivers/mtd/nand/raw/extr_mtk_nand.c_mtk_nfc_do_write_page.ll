; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_do_write_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_do_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_nfc = type { %struct.device*, i64, i32 }
%struct.device = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"dma mapping error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFI_CNFG = common dso_local global i32 0, align 4
@CNFG_AHB = common dso_local global i32 0, align 4
@CNFG_DMA_BURST_EN = common dso_local global i32 0, align 4
@CON_SEC_SHIFT = common dso_local global i32 0, align 4
@NFI_CON = common dso_local global i32 0, align 4
@NFI_STRADDR = common dso_local global i32 0, align 4
@INTR_AHB_DONE_EN = common dso_local global i32 0, align 4
@NFI_INTR_EN = common dso_local global i32 0, align 4
@CON_BWR = common dso_local global i32 0, align 4
@STAR_EN = common dso_local global i32 0, align 4
@NFI_STRDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"program ahb done timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@NFI_ADDRCNTR = common dso_local global i64 0, align 8
@MTK_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"hwecc write timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32*, i32, i32)* @mtk_nfc_do_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nfc_do_write_page(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtk_nfc*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %18 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %17)
  store %struct.mtk_nfc* %18, %struct.mtk_nfc** %12, align 8
  %19 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %20 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %13, align 8
  %22 = load %struct.device*, %struct.device** %13, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  %27 = call i32 @dma_map_single(%struct.device* %22, i8* %24, i32 %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %29 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %28, i32 0, i32 0
  %30 = load %struct.device*, %struct.device** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @dma_mapping_error(%struct.device* %30, i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %5
  %36 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %37 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %36, i32 0, i32 0
  %38 = load %struct.device*, %struct.device** %37, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %137

42:                                               ; preds = %5
  %43 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %44 = load i32, i32* @NFI_CNFG, align 4
  %45 = call i32 @nfi_readw(%struct.mtk_nfc* %43, i32 %44)
  %46 = load i32, i32* @CNFG_AHB, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @CNFG_DMA_BURST_EN, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %15, align 4
  %50 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @NFI_CNFG, align 4
  %53 = call i32 @nfi_writew(%struct.mtk_nfc* %50, i32 %51, i32 %52)
  %54 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %55 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CON_SEC_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* @NFI_CON, align 4
  %62 = call i32 @nfi_writel(%struct.mtk_nfc* %54, i32 %60, i32 %61)
  %63 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @lower_32_bits(i32 %64)
  %66 = load i32, i32* @NFI_STRADDR, align 4
  %67 = call i32 @nfi_writel(%struct.mtk_nfc* %63, i32 %65, i32 %66)
  %68 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %69 = load i32, i32* @INTR_AHB_DONE_EN, align 4
  %70 = load i32, i32* @NFI_INTR_EN, align 4
  %71 = call i32 @nfi_writew(%struct.mtk_nfc* %68, i32 %69, i32 %70)
  %72 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %73 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %72, i32 0, i32 2
  %74 = call i32 @init_completion(i32* %73)
  %75 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %76 = load i32, i32* @NFI_CON, align 4
  %77 = call i32 @nfi_readl(%struct.mtk_nfc* %75, i32 %76)
  %78 = load i32, i32* @CON_BWR, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %15, align 4
  %80 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @NFI_CON, align 4
  %83 = call i32 @nfi_writel(%struct.mtk_nfc* %80, i32 %81, i32 %82)
  %84 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %85 = load i32, i32* @STAR_EN, align 4
  %86 = load i32, i32* @NFI_STRDATA, align 4
  %87 = call i32 @nfi_writew(%struct.mtk_nfc* %84, i32 %85, i32 %86)
  %88 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %89 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %88, i32 0, i32 2
  %90 = call i32 @msecs_to_jiffies(i32 500)
  %91 = call i32 @wait_for_completion_timeout(i32* %89, i32 %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %42
  %95 = load %struct.device*, %struct.device** %13, align 8
  %96 = call i32 @dev_err(%struct.device* %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %98 = load i32, i32* @NFI_INTR_EN, align 4
  %99 = call i32 @nfi_writew(%struct.mtk_nfc* %97, i32 0, i32 %98)
  %100 = load i32, i32* @ETIMEDOUT, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %16, align 4
  br label %125

102:                                              ; preds = %42
  %103 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %104 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NFI_ADDRCNTR, align 8
  %107 = add nsw i64 %105, %106
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @ADDRCNTR_SEC(i32 %109)
  %111 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %112 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp sge i32 %110, %114
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* @MTK_TIMEOUT, align 4
  %118 = call i32 @readl_poll_timeout_atomic(i64 %107, i32 %108, i32 %116, i32 10, i32 %117)
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %102
  %122 = load %struct.device*, %struct.device** %13, align 8
  %123 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %102
  br label %125

125:                                              ; preds = %124, %94
  %126 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %127 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %126, i32 0, i32 0
  %128 = load %struct.device*, %struct.device** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @DMA_TO_DEVICE, align 4
  %132 = call i32 @dma_unmap_single(%struct.device* %128, i32 %129, i32 %130, i32 %131)
  %133 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %134 = load i32, i32* @NFI_CON, align 4
  %135 = call i32 @nfi_writel(%struct.mtk_nfc* %133, i32 0, i32 %134)
  %136 = load i32, i32* %16, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %125, %35
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @nfi_readw(%struct.mtk_nfc*, i32) #1

declare dso_local i32 @nfi_writew(%struct.mtk_nfc*, i32, i32) #1

declare dso_local i32 @nfi_writel(%struct.mtk_nfc*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @nfi_readl(%struct.mtk_nfc*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @ADDRCNTR_SEC(i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
