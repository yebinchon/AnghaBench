; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.cqspi_st = type { i32, i32, %struct.reset_control*, i64, i32, i32, i32, i64, %struct.reset_control*, %struct.reset_control*, %struct.platform_device*, i32 }
%struct.reset_control = type { i32 }
%struct.resource = type { i64 }
%struct.cqspi_driver_platdata = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot get mandatory OF data.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot claim QSPI clock.\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Cannot remap controller address.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Cannot remap AHB address.\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Cannot obtain IRQ.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Cannot enable QSPI clock.\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"qspi\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Cannot get QSPI reset.\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"qspi-ocp\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Cannot get QSPI OCP reset.\0A\00", align 1
@CQSPI_NEEDS_WR_DELAY = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@cqspi_irq_handler = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"Cannot request IRQ.\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Cadence QSPI NOR probe failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cqspi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqspi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.cqspi_st*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.reset_control*, align 8
  %10 = alloca %struct.reset_control*, align 8
  %11 = alloca %struct.cqspi_driver_platdata*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %4, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 1
  store %struct.device* %19, %struct.device** %5, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.cqspi_st* @devm_kzalloc(%struct.device* %20, i32 80, i32 %21)
  store %struct.cqspi_st* %22, %struct.cqspi_st** %6, align 8
  %23 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %24 = icmp ne %struct.cqspi_st* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %256

28:                                               ; preds = %1
  %29 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %30 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %29, i32 0, i32 11
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %34 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %33, i32 0, i32 10
  store %struct.platform_device* %32, %struct.platform_device** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %37 = call i32 @platform_set_drvdata(%struct.platform_device* %35, %struct.cqspi_st* %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = call i32 @cqspi_of_get_pdata(%struct.platform_device* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %28
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %256

47:                                               ; preds = %28
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = call %struct.reset_control* @devm_clk_get(%struct.device* %48, i32* null)
  %50 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %51 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %50, i32 0, i32 2
  store %struct.reset_control* %49, %struct.reset_control** %51, align 8
  %52 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %53 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %52, i32 0, i32 2
  %54 = load %struct.reset_control*, %struct.reset_control** %53, align 8
  %55 = call i64 @IS_ERR(%struct.reset_control* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %47
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %61 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %60, i32 0, i32 2
  %62 = load %struct.reset_control*, %struct.reset_control** %61, align 8
  %63 = call i32 @PTR_ERR(%struct.reset_control* %62)
  store i32 %63, i32* %2, align 4
  br label %256

64:                                               ; preds = %47
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load i32, i32* @IORESOURCE_MEM, align 4
  %67 = call %struct.resource* @platform_get_resource(%struct.platform_device* %65, i32 %66, i32 0)
  store %struct.resource* %67, %struct.resource** %7, align 8
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load %struct.resource*, %struct.resource** %7, align 8
  %70 = call i8* @devm_ioremap_resource(%struct.device* %68, %struct.resource* %69)
  %71 = bitcast i8* %70 to %struct.reset_control*
  %72 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %73 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %72, i32 0, i32 9
  store %struct.reset_control* %71, %struct.reset_control** %73, align 8
  %74 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %75 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %74, i32 0, i32 9
  %76 = load %struct.reset_control*, %struct.reset_control** %75, align 8
  %77 = call i64 @IS_ERR(%struct.reset_control* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %64
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %83 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %82, i32 0, i32 9
  %84 = load %struct.reset_control*, %struct.reset_control** %83, align 8
  %85 = call i32 @PTR_ERR(%struct.reset_control* %84)
  store i32 %85, i32* %2, align 4
  br label %256

86:                                               ; preds = %64
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = load i32, i32* @IORESOURCE_MEM, align 4
  %89 = call %struct.resource* @platform_get_resource(%struct.platform_device* %87, i32 %88, i32 1)
  store %struct.resource* %89, %struct.resource** %8, align 8
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = load %struct.resource*, %struct.resource** %8, align 8
  %92 = call i8* @devm_ioremap_resource(%struct.device* %90, %struct.resource* %91)
  %93 = bitcast i8* %92 to %struct.reset_control*
  %94 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %95 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %94, i32 0, i32 8
  store %struct.reset_control* %93, %struct.reset_control** %95, align 8
  %96 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %97 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %96, i32 0, i32 8
  %98 = load %struct.reset_control*, %struct.reset_control** %97, align 8
  %99 = call i64 @IS_ERR(%struct.reset_control* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %86
  %102 = load %struct.device*, %struct.device** %5, align 8
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %104 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %105 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %104, i32 0, i32 8
  %106 = load %struct.reset_control*, %struct.reset_control** %105, align 8
  %107 = call i32 @PTR_ERR(%struct.reset_control* %106)
  store i32 %107, i32* %2, align 4
  br label %256

108:                                              ; preds = %86
  %109 = load %struct.resource*, %struct.resource** %8, align 8
  %110 = getelementptr inbounds %struct.resource, %struct.resource* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %113 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %112, i32 0, i32 7
  store i64 %111, i64* %113, align 8
  %114 = load %struct.resource*, %struct.resource** %8, align 8
  %115 = call i32 @resource_size(%struct.resource* %114)
  %116 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %117 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  %118 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %119 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %118, i32 0, i32 5
  %120 = call i32 @init_completion(i32* %119)
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = call i32 @platform_get_irq(%struct.platform_device* %121, i32 0)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %108
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %126, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %128 = load i32, i32* @ENXIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %256

130:                                              ; preds = %108
  %131 = load %struct.device*, %struct.device** %5, align 8
  %132 = call i32 @pm_runtime_enable(%struct.device* %131)
  %133 = load %struct.device*, %struct.device** %5, align 8
  %134 = call i32 @pm_runtime_get_sync(%struct.device* %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = call i32 @pm_runtime_put_noidle(%struct.device* %138)
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %2, align 4
  br label %256

141:                                              ; preds = %130
  %142 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %143 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %142, i32 0, i32 2
  %144 = load %struct.reset_control*, %struct.reset_control** %143, align 8
  %145 = call i32 @clk_prepare_enable(%struct.reset_control* %144)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load %struct.device*, %struct.device** %5, align 8
  %150 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %250

151:                                              ; preds = %141
  %152 = load %struct.device*, %struct.device** %5, align 8
  %153 = call %struct.reset_control* @devm_reset_control_get_optional_exclusive(%struct.device* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store %struct.reset_control* %153, %struct.reset_control** %9, align 8
  %154 = load %struct.reset_control*, %struct.reset_control** %9, align 8
  %155 = call i64 @IS_ERR(%struct.reset_control* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = load %struct.device*, %struct.device** %5, align 8
  %159 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %158, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %160 = load %struct.reset_control*, %struct.reset_control** %9, align 8
  %161 = call i32 @PTR_ERR(%struct.reset_control* %160)
  store i32 %161, i32* %2, align 4
  br label %256

162:                                              ; preds = %151
  %163 = load %struct.device*, %struct.device** %5, align 8
  %164 = call %struct.reset_control* @devm_reset_control_get_optional_exclusive(%struct.device* %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store %struct.reset_control* %164, %struct.reset_control** %10, align 8
  %165 = load %struct.reset_control*, %struct.reset_control** %10, align 8
  %166 = call i64 @IS_ERR(%struct.reset_control* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %162
  %169 = load %struct.device*, %struct.device** %5, align 8
  %170 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %169, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %171 = load %struct.reset_control*, %struct.reset_control** %10, align 8
  %172 = call i32 @PTR_ERR(%struct.reset_control* %171)
  store i32 %172, i32* %2, align 4
  br label %256

173:                                              ; preds = %162
  %174 = load %struct.reset_control*, %struct.reset_control** %9, align 8
  %175 = call i32 @reset_control_assert(%struct.reset_control* %174)
  %176 = load %struct.reset_control*, %struct.reset_control** %9, align 8
  %177 = call i32 @reset_control_deassert(%struct.reset_control* %176)
  %178 = load %struct.reset_control*, %struct.reset_control** %10, align 8
  %179 = call i32 @reset_control_assert(%struct.reset_control* %178)
  %180 = load %struct.reset_control*, %struct.reset_control** %10, align 8
  %181 = call i32 @reset_control_deassert(%struct.reset_control* %180)
  %182 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %183 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %182, i32 0, i32 2
  %184 = load %struct.reset_control*, %struct.reset_control** %183, align 8
  %185 = call i32 @clk_get_rate(%struct.reset_control* %184)
  %186 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %187 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  %188 = load %struct.device*, %struct.device** %5, align 8
  %189 = call %struct.cqspi_driver_platdata* @of_device_get_match_data(%struct.device* %188)
  store %struct.cqspi_driver_platdata* %189, %struct.cqspi_driver_platdata** %11, align 8
  %190 = load %struct.cqspi_driver_platdata*, %struct.cqspi_driver_platdata** %11, align 8
  %191 = icmp ne %struct.cqspi_driver_platdata* %190, null
  br i1 %191, label %192, label %208

192:                                              ; preds = %173
  %193 = load %struct.cqspi_driver_platdata*, %struct.cqspi_driver_platdata** %11, align 8
  %194 = getelementptr inbounds %struct.cqspi_driver_platdata, %struct.cqspi_driver_platdata* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @CQSPI_NEEDS_WR_DELAY, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %192
  %200 = load i32, i32* @NSEC_PER_SEC, align 4
  %201 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %202 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @DIV_ROUND_UP(i32 %200, i32 %203)
  %205 = mul nsw i32 5, %204
  %206 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %207 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  br label %208

208:                                              ; preds = %199, %192, %173
  %209 = load %struct.device*, %struct.device** %5, align 8
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* @cqspi_irq_handler, align 4
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %216 = call i32 @devm_request_irq(%struct.device* %209, i32 %210, i32 %211, i32 0, i32 %214, %struct.cqspi_st* %215)
  store i32 %216, i32* %12, align 4
  %217 = load i32, i32* %12, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %208
  %220 = load %struct.device*, %struct.device** %5, align 8
  %221 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %220, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %245

222:                                              ; preds = %208
  %223 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %224 = call i32 @cqspi_wait_idle(%struct.cqspi_st* %223)
  %225 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %226 = call i32 @cqspi_controller_init(%struct.cqspi_st* %225)
  %227 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %228 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %227, i32 0, i32 1
  store i32 -1, i32* %228, align 4
  %229 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %230 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %229, i32 0, i32 3
  store i64 0, i64* %230, align 8
  %231 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %232 = load %struct.device_node*, %struct.device_node** %4, align 8
  %233 = call i32 @cqspi_setup_flash(%struct.cqspi_st* %231, %struct.device_node* %232)
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %222
  %237 = load %struct.device*, %struct.device** %5, align 8
  %238 = load i32, i32* %12, align 4
  %239 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %237, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %238)
  br label %242

240:                                              ; preds = %222
  %241 = load i32, i32* %12, align 4
  store i32 %241, i32* %2, align 4
  br label %256

242:                                              ; preds = %236
  %243 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %244 = call i32 @cqspi_controller_enable(%struct.cqspi_st* %243, i32 0)
  br label %245

245:                                              ; preds = %242, %219
  %246 = load %struct.cqspi_st*, %struct.cqspi_st** %6, align 8
  %247 = getelementptr inbounds %struct.cqspi_st, %struct.cqspi_st* %246, i32 0, i32 2
  %248 = load %struct.reset_control*, %struct.reset_control** %247, align 8
  %249 = call i32 @clk_disable_unprepare(%struct.reset_control* %248)
  br label %250

250:                                              ; preds = %245, %148
  %251 = load %struct.device*, %struct.device** %5, align 8
  %252 = call i32 @pm_runtime_put_sync(%struct.device* %251)
  %253 = load %struct.device*, %struct.device** %5, align 8
  %254 = call i32 @pm_runtime_disable(%struct.device* %253)
  %255 = load i32, i32* %12, align 4
  store i32 %255, i32* %2, align 4
  br label %256

256:                                              ; preds = %250, %240, %168, %157, %137, %125, %101, %79, %57, %42, %25
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local %struct.cqspi_st* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cqspi_st*) #1

declare dso_local i32 @cqspi_of_get_pdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.reset_control* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @clk_prepare_enable(%struct.reset_control*) #1

declare dso_local %struct.reset_control* @devm_reset_control_get_optional_exclusive(%struct.device*, i8*) #1

declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

declare dso_local i32 @clk_get_rate(%struct.reset_control*) #1

declare dso_local %struct.cqspi_driver_platdata* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.cqspi_st*) #1

declare dso_local i32 @cqspi_wait_idle(%struct.cqspi_st*) #1

declare dso_local i32 @cqspi_controller_init(%struct.cqspi_st*) #1

declare dso_local i32 @cqspi_setup_flash(%struct.cqspi_st*, %struct.device_node*) #1

declare dso_local i32 @cqspi_controller_enable(%struct.cqspi_st*, i32) #1

declare dso_local i32 @clk_disable_unprepare(%struct.reset_control*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
