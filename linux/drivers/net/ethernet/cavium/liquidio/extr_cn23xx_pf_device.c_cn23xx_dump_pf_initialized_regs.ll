; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_dump_pf_initialized_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_dump_pf_initialized_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.octeon_cn23xx_pf = type { i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"%s[%llx] : 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"CN23XX_WIN_WR_MASK_REG\00", align 1
@CN23XX_WIN_WR_MASK_REG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"%s[%llx] : 0x%016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"CN23XX_SLI_SCRATCH1\00", align 1
@CN23XX_SLI_SCRATCH1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"CN23XX_RST_SOFT_RST\00", align 1
@CN23XX_RST_SOFT_RST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"CN23XX_DPI_DMA_CONTROL\00", align 1
@CN23XX_DPI_DMA_CONTROL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"%s(%d)[%llx] : 0x%016llx\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"CN23XX_DPI_DMA_ENG_ENB\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"CN23XX_DPI_DMA_ENG_BUF\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"CN23XX_DPI_CTL\00", align 1
@CN23XX_DPI_CTL = common dso_local global i32 0, align 4
@CN23XX_CONFIG_PCIE_DEVCTL = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"CN23XX_CONFIG_PCIE_DEVCTL\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"CN23XX_DPI_SLI_PRTX_CFG\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"CN23XX_SLI_S2M_PORTX_CTL\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"CN23XX_SLI_RING_RST\00", align 1
@CN23XX_SLI_PKT_IOQ_RING_RST = common dso_local global i64 0, align 8
@CN23XX_MAX_MACS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"CN23XX_SLI_PKT_MAC_RINFO64\00", align 1
@CN23XX_MAX_INPUT_QUEUES = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"CN23XX_SLI_IQ_PKT_CONTROL64\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"CN23XX_SLI_OQ_WMARK\00", align 1
@CN23XX_SLI_OQ_WMARK = common dso_local global i64 0, align 8
@CN23XX_MAX_OUTPUT_QUEUES = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [26 x i8] c"CN23XX_SLI_OQ_PKT_CONTROL\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"CN23XX_SLI_OQ_PKT_INT_LEVELS\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"cn23xx->intr_enb_reg64\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"cn23xx->intr_sum_reg64\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"CN23XX_SLI_IQ_BASE_ADDR64\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"CN23XX_SLI_IQ_SIZE\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"CN23XX_SLI_IQ_DOORBELL\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"CN23XX_SLI_IQ_INSTR_COUNT64\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"CN23XX_SLI_OQ_BASE_ADDR64\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"CN23XX_SLI_OQ_SIZE\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"CN23XX_SLI_OQ_BUFF_INFO_SIZE\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"CN23XX_SLI_OQ_PKTS_SENT\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"CN23XX_SLI_OQ_PKTS_CREDIT\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"CN23XX_SLI_PKT_TIME_INT\00", align 1
@CN23XX_SLI_PKT_TIME_INT = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [23 x i8] c"CN23XX_SLI_PKT_CNT_INT\00", align 1
@CN23XX_SLI_PKT_CNT_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cn23xx_dump_pf_initialized_regs(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.octeon_cn23xx_pf*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %6 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.octeon_cn23xx_pf*
  store %struct.octeon_cn23xx_pf* %9, %struct.octeon_cn23xx_pf** %5, align 8
  %10 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* @CN23XX_WIN_WR_MASK_REG, align 8
  %15 = call i32 @CVM_CAST64(i64 %14)
  %16 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %17 = load i64, i64* @CN23XX_WIN_WR_MASK_REG, align 8
  %18 = call i64 @octeon_read_csr64(%struct.octeon_device* %16, i64 %17)
  %19 = call i32 @CVM_CAST64(i64 %18)
  %20 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %19)
  %21 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* @CN23XX_SLI_SCRATCH1, align 8
  %26 = call i32 @CVM_CAST64(i64 %25)
  %27 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %28 = load i64, i64* @CN23XX_SLI_SCRATCH1, align 8
  %29 = call i64 @octeon_read_csr64(%struct.octeon_device* %27, i64 %28)
  %30 = call i32 @CVM_CAST64(i64 %29)
  %31 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32 %30)
  %32 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %33 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* @CN23XX_RST_SOFT_RST, align 4
  %37 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %38 = load i32, i32* @CN23XX_RST_SOFT_RST, align 4
  %39 = call i32 @lio_pci_readq(%struct.octeon_device* %37, i32 %38)
  %40 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %42 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* @CN23XX_DPI_DMA_CONTROL, align 4
  %46 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %47 = load i32, i32* @CN23XX_DPI_DMA_CONTROL, align 4
  %48 = call i32 @lio_pci_readq(%struct.octeon_device* %46, i32 %47)
  %49 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %45, i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %78, %1
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 6
  br i1 %52, label %53, label %81

53:                                               ; preds = %50
  %54 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %55 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @CN23XX_DPI_DMA_ENG_ENB(i32 %59)
  %61 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @CN23XX_DPI_DMA_ENG_ENB(i32 %62)
  %64 = call i32 @lio_pci_readq(%struct.octeon_device* %61, i32 %63)
  %65 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %58, i32 %60, i32 %64)
  %66 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %67 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @CN23XX_DPI_DMA_ENG_BUF(i32 %71)
  %73 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @CN23XX_DPI_DMA_ENG_BUF(i32 %74)
  %76 = call i32 @lio_pci_readq(%struct.octeon_device* %73, i32 %75)
  %77 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %70, i32 %72, i32 %76)
  br label %78

78:                                               ; preds = %53
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %50

81:                                               ; preds = %50
  %82 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %83 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* @CN23XX_DPI_CTL, align 4
  %87 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %88 = load i32, i32* @CN23XX_DPI_CTL, align 4
  %89 = call i32 @lio_pci_readq(%struct.octeon_device* %87, i32 %88)
  %90 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %86, i32 %89)
  %91 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %92 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i64, i64* @CN23XX_CONFIG_PCIE_DEVCTL, align 8
  %95 = call i32 @pci_read_config_dword(%struct.TYPE_2__* %93, i64 %94, i64* %4)
  %96 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %97 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* @CN23XX_CONFIG_PCIE_DEVCTL, align 8
  %101 = call i32 @CVM_CAST64(i64 %100)
  %102 = load i64, i64* %4, align 8
  %103 = call i32 @CVM_CAST64(i64 %102)
  %104 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %101, i32 %103)
  %105 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %106 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %110 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %113 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @CN23XX_DPI_SLI_PRTX_CFG(i32 %114)
  %116 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %117 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %118 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @CN23XX_DPI_SLI_PRTX_CFG(i32 %119)
  %121 = call i32 @lio_pci_readq(%struct.octeon_device* %116, i32 %120)
  %122 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %111, i32 %115, i32 %121)
  %123 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %124 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %128 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %131 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @CN23XX_SLI_S2M_PORTX_CTL(i32 %132)
  %134 = call i32 @CVM_CAST64(i64 %133)
  %135 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %136 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %137 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @CN23XX_SLI_S2M_PORTX_CTL(i32 %138)
  %140 = call i64 @octeon_read_csr64(%struct.octeon_device* %135, i64 %139)
  %141 = call i32 @CVM_CAST64(i64 %140)
  %142 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %129, i32 %134, i32 %141)
  %143 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %144 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i64, i64* @CN23XX_SLI_PKT_IOQ_RING_RST, align 8
  %148 = call i32 @CVM_CAST64(i64 %147)
  %149 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %150 = load i64, i64* @CN23XX_SLI_PKT_IOQ_RING_RST, align 8
  %151 = call i64 @octeon_read_csr64(%struct.octeon_device* %149, i64 %150)
  %152 = trunc i64 %151 to i32
  %153 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %146, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %148, i32 %152)
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %179, %81
  %155 = load i32, i32* %3, align 4
  %156 = load i32, i32* @CN23XX_MAX_MACS, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %182

158:                                              ; preds = %154
  %159 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %160 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %159, i32 0, i32 0
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %3, align 4
  %164 = load i32, i32* %3, align 4
  %165 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %166 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i64 @CN23XX_SLI_PKT_MAC_RINFO64(i32 %164, i32 %167)
  %169 = call i32 @CVM_CAST64(i64 %168)
  %170 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %171 = load i32, i32* %3, align 4
  %172 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %173 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @CN23XX_SLI_PKT_MAC_RINFO64(i32 %171, i32 %174)
  %176 = call i64 @octeon_read_csr64(%struct.octeon_device* %170, i64 %175)
  %177 = call i32 @CVM_CAST64(i64 %176)
  %178 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %162, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %163, i32 %169, i32 %177)
  br label %179

179:                                              ; preds = %158
  %180 = load i32, i32* %3, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %3, align 4
  br label %154

182:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %202, %182
  %184 = load i32, i32* %3, align 4
  %185 = load i32, i32* @CN23XX_MAX_INPUT_QUEUES, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %205

187:                                              ; preds = %183
  %188 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %189 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %188, i32 0, i32 0
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %3, align 4
  %193 = load i32, i32* %3, align 4
  %194 = call i64 @CN23XX_SLI_IQ_PKT_CONTROL64(i32 %193)
  %195 = call i32 @CVM_CAST64(i64 %194)
  %196 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %197 = load i32, i32* %3, align 4
  %198 = call i64 @CN23XX_SLI_IQ_PKT_CONTROL64(i32 %197)
  %199 = call i64 @octeon_read_csr64(%struct.octeon_device* %196, i64 %198)
  %200 = call i32 @CVM_CAST64(i64 %199)
  %201 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %191, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %192, i32 %195, i32 %200)
  br label %202

202:                                              ; preds = %187
  %203 = load i32, i32* %3, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %3, align 4
  br label %183

205:                                              ; preds = %183
  %206 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %207 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %206, i32 0, i32 0
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i64, i64* @CN23XX_SLI_OQ_WMARK, align 8
  %211 = call i32 @CVM_CAST64(i64 %210)
  %212 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %213 = load i64, i64* @CN23XX_SLI_OQ_WMARK, align 8
  %214 = call i64 @octeon_read_csr64(%struct.octeon_device* %212, i64 %213)
  %215 = call i32 @CVM_CAST64(i64 %214)
  %216 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %209, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %211, i32 %215)
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %250, %205
  %218 = load i32, i32* %3, align 4
  %219 = load i32, i32* @CN23XX_MAX_OUTPUT_QUEUES, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %253

221:                                              ; preds = %217
  %222 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %223 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %222, i32 0, i32 0
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  %226 = load i32, i32* %3, align 4
  %227 = load i32, i32* %3, align 4
  %228 = call i64 @CN23XX_SLI_OQ_PKT_CONTROL(i32 %227)
  %229 = call i32 @CVM_CAST64(i64 %228)
  %230 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %231 = load i32, i32* %3, align 4
  %232 = call i64 @CN23XX_SLI_OQ_PKT_CONTROL(i32 %231)
  %233 = call i64 @octeon_read_csr(%struct.octeon_device* %230, i64 %232)
  %234 = call i32 @CVM_CAST64(i64 %233)
  %235 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %225, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 %226, i32 %229, i32 %234)
  %236 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %237 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %236, i32 0, i32 0
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  %240 = load i32, i32* %3, align 4
  %241 = load i32, i32* %3, align 4
  %242 = call i64 @CN23XX_SLI_OQ_PKT_INT_LEVELS(i32 %241)
  %243 = call i32 @CVM_CAST64(i64 %242)
  %244 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %245 = load i32, i32* %3, align 4
  %246 = call i64 @CN23XX_SLI_OQ_PKT_INT_LEVELS(i32 %245)
  %247 = call i64 @octeon_read_csr64(%struct.octeon_device* %244, i64 %246)
  %248 = call i32 @CVM_CAST64(i64 %247)
  %249 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %239, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %240, i32 %243, i32 %248)
  br label %250

250:                                              ; preds = %221
  %251 = load i32, i32* %3, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %3, align 4
  br label %217

253:                                              ; preds = %217
  %254 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %255 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %254, i32 0, i32 0
  %256 = load %struct.TYPE_2__*, %struct.TYPE_2__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 0
  %258 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %5, align 8
  %259 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @CVM_CAST64(i64 %260)
  %262 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %5, align 8
  %263 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = call i64 @readq(i64 %264)
  %266 = call i32 @CVM_CAST64(i64 %265)
  %267 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %257, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 %261, i32 %266)
  %268 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %269 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %268, i32 0, i32 0
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  %272 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %5, align 8
  %273 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @CVM_CAST64(i64 %274)
  %276 = load %struct.octeon_cn23xx_pf*, %struct.octeon_cn23xx_pf** %5, align 8
  %277 = getelementptr inbounds %struct.octeon_cn23xx_pf, %struct.octeon_cn23xx_pf* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = call i64 @readq(i64 %278)
  %280 = call i32 @CVM_CAST64(i64 %279)
  %281 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %271, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 %275, i32 %280)
  store i32 0, i32* %3, align 4
  br label %282

282:                                              ; preds = %343, %253
  %283 = load i32, i32* %3, align 4
  %284 = load i32, i32* @CN23XX_MAX_INPUT_QUEUES, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %346

286:                                              ; preds = %282
  %287 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %288 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %287, i32 0, i32 0
  %289 = load %struct.TYPE_2__*, %struct.TYPE_2__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 0
  %291 = load i32, i32* %3, align 4
  %292 = load i32, i32* %3, align 4
  %293 = call i64 @CN23XX_SLI_IQ_BASE_ADDR64(i32 %292)
  %294 = call i32 @CVM_CAST64(i64 %293)
  %295 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %296 = load i32, i32* %3, align 4
  %297 = call i64 @CN23XX_SLI_IQ_BASE_ADDR64(i32 %296)
  %298 = call i64 @octeon_read_csr64(%struct.octeon_device* %295, i64 %297)
  %299 = call i32 @CVM_CAST64(i64 %298)
  %300 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %290, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i32 %291, i32 %294, i32 %299)
  %301 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %302 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %301, i32 0, i32 0
  %303 = load %struct.TYPE_2__*, %struct.TYPE_2__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 0
  %305 = load i32, i32* %3, align 4
  %306 = load i32, i32* %3, align 4
  %307 = call i64 @CN23XX_SLI_IQ_SIZE(i32 %306)
  %308 = call i32 @CVM_CAST64(i64 %307)
  %309 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %310 = load i32, i32* %3, align 4
  %311 = call i64 @CN23XX_SLI_IQ_SIZE(i32 %310)
  %312 = call i64 @octeon_read_csr(%struct.octeon_device* %309, i64 %311)
  %313 = call i32 @CVM_CAST64(i64 %312)
  %314 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %304, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32 %305, i32 %308, i32 %313)
  %315 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %316 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %315, i32 0, i32 0
  %317 = load %struct.TYPE_2__*, %struct.TYPE_2__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i32 0, i32 0
  %319 = load i32, i32* %3, align 4
  %320 = load i32, i32* %3, align 4
  %321 = call i64 @CN23XX_SLI_IQ_DOORBELL(i32 %320)
  %322 = call i32 @CVM_CAST64(i64 %321)
  %323 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %324 = load i32, i32* %3, align 4
  %325 = call i64 @CN23XX_SLI_IQ_DOORBELL(i32 %324)
  %326 = call i64 @octeon_read_csr64(%struct.octeon_device* %323, i64 %325)
  %327 = call i32 @CVM_CAST64(i64 %326)
  %328 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %318, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 %319, i32 %322, i32 %327)
  %329 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %330 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %329, i32 0, i32 0
  %331 = load %struct.TYPE_2__*, %struct.TYPE_2__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 0
  %333 = load i32, i32* %3, align 4
  %334 = load i32, i32* %3, align 4
  %335 = call i64 @CN23XX_SLI_IQ_INSTR_COUNT64(i32 %334)
  %336 = call i32 @CVM_CAST64(i64 %335)
  %337 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %338 = load i32, i32* %3, align 4
  %339 = call i64 @CN23XX_SLI_IQ_INSTR_COUNT64(i32 %338)
  %340 = call i64 @octeon_read_csr64(%struct.octeon_device* %337, i64 %339)
  %341 = call i32 @CVM_CAST64(i64 %340)
  %342 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %332, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i32 %333, i32 %336, i32 %341)
  br label %343

343:                                              ; preds = %286
  %344 = load i32, i32* %3, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %3, align 4
  br label %282

346:                                              ; preds = %282
  store i32 0, i32* %3, align 4
  br label %347

347:                                              ; preds = %422, %346
  %348 = load i32, i32* %3, align 4
  %349 = load i32, i32* @CN23XX_MAX_OUTPUT_QUEUES, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %425

351:                                              ; preds = %347
  %352 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %353 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %352, i32 0, i32 0
  %354 = load %struct.TYPE_2__*, %struct.TYPE_2__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i32 0, i32 0
  %356 = load i32, i32* %3, align 4
  %357 = load i32, i32* %3, align 4
  %358 = call i64 @CN23XX_SLI_OQ_BASE_ADDR64(i32 %357)
  %359 = call i32 @CVM_CAST64(i64 %358)
  %360 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %361 = load i32, i32* %3, align 4
  %362 = call i64 @CN23XX_SLI_OQ_BASE_ADDR64(i32 %361)
  %363 = call i64 @octeon_read_csr64(%struct.octeon_device* %360, i64 %362)
  %364 = call i32 @CVM_CAST64(i64 %363)
  %365 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %355, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0), i32 %356, i32 %359, i32 %364)
  %366 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %367 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %366, i32 0, i32 0
  %368 = load %struct.TYPE_2__*, %struct.TYPE_2__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %368, i32 0, i32 0
  %370 = load i32, i32* %3, align 4
  %371 = load i32, i32* %3, align 4
  %372 = call i64 @CN23XX_SLI_OQ_SIZE(i32 %371)
  %373 = call i32 @CVM_CAST64(i64 %372)
  %374 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %375 = load i32, i32* %3, align 4
  %376 = call i64 @CN23XX_SLI_OQ_SIZE(i32 %375)
  %377 = call i64 @octeon_read_csr(%struct.octeon_device* %374, i64 %376)
  %378 = call i32 @CVM_CAST64(i64 %377)
  %379 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %369, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 %370, i32 %373, i32 %378)
  %380 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %381 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %380, i32 0, i32 0
  %382 = load %struct.TYPE_2__*, %struct.TYPE_2__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %382, i32 0, i32 0
  %384 = load i32, i32* %3, align 4
  %385 = load i32, i32* %3, align 4
  %386 = call i64 @CN23XX_SLI_OQ_BUFF_INFO_SIZE(i32 %385)
  %387 = call i32 @CVM_CAST64(i64 %386)
  %388 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %389 = load i32, i32* %3, align 4
  %390 = call i64 @CN23XX_SLI_OQ_BUFF_INFO_SIZE(i32 %389)
  %391 = call i64 @octeon_read_csr(%struct.octeon_device* %388, i64 %390)
  %392 = call i32 @CVM_CAST64(i64 %391)
  %393 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %383, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), i32 %384, i32 %387, i32 %392)
  %394 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %395 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %394, i32 0, i32 0
  %396 = load %struct.TYPE_2__*, %struct.TYPE_2__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %396, i32 0, i32 0
  %398 = load i32, i32* %3, align 4
  %399 = load i32, i32* %3, align 4
  %400 = call i64 @CN23XX_SLI_OQ_PKTS_SENT(i32 %399)
  %401 = call i32 @CVM_CAST64(i64 %400)
  %402 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %403 = load i32, i32* %3, align 4
  %404 = call i64 @CN23XX_SLI_OQ_PKTS_SENT(i32 %403)
  %405 = call i64 @octeon_read_csr64(%struct.octeon_device* %402, i64 %404)
  %406 = call i32 @CVM_CAST64(i64 %405)
  %407 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %397, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i32 %398, i32 %401, i32 %406)
  %408 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %409 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %408, i32 0, i32 0
  %410 = load %struct.TYPE_2__*, %struct.TYPE_2__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %410, i32 0, i32 0
  %412 = load i32, i32* %3, align 4
  %413 = load i32, i32* %3, align 4
  %414 = call i64 @CN23XX_SLI_OQ_PKTS_CREDIT(i32 %413)
  %415 = call i32 @CVM_CAST64(i64 %414)
  %416 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %417 = load i32, i32* %3, align 4
  %418 = call i64 @CN23XX_SLI_OQ_PKTS_CREDIT(i32 %417)
  %419 = call i64 @octeon_read_csr64(%struct.octeon_device* %416, i64 %418)
  %420 = call i32 @CVM_CAST64(i64 %419)
  %421 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %411, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0), i32 %412, i32 %415, i32 %420)
  br label %422

422:                                              ; preds = %351
  %423 = load i32, i32* %3, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %3, align 4
  br label %347

425:                                              ; preds = %347
  %426 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %427 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %426, i32 0, i32 0
  %428 = load %struct.TYPE_2__*, %struct.TYPE_2__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %428, i32 0, i32 0
  %430 = load i64, i64* @CN23XX_SLI_PKT_TIME_INT, align 8
  %431 = call i32 @CVM_CAST64(i64 %430)
  %432 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %433 = load i64, i64* @CN23XX_SLI_PKT_TIME_INT, align 8
  %434 = call i64 @octeon_read_csr64(%struct.octeon_device* %432, i64 %433)
  %435 = call i32 @CVM_CAST64(i64 %434)
  %436 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %429, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i32 %431, i32 %435)
  %437 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %438 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %437, i32 0, i32 0
  %439 = load %struct.TYPE_2__*, %struct.TYPE_2__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %439, i32 0, i32 0
  %441 = load i64, i64* @CN23XX_SLI_PKT_CNT_INT, align 8
  %442 = call i32 @CVM_CAST64(i64 %441)
  %443 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %444 = load i64, i64* @CN23XX_SLI_PKT_CNT_INT, align 8
  %445 = call i64 @octeon_read_csr64(%struct.octeon_device* %443, i64 %444)
  %446 = call i32 @CVM_CAST64(i64 %445)
  %447 = call i32 (i32*, i8*, i8*, i32, i32, ...) @dev_dbg(i32* %440, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 %442, i32 %446)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @CVM_CAST64(i64) #1

declare dso_local i64 @octeon_read_csr64(%struct.octeon_device*, i64) #1

declare dso_local i32 @lio_pci_readq(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_DPI_DMA_ENG_ENB(i32) #1

declare dso_local i32 @CN23XX_DPI_DMA_ENG_BUF(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_2__*, i64, i64*) #1

declare dso_local i32 @CN23XX_DPI_SLI_PRTX_CFG(i32) #1

declare dso_local i64 @CN23XX_SLI_S2M_PORTX_CTL(i32) #1

declare dso_local i64 @CN23XX_SLI_PKT_MAC_RINFO64(i32, i32) #1

declare dso_local i64 @CN23XX_SLI_IQ_PKT_CONTROL64(i32) #1

declare dso_local i64 @CN23XX_SLI_OQ_PKT_CONTROL(i32) #1

declare dso_local i64 @octeon_read_csr(%struct.octeon_device*, i64) #1

declare dso_local i64 @CN23XX_SLI_OQ_PKT_INT_LEVELS(i32) #1

declare dso_local i64 @readq(i64) #1

declare dso_local i64 @CN23XX_SLI_IQ_BASE_ADDR64(i32) #1

declare dso_local i64 @CN23XX_SLI_IQ_SIZE(i32) #1

declare dso_local i64 @CN23XX_SLI_IQ_DOORBELL(i32) #1

declare dso_local i64 @CN23XX_SLI_IQ_INSTR_COUNT64(i32) #1

declare dso_local i64 @CN23XX_SLI_OQ_BASE_ADDR64(i32) #1

declare dso_local i64 @CN23XX_SLI_OQ_SIZE(i32) #1

declare dso_local i64 @CN23XX_SLI_OQ_BUFF_INFO_SIZE(i32) #1

declare dso_local i64 @CN23XX_SLI_OQ_PKTS_SENT(i32) #1

declare dso_local i64 @CN23XX_SLI_OQ_PKTS_CREDIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
