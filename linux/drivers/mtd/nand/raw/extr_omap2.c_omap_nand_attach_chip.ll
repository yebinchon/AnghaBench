; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_nand_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_nand_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mtd_info = type { i32, i32 }
%struct.omap_nand_info = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.dma_slave_config = type { i32, i32, i8*, i8*, i32, i32 }

@BADBLOCK_MARKER_LENGTH = common dso_local global i32 0, align 4
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_BBT_NO_OOB = common dso_local global i32 0, align 4
@NAND_SKIP_BBTSCAN = common dso_local global i32 0, align 4
@omap_read_buf_pref = common dso_local global i32 0, align 4
@omap_write_buf_pref = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"rxtx\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"DMA engine request failed\0A\00", align 1
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"DMA engine slave config failed: %d\0A\00", align 1
@omap_read_buf_dma_pref = common dso_local global i32 0, align 4
@omap_write_buf_dma_pref = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Error getting fifo IRQ\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@omap_nand_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"gpmc-nand-fifo\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Requesting IRQ %d, error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Error getting IRQ count\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"gpmc-nand-count\00", align 1
@omap_read_buf_irq_pref = common dso_local global i32 0, align 4
@omap_write_buf_irq_pref = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"xfer_type %d not supported!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OMAP_ECC_HAM1_CODE_SW = common dso_local global i32 0, align 4
@NAND_ECC_SOFT = common dso_local global i8* null, align 8
@NAND_ECC_HAMMING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"nand: using OMAP_ECC_HAM1_CODE_HW\0A\00", align 1
@NAND_ECC_HW = common dso_local global i8* null, align 8
@omap_calculate_ecc = common dso_local global i8* null, align 8
@omap_enable_hwecc = common dso_local global i8* null, align 8
@omap_correct_data = common dso_local global i8* null, align 8
@omap_ooblayout_ops = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [48 x i8] c"nand: using OMAP_ECC_BCH4_CODE_HW_DETECTION_SW\0A\00", align 1
@omap_enable_hwecc_bch = common dso_local global i8* null, align 8
@nand_bch_correct_data = common dso_local global i8* null, align 8
@omap_calculate_ecc_bch_sw = common dso_local global i8* null, align 8
@omap_sw_ooblayout_ops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"Unable to use BCH library\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"nand: using OMAP_ECC_BCH4_CODE_HW ECC scheme\0A\00", align 1
@omap_elm_correct_data = common dso_local global i8* null, align 8
@omap_read_page_bch = common dso_local global i8* null, align 8
@omap_write_page_bch = common dso_local global i8* null, align 8
@omap_write_subpage_bch = common dso_local global i8* null, align 8
@BCH4_ECC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [48 x i8] c"nand: using OMAP_ECC_BCH8_CODE_HW_DETECTION_SW\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"unable to use BCH library\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"nand: using OMAP_ECC_BCH8_CODE_HW ECC scheme\0A\00", align 1
@BCH8_ECC = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [41 x i8] c"Using OMAP_ECC_BCH16_CODE_HW ECC scheme\0A\00", align 1
@BCH16_ECC = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [35 x i8] c"Invalid or unsupported ECC scheme\0A\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"Not enough OOB bytes: required = %d, available=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @omap_nand_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_nand_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.omap_nand_info*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dma_slave_config, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %13 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %12)
  store %struct.mtd_info* %13, %struct.mtd_info** %4, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %15 = call %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info* %14)
  store %struct.omap_nand_info* %15, %struct.omap_nand_info** %5, align 8
  %16 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %17 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %16, i32 0, i32 5
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %6, align 8
  %20 = load i32, i32* @BADBLOCK_MARKER_LENGTH, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %29 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %39

33:                                               ; preds = %1
  %34 = load i32, i32* @NAND_SKIP_BBTSCAN, align 4
  %35 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %41 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %199 [
    i32 134, label %43
    i32 137, label %52
    i32 136, label %53
    i32 135, label %114
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* @omap_read_buf_pref, align 4
  %45 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %46 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @omap_write_buf_pref, align 4
  %49 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %50 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  br label %207

52:                                               ; preds = %39
  br label %207

53:                                               ; preds = %39
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @dma_cap_zero(i32 %54)
  %56 = load i32, i32* @DMA_SLAVE, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @dma_cap_set(i32 %56, i32 %57)
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dma_request_chan(i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %64 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %66 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @IS_ERR(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %53
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %74 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @PTR_ERR(i32 %75)
  store i32 %76, i32* %2, align 4
  br label %609

77:                                               ; preds = %53
  %78 = call i32 @memset(%struct.dma_slave_config* %11, i32 0, i32 32)
  %79 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %80 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 5
  store i32 %81, i32* %82, align 4
  %83 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %84 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 4
  store i32 %85, i32* %86, align 8
  %87 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %88 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 3
  store i8* %87, i8** %88, align 8
  %89 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %90 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 2
  store i8* %89, i8** %90, align 8
  %91 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 0
  store i32 16, i32* %91, align 8
  %92 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 1
  store i32 16, i32* %92, align 4
  %93 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %94 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dmaengine_slave_config(i32 %95, %struct.dma_slave_config* %11)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %77
  %100 = load %struct.device*, %struct.device** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %2, align 4
  br label %609

104:                                              ; preds = %77
  %105 = load i32, i32* @omap_read_buf_dma_pref, align 4
  %106 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %107 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @omap_write_buf_dma_pref, align 4
  %110 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %111 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  br label %113

113:                                              ; preds = %104
  br label %207

114:                                              ; preds = %39
  %115 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %116 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %115, i32 0, i32 5
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = call i8* @platform_get_irq(%struct.TYPE_6__* %117, i32 0)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %121 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %123 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp sle i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %114
  %127 = load %struct.device*, %struct.device** %6, align 8
  %128 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %129 = load i32, i32* @ENODEV, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %609

131:                                              ; preds = %114
  %132 = load %struct.device*, %struct.device** %6, align 8
  %133 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %134 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @omap_nand_irq, align 4
  %137 = load i32, i32* @IRQF_SHARED, align 4
  %138 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %139 = call i32 @devm_request_irq(%struct.device* %132, i32 %135, i32 %136, i32 %137, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.omap_nand_info* %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %131
  %143 = load %struct.device*, %struct.device** %6, align 8
  %144 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %145 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %143, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %146, i32 %147)
  %149 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %150 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %149, i32 0, i32 1
  store i32 0, i32* %150, align 4
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %2, align 4
  br label %609

152:                                              ; preds = %131
  %153 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %154 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %153, i32 0, i32 5
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = call i8* @platform_get_irq(%struct.TYPE_6__* %155, i32 1)
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %159 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %161 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp sle i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %152
  %165 = load %struct.device*, %struct.device** %6, align 8
  %166 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %167 = load i32, i32* @ENODEV, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %609

169:                                              ; preds = %152
  %170 = load %struct.device*, %struct.device** %6, align 8
  %171 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %172 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @omap_nand_irq, align 4
  %175 = load i32, i32* @IRQF_SHARED, align 4
  %176 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %177 = call i32 @devm_request_irq(%struct.device* %170, i32 %173, i32 %174, i32 %175, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), %struct.omap_nand_info* %176)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %169
  %181 = load %struct.device*, %struct.device** %6, align 8
  %182 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %183 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %181, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %184, i32 %185)
  %187 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %188 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %187, i32 0, i32 2
  store i32 0, i32* %188, align 8
  %189 = load i32, i32* %10, align 4
  store i32 %189, i32* %2, align 4
  br label %609

190:                                              ; preds = %169
  %191 = load i32, i32* @omap_read_buf_irq_pref, align 4
  %192 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %193 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  store i32 %191, i32* %194, align 4
  %195 = load i32, i32* @omap_write_buf_irq_pref, align 4
  %196 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %197 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  store i32 %195, i32* %198, align 8
  br label %207

199:                                              ; preds = %39
  %200 = load %struct.device*, %struct.device** %6, align 8
  %201 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %202 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %200, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %2, align 4
  br label %609

207:                                              ; preds = %190, %113, %52, %43
  %208 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %209 = call i32 @omap2_nand_ecc_check(%struct.omap_nand_info* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %207
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %2, align 4
  br label %609

214:                                              ; preds = %207
  %215 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %216 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @OMAP_ECC_HAM1_CODE_SW, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %214
  %221 = load i8*, i8** @NAND_ECC_SOFT, align 8
  %222 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %223 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 8
  store i8* %221, i8** %224, align 8
  %225 = load i32, i32* @NAND_ECC_HAMMING, align 4
  %226 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %227 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 11
  store i32 %225, i32* %228, align 8
  store i32 0, i32* %2, align 4
  br label %609

229:                                              ; preds = %214
  %230 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %231 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  switch i32 %232, label %576 [
    i32 128, label %233
    i32 131, label %275
    i32 132, label %325
    i32 129, label %392
    i32 130, label %442
    i32 133, label %509
  ]

233:                                              ; preds = %229
  %234 = load %struct.device*, %struct.device** %6, align 8
  %235 = call i32 @dev_info(%struct.device* %234, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %236 = load i8*, i8** @NAND_ECC_HW, align 8
  %237 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %238 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 8
  store i8* %236, i8** %239, align 8
  %240 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %241 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  store i32 3, i32* %242, align 8
  %243 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %244 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 1
  store i32 512, i32* %245, align 4
  %246 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %247 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 2
  store i32 1, i32* %248, align 8
  %249 = load i8*, i8** @omap_calculate_ecc, align 8
  %250 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %251 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 10
  store i8* %249, i8** %252, align 8
  %253 = load i8*, i8** @omap_enable_hwecc, align 8
  %254 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %255 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 7
  store i8* %253, i8** %256, align 8
  %257 = load i8*, i8** @omap_correct_data, align 8
  %258 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %259 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 6
  store i8* %257, i8** %260, align 8
  %261 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %262 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %261, i32* @omap_ooblayout_ops)
  %263 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %264 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  store i32 %266, i32* %8, align 4
  %267 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %268 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %233
  store i32 1, i32* %7, align 4
  br label %274

274:                                              ; preds = %273, %233
  br label %581

275:                                              ; preds = %229
  %276 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  %277 = load i8*, i8** @NAND_ECC_HW, align 8
  %278 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %279 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 8
  store i8* %277, i8** %280, align 8
  %281 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %282 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 1
  store i32 512, i32* %283, align 4
  %284 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %285 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 0
  store i32 7, i32* %286, align 8
  %287 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %288 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 2
  store i32 4, i32* %289, align 8
  %290 = load i8*, i8** @omap_enable_hwecc_bch, align 8
  %291 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %292 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 7
  store i8* %290, i8** %293, align 8
  %294 = load i8*, i8** @nand_bch_correct_data, align 8
  %295 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %296 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 6
  store i8* %294, i8** %297, align 8
  %298 = load i8*, i8** @omap_calculate_ecc_bch_sw, align 8
  %299 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %300 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 10
  store i8* %298, i8** %301, align 8
  %302 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %303 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %302, i32* @omap_sw_ooblayout_ops)
  %304 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %305 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %8, align 4
  %309 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %310 = call i8* @nand_bch_init(%struct.mtd_info* %309)
  %311 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %312 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 9
  store i8* %310, i8** %313, align 8
  %314 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %315 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 9
  %317 = load i8*, i8** %316, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %324, label %319

319:                                              ; preds = %275
  %320 = load %struct.device*, %struct.device** %6, align 8
  %321 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %320, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %322 = load i32, i32* @EINVAL, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %2, align 4
  br label %609

324:                                              ; preds = %275
  br label %581

325:                                              ; preds = %229
  %326 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  %327 = load i8*, i8** @NAND_ECC_HW, align 8
  %328 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %329 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 8
  store i8* %327, i8** %330, align 8
  %331 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %332 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 1
  store i32 512, i32* %333, align 4
  %334 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %335 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 0
  store i32 8, i32* %336, align 8
  %337 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %338 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 2
  store i32 4, i32* %339, align 8
  %340 = load i8*, i8** @omap_enable_hwecc_bch, align 8
  %341 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %342 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 7
  store i8* %340, i8** %343, align 8
  %344 = load i8*, i8** @omap_elm_correct_data, align 8
  %345 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %346 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 6
  store i8* %344, i8** %347, align 8
  %348 = load i8*, i8** @omap_read_page_bch, align 8
  %349 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %350 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 5
  store i8* %348, i8** %351, align 8
  %352 = load i8*, i8** @omap_write_page_bch, align 8
  %353 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %354 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 4
  store i8* %352, i8** %355, align 8
  %356 = load i8*, i8** @omap_write_subpage_bch, align 8
  %357 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %358 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 3
  store i8* %356, i8** %359, align 8
  %360 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %361 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %360, i32* @omap_ooblayout_ops)
  %362 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %363 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  store i32 %365, i32* %8, align 4
  %366 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %367 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %366, i32 0, i32 4
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @BCH4_ECC, align 4
  %370 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %371 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %374 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = sdiv i32 %372, %376
  %378 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %379 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %383 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %382, i32 0, i32 2
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = call i32 @elm_config(i32 %368, i32 %369, i32 %377, i32 %381, i32 %385)
  store i32 %386, i32* %10, align 4
  %387 = load i32, i32* %10, align 4
  %388 = icmp slt i32 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %325
  %390 = load i32, i32* %10, align 4
  store i32 %390, i32* %2, align 4
  br label %609

391:                                              ; preds = %325
  br label %581

392:                                              ; preds = %229
  %393 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  %394 = load i8*, i8** @NAND_ECC_HW, align 8
  %395 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %396 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %396, i32 0, i32 8
  store i8* %394, i8** %397, align 8
  %398 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %399 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %399, i32 0, i32 1
  store i32 512, i32* %400, align 4
  %401 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %402 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %401, i32 0, i32 2
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 0
  store i32 13, i32* %403, align 8
  %404 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %405 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %404, i32 0, i32 2
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 2
  store i32 8, i32* %406, align 8
  %407 = load i8*, i8** @omap_enable_hwecc_bch, align 8
  %408 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %409 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i32 0, i32 7
  store i8* %407, i8** %410, align 8
  %411 = load i8*, i8** @nand_bch_correct_data, align 8
  %412 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %413 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %412, i32 0, i32 2
  %414 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %413, i32 0, i32 6
  store i8* %411, i8** %414, align 8
  %415 = load i8*, i8** @omap_calculate_ecc_bch_sw, align 8
  %416 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %417 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %416, i32 0, i32 2
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i32 0, i32 10
  store i8* %415, i8** %418, align 8
  %419 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %420 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %419, i32* @omap_sw_ooblayout_ops)
  %421 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %422 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %421, i32 0, i32 2
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %8, align 4
  %426 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %427 = call i8* @nand_bch_init(%struct.mtd_info* %426)
  %428 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %429 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %428, i32 0, i32 2
  %430 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %429, i32 0, i32 9
  store i8* %427, i8** %430, align 8
  %431 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %432 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %431, i32 0, i32 2
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 9
  %434 = load i8*, i8** %433, align 8
  %435 = icmp ne i8* %434, null
  br i1 %435, label %441, label %436

436:                                              ; preds = %392
  %437 = load %struct.device*, %struct.device** %6, align 8
  %438 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %437, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %439 = load i32, i32* @EINVAL, align 4
  %440 = sub nsw i32 0, %439
  store i32 %440, i32* %2, align 4
  br label %609

441:                                              ; preds = %392
  br label %581

442:                                              ; preds = %229
  %443 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0))
  %444 = load i8*, i8** @NAND_ECC_HW, align 8
  %445 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %446 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %445, i32 0, i32 2
  %447 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %446, i32 0, i32 8
  store i8* %444, i8** %447, align 8
  %448 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %449 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %448, i32 0, i32 2
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i32 0, i32 1
  store i32 512, i32* %450, align 4
  %451 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %452 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %452, i32 0, i32 0
  store i32 14, i32* %453, align 8
  %454 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %455 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %454, i32 0, i32 2
  %456 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %455, i32 0, i32 2
  store i32 8, i32* %456, align 8
  %457 = load i8*, i8** @omap_enable_hwecc_bch, align 8
  %458 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %459 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %458, i32 0, i32 2
  %460 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %459, i32 0, i32 7
  store i8* %457, i8** %460, align 8
  %461 = load i8*, i8** @omap_elm_correct_data, align 8
  %462 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %463 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %462, i32 0, i32 2
  %464 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %463, i32 0, i32 6
  store i8* %461, i8** %464, align 8
  %465 = load i8*, i8** @omap_read_page_bch, align 8
  %466 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %467 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %466, i32 0, i32 2
  %468 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %467, i32 0, i32 5
  store i8* %465, i8** %468, align 8
  %469 = load i8*, i8** @omap_write_page_bch, align 8
  %470 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %471 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %470, i32 0, i32 2
  %472 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %471, i32 0, i32 4
  store i8* %469, i8** %472, align 8
  %473 = load i8*, i8** @omap_write_subpage_bch, align 8
  %474 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %475 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %474, i32 0, i32 2
  %476 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %475, i32 0, i32 3
  store i8* %473, i8** %476, align 8
  %477 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %478 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %477, i32* @omap_ooblayout_ops)
  %479 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %480 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %479, i32 0, i32 2
  %481 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  store i32 %482, i32* %8, align 4
  %483 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %484 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %483, i32 0, i32 4
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* @BCH8_ECC, align 4
  %487 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %488 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 4
  %490 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %491 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = sdiv i32 %489, %493
  %495 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %496 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %495, i32 0, i32 2
  %497 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %496, i32 0, i32 1
  %498 = load i32, i32* %497, align 4
  %499 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %500 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %499, i32 0, i32 2
  %501 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 8
  %503 = call i32 @elm_config(i32 %485, i32 %486, i32 %494, i32 %498, i32 %502)
  store i32 %503, i32* %10, align 4
  %504 = load i32, i32* %10, align 4
  %505 = icmp slt i32 %504, 0
  br i1 %505, label %506, label %508

506:                                              ; preds = %442
  %507 = load i32, i32* %10, align 4
  store i32 %507, i32* %2, align 4
  br label %609

508:                                              ; preds = %442
  br label %581

509:                                              ; preds = %229
  %510 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  %511 = load i8*, i8** @NAND_ECC_HW, align 8
  %512 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %513 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %512, i32 0, i32 2
  %514 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %513, i32 0, i32 8
  store i8* %511, i8** %514, align 8
  %515 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %516 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %515, i32 0, i32 2
  %517 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %516, i32 0, i32 1
  store i32 512, i32* %517, align 4
  %518 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %519 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %518, i32 0, i32 2
  %520 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %519, i32 0, i32 0
  store i32 26, i32* %520, align 8
  %521 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %522 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %521, i32 0, i32 2
  %523 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %522, i32 0, i32 2
  store i32 16, i32* %523, align 8
  %524 = load i8*, i8** @omap_enable_hwecc_bch, align 8
  %525 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %526 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %525, i32 0, i32 2
  %527 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %526, i32 0, i32 7
  store i8* %524, i8** %527, align 8
  %528 = load i8*, i8** @omap_elm_correct_data, align 8
  %529 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %530 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %529, i32 0, i32 2
  %531 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %530, i32 0, i32 6
  store i8* %528, i8** %531, align 8
  %532 = load i8*, i8** @omap_read_page_bch, align 8
  %533 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %534 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %533, i32 0, i32 2
  %535 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %534, i32 0, i32 5
  store i8* %532, i8** %535, align 8
  %536 = load i8*, i8** @omap_write_page_bch, align 8
  %537 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %538 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %537, i32 0, i32 2
  %539 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %538, i32 0, i32 4
  store i8* %536, i8** %539, align 8
  %540 = load i8*, i8** @omap_write_subpage_bch, align 8
  %541 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %542 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %541, i32 0, i32 2
  %543 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %542, i32 0, i32 3
  store i8* %540, i8** %543, align 8
  %544 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %545 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %544, i32* @omap_ooblayout_ops)
  %546 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %547 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %546, i32 0, i32 2
  %548 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  store i32 %549, i32* %8, align 4
  %550 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %551 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %550, i32 0, i32 4
  %552 = load i32, i32* %551, align 8
  %553 = load i32, i32* @BCH16_ECC, align 4
  %554 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %555 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 4
  %557 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %558 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %557, i32 0, i32 2
  %559 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %558, i32 0, i32 1
  %560 = load i32, i32* %559, align 4
  %561 = sdiv i32 %556, %560
  %562 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %563 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %562, i32 0, i32 2
  %564 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 4
  %566 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %567 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %566, i32 0, i32 2
  %568 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 8
  %570 = call i32 @elm_config(i32 %552, i32 %553, i32 %561, i32 %565, i32 %569)
  store i32 %570, i32* %10, align 4
  %571 = load i32, i32* %10, align 4
  %572 = icmp slt i32 %571, 0
  br i1 %572, label %573, label %575

573:                                              ; preds = %509
  %574 = load i32, i32* %10, align 4
  store i32 %574, i32* %2, align 4
  br label %609

575:                                              ; preds = %509
  br label %581

576:                                              ; preds = %229
  %577 = load %struct.device*, %struct.device** %6, align 8
  %578 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %577, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0))
  %579 = load i32, i32* @EINVAL, align 4
  %580 = sub nsw i32 0, %579
  store i32 %580, i32* %2, align 4
  br label %609

581:                                              ; preds = %575, %508, %441, %391, %324, %274
  %582 = load i32, i32* %8, align 4
  %583 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %584 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %587 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %586, i32 0, i32 2
  %588 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 4
  %590 = sdiv i32 %585, %589
  %591 = mul nsw i32 %582, %590
  %592 = load i32, i32* %7, align 4
  %593 = add nsw i32 %592, %591
  store i32 %593, i32* %7, align 4
  %594 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %595 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %594, i32 0, i32 1
  %596 = load i32, i32* %595, align 4
  %597 = load i32, i32* %7, align 4
  %598 = icmp slt i32 %596, %597
  br i1 %598, label %599, label %608

599:                                              ; preds = %581
  %600 = load %struct.device*, %struct.device** %6, align 8
  %601 = load i32, i32* %7, align 4
  %602 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %603 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %602, i32 0, i32 1
  %604 = load i32, i32* %603, align 4
  %605 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %600, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i64 0, i64 0), i32 %601, i32 %604)
  %606 = load i32, i32* @EINVAL, align 4
  %607 = sub nsw i32 0, %606
  store i32 %607, i32* %2, align 4
  br label %609

608:                                              ; preds = %581
  store i32 0, i32* %2, align 4
  br label %609

609:                                              ; preds = %608, %599, %576, %573, %506, %436, %389, %319, %220, %211, %199, %180, %164, %142, %126, %99, %70
  %610 = load i32, i32* %2, align 4
  ret i32 %610
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info*) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dma_request_chan(i32, i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @memset(%struct.dma_slave_config*, i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.dma_slave_config*) #1

declare dso_local i8* @platform_get_irq(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.omap_nand_info*) #1

declare dso_local i32 @omap2_nand_ecc_check(%struct.omap_nand_info*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i8* @nand_bch_init(%struct.mtd_info*) #1

declare dso_local i32 @elm_config(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
