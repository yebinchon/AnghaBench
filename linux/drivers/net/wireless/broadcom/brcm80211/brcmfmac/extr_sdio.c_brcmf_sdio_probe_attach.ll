; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_probe_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_probe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i64, i64, i32*, i32, i32, i32, i32*, i32, %struct.TYPE_14__*, i8*, %struct.brcmf_sdio_dev* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.brcmf_sdio_dev = type { i32, %struct.TYPE_15__*, %struct.TYPE_11__*, i32, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"F1 signature read @0x18000000=0x%4x\0A\00", align 1
@SI_ENUM_BASE = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_CHIPCLKCSR = common dso_local global i32 0, align 4
@BRCMF_INIT_CLKCTL1 = common dso_local global i32 0, align 4
@SBSDIO_AVBITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"ChipClkCSR access: err %d wrote 0x%02x read 0x%02x\0A\00", align 1
@brcmf_sdio_buscore_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"brcmf_chip_attach failed!\0A\00", align 1
@BCMA_CORE_SDIO_DEV = common dso_local global i32 0, align 4
@BCMA_CORE_CHIPCOMMON = common dso_local global i32 0, align 4
@BRCMF_BUSTYPE_SDIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to get device parameters\0A\00", align 1
@ALIGNMENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"error enabling KSO\0A\00", align 1
@DEFAULT_SDIO_DRIVE_STRENGTH = common dso_local global i32 0, align 4
@SDIO_CCCR_BRCM_CARDCTRL = common dso_local global i32 0, align 4
@SDIO_CCCR_BRCM_CARDCTRL_WLANRESET = common dso_local global i32 0, align 4
@pmucontrol = common dso_local global i32 0, align 4
@BCMA_CC_PMU_CTL_RES_RELOAD = common dso_local global i32 0, align 4
@BCMA_CC_PMU_CTL_RES_SHIFT = common dso_local global i32 0, align 4
@PRIOMASK = common dso_local global i64 0, align 8
@TXQLEN = common dso_local global i32 0, align 4
@MAX_HDR_READ = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MMC_PM_KEEP_POWER = common dso_local global i32 0, align 4
@MMC_PM_WAKE_SDIO_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio*)* @brcmf_sdio_probe_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_probe_attach(%struct.brcmf_sdio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_sdio*, align 8
  %4 = alloca %struct.brcmf_sdio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %11 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %10, i32 0, i32 10
  %12 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %11, align 8
  store %struct.brcmf_sdio_dev* %12, %struct.brcmf_sdio_dev** %4, align 8
  %13 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %14 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @sdio_claim_host(i32 %15)
  %17 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %18 = load i32, i32* @SI_ENUM_BASE, align 4
  %19 = call i32 @brcmf_sdiod_readl(%struct.brcmf_sdio_dev* %17, i32 %18, i32* null)
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %22 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %23 = load i32, i32* @BRCMF_INIT_CLKCTL1, align 4
  %24 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %21, i32 %22, i32 %23, i32* %6)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %29 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %30 = call i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev* %28, i32 %29, i32* %6)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %1
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SBSDIO_AVBITS, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = load i32, i32* @BRCMF_INIT_CLKCTL1, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34, %31
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @BRCMF_INIT_CLKCTL1, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  br label %285

46:                                               ; preds = %34
  %47 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %48 = call %struct.TYPE_14__* @brcmf_chip_attach(%struct.brcmf_sdio_dev* %47, i32* @brcmf_sdio_buscore_ops)
  %49 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %50 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %49, i32 0, i32 8
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %50, align 8
  %51 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %52 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %51, i32 0, i32 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = call i64 @IS_ERR(%struct.TYPE_14__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %59 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %58, i32 0, i32 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %59, align 8
  br label %285

60:                                               ; preds = %46
  %61 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %62 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %61, i32 0, i32 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = load i32, i32* @BCMA_CORE_SDIO_DEV, align 4
  %65 = call i8* @brcmf_chip_get_core(%struct.TYPE_14__* %63, i32 %64)
  %66 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %67 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %66, i32 0, i32 9
  store i8* %65, i8** %67, align 8
  %68 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %69 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %68, i32 0, i32 9
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %60
  br label %285

73:                                               ; preds = %60
  %74 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %75 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %74, i32 0, i32 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = load i32, i32* @BCMA_CORE_CHIPCOMMON, align 4
  %78 = call i8* @brcmf_chip_get_core(%struct.TYPE_14__* %76, i32 %77)
  %79 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %80 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %82 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %81, i32 0, i32 4
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %73
  br label %285

86:                                               ; preds = %73
  %87 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %88 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @BRCMF_BUSTYPE_SDIO, align 4
  %91 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %92 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %91, i32 0, i32 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %97 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %96, i32 0, i32 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call %struct.TYPE_15__* @brcmf_get_module_param(i32 %89, i32 %90, i32 %95, i32 %100)
  %102 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %103 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %102, i32 0, i32 1
  store %struct.TYPE_15__* %101, %struct.TYPE_15__** %103, align 8
  %104 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %105 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %104, i32 0, i32 1
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = icmp ne %struct.TYPE_15__* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %86
  %109 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %285

110:                                              ; preds = %86
  %111 = load i64, i64* @ALIGNMENT, align 8
  %112 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %113 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* @ALIGNMENT, align 8
  %115 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %116 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %118 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %117, i32 0, i32 1
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @ALIGNMENT, align 8
  %125 = icmp sgt i64 %123, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %110
  %127 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %128 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %127, i32 0, i32 1
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %135 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %126, %110
  %137 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %138 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %137, i32 0, i32 1
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @ALIGNMENT, align 8
  %145 = icmp sgt i64 %143, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %136
  %147 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %148 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %147, i32 0, i32 1
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %155 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %146, %136
  %157 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %158 = call i32 @brcmf_sdiod_sgtable_alloc(%struct.brcmf_sdio_dev* %157)
  %159 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %160 = call i64 @brcmf_sdio_kso_init(%struct.brcmf_sdio* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %285

164:                                              ; preds = %156
  %165 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %166 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %165, i32 0, i32 1
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %164
  %174 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %175 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %174, i32 0, i32 1
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* %9, align 4
  br label %183

181:                                              ; preds = %164
  %182 = load i32, i32* @DEFAULT_SDIO_DRIVE_STRENGTH, align 4
  store i32 %182, i32* %9, align 4
  br label %183

183:                                              ; preds = %181, %173
  %184 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %185 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %186 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %185, i32 0, i32 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @brcmf_sdio_drivestrengthinit(%struct.brcmf_sdio_dev* %184, %struct.TYPE_14__* %187, i32 %188)
  %190 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %191 = load i32, i32* @SDIO_CCCR_BRCM_CARDCTRL, align 4
  %192 = call i32 @brcmf_sdiod_func0_rb(%struct.brcmf_sdio_dev* %190, i32 %191, i32* %6)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %183
  br label %285

196:                                              ; preds = %183
  %197 = load i32, i32* @SDIO_CCCR_BRCM_CARDCTRL_WLANRESET, align 4
  %198 = load i32, i32* %8, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %8, align 4
  %200 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %201 = load i32, i32* @SDIO_CCCR_BRCM_CARDCTRL, align 4
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @brcmf_sdiod_func0_wb(%struct.brcmf_sdio_dev* %200, i32 %201, i32 %202, i32* %6)
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %196
  br label %285

207:                                              ; preds = %196
  %208 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %209 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %208, i32 0, i32 8
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %209, align 8
  %211 = call %struct.TYPE_16__* @brcmf_chip_get_pmu(%struct.TYPE_14__* %210)
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @pmucontrol, align 4
  %215 = call i32 @CORE_CC_REG(i32 %213, i32 %214)
  store i32 %215, i32* %7, align 4
  %216 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @brcmf_sdiod_readl(%struct.brcmf_sdio_dev* %216, i32 %217, i32* %6)
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %6, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %207
  br label %285

222:                                              ; preds = %207
  %223 = load i32, i32* @BCMA_CC_PMU_CTL_RES_RELOAD, align 4
  %224 = load i32, i32* @BCMA_CC_PMU_CTL_RES_SHIFT, align 4
  %225 = shl i32 %223, %224
  %226 = load i32, i32* %8, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %8, align 4
  %228 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* %8, align 4
  %231 = call i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev* %228, i32 %229, i32 %230, i32* %6)
  %232 = load i32, i32* %6, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %222
  br label %285

235:                                              ; preds = %222
  %236 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %237 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @sdio_release_host(i32 %238)
  %240 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %241 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %240, i32 0, i32 7
  %242 = load i64, i64* @PRIOMASK, align 8
  %243 = add nsw i64 %242, 1
  %244 = load i32, i32* @TXQLEN, align 4
  %245 = call i32 @brcmu_pktq_init(i32* %241, i64 %243, i32 %244)
  %246 = load i64, i64* @MAX_HDR_READ, align 8
  %247 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %248 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %246, %249
  %251 = load i32, i32* @GFP_KERNEL, align 4
  %252 = call i32* @kzalloc(i64 %250, i32 %251)
  %253 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %254 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %253, i32 0, i32 6
  store i32* %252, i32** %254, align 8
  %255 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %256 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %255, i32 0, i32 6
  %257 = load i32*, i32** %256, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %260, label %259

259:                                              ; preds = %235
  store i32 0, i32* %2, align 4
  br label %290

260:                                              ; preds = %235
  %261 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %262 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %261, i32 0, i32 6
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = ptrtoint i32* %264 to i64
  %266 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %267 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = call i64 @roundup(i64 %265, i64 %268)
  %270 = inttoptr i64 %269 to i32*
  %271 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %272 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %271, i32 0, i32 2
  store i32* %270, i32** %272, align 8
  %273 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %274 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %273, i32 0, i32 3
  store i32 1, i32* %274, align 8
  %275 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %276 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %275, i32 0, i32 4
  store i32 0, i32* %276, align 4
  %277 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %278 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %260
  %282 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %283 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %282, i32 0, i32 5
  store i32 1, i32* %283, align 8
  br label %284

284:                                              ; preds = %281, %260
  store i32 1, i32* %2, align 4
  br label %290

285:                                              ; preds = %234, %221, %206, %195, %162, %108, %85, %72, %56, %41
  %286 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %287 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @sdio_release_host(i32 %288)
  store i32 0, i32* %2, align 4
  br label %290

290:                                              ; preds = %285, %284, %259
  %291 = load i32, i32* %2, align 4
  ret i32 %291
}

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @brcmf_sdiod_readl(%struct.brcmf_sdio_dev*, i32, i32*) #1

declare dso_local i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev*, i32, i32, i32*) #1

declare dso_local i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev*, i32, i32*) #1

declare dso_local i32 @brcmf_err(i8*, ...) #1

declare dso_local %struct.TYPE_14__* @brcmf_chip_attach(%struct.brcmf_sdio_dev*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_14__*) #1

declare dso_local i8* @brcmf_chip_get_core(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_15__* @brcmf_get_module_param(i32, i32, i32, i32) #1

declare dso_local i32 @brcmf_sdiod_sgtable_alloc(%struct.brcmf_sdio_dev*) #1

declare dso_local i64 @brcmf_sdio_kso_init(%struct.brcmf_sdio*) #1

declare dso_local i32 @brcmf_sdio_drivestrengthinit(%struct.brcmf_sdio_dev*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @brcmf_sdiod_func0_rb(%struct.brcmf_sdio_dev*, i32, i32*) #1

declare dso_local i32 @brcmf_sdiod_func0_wb(%struct.brcmf_sdio_dev*, i32, i32, i32*) #1

declare dso_local i32 @CORE_CC_REG(i32, i32) #1

declare dso_local %struct.TYPE_16__* @brcmf_chip_get_pmu(%struct.TYPE_14__*) #1

declare dso_local i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev*, i32, i32, i32*) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @brcmu_pktq_init(i32*, i64, i32) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i64 @roundup(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
