; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_firmware_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_firmware_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_fw_request = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.firmware* }
%struct.TYPE_14__ = type { i32, i8* }
%struct.firmware = type { i32 }
%struct.brcmf_bus = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.brcmf_sdio_dev* }
%struct.brcmf_sdio_dev = type { %struct.TYPE_19__*, %struct.TYPE_18__*, i32, i32, %struct.TYPE_17__*, %struct.brcmf_sdio* }
%struct.TYPE_19__ = type { %struct.device }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32*, i32 }
%struct.brcmf_sdio = type { i32, i64, i32, %struct.TYPE_12__*, i32, %struct.TYPE_16__, %struct.brcmf_core* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.brcmf_core = type { i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Enter: dev=%s, err=%d\0A\00", align 1
@BRCMF_SDIO_FW_CODE = common dso_local global i64 0, align 8
@BRCMF_SDIO_FW_NVRAM = common dso_local global i64 0, align 8
@CLK_AVAIL = common dso_local global i64 0, align 8
@SBSDIO_FUNC1_CHIPCLKCSR = common dso_local global i32 0, align 4
@SBSDIO_HT_AVAIL_REQ = common dso_local global i32 0, align 4
@SBSDIO_FORCE_HT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to force clock for F2: err %d\0A\00", align 1
@tosbmailboxdata = common dso_local global i32 0, align 4
@SDPCM_PROT_VERSION = common dso_local global i32 0, align 4
@SMB_DATA_VERSION_SHIFT = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"enable F2: err=%d\0A\00", align 1
@HOSTINTMASK = common dso_local global i32 0, align 4
@hostintmask = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"set F2 watermark to 0x%x*4 bytes\0A\00", align 1
@CY_4373_F2_WATERMARK = common dso_local global i32 0, align 4
@SBSDIO_WATERMARK = common dso_local global i32 0, align 4
@SBSDIO_DEVICE_CTL = common dso_local global i32 0, align 4
@SBSDIO_DEVCTL_F2WM_ENAB = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_MESBUSYCTRL = common dso_local global i32 0, align 4
@SBSDIO_MESBUSYCTRL_ENAB = common dso_local global i32 0, align 4
@CY_43012_F2_WATERMARK = common dso_local global i32 0, align 4
@DEFAULT_F2_WATERMARK = common dso_local global i32 0, align 4
@BRCMF_SDIOD_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"intr register failed:%d\0A\00", align 1
@CLK_NONE = common dso_local global i64 0, align 8
@brcmf_sdio_bus_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"brcmf_alloc failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"brcmf_attach failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"failed: dev=%s, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, %struct.brcmf_fw_request*)* @brcmf_sdio_firmware_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_sdio_firmware_callback(%struct.device* %0, i32 %1, %struct.brcmf_fw_request* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_fw_request*, align 8
  %7 = alloca %struct.brcmf_bus*, align 8
  %8 = alloca %struct.brcmf_sdio_dev*, align 8
  %9 = alloca %struct.brcmf_sdio*, align 8
  %10 = alloca %struct.brcmf_core*, align 8
  %11 = alloca %struct.firmware*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.brcmf_fw_request* %2, %struct.brcmf_fw_request** %6, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call %struct.brcmf_bus* @dev_get_drvdata(%struct.device* %17)
  store %struct.brcmf_bus* %18, %struct.brcmf_bus** %7, align 8
  %19 = load %struct.brcmf_bus*, %struct.brcmf_bus** %7, align 8
  %20 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %21, align 8
  store %struct.brcmf_sdio_dev* %22, %struct.brcmf_sdio_dev** %8, align 8
  %23 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %24 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %23, i32 0, i32 5
  %25 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %24, align 8
  store %struct.brcmf_sdio* %25, %struct.brcmf_sdio** %9, align 8
  %26 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %27 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %26, i32 0, i32 6
  %28 = load %struct.brcmf_core*, %struct.brcmf_core** %27, align 8
  store %struct.brcmf_core* %28, %struct.brcmf_core** %10, align 8
  %29 = load i32, i32* @TRACE, align 4
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_name(%struct.device* %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %330

37:                                               ; preds = %3
  %38 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %6, align 8
  %39 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %38, i32 0, i32 0
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = load i64, i64* @BRCMF_SDIO_FW_CODE, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load %struct.firmware*, %struct.firmware** %43, align 8
  store %struct.firmware* %44, %struct.firmware** %11, align 8
  %45 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %6, align 8
  %46 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = load i64, i64* @BRCMF_SDIO_FW_NVRAM, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %12, align 8
  %53 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %6, align 8
  %54 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %53, i32 0, i32 0
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = load i64, i64* @BRCMF_SDIO_FW_NVRAM, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %13, align 4
  %61 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %6, align 8
  %62 = call i32 @kfree(%struct.brcmf_fw_request* %61)
  %63 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %64 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %66 = load %struct.firmware*, %struct.firmware** %11, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @brcmf_sdio_download_firmware(%struct.brcmf_sdio* %65, %struct.firmware* %66, i8* %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %37
  br label %330

73:                                               ; preds = %37
  %74 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %75 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %77 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %80 = call i32 @brcmf_sdio_wd_timer(%struct.brcmf_sdio* %79, i32 1)
  %81 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %82 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %81, i32 0, i32 1
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = call i32 @sdio_claim_host(%struct.TYPE_18__* %83)
  %85 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %86 = load i64, i64* @CLK_AVAIL, align 8
  %87 = call i32 @brcmf_sdio_clkctl(%struct.brcmf_sdio* %85, i64 %86, i32 0)
  %88 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %89 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CLK_AVAIL, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %73
  br label %325

94:                                               ; preds = %73
  %95 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %96 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %97 = call i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev* %95, i32 %96, i32* %5)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %15, align 4
  %102 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %103 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %102, i32 0, i32 3
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = call i64 @brcmf_chip_is_ulp(%struct.TYPE_12__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @SBSDIO_HT_AVAIL_REQ, align 4
  br label %111

109:                                              ; preds = %100
  %110 = load i32, i32* @SBSDIO_FORCE_HT, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load i32, i32* %15, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %15, align 4
  %115 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %116 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %115, i32 %116, i32 %117, i32* %5)
  br label %119

119:                                              ; preds = %111, %94
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %5, align 4
  %124 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  br label %325

125:                                              ; preds = %119
  %126 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %127 = load %struct.brcmf_core*, %struct.brcmf_core** %10, align 8
  %128 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* @tosbmailboxdata, align 4
  %131 = call i64 @SD_REG(i32 %130)
  %132 = add nsw i64 %129, %131
  %133 = load i32, i32* @SDPCM_PROT_VERSION, align 4
  %134 = load i32, i32* @SMB_DATA_VERSION_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = call i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev* %126, i64 %132, i32 %135, i32* null)
  %137 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %138 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %137, i32 0, i32 0
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = call i32 @sdio_enable_func(%struct.TYPE_19__* %139)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* @INFO, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %141, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %214, label %146

146:                                              ; preds = %125
  %147 = load i32, i32* @HOSTINTMASK, align 4
  %148 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %149 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %151 = load %struct.brcmf_core*, %struct.brcmf_core** %10, align 8
  %152 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* @hostintmask, align 4
  %155 = call i64 @SD_REG(i32 %154)
  %156 = add nsw i64 %153, %155
  %157 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %158 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev* %150, i64 %156, i32 %159, i32* null)
  %161 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %162 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %161, i32 0, i32 1
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  switch i32 %165, label %208 [
    i32 128, label %166
    i32 129, label %190
  ]

166:                                              ; preds = %146
  %167 = load i32, i32* @INFO, align 4
  %168 = load i32, i32* @CY_4373_F2_WATERMARK, align 4
  %169 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %167, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %168)
  %170 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %171 = load i32, i32* @SBSDIO_WATERMARK, align 4
  %172 = load i32, i32* @CY_4373_F2_WATERMARK, align 4
  %173 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %170, i32 %171, i32 %172, i32* %5)
  %174 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %175 = load i32, i32* @SBSDIO_DEVICE_CTL, align 4
  %176 = call i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev* %174, i32 %175, i32* %5)
  store i32 %176, i32* %16, align 4
  %177 = load i32, i32* @SBSDIO_DEVCTL_F2WM_ENAB, align 4
  %178 = load i32, i32* %16, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %16, align 4
  %180 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %181 = load i32, i32* @SBSDIO_DEVICE_CTL, align 4
  %182 = load i32, i32* %16, align 4
  %183 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %180, i32 %181, i32 %182, i32* %5)
  %184 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %185 = load i32, i32* @SBSDIO_FUNC1_MESBUSYCTRL, align 4
  %186 = load i32, i32* @CY_4373_F2_WATERMARK, align 4
  %187 = load i32, i32* @SBSDIO_MESBUSYCTRL_ENAB, align 4
  %188 = or i32 %186, %187
  %189 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %184, i32 %185, i32 %188, i32* %5)
  br label %213

190:                                              ; preds = %146
  %191 = load i32, i32* @INFO, align 4
  %192 = load i32, i32* @CY_43012_F2_WATERMARK, align 4
  %193 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %191, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %192)
  %194 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %195 = load i32, i32* @SBSDIO_WATERMARK, align 4
  %196 = load i32, i32* @CY_43012_F2_WATERMARK, align 4
  %197 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %194, i32 %195, i32 %196, i32* %5)
  %198 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %199 = load i32, i32* @SBSDIO_DEVICE_CTL, align 4
  %200 = call i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev* %198, i32 %199, i32* %5)
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* @SBSDIO_DEVCTL_F2WM_ENAB, align 4
  %202 = load i32, i32* %16, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %16, align 4
  %204 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %205 = load i32, i32* @SBSDIO_DEVICE_CTL, align 4
  %206 = load i32, i32* %16, align 4
  %207 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %204, i32 %205, i32 %206, i32* %5)
  br label %213

208:                                              ; preds = %146
  %209 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %210 = load i32, i32* @SBSDIO_WATERMARK, align 4
  %211 = load i32, i32* @DEFAULT_F2_WATERMARK, align 4
  %212 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %209, i32 %210, i32 %211, i32* %5)
  br label %213

213:                                              ; preds = %208, %190, %166
  br label %219

214:                                              ; preds = %125
  %215 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %216 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %215, i32 0, i32 0
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %216, align 8
  %218 = call i32 @sdio_disable_func(%struct.TYPE_19__* %217)
  br label %322

219:                                              ; preds = %213
  %220 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %221 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %220, i32 0, i32 3
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %221, align 8
  %223 = call i64 @brcmf_chip_sr_capable(%struct.TYPE_12__* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %219
  %226 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %227 = call i32 @brcmf_sdio_sr_init(%struct.brcmf_sdio* %226)
  br label %233

228:                                              ; preds = %219
  %229 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %230 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %229, i32 %230, i32 %231, i32* %5)
  br label %233

233:                                              ; preds = %228, %225
  %234 = load i32, i32* %5, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %250

236:                                              ; preds = %233
  %237 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %238 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @BRCMF_SDIOD_DATA, align 4
  %241 = call i32 @brcmf_sdiod_change_state(i32 %239, i32 %240)
  %242 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %243 = call i32 @brcmf_sdiod_intr_register(%struct.brcmf_sdio_dev* %242)
  store i32 %243, i32* %5, align 4
  %244 = load i32, i32* %5, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %236
  %247 = load i32, i32* %5, align 4
  %248 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %247)
  br label %249

249:                                              ; preds = %246, %236
  br label %250

250:                                              ; preds = %249, %233
  %251 = load i32, i32* %5, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %255 = load i64, i64* @CLK_NONE, align 8
  %256 = call i32 @brcmf_sdio_clkctl(%struct.brcmf_sdio* %254, i64 %255, i32 0)
  br label %322

257:                                              ; preds = %250
  %258 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %259 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %258, i32 0, i32 1
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %259, align 8
  %261 = call i32 @sdio_release_host(%struct.TYPE_18__* %260)
  %262 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %263 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %266 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %265, i32 0, i32 4
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 3
  store i32 %264, i32* %268, align 8
  %269 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %270 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %269, i32 0, i32 4
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 2
  store i32* @brcmf_sdio_bus_ops, i32** %272, align 8
  %273 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %274 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %273, i32 0, i32 3
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %279 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %278, i32 0, i32 4
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 1
  store i32 %277, i32* %281, align 4
  %282 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %283 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %282, i32 0, i32 3
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %288 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %287, i32 0, i32 4
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 0
  store i32 %286, i32* %290, align 8
  %291 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %292 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %295 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @brcmf_alloc(i32 %293, i32 %296)
  store i32 %297, i32* %5, align 4
  %298 = load i32, i32* %5, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %257
  %301 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %317

302:                                              ; preds = %257
  %303 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %304 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @brcmf_attach(i32 %305)
  store i32 %306, i32* %5, align 4
  %307 = load i32, i32* %5, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %302
  %310 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %312

311:                                              ; preds = %302
  br label %343

312:                                              ; preds = %309
  %313 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %314 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @brcmf_free(i32 %315)
  br label %317

317:                                              ; preds = %312, %300
  %318 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %319 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %318, i32 0, i32 1
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %319, align 8
  %321 = call i32 @sdio_claim_host(%struct.TYPE_18__* %320)
  br label %322

322:                                              ; preds = %317, %253, %214
  %323 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %9, align 8
  %324 = call i32 @brcmf_sdio_checkdied(%struct.brcmf_sdio* %323)
  br label %325

325:                                              ; preds = %322, %122, %93
  %326 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %327 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %326, i32 0, i32 1
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %327, align 8
  %329 = call i32 @sdio_release_host(%struct.TYPE_18__* %328)
  br label %330

330:                                              ; preds = %325, %72, %36
  %331 = load i32, i32* @TRACE, align 4
  %332 = load %struct.device*, %struct.device** %4, align 8
  %333 = call i32 @dev_name(%struct.device* %332)
  %334 = load i32, i32* %5, align 4
  %335 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %331, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %333, i32 %334)
  %336 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  %337 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %336, i32 0, i32 0
  %338 = load %struct.TYPE_19__*, %struct.TYPE_19__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %338, i32 0, i32 0
  %340 = call i32 @device_release_driver(%struct.device* %339)
  %341 = load %struct.device*, %struct.device** %4, align 8
  %342 = call i32 @device_release_driver(%struct.device* %341)
  br label %343

343:                                              ; preds = %330, %311
  ret void
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @kfree(%struct.brcmf_fw_request*) #1

declare dso_local i32 @brcmf_sdio_download_firmware(%struct.brcmf_sdio*, %struct.firmware*, i8*, i32) #1

declare dso_local i32 @brcmf_sdio_wd_timer(%struct.brcmf_sdio*, i32) #1

declare dso_local i32 @sdio_claim_host(%struct.TYPE_18__*) #1

declare dso_local i32 @brcmf_sdio_clkctl(%struct.brcmf_sdio*, i64, i32) #1

declare dso_local i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev*, i32, i32*) #1

declare dso_local i64 @brcmf_chip_is_ulp(%struct.TYPE_12__*) #1

declare dso_local i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev*, i32, i32, i32*) #1

declare dso_local i32 @brcmf_err(i8*, ...) #1

declare dso_local i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev*, i64, i32, i32*) #1

declare dso_local i64 @SD_REG(i32) #1

declare dso_local i32 @sdio_enable_func(%struct.TYPE_19__*) #1

declare dso_local i32 @sdio_disable_func(%struct.TYPE_19__*) #1

declare dso_local i64 @brcmf_chip_sr_capable(%struct.TYPE_12__*) #1

declare dso_local i32 @brcmf_sdio_sr_init(%struct.brcmf_sdio*) #1

declare dso_local i32 @brcmf_sdiod_change_state(i32, i32) #1

declare dso_local i32 @brcmf_sdiod_intr_register(%struct.brcmf_sdio_dev*) #1

declare dso_local i32 @sdio_release_host(%struct.TYPE_18__*) #1

declare dso_local i32 @brcmf_alloc(i32, i32) #1

declare dso_local i32 @brcmf_attach(i32) #1

declare dso_local i32 @brcmf_free(i32) #1

declare dso_local i32 @brcmf_sdio_checkdied(%struct.brcmf_sdio*) #1

declare dso_local i32 @device_release_driver(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
