; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_dma_op_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_dma_op_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_nfc = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.scatterlist = type { i32 }
%struct.dma_async_tx_descriptor = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFC_REG_CTL = common dso_local global i64 0, align 8
@NFC_RAM_METHOD = common dso_local global i32 0, align 4
@NFC_REG_SECTOR_NUM = common dso_local global i64 0, align 8
@NFC_REG_CNT = common dso_local global i64 0, align 8
@NFC_REG_MDMA_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_nfc*, i8*, i32, i32, i32, %struct.scatterlist*)* @sunxi_nfc_dma_op_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nfc_dma_op_prepare(%struct.sunxi_nfc* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.scatterlist* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sunxi_nfc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca %struct.dma_async_tx_descriptor*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sunxi_nfc* %0, %struct.sunxi_nfc** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.scatterlist* %5, %struct.scatterlist** %13, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  store i32 %22, i32* %15, align 4
  br label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  store i32 %24, i32* %15, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 %28, %29
  %31 = call i32 @sg_init_one(%struct.scatterlist* %26, i8* %27, i32 %30)
  %32 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %33 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @dma_map_sg(i32 %34, %struct.scatterlist* %35, i32 1, i32 %36)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %134

43:                                               ; preds = %25
  %44 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %45 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @DMA_CTRL_ACK, align 4
  %50 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %46, %struct.scatterlist* %47, i32 1, i32 %48, i32 %49)
  store %struct.dma_async_tx_descriptor* %50, %struct.dma_async_tx_descriptor** %14, align 8
  %51 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %52 = icmp ne %struct.dma_async_tx_descriptor* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %17, align 4
  br label %126

56:                                               ; preds = %43
  %57 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %58 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NFC_REG_CTL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @readl(i64 %61)
  %63 = load i32, i32* @NFC_RAM_METHOD, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %66 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NFC_REG_CTL, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 %64, i64 %69)
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %73 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NFC_REG_SECTOR_NUM, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %80 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @NFC_REG_CNT, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %86 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %56
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %96 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @NFC_REG_MDMA_CNT, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  br label %101

101:                                              ; preds = %91, %56
  %102 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %103 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %102)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @dma_submit_error(i32 %104)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %110

109:                                              ; preds = %101
  store i32 0, i32* %7, align 4
  br label %134

110:                                              ; preds = %108
  %111 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %112 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @NFC_REG_CTL, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @readl(i64 %115)
  %117 = load i32, i32* @NFC_RAM_METHOD, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %116, %118
  %120 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %121 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @NFC_REG_CTL, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel(i32 %119, i64 %124)
  br label %126

126:                                              ; preds = %110, %53
  %127 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %8, align 8
  %128 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @dma_unmap_sg(i32 %129, %struct.scatterlist* %130, i32 1, i32 %131)
  %133 = load i32, i32* %17, align 4
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %126, %109, %40
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
