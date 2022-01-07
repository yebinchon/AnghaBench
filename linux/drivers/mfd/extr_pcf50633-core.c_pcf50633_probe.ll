; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-core.c_pcf50633_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-core.c_pcf50633_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.pcf50633 = type { %struct.platform_device**, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, %struct.pcf50633_platform_data* }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.pcf50633_platform_data = type { i32 (%struct.pcf50633.0*)*, i32* }
%struct.pcf50633.0 = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Missing IRQ\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pcf50633_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unable to probe pcf50633\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Probed device version %d variant %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"pcf50633-input\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"pcf50633-rtc\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"pcf50633-mbc\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"pcf50633-adc\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"pcf50633-backlight\00", align 1
@PCF50633_NUM_REGULATORS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"pcf50633-regulator\00", align 1
@pcf_attr_group = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"error creating sysfs entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pcf50633_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pcf50633*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.pcf50633_platform_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call %struct.pcf50633_platform_data* @dev_get_platdata(%struct.TYPE_8__* %15)
  store %struct.pcf50633_platform_data* %16, %struct.pcf50633_platform_data** %8, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %215

27:                                               ; preds = %2
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.pcf50633* @devm_kzalloc(%struct.TYPE_8__* %29, i32 56, i32 %30)
  store %struct.pcf50633* %31, %struct.pcf50633** %6, align 8
  %32 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %33 = icmp ne %struct.pcf50633* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %215

37:                                               ; preds = %27
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %40 = call i32 @i2c_set_clientdata(%struct.i2c_client* %38, %struct.pcf50633* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %44 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %43, i32 0, i32 1
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %44, align 8
  %45 = load %struct.pcf50633_platform_data*, %struct.pcf50633_platform_data** %8, align 8
  %46 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %47 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %46, i32 0, i32 9
  store %struct.pcf50633_platform_data* %45, %struct.pcf50633_platform_data** %47, align 8
  %48 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %49 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %48, i32 0, i32 8
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %51, i32* @pcf50633_regmap_config)
  %53 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %54 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 4
  %55 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %56 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %37
  %61 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %62 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @PTR_ERR(i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %66 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %3, align 4
  br label %215

71:                                               ; preds = %37
  %72 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %73 = call i32 @pcf50633_reg_read(%struct.pcf50633* %72, i32 0)
  store i32 %73, i32* %12, align 4
  %74 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %75 = call i32 @pcf50633_reg_read(%struct.pcf50633* %74, i32 1)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78, %71
  %82 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %83 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %3, align 4
  br label %215

89:                                               ; preds = %78
  %90 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %91 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @dev_info(%struct.TYPE_8__* %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @pcf50633_irq_init(%struct.pcf50633* %96, i32 %99)
  %101 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %102 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %103 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %102, i32 0, i32 6
  %104 = call i32 @pcf50633_client_dev_register(%struct.pcf50633* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %103)
  %105 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %106 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %107 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %106, i32 0, i32 5
  %108 = call i32 @pcf50633_client_dev_register(%struct.pcf50633* %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %107)
  %109 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %110 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %111 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %110, i32 0, i32 4
  %112 = call i32 @pcf50633_client_dev_register(%struct.pcf50633* %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* %111)
  %113 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %114 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %115 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %114, i32 0, i32 3
  %116 = call i32 @pcf50633_client_dev_register(%struct.pcf50633* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32* %115)
  %117 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %118 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %119 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %118, i32 0, i32 2
  %120 = call i32 @pcf50633_client_dev_register(%struct.pcf50633* %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32* %119)
  store i32 0, i32* %9, align 4
  br label %121

121:                                              ; preds = %165, %89
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @PCF50633_NUM_REGULATORS, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %168

125:                                              ; preds = %121
  %126 = load i32, i32* %9, align 4
  %127 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  store %struct.platform_device* %127, %struct.platform_device** %7, align 8
  %128 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %129 = icmp ne %struct.platform_device* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %11, align 4
  br label %196

133:                                              ; preds = %125
  %134 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %135 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store %struct.TYPE_8__* %136, %struct.TYPE_8__** %139, align 8
  %140 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %141 = load %struct.pcf50633_platform_data*, %struct.pcf50633_platform_data** %8, align 8
  %142 = getelementptr inbounds %struct.pcf50633_platform_data, %struct.pcf50633_platform_data* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = call i32 @platform_device_add_data(%struct.platform_device* %140, i32* %146, i32 4)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %133
  br label %193

151:                                              ; preds = %133
  %152 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %153 = call i32 @platform_device_add(%struct.platform_device* %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %193

157:                                              ; preds = %151
  %158 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %159 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %160 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %159, i32 0, i32 0
  %161 = load %struct.platform_device**, %struct.platform_device*** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %161, i64 %163
  store %struct.platform_device* %158, %struct.platform_device** %164, align 8
  br label %165

165:                                              ; preds = %157
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %121

168:                                              ; preds = %121
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = call i32 @sysfs_create_group(i32* %171, i32* @pcf_attr_group)
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %168
  %176 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %177 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %176, i32 0, i32 1
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = call i32 @dev_warn(%struct.TYPE_8__* %178, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %180

180:                                              ; preds = %175, %168
  %181 = load %struct.pcf50633_platform_data*, %struct.pcf50633_platform_data** %8, align 8
  %182 = getelementptr inbounds %struct.pcf50633_platform_data, %struct.pcf50633_platform_data* %181, i32 0, i32 0
  %183 = load i32 (%struct.pcf50633.0*)*, i32 (%struct.pcf50633.0*)** %182, align 8
  %184 = icmp ne i32 (%struct.pcf50633.0*)* %183, null
  br i1 %184, label %185, label %192

185:                                              ; preds = %180
  %186 = load %struct.pcf50633_platform_data*, %struct.pcf50633_platform_data** %8, align 8
  %187 = getelementptr inbounds %struct.pcf50633_platform_data, %struct.pcf50633_platform_data* %186, i32 0, i32 0
  %188 = load i32 (%struct.pcf50633.0*)*, i32 (%struct.pcf50633.0*)** %187, align 8
  %189 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %190 = bitcast %struct.pcf50633* %189 to %struct.pcf50633.0*
  %191 = call i32 %188(%struct.pcf50633.0* %190)
  br label %192

192:                                              ; preds = %185, %180
  store i32 0, i32* %3, align 4
  br label %215

193:                                              ; preds = %156, %150
  %194 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %195 = call i32 @platform_device_put(%struct.platform_device* %194)
  br label %196

196:                                              ; preds = %193, %130
  store i32 0, i32* %10, align 4
  br label %197

197:                                              ; preds = %210, %196
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %9, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %213

201:                                              ; preds = %197
  %202 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %203 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %202, i32 0, i32 0
  %204 = load %struct.platform_device**, %struct.platform_device*** %203, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %204, i64 %206
  %208 = load %struct.platform_device*, %struct.platform_device** %207, align 8
  %209 = call i32 @platform_device_put(%struct.platform_device* %208)
  br label %210

210:                                              ; preds = %201
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %197

213:                                              ; preds = %197
  %214 = load i32, i32* %11, align 4
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %213, %192, %81, %60, %34, %21
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local %struct.pcf50633_platform_data* @dev_get_platdata(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local %struct.pcf50633* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pcf50633*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pcf50633_reg_read(%struct.pcf50633*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @pcf50633_irq_init(%struct.pcf50633*, i32) #1

declare dso_local i32 @pcf50633_client_dev_register(%struct.pcf50633*, i8*, i32*) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, i32*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
