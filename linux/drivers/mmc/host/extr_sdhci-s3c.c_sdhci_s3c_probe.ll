; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i64 }
%struct.s3c_sdhci_platdata = type { i32, i64, i32, i32, i32, i32 (%struct.platform_device*, i32)* }
%struct.sdhci_s3c_drv_data = type { i32, i64 }
%struct.sdhci_host = type { i8*, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, %struct.sdhci_host* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sdhci_s3c = type { i32, i32, %struct.sdhci_host*, i64, i32*, %struct.sdhci_host**, %struct.s3c_sdhci_platdata*, %struct.platform_device*, %struct.sdhci_host* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"no device data specified\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"sdhci_alloc_host() failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"hsmmc\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to get io clock\0A\00", align 1
@MAX_BUS_CLK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"mmc_busclk.%d\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"clock source %d: %s (%ld Hz)\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to find any bus clocks\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"samsung-hsmmc\00", align 1
@sdhci_s3c_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC = common dso_local global i32 0, align 4
@SDHCI_QUIRK_NO_HISPD_BIT = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_DMA = common dso_local global i32 0, align 4
@SDHCI_QUIRK_NO_BUSY_IRQ = common dso_local global i32 0, align 4
@SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12 = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_ADMA_ZEROLEN_DESC = common dso_local global i32 0, align 4
@S3C_SDHCI_CD_NONE = common dso_local global i64 0, align 8
@S3C_SDHCI_CD_PERMANENT = common dso_local global i64 0, align 8
@SDHCI_QUIRK_BROKEN_CARD_DETECTION = common dso_local global i32 0, align 4
@MMC_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@SDHCI_QUIRK_32BIT_DMA_ADDR = common dso_local global i32 0, align 4
@SDHCI_QUIRK_32BIT_DMA_SIZE = common dso_local global i32 0, align 4
@SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK = common dso_local global i32 0, align 4
@sdhci_cmu_set_clock = common dso_local global i32 0, align 4
@sdhci_cmu_get_min_clock = common dso_local global i32 0, align 4
@sdhci_cmu_get_max_clock = common dso_local global i32 0, align 4
@S3C_SDHCI_CD_INTERNAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_s3c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_s3c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.s3c_sdhci_platdata*, align 8
  %5 = alloca %struct.sdhci_s3c_drv_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.sdhci_host*, align 8
  %8 = alloca %struct.sdhci_s3c*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [14 x i8], align 1
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %441

33:                                               ; preds = %22, %1
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i32 @platform_get_irq(%struct.platform_device* %34, i32 0)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %2, align 4
  br label %441

40:                                               ; preds = %33
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call %struct.sdhci_host* @sdhci_alloc_host(%struct.device* %41, i32 64)
  store %struct.sdhci_host* %42, %struct.sdhci_host** %7, align 8
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %44 = call i64 @IS_ERR(%struct.sdhci_host* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %50 = call i32 @PTR_ERR(%struct.sdhci_host* %49)
  store i32 %50, i32* %2, align 4
  br label %441

51:                                               ; preds = %40
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %53 = call %struct.sdhci_s3c* @sdhci_priv(%struct.sdhci_host* %52)
  store %struct.sdhci_s3c* %53, %struct.sdhci_s3c** %8, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.s3c_sdhci_platdata* @devm_kzalloc(%struct.device* %55, i32 40, i32 %56)
  store %struct.s3c_sdhci_platdata* %57, %struct.s3c_sdhci_platdata** %4, align 8
  %58 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %59 = icmp ne %struct.s3c_sdhci_platdata* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %437

63:                                               ; preds = %51
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %73 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %74 = call i32 @sdhci_s3c_parse_dt(%struct.device* %71, %struct.sdhci_host* %72, %struct.s3c_sdhci_platdata* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %437

78:                                               ; preds = %69
  br label %88

79:                                               ; preds = %63
  %80 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.device, %struct.device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @memcpy(%struct.s3c_sdhci_platdata* %80, i32 %84, i32 40)
  %86 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %87 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %86, i32 0, i32 0
  store i32 -1, i32* %87, align 8
  br label %88

88:                                               ; preds = %79, %78
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = call %struct.sdhci_s3c_drv_data* @sdhci_s3c_get_driver_data(%struct.platform_device* %89)
  store %struct.sdhci_s3c_drv_data* %90, %struct.sdhci_s3c_drv_data** %5, align 8
  %91 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %92 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %93 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %92, i32 0, i32 8
  store %struct.sdhci_host* %91, %struct.sdhci_host** %93, align 8
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %96 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %95, i32 0, i32 7
  store %struct.platform_device* %94, %struct.platform_device** %96, align 8
  %97 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %98 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %99 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %98, i32 0, i32 6
  store %struct.s3c_sdhci_platdata* %97, %struct.s3c_sdhci_platdata** %99, align 8
  %100 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %101 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %100, i32 0, i32 1
  store i32 -1, i32* %101, align 4
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %104 = call i32 @platform_set_drvdata(%struct.platform_device* %102, %struct.sdhci_host* %103)
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = call i8* @devm_clk_get(%struct.device* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %107 = bitcast i8* %106 to %struct.sdhci_host*
  %108 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %109 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %108, i32 0, i32 2
  store %struct.sdhci_host* %107, %struct.sdhci_host** %109, align 8
  %110 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %111 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %110, i32 0, i32 2
  %112 = load %struct.sdhci_host*, %struct.sdhci_host** %111, align 8
  %113 = call i64 @IS_ERR(%struct.sdhci_host* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %88
  %116 = load %struct.device*, %struct.device** %6, align 8
  %117 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %118 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %119 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %118, i32 0, i32 2
  %120 = load %struct.sdhci_host*, %struct.sdhci_host** %119, align 8
  %121 = call i32 @PTR_ERR(%struct.sdhci_host* %120)
  store i32 %121, i32* %10, align 4
  br label %437

122:                                              ; preds = %88
  %123 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %124 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %123, i32 0, i32 2
  %125 = load %struct.sdhci_host*, %struct.sdhci_host** %124, align 8
  %126 = call i32 @clk_prepare_enable(%struct.sdhci_host* %125)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %183, %122
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @MAX_BUS_CLK, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %186

131:                                              ; preds = %127
  %132 = getelementptr inbounds [14 x i8], [14 x i8]* %14, i64 0, i64 0
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @snprintf(i8* %132, i32 14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  %135 = load %struct.device*, %struct.device** %6, align 8
  %136 = getelementptr inbounds [14 x i8], [14 x i8]* %14, i64 0, i64 0
  %137 = call i8* @devm_clk_get(%struct.device* %135, i8* %136)
  %138 = bitcast i8* %137 to %struct.sdhci_host*
  %139 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %140 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %139, i32 0, i32 5
  %141 = load %struct.sdhci_host**, %struct.sdhci_host*** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.sdhci_host*, %struct.sdhci_host** %141, i64 %143
  store %struct.sdhci_host* %138, %struct.sdhci_host** %144, align 8
  %145 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %146 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %145, i32 0, i32 5
  %147 = load %struct.sdhci_host**, %struct.sdhci_host*** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.sdhci_host*, %struct.sdhci_host** %147, i64 %149
  %151 = load %struct.sdhci_host*, %struct.sdhci_host** %150, align 8
  %152 = call i64 @IS_ERR(%struct.sdhci_host* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %131
  br label %183

155:                                              ; preds = %131
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  %158 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %159 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %158, i32 0, i32 5
  %160 = load %struct.sdhci_host**, %struct.sdhci_host*** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.sdhci_host*, %struct.sdhci_host** %160, i64 %162
  %164 = load %struct.sdhci_host*, %struct.sdhci_host** %163, align 8
  %165 = call i32 @clk_get_rate(%struct.sdhci_host* %164)
  %166 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %167 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %166, i32 0, i32 4
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %165, i32* %171, align 4
  %172 = load %struct.device*, %struct.device** %6, align 8
  %173 = load i32, i32* %12, align 4
  %174 = getelementptr inbounds [14 x i8], [14 x i8]* %14, i64 0, i64 0
  %175 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %176 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %175, i32 0, i32 4
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @dev_info(%struct.device* %172, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %173, i8* %174, i32 %181)
  br label %183

183:                                              ; preds = %155, %154
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %12, align 4
  br label %127

186:                                              ; preds = %127
  %187 = load i32, i32* %13, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load %struct.device*, %struct.device** %6, align 8
  %191 = call i32 @dev_err(%struct.device* %190, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %192 = load i32, i32* @ENOENT, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %10, align 4
  br label %432

194:                                              ; preds = %186
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = load i32, i32* @IORESOURCE_MEM, align 4
  %197 = call %struct.resource* @platform_get_resource(%struct.platform_device* %195, i32 %196, i32 0)
  store %struct.resource* %197, %struct.resource** %9, align 8
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 0
  %200 = load %struct.resource*, %struct.resource** %9, align 8
  %201 = call %struct.sdhci_host* @devm_ioremap_resource(%struct.device* %199, %struct.resource* %200)
  %202 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %203 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %202, i32 0, i32 6
  store %struct.sdhci_host* %201, %struct.sdhci_host** %203, align 8
  %204 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %205 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %204, i32 0, i32 6
  %206 = load %struct.sdhci_host*, %struct.sdhci_host** %205, align 8
  %207 = call i64 @IS_ERR(%struct.sdhci_host* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %194
  %210 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %211 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %210, i32 0, i32 6
  %212 = load %struct.sdhci_host*, %struct.sdhci_host** %211, align 8
  %213 = call i32 @PTR_ERR(%struct.sdhci_host* %212)
  store i32 %213, i32* %10, align 4
  br label %428

214:                                              ; preds = %194
  %215 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %216 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %215, i32 0, i32 5
  %217 = load i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*, i32)** %216, align 8
  %218 = icmp ne i32 (%struct.platform_device*, i32)* %217, null
  br i1 %218, label %219, label %228

219:                                              ; preds = %214
  %220 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %221 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %220, i32 0, i32 5
  %222 = load i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*, i32)** %221, align 8
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %225 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 %222(%struct.platform_device* %223, i32 %226)
  br label %228

228:                                              ; preds = %219, %214
  %229 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %230 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %229, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %230, align 8
  %231 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %232 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %231, i32 0, i32 5
  store %struct.TYPE_3__* @sdhci_s3c_ops, %struct.TYPE_3__** %232, align 8
  %233 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %234 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %233, i32 0, i32 1
  store i32 0, i32* %234, align 8
  %235 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %236 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %235, i32 0, i32 4
  store i64 0, i64* %236, align 8
  %237 = load i32, i32* %11, align 4
  %238 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %239 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %238, i32 0, i32 2
  store i32 %237, i32* %239, align 4
  %240 = load i32, i32* @SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC, align 4
  %241 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %242 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 8
  %245 = load i32, i32* @SDHCI_QUIRK_NO_HISPD_BIT, align 4
  %246 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %247 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  %250 = load %struct.sdhci_s3c_drv_data*, %struct.sdhci_s3c_drv_data** %5, align 8
  %251 = icmp ne %struct.sdhci_s3c_drv_data* %250, null
  br i1 %251, label %252, label %265

252:                                              ; preds = %228
  %253 = load %struct.sdhci_s3c_drv_data*, %struct.sdhci_s3c_drv_data** %5, align 8
  %254 = getelementptr inbounds %struct.sdhci_s3c_drv_data, %struct.sdhci_s3c_drv_data* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %257 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 8
  %260 = load %struct.sdhci_s3c_drv_data*, %struct.sdhci_s3c_drv_data** %5, align 8
  %261 = getelementptr inbounds %struct.sdhci_s3c_drv_data, %struct.sdhci_s3c_drv_data* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %264 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %263, i32 0, i32 3
  store i64 %262, i64* %264, align 8
  br label %265

265:                                              ; preds = %252, %228
  %266 = load i32, i32* @SDHCI_QUIRK_BROKEN_DMA, align 4
  %267 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %268 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  %271 = load i32, i32* @SDHCI_QUIRK_NO_BUSY_IRQ, align 4
  %272 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %273 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 8
  %276 = load i32, i32* @SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12, align 4
  %277 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %278 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = or i32 %279, %276
  store i32 %280, i32* %278, align 8
  %281 = load i32, i32* @SDHCI_QUIRK_BROKEN_ADMA_ZEROLEN_DESC, align 4
  %282 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %283 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 8
  %286 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %287 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @S3C_SDHCI_CD_NONE, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %297, label %291

291:                                              ; preds = %265
  %292 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %293 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @S3C_SDHCI_CD_PERMANENT, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %303

297:                                              ; preds = %291, %265
  %298 = load i32, i32* @SDHCI_QUIRK_BROKEN_CARD_DETECTION, align 4
  %299 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %300 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = or i32 %301, %298
  store i32 %302, i32* %300, align 8
  br label %303

303:                                              ; preds = %297, %291
  %304 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %305 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @S3C_SDHCI_CD_PERMANENT, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %315

309:                                              ; preds = %303
  %310 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %311 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %312 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %311, i32 0, i32 3
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  store i32 %310, i32* %314, align 4
  br label %315

315:                                              ; preds = %309, %303
  %316 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %317 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  switch i32 %318, label %335 [
    i32 8, label %319
    i32 4, label %327
  ]

319:                                              ; preds = %315
  %320 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %321 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %322 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %321, i32 0, i32 3
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = or i32 %325, %320
  store i32 %326, i32* %324, align 4
  br label %327

327:                                              ; preds = %315, %319
  %328 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %329 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %330 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %329, i32 0, i32 3
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %328
  store i32 %334, i32* %332, align 4
  br label %335

335:                                              ; preds = %315, %327
  %336 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %337 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %350

340:                                              ; preds = %335
  %341 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %342 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %345 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %344, i32 0, i32 3
  %346 = load %struct.TYPE_4__*, %struct.TYPE_4__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = or i32 %348, %343
  store i32 %349, i32* %347, align 4
  br label %350

350:                                              ; preds = %340, %335
  %351 = load i32, i32* @SDHCI_QUIRK_32BIT_DMA_ADDR, align 4
  %352 = load i32, i32* @SDHCI_QUIRK_32BIT_DMA_SIZE, align 4
  %353 = or i32 %351, %352
  %354 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %355 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 8
  %357 = or i32 %356, %353
  store i32 %357, i32* %355, align 8
  %358 = load i32, i32* @SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK, align 4
  %359 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %360 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = or i32 %361, %358
  store i32 %362, i32* %360, align 8
  %363 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %364 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %363, i32 0, i32 3
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %350
  %368 = load i32, i32* @sdhci_cmu_set_clock, align 4
  store i32 %368, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sdhci_s3c_ops, i32 0, i32 2), align 4
  %369 = load i32, i32* @sdhci_cmu_get_min_clock, align 4
  store i32 %369, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sdhci_s3c_ops, i32 0, i32 1), align 4
  %370 = load i32, i32* @sdhci_cmu_get_max_clock, align 4
  store i32 %370, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sdhci_s3c_ops, i32 0, i32 0), align 4
  br label %371

371:                                              ; preds = %367, %350
  %372 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %373 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %386

376:                                              ; preds = %371
  %377 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %378 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %381 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %380, i32 0, i32 3
  %382 = load %struct.TYPE_4__*, %struct.TYPE_4__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = or i32 %384, %379
  store i32 %385, i32* %383, align 4
  br label %386

386:                                              ; preds = %376, %371
  %387 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %388 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %387, i32 0, i32 4
  %389 = load i32, i32* %388, align 8
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %401

391:                                              ; preds = %386
  %392 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %4, align 8
  %393 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %392, i32 0, i32 4
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %396 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %395, i32 0, i32 3
  %397 = load %struct.TYPE_4__*, %struct.TYPE_4__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 4
  %400 = or i32 %399, %394
  store i32 %400, i32* %398, align 4
  br label %401

401:                                              ; preds = %391, %386
  %402 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %403 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %402, i32 0, i32 0
  %404 = call i32 @pm_runtime_enable(%struct.device* %403)
  %405 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %406 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %405, i32 0, i32 0
  %407 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %406, i32 50)
  %408 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %409 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %408, i32 0, i32 0
  %410 = call i32 @pm_runtime_use_autosuspend(%struct.device* %409)
  %411 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %412 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %411, i32 0, i32 0
  %413 = call i32 @pm_suspend_ignore_children(%struct.device* %412, i32 1)
  %414 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %415 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %414, i32 0, i32 3
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** %415, align 8
  %417 = call i32 @mmc_of_parse(%struct.TYPE_4__* %416)
  store i32 %417, i32* %10, align 4
  %418 = load i32, i32* %10, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %401
  br label %428

421:                                              ; preds = %401
  %422 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %423 = call i32 @sdhci_add_host(%struct.sdhci_host* %422)
  store i32 %423, i32* %10, align 4
  %424 = load i32, i32* %10, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %421
  br label %428

427:                                              ; preds = %421
  store i32 0, i32* %2, align 4
  br label %441

428:                                              ; preds = %426, %420, %209
  %429 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %430 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %429, i32 0, i32 0
  %431 = call i32 @pm_runtime_disable(%struct.device* %430)
  br label %432

432:                                              ; preds = %428, %189
  %433 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %8, align 8
  %434 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %433, i32 0, i32 2
  %435 = load %struct.sdhci_host*, %struct.sdhci_host** %434, align 8
  %436 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %435)
  br label %437

437:                                              ; preds = %432, %115, %77, %60
  %438 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %439 = call i32 @sdhci_free_host(%struct.sdhci_host* %438)
  %440 = load i32, i32* %10, align 4
  store i32 %440, i32* %2, align 4
  br label %441

441:                                              ; preds = %437, %427, %46, %38, %28
  %442 = load i32, i32* %2, align 4
  ret i32 %442
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.sdhci_host* @sdhci_alloc_host(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_s3c* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.s3c_sdhci_platdata* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @sdhci_s3c_parse_dt(%struct.device*, %struct.sdhci_host*, %struct.s3c_sdhci_platdata*) #1

declare dso_local i32 @memcpy(%struct.s3c_sdhci_platdata*, i32, i32) #1

declare dso_local %struct.sdhci_s3c_drv_data* @sdhci_s3c_get_driver_data(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sdhci_host*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @clk_get_rate(%struct.sdhci_host*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i8*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.sdhci_host* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_suspend_ignore_children(%struct.device*, i32) #1

declare dso_local i32 @mmc_of_parse(%struct.TYPE_4__*) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_free_host(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
