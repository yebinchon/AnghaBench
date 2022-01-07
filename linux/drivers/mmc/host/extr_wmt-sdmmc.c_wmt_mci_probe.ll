; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_mci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_mci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.wmt_mci_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.mmc_host* }
%struct.of_device_id = type { %struct.wmt_mci_caps* }
%struct.wmt_mci_caps = type { i32, i32, i32, i32, i32, i32, i32 }

@wmt_mci_dt_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Controller capabilities data missing\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Missing SDMMC description in devicetree\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Getting IRQs failed!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to allocate mmc_host\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@wmt_mci_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"sdon-inverted\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"cd-inverted\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Failed to map IO space\0A\00", align 1
@wmt_mci_regular_isr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"sdmmc\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Register regular IRQ fail\0A\00", align 1
@wmt_mci_dma_isr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"Register DMA IRQ fail\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"DMA alloc fail\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"Error getting clock\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"WMT SDHC Controller initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wmt_mci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmt_mci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.wmt_mci_priv*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.wmt_mci_caps*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  %16 = load i32, i32* @wmt_mci_dt_ids, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.of_device_id* @of_match_device(i32 %16, %struct.TYPE_6__* %18)
  store %struct.of_device_id* %19, %struct.of_device_id** %7, align 8
  %20 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %21 = icmp ne %struct.of_device_id* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %24 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %23, i32 0, i32 0
  %25 = load %struct.wmt_mci_caps*, %struct.wmt_mci_caps** %24, align 8
  %26 = icmp ne %struct.wmt_mci_caps* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(%struct.TYPE_6__* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EFAULT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %275

33:                                               ; preds = %22
  %34 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %35 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %34, i32 0, i32 0
  %36 = load %struct.wmt_mci_caps*, %struct.wmt_mci_caps** %35, align 8
  store %struct.wmt_mci_caps* %36, %struct.wmt_mci_caps** %8, align 8
  %37 = load %struct.device_node*, %struct.device_node** %6, align 8
  %38 = icmp ne %struct.device_node* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @dev_err(%struct.TYPE_6__* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EFAULT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %275

45:                                               ; preds = %33
  %46 = load %struct.device_node*, %struct.device_node** %6, align 8
  %47 = call i32 @irq_of_parse_and_map(%struct.device_node* %46, i32 0)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.device_node*, %struct.device_node** %6, align 8
  %49 = call i32 @irq_of_parse_and_map(%struct.device_node* %48, i32 1)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(%struct.TYPE_6__* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %273

61:                                               ; preds = %52
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call %struct.mmc_host* @mmc_alloc_host(i32 48, %struct.TYPE_6__* %63)
  store %struct.mmc_host* %64, %struct.mmc_host** %4, align 8
  %65 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %66 = icmp ne %struct.mmc_host* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @dev_err(%struct.TYPE_6__* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %273

73:                                               ; preds = %61
  %74 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %75 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %74, i32 0, i32 9
  store i32* @wmt_mci_ops, i32** %75, align 8
  %76 = load %struct.wmt_mci_caps*, %struct.wmt_mci_caps** %8, align 8
  %77 = getelementptr inbounds %struct.wmt_mci_caps, %struct.wmt_mci_caps* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %80 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %79, i32 0, i32 8
  store i32 %78, i32* %80, align 8
  %81 = load %struct.wmt_mci_caps*, %struct.wmt_mci_caps** %8, align 8
  %82 = getelementptr inbounds %struct.wmt_mci_caps, %struct.wmt_mci_caps* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %85 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 4
  %86 = load %struct.wmt_mci_caps*, %struct.wmt_mci_caps** %8, align 8
  %87 = getelementptr inbounds %struct.wmt_mci_caps, %struct.wmt_mci_caps* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %90 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  %91 = load %struct.wmt_mci_caps*, %struct.wmt_mci_caps** %8, align 8
  %92 = getelementptr inbounds %struct.wmt_mci_caps, %struct.wmt_mci_caps* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %95 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load %struct.wmt_mci_caps*, %struct.wmt_mci_caps** %8, align 8
  %97 = getelementptr inbounds %struct.wmt_mci_caps, %struct.wmt_mci_caps* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %100 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load %struct.wmt_mci_caps*, %struct.wmt_mci_caps** %8, align 8
  %102 = getelementptr inbounds %struct.wmt_mci_caps, %struct.wmt_mci_caps* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %105 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.wmt_mci_caps*, %struct.wmt_mci_caps** %8, align 8
  %107 = getelementptr inbounds %struct.wmt_mci_caps, %struct.wmt_mci_caps* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %110 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %112 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 8192, %113
  %115 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %116 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %118 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sdiv i32 %119, 512
  %121 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %122 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %124 = call %struct.wmt_mci_priv* @mmc_priv(%struct.mmc_host* %123)
  store %struct.wmt_mci_priv* %124, %struct.wmt_mci_priv** %5, align 8
  %125 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %126 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %127 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %126, i32 0, i32 9
  store %struct.mmc_host* %125, %struct.mmc_host** %127, align 8
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %131 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %130, i32 0, i32 8
  store %struct.TYPE_6__* %129, %struct.TYPE_6__** %131, align 8
  %132 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %133 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  %134 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %135 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %134, i32 0, i32 1
  store i32 0, i32* %135, align 4
  %136 = load %struct.device_node*, %struct.device_node** %6, align 8
  %137 = call i64 @of_get_property(%struct.device_node* %136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %73
  %140 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %141 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %73
  %143 = load %struct.device_node*, %struct.device_node** %6, align 8
  %144 = call i64 @of_get_property(%struct.device_node* %143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %148 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %147, i32 0, i32 1
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %142
  %150 = load %struct.device_node*, %struct.device_node** %6, align 8
  %151 = call i32 @of_iomap(%struct.device_node* %150, i32 0)
  %152 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %153 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 8
  %154 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %155 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %149
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = call i32 @dev_err(%struct.TYPE_6__* %160, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %9, align 4
  br label %270

164:                                              ; preds = %149
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %167 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %170 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @wmt_mci_regular_isr, align 4
  %173 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %174 = call i32 @request_irq(i32 %171, i32 %172, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %struct.wmt_mci_priv* %173)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %164
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = call i32 @dev_err(%struct.TYPE_6__* %179, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %265

181:                                              ; preds = %164
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @wmt_mci_dma_isr, align 4
  %184 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %185 = call i32 @request_irq(i32 %182, i32 %183, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %struct.wmt_mci_priv* %184)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %181
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = call i32 @dev_err(%struct.TYPE_6__* %190, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %261

192:                                              ; preds = %181
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %196 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = mul nsw i32 %197, 16
  %199 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %200 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %199, i32 0, i32 7
  %201 = load i32, i32* @GFP_KERNEL, align 4
  %202 = call i32 @dma_alloc_coherent(%struct.TYPE_6__* %194, i32 %198, i32* %200, i32 %201)
  %203 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %204 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %203, i32 0, i32 6
  store i32 %202, i32* %204, align 8
  %205 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %206 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %192
  %210 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %211 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %210, i32 0, i32 0
  %212 = call i32 @dev_err(%struct.TYPE_6__* %211, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %213 = load i32, i32* @EPERM, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %9, align 4
  br label %257

215:                                              ; preds = %192
  %216 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %217 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %218 = call i32 @platform_set_drvdata(%struct.platform_device* %216, %struct.mmc_host* %217)
  %219 = load %struct.device_node*, %struct.device_node** %6, align 8
  %220 = call i32 @of_clk_get(%struct.device_node* %219, i32 0)
  %221 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %222 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 4
  %223 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %224 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @IS_ERR(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %215
  %229 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %230 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %229, i32 0, i32 0
  %231 = call i32 @dev_err(%struct.TYPE_6__* %230, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %232 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %233 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @PTR_ERR(i32 %234)
  store i32 %235, i32* %9, align 4
  br label %257

236:                                              ; preds = %215
  %237 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %238 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @clk_prepare_enable(i32 %239)
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %252

244:                                              ; preds = %236
  %245 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %246 = call i32 @wmt_reset_hardware(%struct.mmc_host* %245)
  %247 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %248 = call i32 @mmc_add_host(%struct.mmc_host* %247)
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %249, i32 0, i32 0
  %251 = call i32 @dev_info(%struct.TYPE_6__* %250, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %275

252:                                              ; preds = %243
  %253 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %254 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @clk_put(i32 %255)
  br label %257

257:                                              ; preds = %252, %228, %209
  %258 = load i32, i32* %11, align 4
  %259 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %260 = call i32 @free_irq(i32 %258, %struct.wmt_mci_priv* %259)
  br label %261

261:                                              ; preds = %257, %188
  %262 = load i32, i32* %10, align 4
  %263 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %264 = call i32 @free_irq(i32 %262, %struct.wmt_mci_priv* %263)
  br label %265

265:                                              ; preds = %261, %177
  %266 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %5, align 8
  %267 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @iounmap(i32 %268)
  br label %270

270:                                              ; preds = %265, %158
  %271 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %272 = call i32 @mmc_free_host(%struct.mmc_host* %271)
  br label %273

273:                                              ; preds = %270, %67, %55
  %274 = load i32, i32* %9, align 4
  store i32 %274, i32* %2, align 4
  br label %275

275:                                              ; preds = %273, %244, %39, %27
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, %struct.TYPE_6__*) #1

declare dso_local %struct.wmt_mci_priv* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.wmt_mci_priv*) #1

declare dso_local i32 @dma_alloc_coherent(%struct.TYPE_6__*, i32, i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mmc_host*) #1

declare dso_local i32 @of_clk_get(%struct.device_node*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @wmt_reset_hardware(%struct.mmc_host*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @free_irq(i32, %struct.wmt_mci_priv*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
