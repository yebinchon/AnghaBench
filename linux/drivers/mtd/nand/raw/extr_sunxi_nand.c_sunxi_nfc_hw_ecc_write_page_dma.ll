; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_write_page_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_write_page_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32*, i32, %struct.nand_ecc_ctrl, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32 }
%struct.sunxi_nfc = type { i32, i64 }
%struct.scatterlist = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@NAND_CMD_RNDIN = common dso_local global i32 0, align 4
@NAND_CMD_PAGEPROG = common dso_local global i32 0, align 4
@NFC_REG_WCMD_SET = common dso_local global i64 0, align 8
@NFC_PAGE_OP = common dso_local global i32 0, align 4
@NFC_DATA_SWAP_METHOD = common dso_local global i32 0, align 4
@NFC_DATA_TRANS = common dso_local global i32 0, align 4
@NFC_ACCESS_DIR = common dso_local global i32 0, align 4
@NFC_REG_CMD = common dso_local global i64 0, align 8
@NFC_CMD_INT_FLAG = common dso_local global i32 0, align 4
@NAND_NEED_SCRAMBLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @sunxi_nfc_hw_ecc_write_page_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nfc_hw_ecc_write_page_dma(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sunxi_nfc*, align 8
  %11 = alloca %struct.nand_ecc_ctrl*, align 8
  %12 = alloca %struct.scatterlist, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.sunxi_nfc* @to_sunxi_nfc(i32 %18)
  store %struct.sunxi_nfc* %19, %struct.sunxi_nfc** %10, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 3
  store %struct.nand_ecc_ctrl* %21, %struct.nand_ecc_ctrl** %11, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %23 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sunxi_nfc_select_chip(%struct.nand_chip* %22, i32 %25)
  %27 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %10, align 8
  %28 = call i32 @sunxi_nfc_wait_cmd_fifo_empty(%struct.sunxi_nfc* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %5, align 4
  br label %164

33:                                               ; preds = %4
  %34 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %10, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %37 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %40 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DMA_TO_DEVICE, align 4
  %43 = call i32 @sunxi_nfc_dma_op_prepare(%struct.sunxi_nfc* %34, i32* %35, i32 %38, i32 %41, i32 %42, %struct.scatterlist* %12)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %158

47:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %75, %47
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %51 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %48
  %55 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %60 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 4
  %63 = mul nsw i32 %58, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %57, i64 %64
  store i32* %65, i32** %15, align 8
  %66 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @sunxi_nfc_hw_ecc_set_prot_oob_bytes(%struct.nand_chip* %66, i32* %67, i32 %68, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %54
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %48

78:                                               ; preds = %48
  %79 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %79, i32 %80, i32 0, i32* null, i32 0)
  %82 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %83 = call i32 @sunxi_nfc_hw_ecc_enable(%struct.nand_chip* %82)
  %84 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @sunxi_nfc_randomizer_config(%struct.nand_chip* %84, i32 %85, i32 0)
  %87 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %88 = call i32 @sunxi_nfc_randomizer_enable(%struct.nand_chip* %87)
  %89 = load i32, i32* @NAND_CMD_RNDIN, align 4
  %90 = shl i32 %89, 8
  %91 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %10, align 8
  %94 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @NFC_REG_WCMD_SET, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %92, i64 %97)
  %99 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %10, align 8
  %100 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dma_async_issue_pending(i32 %101)
  %103 = load i32, i32* @NFC_PAGE_OP, align 4
  %104 = load i32, i32* @NFC_DATA_SWAP_METHOD, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @NFC_DATA_TRANS, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @NFC_ACCESS_DIR, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %10, align 8
  %111 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @NFC_REG_CMD, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @writel(i32 %109, i64 %114)
  %116 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %10, align 8
  %117 = load i32, i32* @NFC_CMD_INT_FLAG, align 4
  %118 = call i32 @sunxi_nfc_wait_events(%struct.sunxi_nfc* %116, i32 %117, i32 0, i32 0)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %78
  %122 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %10, align 8
  %123 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @dmaengine_terminate_all(i32 %124)
  br label %126

126:                                              ; preds = %121, %78
  %127 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %128 = call i32 @sunxi_nfc_randomizer_disable(%struct.nand_chip* %127)
  %129 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %130 = call i32 @sunxi_nfc_hw_ecc_disable(%struct.nand_chip* %129)
  %131 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %10, align 8
  %132 = load i32, i32* @DMA_TO_DEVICE, align 4
  %133 = call i32 @sunxi_nfc_dma_op_cleanup(%struct.sunxi_nfc* %131, i32 %132, %struct.scatterlist* %12)
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %5, align 4
  br label %164

138:                                              ; preds = %126
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %138
  %142 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %143 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @NAND_NEED_SCRAMBLING, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %141, %138
  %149 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %150 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %151 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @sunxi_nfc_hw_ecc_write_extra_oob(%struct.nand_chip* %149, i32* %152, i32* null, i32 %153)
  br label %155

155:                                              ; preds = %148, %141
  %156 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %157 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %156)
  store i32 %157, i32* %5, align 4
  br label %164

158:                                              ; preds = %46
  %159 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %160 = load i32*, i32** %7, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @sunxi_nfc_hw_ecc_write_page(%struct.nand_chip* %159, i32* %160, i32 %161, i32 %162)
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %158, %155, %136, %31
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local %struct.sunxi_nfc* @to_sunxi_nfc(i32) #1

declare dso_local i32 @sunxi_nfc_select_chip(%struct.nand_chip*, i32) #1

declare dso_local i32 @sunxi_nfc_wait_cmd_fifo_empty(%struct.sunxi_nfc*) #1

declare dso_local i32 @sunxi_nfc_dma_op_prepare(%struct.sunxi_nfc*, i32*, i32, i32, i32, %struct.scatterlist*) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_set_prot_oob_bytes(%struct.nand_chip*, i32*, i32, i32, i32) #1

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_enable(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_randomizer_config(%struct.nand_chip*, i32, i32) #1

declare dso_local i32 @sunxi_nfc_randomizer_enable(%struct.nand_chip*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @sunxi_nfc_wait_events(%struct.sunxi_nfc*, i32, i32, i32) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @sunxi_nfc_randomizer_disable(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_disable(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_dma_op_cleanup(%struct.sunxi_nfc*, i32, %struct.scatterlist*) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_write_extra_oob(%struct.nand_chip*, i32*, i32*, i32) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_write_page(%struct.nand_chip*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
