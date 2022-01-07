; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32* }
%struct.msdc_host = type { i64, i32, i32, %struct.TYPE_20__, %struct.TYPE_18__*, i32, i32, i8*, %struct.TYPE_19__*, i32, i32*, %struct.mmc_host*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_20__ = type { i32, i8*, i32, i8* }
%struct.TYPE_19__ = type { i32, i64, i64 }
%struct.resource = type { i32 }
%struct.TYPE_21__ = type { i8** }

@.str = private unnamed_addr constant [13 x i8] c"No DT found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"bus_clk\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"source_cg\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Cannot find pinctrl!\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Cannot find pinctrl default!\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"state_uhs\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Cannot find pinctrl uhs!\0A\00", align 1
@mt_msdc_ops = common dso_local global i32 0, align 4
@MMC_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@MMC_CAP2_SDIO_IRQ_NOTHREAD = common dso_local global i32 0, align 4
@MMC_CAP_ERASE = common dso_local global i32 0, align 4
@MMC_CAP_CMD23 = common dso_local global i32 0, align 4
@MAX_BD_NUM = common dso_local global i32 0, align 4
@BDMA_DESC_BUFLEN_EXT = common dso_local global i32 0, align 4
@BDMA_DESC_BUFLEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@msdc_request_timeout = common dso_local global i32 0, align 4
@msdc_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_NONE = common dso_local global i32 0, align 4
@MTK_MMC_AUTOSUSPEND_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @msdc_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdc_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.msdc_host*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(%struct.TYPE_18__* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %512

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.mmc_host* @mmc_alloc_host(i32 168, %struct.TYPE_18__* %21)
  store %struct.mmc_host* %22, %struct.mmc_host** %4, align 8
  %23 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %24 = icmp ne %struct.mmc_host* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %512

28:                                               ; preds = %19
  %29 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %30 = call %struct.msdc_host* @mmc_priv(%struct.mmc_host* %29)
  store %struct.msdc_host* %30, %struct.msdc_host** %5, align 8
  %31 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %32 = call i32 @mmc_of_parse(%struct.mmc_host* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %508

36:                                               ; preds = %28
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load i32, i32* @IORESOURCE_MEM, align 4
  %39 = call %struct.resource* @platform_get_resource(%struct.platform_device* %37, i32 %38, i32 0)
  store %struct.resource* %39, %struct.resource** %6, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.resource*, %struct.resource** %6, align 8
  %43 = call i8* @devm_ioremap_resource(%struct.TYPE_18__* %41, %struct.resource* %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %46 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %45, i32 0, i32 19
  store i32* %44, i32** %46, align 8
  %47 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %48 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %47, i32 0, i32 19
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @IS_ERR(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %36
  %53 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %54 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %53, i32 0, i32 19
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @PTR_ERR(i32* %55)
  store i32 %56, i32* %7, align 4
  br label %508

57:                                               ; preds = %36
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load i32, i32* @IORESOURCE_MEM, align 4
  %60 = call %struct.resource* @platform_get_resource(%struct.platform_device* %58, i32 %59, i32 1)
  store %struct.resource* %60, %struct.resource** %6, align 8
  %61 = load %struct.resource*, %struct.resource** %6, align 8
  %62 = icmp ne %struct.resource* %61, null
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.resource*, %struct.resource** %6, align 8
  %67 = call i8* @devm_ioremap_resource(%struct.TYPE_18__* %65, %struct.resource* %66)
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %70 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %69, i32 0, i32 18
  store i32* %68, i32** %70, align 8
  %71 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %72 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %71, i32 0, i32 18
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @IS_ERR(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %63
  %77 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %78 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %77, i32 0, i32 18
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %76, %63
  br label %80

80:                                               ; preds = %79, %57
  %81 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %82 = call i32 @mmc_regulator_get_supply(%struct.mmc_host* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %508

86:                                               ; preds = %80
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i8* @devm_clk_get(%struct.TYPE_18__* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %92 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %91, i32 0, i32 10
  store i32* %90, i32** %92, align 8
  %93 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %94 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %93, i32 0, i32 10
  %95 = load i32*, i32** %94, align 8
  %96 = call i64 @IS_ERR(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %86
  %99 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %100 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %99, i32 0, i32 10
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @PTR_ERR(i32* %101)
  store i32 %102, i32* %7, align 4
  br label %508

103:                                              ; preds = %86
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i8* @devm_clk_get(%struct.TYPE_18__* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %109 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %108, i32 0, i32 17
  store i32* %107, i32** %109, align 8
  %110 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %111 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %110, i32 0, i32 17
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @IS_ERR(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %103
  %116 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %117 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %116, i32 0, i32 17
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @PTR_ERR(i32* %118)
  store i32 %119, i32* %7, align 4
  br label %508

120:                                              ; preds = %103
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i8* @devm_clk_get(%struct.TYPE_18__* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %126 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %125, i32 0, i32 16
  store i32* %124, i32** %126, align 8
  %127 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %128 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %127, i32 0, i32 16
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @IS_ERR(i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %120
  %133 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %134 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %133, i32 0, i32 16
  store i32* null, i32** %134, align 8
  br label %135

135:                                              ; preds = %132, %120
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i8* @devm_clk_get(%struct.TYPE_18__* %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %139 = bitcast i8* %138 to i32*
  %140 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %141 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %140, i32 0, i32 15
  store i32* %139, i32** %141, align 8
  %142 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %143 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %142, i32 0, i32 15
  %144 = load i32*, i32** %143, align 8
  %145 = call i64 @IS_ERR(i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %135
  %148 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %149 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %148, i32 0, i32 15
  store i32* null, i32** %149, align 8
  br label %150

150:                                              ; preds = %147, %135
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = call i64 @platform_get_irq(%struct.platform_device* %151, i32 0)
  %153 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %154 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %156 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp slt i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %150
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %7, align 4
  br label %508

162:                                              ; preds = %150
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = call i32* @devm_pinctrl_get(%struct.TYPE_18__* %164)
  %166 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %167 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %166, i32 0, i32 13
  store i32* %165, i32** %167, align 8
  %168 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %169 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %168, i32 0, i32 13
  %170 = load i32*, i32** %169, align 8
  %171 = call i64 @IS_ERR(i32* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %162
  %174 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %175 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %174, i32 0, i32 13
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @PTR_ERR(i32* %176)
  store i32 %177, i32* %7, align 4
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = call i32 @dev_err(%struct.TYPE_18__* %179, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %508

181:                                              ; preds = %162
  %182 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %183 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %182, i32 0, i32 13
  %184 = load i32*, i32** %183, align 8
  %185 = call i8* @pinctrl_lookup_state(i32* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %186 = bitcast i8* %185 to i32*
  %187 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %188 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %187, i32 0, i32 14
  store i32* %186, i32** %188, align 8
  %189 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %190 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %189, i32 0, i32 14
  %191 = load i32*, i32** %190, align 8
  %192 = call i64 @IS_ERR(i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %181
  %195 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %196 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %195, i32 0, i32 14
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @PTR_ERR(i32* %197)
  store i32 %198, i32* %7, align 4
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = call i32 @dev_err(%struct.TYPE_18__* %200, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %508

202:                                              ; preds = %181
  %203 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %204 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %203, i32 0, i32 13
  %205 = load i32*, i32** %204, align 8
  %206 = call i8* @pinctrl_lookup_state(i32* %205, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %207 = bitcast i8* %206 to i32*
  %208 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %209 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %208, i32 0, i32 12
  store i32* %207, i32** %209, align 8
  %210 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %211 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %210, i32 0, i32 12
  %212 = load i32*, i32** %211, align 8
  %213 = call i64 @IS_ERR(i32* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %202
  %216 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %217 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %216, i32 0, i32 12
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @PTR_ERR(i32* %218)
  store i32 %219, i32* %7, align 4
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = call i32 @dev_err(%struct.TYPE_18__* %221, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %508

223:                                              ; preds = %202
  %224 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %225 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %226 = call i32 @msdc_of_property_parse(%struct.platform_device* %224, %struct.msdc_host* %225)
  %227 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %228 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %227, i32 0, i32 0
  %229 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %230 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %229, i32 0, i32 4
  store %struct.TYPE_18__* %228, %struct.TYPE_18__** %230, align 8
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %231, i32 0, i32 0
  %233 = call %struct.TYPE_19__* @of_device_get_match_data(%struct.TYPE_18__* %232)
  %234 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %235 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %234, i32 0, i32 8
  store %struct.TYPE_19__* %233, %struct.TYPE_19__** %235, align 8
  %236 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %237 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %238 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %237, i32 0, i32 11
  store %struct.mmc_host* %236, %struct.mmc_host** %238, align 8
  %239 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %240 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %239, i32 0, i32 10
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @clk_get_rate(i32* %241)
  %243 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %244 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %243, i32 0, i32 9
  store i32 %242, i32* %244, align 8
  %245 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %246 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %245, i32 0, i32 8
  store i32* @mt_msdc_ops, i32** %246, align 8
  %247 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %248 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %247, i32 0, i32 8
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp eq i32 %251, 8
  br i1 %252, label %253, label %260

253:                                              ; preds = %223
  %254 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %255 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %254, i32 0, i32 9
  %256 = load i32, i32* %255, align 8
  %257 = call i8* @DIV_ROUND_UP(i32 %256, i32 1020)
  %258 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %259 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %258, i32 0, i32 7
  store i8* %257, i8** %259, align 8
  br label %267

260:                                              ; preds = %223
  %261 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %262 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %261, i32 0, i32 9
  %263 = load i32, i32* %262, align 8
  %264 = call i8* @DIV_ROUND_UP(i32 %263, i32 16380)
  %265 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %266 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %265, i32 0, i32 7
  store i8* %264, i8** %266, align 8
  br label %267

267:                                              ; preds = %260, %253
  %268 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %269 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %288, label %274

274:                                              ; preds = %267
  %275 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %276 = call i32 @mmc_can_gpio_cd(%struct.mmc_host* %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %288, label %278

278:                                              ; preds = %274
  %279 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %280 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %279, i32 0, i32 8
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %278
  %286 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %287 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %286, i32 0, i32 1
  store i32 1, i32* %287, align 8
  br label %288

288:                                              ; preds = %285, %278, %274, %267
  %289 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %290 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %288
  %296 = load i32, i32* @MMC_CAP2_SDIO_IRQ_NOTHREAD, align 4
  %297 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %298 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 8
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 8
  br label %301

301:                                              ; preds = %295, %288
  %302 = load i32, i32* @MMC_CAP_ERASE, align 4
  %303 = load i32, i32* @MMC_CAP_CMD23, align 4
  %304 = or i32 %302, %303
  %305 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %306 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 8
  %309 = load i32, i32* @MAX_BD_NUM, align 4
  %310 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %311 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 4
  %312 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %313 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %312, i32 0, i32 8
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %301
  %319 = load i32, i32* @BDMA_DESC_BUFLEN_EXT, align 4
  %320 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %321 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %320, i32 0, i32 5
  store i32 %319, i32* %321, align 4
  br label %326

322:                                              ; preds = %301
  %323 = load i32, i32* @BDMA_DESC_BUFLEN, align 4
  %324 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %325 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %324, i32 0, i32 5
  store i32 %323, i32* %325, align 4
  br label %326

326:                                              ; preds = %322, %318
  %327 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %328 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %327, i32 0, i32 2
  store i32 2048, i32* %328, align 8
  %329 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %330 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %329, i32 0, i32 3
  store i32 524288, i32* %330, align 4
  %331 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %332 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = sdiv i32 %333, 512
  %335 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %336 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %335, i32 0, i32 4
  store i32 %334, i32* %336, align 8
  %337 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %338 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %337, i32 0, i32 8
  %339 = load %struct.TYPE_19__*, %struct.TYPE_19__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %326
  %344 = call i8* @DMA_BIT_MASK(i32 36)
  %345 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %346 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %345, i32 0, i32 7
  store i8* %344, i8** %346, align 8
  br label %351

347:                                              ; preds = %326
  %348 = call i8* @DMA_BIT_MASK(i32 32)
  %349 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %350 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %349, i32 0, i32 7
  store i8* %348, i8** %350, align 8
  br label %351

351:                                              ; preds = %347, %343
  %352 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %353 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %352, i32 0, i32 7
  %354 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %355 = call %struct.TYPE_21__* @mmc_dev(%struct.mmc_host* %354)
  %356 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %355, i32 0, i32 0
  store i8** %353, i8*** %356, align 8
  %357 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %358 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %357, i32 0, i32 2
  store i32 3145728, i32* %358, align 4
  %359 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %360 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %359, i32 0, i32 0
  %361 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %362 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %361, i32 0, i32 3
  %363 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %362, i32 0, i32 2
  %364 = load i32, i32* @GFP_KERNEL, align 4
  %365 = call i8* @dma_alloc_coherent(%struct.TYPE_18__* %360, i32 8, i32* %363, i32 %364)
  %366 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %367 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %367, i32 0, i32 3
  store i8* %365, i8** %368, align 8
  %369 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %370 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %369, i32 0, i32 0
  %371 = load i32, i32* @MAX_BD_NUM, align 4
  %372 = sext i32 %371 to i64
  %373 = mul i64 %372, 4
  %374 = trunc i64 %373 to i32
  %375 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %376 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %375, i32 0, i32 3
  %377 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %376, i32 0, i32 0
  %378 = load i32, i32* @GFP_KERNEL, align 4
  %379 = call i8* @dma_alloc_coherent(%struct.TYPE_18__* %370, i32 %374, i32* %377, i32 %378)
  %380 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %381 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %381, i32 0, i32 1
  store i8* %379, i8** %382, align 8
  %383 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %384 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %383, i32 0, i32 3
  %385 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %384, i32 0, i32 3
  %386 = load i8*, i8** %385, align 8
  %387 = icmp ne i8* %386, null
  br i1 %387, label %388, label %394

388:                                              ; preds = %351
  %389 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %390 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %389, i32 0, i32 3
  %391 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %390, i32 0, i32 1
  %392 = load i8*, i8** %391, align 8
  %393 = icmp ne i8* %392, null
  br i1 %393, label %397, label %394

394:                                              ; preds = %388, %351
  %395 = load i32, i32* @ENOMEM, align 4
  %396 = sub nsw i32 0, %395
  store i32 %396, i32* %7, align 4
  br label %467

397:                                              ; preds = %388
  %398 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %399 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %400 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %399, i32 0, i32 3
  %401 = call i32 @msdc_init_gpd_bd(%struct.msdc_host* %398, %struct.TYPE_20__* %400)
  %402 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %403 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %402, i32 0, i32 6
  %404 = load i32, i32* @msdc_request_timeout, align 4
  %405 = call i32 @INIT_DELAYED_WORK(i32* %403, i32 %404)
  %406 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %407 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %406, i32 0, i32 5
  %408 = call i32 @spin_lock_init(i32* %407)
  %409 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %410 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %411 = call i32 @platform_set_drvdata(%struct.platform_device* %409, %struct.mmc_host* %410)
  %412 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %413 = call i32 @msdc_ungate_clock(%struct.msdc_host* %412)
  %414 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %415 = call i32 @msdc_init_hw(%struct.msdc_host* %414)
  %416 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %417 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %416, i32 0, i32 0
  %418 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %419 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = load i32, i32* @msdc_irq, align 4
  %422 = load i32, i32* @IRQF_TRIGGER_NONE, align 4
  %423 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %424 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %427 = call i32 @devm_request_irq(%struct.TYPE_18__* %417, i64 %420, i32 %421, i32 %422, i32 %425, %struct.msdc_host* %426)
  store i32 %427, i32* %7, align 4
  %428 = load i32, i32* %7, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %397
  br label %460

431:                                              ; preds = %397
  %432 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %433 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %432, i32 0, i32 4
  %434 = load %struct.TYPE_18__*, %struct.TYPE_18__** %433, align 8
  %435 = call i32 @pm_runtime_set_active(%struct.TYPE_18__* %434)
  %436 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %437 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %436, i32 0, i32 4
  %438 = load %struct.TYPE_18__*, %struct.TYPE_18__** %437, align 8
  %439 = load i32, i32* @MTK_MMC_AUTOSUSPEND_DELAY, align 4
  %440 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_18__* %438, i32 %439)
  %441 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %442 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %441, i32 0, i32 4
  %443 = load %struct.TYPE_18__*, %struct.TYPE_18__** %442, align 8
  %444 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_18__* %443)
  %445 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %446 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %445, i32 0, i32 4
  %447 = load %struct.TYPE_18__*, %struct.TYPE_18__** %446, align 8
  %448 = call i32 @pm_runtime_enable(%struct.TYPE_18__* %447)
  %449 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %450 = call i32 @mmc_add_host(%struct.mmc_host* %449)
  store i32 %450, i32* %7, align 4
  %451 = load i32, i32* %7, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %431
  br label %455

454:                                              ; preds = %431
  store i32 0, i32* %2, align 4
  br label %512

455:                                              ; preds = %453
  %456 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %457 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %456, i32 0, i32 4
  %458 = load %struct.TYPE_18__*, %struct.TYPE_18__** %457, align 8
  %459 = call i32 @pm_runtime_disable(%struct.TYPE_18__* %458)
  br label %460

460:                                              ; preds = %455, %430
  %461 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %462 = call i32 @platform_set_drvdata(%struct.platform_device* %461, %struct.mmc_host* null)
  %463 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %464 = call i32 @msdc_deinit_hw(%struct.msdc_host* %463)
  %465 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %466 = call i32 @msdc_gate_clock(%struct.msdc_host* %465)
  br label %467

467:                                              ; preds = %460, %394
  %468 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %469 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %468, i32 0, i32 3
  %470 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %469, i32 0, i32 3
  %471 = load i8*, i8** %470, align 8
  %472 = icmp ne i8* %471, null
  br i1 %472, label %473, label %485

473:                                              ; preds = %467
  %474 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %475 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %474, i32 0, i32 0
  %476 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %477 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %476, i32 0, i32 3
  %478 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %477, i32 0, i32 3
  %479 = load i8*, i8** %478, align 8
  %480 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %481 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %480, i32 0, i32 3
  %482 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %481, i32 0, i32 2
  %483 = load i32, i32* %482, align 8
  %484 = call i32 @dma_free_coherent(%struct.TYPE_18__* %475, i32 8, i8* %479, i32 %483)
  br label %485

485:                                              ; preds = %473, %467
  %486 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %487 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %486, i32 0, i32 3
  %488 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %487, i32 0, i32 1
  %489 = load i8*, i8** %488, align 8
  %490 = icmp ne i8* %489, null
  br i1 %490, label %491, label %507

491:                                              ; preds = %485
  %492 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %493 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %492, i32 0, i32 0
  %494 = load i32, i32* @MAX_BD_NUM, align 4
  %495 = sext i32 %494 to i64
  %496 = mul i64 %495, 4
  %497 = trunc i64 %496 to i32
  %498 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %499 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %498, i32 0, i32 3
  %500 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %499, i32 0, i32 1
  %501 = load i8*, i8** %500, align 8
  %502 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %503 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %502, i32 0, i32 3
  %504 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = call i32 @dma_free_coherent(%struct.TYPE_18__* %493, i32 %497, i8* %501, i32 %505)
  br label %507

507:                                              ; preds = %491, %485
  br label %508

508:                                              ; preds = %507, %215, %194, %173, %159, %115, %98, %85, %52, %35
  %509 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %510 = call i32 @mmc_free_host(%struct.mmc_host* %509)
  %511 = load i32, i32* %7, align 4
  store i32 %511, i32* %2, align 4
  br label %512

512:                                              ; preds = %508, %454, %25, %13
  %513 = load i32, i32* %2, align 4
  ret i32 %513
}

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*) #1

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, %struct.TYPE_18__*) #1

declare dso_local %struct.msdc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_of_parse(%struct.mmc_host*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_18__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mmc_regulator_get_supply(%struct.mmc_host*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_18__*, i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32* @devm_pinctrl_get(%struct.TYPE_18__*) #1

declare dso_local i8* @pinctrl_lookup_state(i32*, i8*) #1

declare dso_local i32 @msdc_of_property_parse(%struct.platform_device*, %struct.msdc_host*) #1

declare dso_local %struct.TYPE_19__* @of_device_get_match_data(%struct.TYPE_18__*) #1

declare dso_local i32 @clk_get_rate(i32*) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mmc_can_gpio_cd(%struct.mmc_host*) #1

declare dso_local i8* @DMA_BIT_MASK(i32) #1

declare dso_local %struct.TYPE_21__* @mmc_dev(%struct.mmc_host*) #1

declare dso_local i8* @dma_alloc_coherent(%struct.TYPE_18__*, i32, i32*, i32) #1

declare dso_local i32 @msdc_init_gpd_bd(%struct.msdc_host*, %struct.TYPE_20__*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mmc_host*) #1

declare dso_local i32 @msdc_ungate_clock(%struct.msdc_host*) #1

declare dso_local i32 @msdc_init_hw(%struct.msdc_host*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_18__*, i64, i32, i32, i32, %struct.msdc_host*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_18__*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_18__*) #1

declare dso_local i32 @msdc_deinit_hw(%struct.msdc_host*) #1

declare dso_local i32 @msdc_gate_clock(%struct.msdc_host*) #1

declare dso_local i32 @dma_free_coherent(%struct.TYPE_18__*, i32, i8*, i32) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
