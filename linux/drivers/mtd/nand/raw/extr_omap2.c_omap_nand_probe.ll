; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_nand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_nand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.omap_nand_info = type { i32, i32, i64, i64, i32, i32, %struct.nand_chip, i32, i32, %struct.platform_device* }
%struct.nand_chip = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i64 }
%struct.mtd_info = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to get GPMC->NAND interface\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"omap2-nand.%d\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to set MTD name\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@omap_gpmc_controller_initialized = common dso_local global i32 0, align 4
@omap_nand_controller_ops = common dso_local global i32 0, align 4
@omap_gpmc_controller = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@omap_hwcontrol = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to get ready gpio\0A\00", align 1
@omap_dev_ready = common dso_local global i32 0, align 4
@omap_wait = common dso_local global i32 0, align 4
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_nand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_nand_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_nand_info*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %9, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.omap_nand_info* @devm_kzalloc(%struct.device* %13, i32 112, i32 %14)
  store %struct.omap_nand_info* %15, %struct.omap_nand_info** %4, align 8
  %16 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %17 = icmp ne %struct.omap_nand_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %247

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %24 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %23, i32 0, i32 9
  store %struct.platform_device* %22, %struct.platform_device** %24, align 8
  %25 = load %struct.device*, %struct.device** %9, align 8
  %26 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %27 = call i32 @omap_get_dt_info(%struct.device* %25, %struct.omap_nand_info* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %247

32:                                               ; preds = %21
  %33 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %34 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %33, i32 0, i32 8
  %35 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %36 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @gpmc_omap_get_nand_ops(i32* %34, i32 %37)
  %39 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %40 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %42 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %32
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %247

51:                                               ; preds = %32
  %52 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %53 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %52, i32 0, i32 6
  store %struct.nand_chip* %53, %struct.nand_chip** %6, align 8
  %54 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %55 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %54)
  store %struct.mtd_info* %55, %struct.mtd_info** %5, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %59 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store %struct.device* %57, %struct.device** %60, align 8
  %61 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %62 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %65 = load %struct.device*, %struct.device** %9, align 8
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @nand_set_flash_node(%struct.nand_chip* %64, i32 %67)
  %69 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %70 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %94, label %73

73:                                               ; preds = %51
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %78 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @devm_kasprintf(%struct.device* %75, i32 %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %82 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %84 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %73
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %247

93:                                               ; preds = %73
  br label %94

94:                                               ; preds = %93, %51
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = load i32, i32* @IORESOURCE_MEM, align 4
  %97 = call %struct.resource* @platform_get_resource(%struct.platform_device* %95, i32 %96, i32 0)
  store %struct.resource* %97, %struct.resource** %8, align 8
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load %struct.resource*, %struct.resource** %8, align 8
  %101 = call i64 @devm_ioremap_resource(%struct.device* %99, %struct.resource* %100)
  %102 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %103 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 4
  store i64 %101, i64* %104, align 8
  %105 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %106 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @IS_ERR(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %94
  %112 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %113 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @PTR_ERR(i64 %115)
  store i32 %116, i32* %2, align 4
  br label %247

117:                                              ; preds = %94
  %118 = load %struct.resource*, %struct.resource** %8, align 8
  %119 = getelementptr inbounds %struct.resource, %struct.resource* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %122 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* @omap_gpmc_controller_initialized, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %117
  store i32* @omap_nand_controller_ops, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @omap_gpmc_controller, i32 0, i32 0), align 8
  %126 = call i32 @nand_controller_init(%struct.TYPE_9__* @omap_gpmc_controller)
  store i32 1, i32* @omap_gpmc_controller_initialized, align 4
  br label %127

127:                                              ; preds = %125, %117
  %128 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %129 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %128, i32 0, i32 4
  store %struct.TYPE_9__* @omap_gpmc_controller, %struct.TYPE_9__** %129, align 8
  %130 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %131 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %135 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 5
  store i64 %133, i64* %136, align 8
  %137 = load i32, i32* @omap_hwcontrol, align 4
  %138 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %139 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  store i32 %137, i32* %140, align 4
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load i32, i32* @GPIOD_IN, align 4
  %144 = call i64 @devm_gpiod_get_optional(%struct.device* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %146 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %145, i32 0, i32 3
  store i64 %144, i64* %146, align 8
  %147 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %148 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @IS_ERR(i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %127
  %153 = load %struct.device*, %struct.device** %9, align 8
  %154 = call i32 @dev_err(%struct.device* %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %155 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %156 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @PTR_ERR(i64 %157)
  store i32 %158, i32* %2, align 4
  br label %247

159:                                              ; preds = %127
  %160 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %161 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %159
  %165 = load i32, i32* @omap_dev_ready, align 4
  %166 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %167 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  store i32 %165, i32* %168, align 8
  %169 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %170 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  store i32 0, i32* %171, align 8
  br label %180

172:                                              ; preds = %159
  %173 = load i32, i32* @omap_wait, align 4
  %174 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %175 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  store i32 %173, i32* %176, align 4
  %177 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %178 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  store i32 50, i32* %179, align 8
  br label %180

180:                                              ; preds = %172, %164
  %181 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %182 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %187 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %188 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %185, %180
  %192 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %193 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %196 = and i32 %194, %195
  %197 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %198 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  %201 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %202 = call i32 @nand_scan(%struct.nand_chip* %201, i32 1)
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %191
  br label %219

206:                                              ; preds = %191
  %207 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %208 = call i32 @mtd_device_register(%struct.mtd_info* %207, i32* null, i32 0)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %216

212:                                              ; preds = %206
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %215 = call i32 @platform_set_drvdata(%struct.platform_device* %213, %struct.mtd_info* %214)
  store i32 0, i32* %2, align 4
  br label %247

216:                                              ; preds = %211
  %217 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %218 = call i32 @nand_cleanup(%struct.nand_chip* %217)
  br label %219

219:                                              ; preds = %216, %205
  %220 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %221 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @IS_ERR_OR_NULL(i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %219
  %226 = load %struct.omap_nand_info*, %struct.omap_nand_info** %4, align 8
  %227 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @dma_release_channel(i32 %228)
  br label %230

230:                                              ; preds = %225, %219
  %231 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %232 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %245

236:                                              ; preds = %230
  %237 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %238 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = call i32 @nand_bch_free(i32* %240)
  %242 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %243 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  store i32* null, i32** %244, align 8
  br label %245

245:                                              ; preds = %236, %230
  %246 = load i32, i32* %7, align 4
  store i32 %246, i32* %2, align 4
  br label %247

247:                                              ; preds = %245, %212, %152, %111, %87, %45, %30, %18
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local %struct.omap_nand_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @omap_get_dt_info(%struct.device*, %struct.omap_nand_info*) #1

declare dso_local i32 @gpmc_omap_get_nand_ops(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, i32) #1

declare dso_local i64 @devm_kasprintf(%struct.device*, i32, i8*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @nand_controller_init(%struct.TYPE_9__*) #1

declare dso_local i64 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtd_info*) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @nand_bch_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
