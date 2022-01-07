; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinfc_host = type { i64, i64, i64, i32, i32, i32, i32, %struct.nand_chip }
%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mtd_info = type { i64 }

@HINFC504_DMA_ADDR_DATA = common dso_local global i32 0, align 4
@HINFC504_DMA_ADDR_OOB = common dso_local global i32 0, align 4
@NAND_ECC_NONE = common dso_local global i64 0, align 8
@HINFC504_DMA_LEN_OOB_MASK = common dso_local global i64 0, align 8
@HINFC504_DMA_LEN_OOB_SHIFT = common dso_local global i64 0, align 8
@HINFC504_DMA_LEN = common dso_local global i32 0, align 4
@HINFC504_DMA_PARA_DATA_RW_EN = common dso_local global i64 0, align 8
@HINFC504_DMA_PARA_OOB_RW_EN = common dso_local global i64 0, align 8
@HINFC504_DMA_PARA = common dso_local global i32 0, align 4
@NAND_CMD_READOOB = common dso_local global i64 0, align 8
@HINFC504_DMA_PARA_OOB_EDC_EN = common dso_local global i64 0, align 8
@HINFC504_DMA_PARA_OOB_ECC_EN = common dso_local global i64 0, align 8
@HINFC504_DMA_PARA_DATA_EDC_EN = common dso_local global i64 0, align 8
@HINFC504_DMA_PARA_DATA_ECC_EN = common dso_local global i64 0, align 8
@HINFC504_DMA_CTRL_DMA_START = common dso_local global i32 0, align 4
@HINFC504_DMA_CTRL_BURST4_EN = common dso_local global i32 0, align 4
@HINFC504_DMA_CTRL_BURST8_EN = common dso_local global i32 0, align 4
@HINFC504_DMA_CTRL_BURST16_EN = common dso_local global i32 0, align 4
@HINFC504_DMA_CTRL_DATA_AREA_EN = common dso_local global i32 0, align 4
@HINFC504_DMA_CTRL_OOB_AREA_EN = common dso_local global i32 0, align 4
@HINFC504_DMA_CTRL_ADDR_NUM_SHIFT = common dso_local global i32 0, align 4
@HINFC504_DMA_CTRL_CS_MASK = common dso_local global i32 0, align 4
@HINFC504_DMA_CTRL_CS_SHIFT = common dso_local global i32 0, align 4
@HINFC504_DMA_CTRL_WE = common dso_local global i64 0, align 8
@HINFC504_DMA_CTRL = common dso_local global i32 0, align 4
@HINFC504_NFC_DMA_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"DMA operation(irq) timeout!\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"DMA is already done but without irq ACK!\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"DMA is really timeout!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinfc_host*, i32)* @hisi_nfc_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_nfc_dma_transfer(%struct.hinfc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.hinfc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hinfc_host* %0, %struct.hinfc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %10 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %9, i32 0, i32 7
  store %struct.nand_chip* %10, %struct.nand_chip** %5, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %11)
  store %struct.mtd_info* %12, %struct.mtd_info** %6, align 8
  %13 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %14 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %15 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @HINFC504_DMA_ADDR_DATA, align 4
  %18 = call i32 @hinfc_write(%struct.hinfc_host* %13, i64 %16, i32 %17)
  %19 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %20 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %21 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @HINFC504_DMA_ADDR_OOB, align 4
  %24 = call i32 @hinfc_write(%struct.hinfc_host* %19, i64 %22, i32 %23)
  %25 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NAND_ECC_NONE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %2
  %32 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %33 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HINFC504_DMA_LEN_OOB_MASK, align 8
  %37 = and i64 %35, %36
  %38 = load i64, i64* @HINFC504_DMA_LEN_OOB_SHIFT, align 8
  %39 = shl i64 %37, %38
  %40 = load i32, i32* @HINFC504_DMA_LEN, align 4
  %41 = call i32 @hinfc_write(%struct.hinfc_host* %32, i64 %39, i32 %40)
  %42 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %43 = load i64, i64* @HINFC504_DMA_PARA_DATA_RW_EN, align 8
  %44 = load i64, i64* @HINFC504_DMA_PARA_OOB_RW_EN, align 8
  %45 = or i64 %43, %44
  %46 = load i32, i32* @HINFC504_DMA_PARA, align 4
  %47 = call i32 @hinfc_write(%struct.hinfc_host* %42, i64 %45, i32 %46)
  br label %79

48:                                               ; preds = %2
  %49 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %50 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NAND_CMD_READOOB, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %56 = load i64, i64* @HINFC504_DMA_PARA_OOB_RW_EN, align 8
  %57 = load i64, i64* @HINFC504_DMA_PARA_OOB_EDC_EN, align 8
  %58 = or i64 %56, %57
  %59 = load i64, i64* @HINFC504_DMA_PARA_OOB_ECC_EN, align 8
  %60 = or i64 %58, %59
  %61 = load i32, i32* @HINFC504_DMA_PARA, align 4
  %62 = call i32 @hinfc_write(%struct.hinfc_host* %55, i64 %60, i32 %61)
  br label %78

63:                                               ; preds = %48
  %64 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %65 = load i64, i64* @HINFC504_DMA_PARA_DATA_RW_EN, align 8
  %66 = load i64, i64* @HINFC504_DMA_PARA_OOB_RW_EN, align 8
  %67 = or i64 %65, %66
  %68 = load i64, i64* @HINFC504_DMA_PARA_DATA_EDC_EN, align 8
  %69 = or i64 %67, %68
  %70 = load i64, i64* @HINFC504_DMA_PARA_OOB_EDC_EN, align 8
  %71 = or i64 %69, %70
  %72 = load i64, i64* @HINFC504_DMA_PARA_DATA_ECC_EN, align 8
  %73 = or i64 %71, %72
  %74 = load i64, i64* @HINFC504_DMA_PARA_OOB_ECC_EN, align 8
  %75 = or i64 %73, %74
  %76 = load i32, i32* @HINFC504_DMA_PARA, align 4
  %77 = call i32 @hinfc_write(%struct.hinfc_host* %64, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %63, %54
  br label %79

79:                                               ; preds = %78, %31
  %80 = load i32, i32* @HINFC504_DMA_CTRL_DMA_START, align 4
  %81 = load i32, i32* @HINFC504_DMA_CTRL_BURST4_EN, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @HINFC504_DMA_CTRL_BURST8_EN, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @HINFC504_DMA_CTRL_BURST16_EN, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @HINFC504_DMA_CTRL_DATA_AREA_EN, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @HINFC504_DMA_CTRL_OOB_AREA_EN, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %92 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 4
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 0
  %97 = load i32, i32* @HINFC504_DMA_CTRL_ADDR_NUM_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = or i32 %90, %98
  %100 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %101 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @HINFC504_DMA_CTRL_CS_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @HINFC504_DMA_CTRL_CS_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = or i32 %99, %106
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %7, align 8
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %79
  %112 = load i64, i64* @HINFC504_DMA_CTRL_WE, align 8
  %113 = load i64, i64* %7, align 8
  %114 = or i64 %113, %112
  store i64 %114, i64* %7, align 8
  br label %115

115:                                              ; preds = %111, %79
  %116 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %117 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %116, i32 0, i32 6
  %118 = call i32 @init_completion(i32* %117)
  %119 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i32, i32* @HINFC504_DMA_CTRL, align 4
  %122 = call i32 @hinfc_write(%struct.hinfc_host* %119, i64 %120, i32 %121)
  %123 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %124 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %123, i32 0, i32 6
  %125 = load i32, i32* @HINFC504_NFC_DMA_TIMEOUT, align 4
  %126 = call i32 @wait_for_completion_timeout(i32* %124, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %153, label %129

129:                                              ; preds = %115
  %130 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %131 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @dev_err(i32 %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %134 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %135 = load i32, i32* @HINFC504_DMA_CTRL, align 4
  %136 = call i64 @hinfc_read(%struct.hinfc_host* %134, i32 %135)
  store i64 %136, i64* %7, align 8
  %137 = load i64, i64* %7, align 8
  %138 = load i32, i32* @HINFC504_DMA_CTRL_DMA_START, align 4
  %139 = sext i32 %138 to i64
  %140 = and i64 %137, %139
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %129
  %143 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %144 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @dev_err(i32 %145, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %152

147:                                              ; preds = %129
  %148 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %149 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @dev_err(i32 %150, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %152

152:                                              ; preds = %147, %142
  br label %153

153:                                              ; preds = %152, %115
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @hinfc_write(%struct.hinfc_host*, i64, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @hinfc_read(%struct.hinfc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
