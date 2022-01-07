; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_18__, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, %struct.imxmmc_platform_data* }
%struct.imxmmc_platform_data = type { i32, i32, i32 (%struct.TYPE_18__*, i32, %struct.mmc_host*)* }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_17__ = type { i32 }
%struct.mxcmci_host = type { i32, i32, i8*, i8*, %struct.TYPE_19__*, i32, %struct.mmc_host*, %struct.imxmmc_platform_data*, i32, i32, %struct.TYPE_15__, i32, i32, i32, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.resource = type { i32 }
%struct.of_device_id = type { %struct.platform_device_id* }
%struct.platform_device_id = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"i.MX/MPC512x SDHC driver\0A\00", align 1
@mxcmci_of_match = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mxcmci_ops = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"cd-gpios\00", align 1
@MMC_VDD_32_33 = common dso_local global i32 0, align 4
@MMC_VDD_33_34 = common dso_local global i32 0, align 4
@INT_CARD_INSERTION_EN = common dso_local global i32 0, align 4
@INT_CARD_REMOVAL_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"per\00", align 1
@MMC_REG_REV_NO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"wrong rev.no. 0x%08x. aborting.\0A\00", align 1
@MMC_REG_READ_TO = common dso_local global i32 0, align 4
@MMC_REG_INT_CNTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"rx-tx\00", align 1
@IORESOURCE_DMA = common dso_local global i32 0, align 4
@IMX_DMATYPE_SDHC = common dso_local global i32 0, align 4
@DMA_PRIO_LOW = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@filter = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"dma not available. Using PIO\0A\00", align 1
@mxcmci_datawork = common dso_local global i32 0, align 4
@mxcmci_irq = common dso_local global i32 0, align 4
@mxcmci_detect_irq = common dso_local global i32 0, align 4
@mxcmci_watchdog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxcmci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxcmci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mxcmci_host*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.of_device_id*, align 8
  %12 = alloca %struct.imxmmc_platform_data*, align 8
  %13 = alloca %struct.platform_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = load %struct.imxmmc_platform_data*, %struct.imxmmc_platform_data** %16, align 8
  store %struct.imxmmc_platform_data* %17, %struct.imxmmc_platform_data** %12, align 8
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @mxcmci_of_match, align 4
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.of_device_id* @of_match_device(i32 %19, %struct.TYPE_18__* %21)
  store %struct.of_device_id* %22, %struct.of_device_id** %11, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %6, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = call i32 @platform_get_irq(%struct.platform_device* %26, i32 0)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %452

32:                                               ; preds = %1
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call %struct.mmc_host* @mmc_alloc_host(i32 96, %struct.TYPE_18__* %34)
  store %struct.mmc_host* %35, %struct.mmc_host** %4, align 8
  %36 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %37 = icmp ne %struct.mmc_host* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %452

41:                                               ; preds = %32
  %42 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %43 = call %struct.mxcmci_host* @mmc_priv(%struct.mmc_host* %42)
  store %struct.mxcmci_host* %43, %struct.mxcmci_host** %5, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.resource*, %struct.resource** %6, align 8
  %47 = call i8* @devm_ioremap_resource(%struct.TYPE_18__* %45, %struct.resource* %46)
  %48 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %49 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %48, i32 0, i32 14
  store i8* %47, i8** %49, align 8
  %50 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %51 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %50, i32 0, i32 14
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %41
  %56 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %57 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %56, i32 0, i32 14
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @PTR_ERR(i8* %58)
  store i32 %59, i32* %7, align 4
  br label %448

60:                                               ; preds = %41
  %61 = load %struct.resource*, %struct.resource** %6, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %65 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %64, i32 0, i32 13
  store i32 %63, i32* %65, align 4
  %66 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %67 = call i32 @mmc_of_parse(%struct.mmc_host* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %448

71:                                               ; preds = %60
  %72 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %73 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %72, i32 0, i32 9
  store i32* @mxcmci_ops, i32** %73, align 8
  %74 = load %struct.imxmmc_platform_data*, %struct.imxmmc_platform_data** %12, align 8
  %75 = icmp ne %struct.imxmmc_platform_data* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %78 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %81 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %88

82:                                               ; preds = %71
  %83 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %84 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %85 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %76
  %89 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %90 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %89, i32 0, i32 1
  store i32 2048, i32* %90, align 4
  %91 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %92 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %91, i32 0, i32 2
  store i32 65535, i32* %92, align 8
  %93 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %94 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %97 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %95, %98
  %100 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %101 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %103 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %106 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %108 = icmp ne %struct.of_device_id* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %88
  %110 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %111 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %110, i32 0, i32 0
  %112 = load %struct.platform_device_id*, %struct.platform_device_id** %111, align 8
  store %struct.platform_device_id* %112, %struct.platform_device_id** %13, align 8
  %113 = load %struct.platform_device_id*, %struct.platform_device_id** %13, align 8
  %114 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %117 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %116, i32 0, i32 12
  store i32 %115, i32* %117, align 8
  br label %126

118:                                              ; preds = %88
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 1
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %125 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %124, i32 0, i32 12
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %118, %109
  %127 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %128 = call i32 @is_mpc512x_mmc(%struct.mxcmci_host* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %132 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %131, i32 0, i32 5
  store i32 64, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %126
  %134 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %135 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %136 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %135, i32 0, i32 6
  store %struct.mmc_host* %134, %struct.mmc_host** %136, align 8
  %137 = load %struct.imxmmc_platform_data*, %struct.imxmmc_platform_data** %12, align 8
  %138 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %139 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %138, i32 0, i32 7
  store %struct.imxmmc_platform_data* %137, %struct.imxmmc_platform_data** %139, align 8
  %140 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %141 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %140, i32 0, i32 11
  %142 = call i32 @spin_lock_init(i32* %141)
  %143 = load %struct.imxmmc_platform_data*, %struct.imxmmc_platform_data** %12, align 8
  %144 = icmp ne %struct.imxmmc_platform_data* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %133
  %146 = load %struct.imxmmc_platform_data*, %struct.imxmmc_platform_data** %12, align 8
  %147 = getelementptr inbounds %struct.imxmmc_platform_data, %struct.imxmmc_platform_data* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %9, align 4
  br label %162

149:                                              ; preds = %133
  %150 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %151 = call i64 @mmc_card_is_removable(%struct.mmc_host* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @of_property_read_bool(i32 %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %153
  store i32 1, i32* %9, align 4
  br label %161

161:                                              ; preds = %160, %153, %149
  br label %162

162:                                              ; preds = %161, %145
  %163 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %164 = call i32 @mmc_regulator_get_supply(%struct.mmc_host* %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %448

168:                                              ; preds = %162
  %169 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %170 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %194, label %173

173:                                              ; preds = %168
  %174 = load %struct.imxmmc_platform_data*, %struct.imxmmc_platform_data** %12, align 8
  %175 = icmp ne %struct.imxmmc_platform_data* %174, null
  br i1 %175, label %176, label %187

176:                                              ; preds = %173
  %177 = load %struct.imxmmc_platform_data*, %struct.imxmmc_platform_data** %12, align 8
  %178 = getelementptr inbounds %struct.imxmmc_platform_data, %struct.imxmmc_platform_data* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load %struct.imxmmc_platform_data*, %struct.imxmmc_platform_data** %12, align 8
  %183 = getelementptr inbounds %struct.imxmmc_platform_data, %struct.imxmmc_platform_data* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %186 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %185, i32 0, i32 6
  store i32 %184, i32* %186, align 8
  br label %193

187:                                              ; preds = %176, %173
  %188 = load i32, i32* @MMC_VDD_32_33, align 4
  %189 = load i32, i32* @MMC_VDD_33_34, align 4
  %190 = or i32 %188, %189
  %191 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %192 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %191, i32 0, i32 6
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %187, %181
  br label %194

194:                                              ; preds = %193, %168
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load i32, i32* @INT_CARD_INSERTION_EN, align 4
  %199 = load i32, i32* @INT_CARD_REMOVAL_EN, align 4
  %200 = or i32 %198, %199
  %201 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %202 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  br label %206

203:                                              ; preds = %194
  %204 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %205 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %204, i32 0, i32 0
  store i32 0, i32* %205, align 8
  br label %206

206:                                              ; preds = %203, %197
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = call i8* @devm_clk_get(%struct.TYPE_18__* %208, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %210 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %211 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %210, i32 0, i32 3
  store i8* %209, i8** %211, align 8
  %212 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %213 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %212, i32 0, i32 3
  %214 = load i8*, i8** %213, align 8
  %215 = call i64 @IS_ERR(i8* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %206
  %218 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %219 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %218, i32 0, i32 3
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @PTR_ERR(i8* %220)
  store i32 %221, i32* %7, align 4
  br label %448

222:                                              ; preds = %206
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %223, i32 0, i32 0
  %225 = call i8* @devm_clk_get(%struct.TYPE_18__* %224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %226 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %227 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %226, i32 0, i32 2
  store i8* %225, i8** %227, align 8
  %228 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %229 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %228, i32 0, i32 2
  %230 = load i8*, i8** %229, align 8
  %231 = call i64 @IS_ERR(i8* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %222
  %234 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %235 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %234, i32 0, i32 2
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @PTR_ERR(i8* %236)
  store i32 %237, i32* %7, align 4
  br label %448

238:                                              ; preds = %222
  %239 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %240 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %239, i32 0, i32 2
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 @clk_prepare_enable(i8* %241)
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* %7, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  br label %448

246:                                              ; preds = %238
  %247 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %248 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %247, i32 0, i32 3
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @clk_prepare_enable(i8* %249)
  store i32 %250, i32* %7, align 4
  %251 = load i32, i32* %7, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %246
  br label %443

254:                                              ; preds = %246
  %255 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %256 = call i32 @mxcmci_softreset(%struct.mxcmci_host* %255)
  %257 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %258 = load i32, i32* @MMC_REG_REV_NO, align 4
  %259 = call i32 @mxcmci_readw(%struct.mxcmci_host* %257, i32 %258)
  %260 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %261 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %260, i32 0, i32 1
  store i32 %259, i32* %261, align 4
  %262 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %263 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 1024
  br i1 %265, label %266, label %277

266:                                              ; preds = %254
  %267 = load i32, i32* @ENODEV, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %7, align 4
  %269 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %270 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %269, i32 0, i32 6
  %271 = load %struct.mmc_host*, %struct.mmc_host** %270, align 8
  %272 = call i32 @mmc_dev(%struct.mmc_host* %271)
  %273 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %274 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @dev_err(i32 %272, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %275)
  br label %438

277:                                              ; preds = %254
  %278 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %279 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %278, i32 0, i32 2
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 @clk_get_rate(i8* %280)
  %282 = ashr i32 %281, 16
  %283 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %284 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %283, i32 0, i32 7
  store i32 %282, i32* %284, align 4
  %285 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %286 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %285, i32 0, i32 2
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @clk_get_rate(i8* %287)
  %289 = ashr i32 %288, 1
  %290 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %291 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %290, i32 0, i32 8
  store i32 %289, i32* %291, align 8
  %292 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %293 = load i32, i32* @MMC_REG_READ_TO, align 4
  %294 = call i32 @mxcmci_writew(%struct.mxcmci_host* %292, i32 11700, i32 %293)
  %295 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %296 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %297 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @MMC_REG_INT_CNTR, align 4
  %300 = call i32 @mxcmci_writel(%struct.mxcmci_host* %295, i32 %298, i32 %299)
  %301 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %302 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %301, i32 0, i32 7
  %303 = load %struct.imxmmc_platform_data*, %struct.imxmmc_platform_data** %302, align 8
  %304 = icmp ne %struct.imxmmc_platform_data* %303, null
  br i1 %304, label %311, label %305

305:                                              ; preds = %277
  %306 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %307 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %306, i32 0, i32 0
  %308 = call %struct.TYPE_19__* @dma_request_slave_channel(%struct.TYPE_18__* %307, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %309 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %310 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %309, i32 0, i32 4
  store %struct.TYPE_19__* %308, %struct.TYPE_19__** %310, align 8
  br label %349

311:                                              ; preds = %277
  %312 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %313 = load i32, i32* @IORESOURCE_DMA, align 4
  %314 = call %struct.resource* @platform_get_resource(%struct.platform_device* %312, i32 %313, i32 0)
  store %struct.resource* %314, %struct.resource** %6, align 8
  %315 = load %struct.resource*, %struct.resource** %6, align 8
  %316 = icmp ne %struct.resource* %315, null
  br i1 %316, label %317, label %348

317:                                              ; preds = %311
  %318 = load %struct.resource*, %struct.resource** %6, align 8
  %319 = getelementptr inbounds %struct.resource, %struct.resource* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %322 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %321, i32 0, i32 9
  store i32 %320, i32* %322, align 4
  %323 = load i32, i32* @IMX_DMATYPE_SDHC, align 4
  %324 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %325 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %324, i32 0, i32 10
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 2
  store i32 %323, i32* %326, align 8
  %327 = load i32, i32* @DMA_PRIO_LOW, align 4
  %328 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %329 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %328, i32 0, i32 10
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 1
  store i32 %327, i32* %330, align 4
  %331 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %332 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %331, i32 0, i32 9
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %335 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %334, i32 0, i32 10
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 0
  store i32 %333, i32* %336, align 8
  %337 = load i32, i32* %10, align 4
  %338 = call i32 @dma_cap_zero(i32 %337)
  %339 = load i32, i32* @DMA_SLAVE, align 4
  %340 = load i32, i32* %10, align 4
  %341 = call i32 @dma_cap_set(i32 %339, i32 %340)
  %342 = load i32, i32* %10, align 4
  %343 = load i32, i32* @filter, align 4
  %344 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %345 = call %struct.TYPE_19__* @dma_request_channel(i32 %342, i32 %343, %struct.mxcmci_host* %344)
  %346 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %347 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %346, i32 0, i32 4
  store %struct.TYPE_19__* %345, %struct.TYPE_19__** %347, align 8
  br label %348

348:                                              ; preds = %317, %311
  br label %349

349:                                              ; preds = %348, %305
  %350 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %351 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %350, i32 0, i32 4
  %352 = load %struct.TYPE_19__*, %struct.TYPE_19__** %351, align 8
  %353 = icmp ne %struct.TYPE_19__* %352, null
  br i1 %353, label %354, label %365

354:                                              ; preds = %349
  %355 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %356 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %355, i32 0, i32 4
  %357 = load %struct.TYPE_19__*, %struct.TYPE_19__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @dma_get_max_seg_size(i32 %361)
  %363 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %364 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %363, i32 0, i32 4
  store i32 %362, i32* %364, align 8
  br label %371

365:                                              ; preds = %349
  %366 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %367 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %366, i32 0, i32 6
  %368 = load %struct.mmc_host*, %struct.mmc_host** %367, align 8
  %369 = call i32 @mmc_dev(%struct.mmc_host* %368)
  %370 = call i32 @dev_info(i32 %369, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %371

371:                                              ; preds = %365, %354
  %372 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %373 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %372, i32 0, i32 8
  %374 = load i32, i32* @mxcmci_datawork, align 4
  %375 = call i32 @INIT_WORK(i32* %373, i32 %374)
  %376 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %377 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %376, i32 0, i32 0
  %378 = load i32, i32* %8, align 4
  %379 = load i32, i32* @mxcmci_irq, align 4
  %380 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %381 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %380, i32 0, i32 0
  %382 = call i32 @dev_name(%struct.TYPE_18__* %381)
  %383 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %384 = call i32 @devm_request_irq(%struct.TYPE_18__* %377, i32 %378, i32 %379, i32 0, i32 %382, %struct.mxcmci_host* %383)
  store i32 %384, i32* %7, align 4
  %385 = load i32, i32* %7, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %371
  br label %427

388:                                              ; preds = %371
  %389 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %390 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %391 = call i32 @platform_set_drvdata(%struct.platform_device* %389, %struct.mmc_host* %390)
  %392 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %393 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %392, i32 0, i32 7
  %394 = load %struct.imxmmc_platform_data*, %struct.imxmmc_platform_data** %393, align 8
  %395 = icmp ne %struct.imxmmc_platform_data* %394, null
  br i1 %395, label %396, label %420

396:                                              ; preds = %388
  %397 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %398 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %397, i32 0, i32 7
  %399 = load %struct.imxmmc_platform_data*, %struct.imxmmc_platform_data** %398, align 8
  %400 = getelementptr inbounds %struct.imxmmc_platform_data, %struct.imxmmc_platform_data* %399, i32 0, i32 2
  %401 = load i32 (%struct.TYPE_18__*, i32, %struct.mmc_host*)*, i32 (%struct.TYPE_18__*, i32, %struct.mmc_host*)** %400, align 8
  %402 = icmp ne i32 (%struct.TYPE_18__*, i32, %struct.mmc_host*)* %401, null
  br i1 %402, label %403, label %420

403:                                              ; preds = %396
  %404 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %405 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %404, i32 0, i32 7
  %406 = load %struct.imxmmc_platform_data*, %struct.imxmmc_platform_data** %405, align 8
  %407 = getelementptr inbounds %struct.imxmmc_platform_data, %struct.imxmmc_platform_data* %406, i32 0, i32 2
  %408 = load i32 (%struct.TYPE_18__*, i32, %struct.mmc_host*)*, i32 (%struct.TYPE_18__*, i32, %struct.mmc_host*)** %407, align 8
  %409 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %410 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %409, i32 0, i32 0
  %411 = load i32, i32* @mxcmci_detect_irq, align 4
  %412 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %413 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %412, i32 0, i32 6
  %414 = load %struct.mmc_host*, %struct.mmc_host** %413, align 8
  %415 = call i32 %408(%struct.TYPE_18__* %410, i32 %411, %struct.mmc_host* %414)
  store i32 %415, i32* %7, align 4
  %416 = load i32, i32* %7, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %403
  br label %427

419:                                              ; preds = %403
  br label %420

420:                                              ; preds = %419, %396, %388
  %421 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %422 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %421, i32 0, i32 5
  %423 = load i32, i32* @mxcmci_watchdog, align 4
  %424 = call i32 @timer_setup(i32* %422, i32 %423, i32 0)
  %425 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %426 = call i32 @mmc_add_host(%struct.mmc_host* %425)
  store i32 0, i32* %2, align 4
  br label %452

427:                                              ; preds = %418, %387
  %428 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %429 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %428, i32 0, i32 4
  %430 = load %struct.TYPE_19__*, %struct.TYPE_19__** %429, align 8
  %431 = icmp ne %struct.TYPE_19__* %430, null
  br i1 %431, label %432, label %437

432:                                              ; preds = %427
  %433 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %434 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %433, i32 0, i32 4
  %435 = load %struct.TYPE_19__*, %struct.TYPE_19__** %434, align 8
  %436 = call i32 @dma_release_channel(%struct.TYPE_19__* %435)
  br label %437

437:                                              ; preds = %432, %427
  br label %438

438:                                              ; preds = %437, %266
  %439 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %440 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %439, i32 0, i32 3
  %441 = load i8*, i8** %440, align 8
  %442 = call i32 @clk_disable_unprepare(i8* %441)
  br label %443

443:                                              ; preds = %438, %253
  %444 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %445 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %444, i32 0, i32 2
  %446 = load i8*, i8** %445, align 8
  %447 = call i32 @clk_disable_unprepare(i8* %446)
  br label %448

448:                                              ; preds = %443, %245, %233, %217, %167, %70, %55
  %449 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %450 = call i32 @mmc_free_host(%struct.mmc_host* %449)
  %451 = load i32, i32* %7, align 4
  store i32 %451, i32* %2, align 4
  br label %452

452:                                              ; preds = %448, %420, %38, %30
  %453 = load i32, i32* %2, align 4
  ret i32 %453
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_18__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, %struct.TYPE_18__*) #1

declare dso_local %struct.mxcmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_18__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @mmc_of_parse(%struct.mmc_host*) #1

declare dso_local i32 @is_mpc512x_mmc(%struct.mxcmci_host*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @mmc_card_is_removable(%struct.mmc_host*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @mmc_regulator_get_supply(%struct.mmc_host*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @mxcmci_softreset(%struct.mxcmci_host*) #1

declare dso_local i32 @mxcmci_readw(%struct.mxcmci_host*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @mxcmci_writew(%struct.mxcmci_host*, i32, i32) #1

declare dso_local i32 @mxcmci_writel(%struct.mxcmci_host*, i32, i32) #1

declare dso_local %struct.TYPE_19__* @dma_request_slave_channel(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local %struct.TYPE_19__* @dma_request_channel(i32, i32, %struct.mxcmci_host*) #1

declare dso_local i32 @dma_get_max_seg_size(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_18__*, i32, i32, i32, i32, %struct.mxcmci_host*) #1

declare dso_local i32 @dev_name(%struct.TYPE_18__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mmc_host*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i32 @dma_release_channel(%struct.TYPE_19__*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
