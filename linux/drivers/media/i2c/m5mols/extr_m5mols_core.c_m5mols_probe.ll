; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.m5mols_platform_data* }
%struct.m5mols_platform_data = type { i32, i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.m5mols_info = type { i8**, i32, i32, i32, %struct.TYPE_10__, %struct.v4l2_subdev, i32, %struct.m5mols_platform_data* }
%struct.TYPE_10__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_9__, i32*, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"No valid RESET GPIO specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Interrupt not assigned\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_HIGH = common dso_local global i64 0, align 8
@GPIOF_OUT_INIT_LOW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"M5MOLS_NRST\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to request gpio: %d\0A\00", align 1
@supplies = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to get regulators: %d\0A\00", align 1
@m5mols_ops = common dso_local global i32 0, align 4
@MODULE_NAME = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@m5mols_subdev_internal_ops = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@m5mols_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Interrupt request failed: %d\0A\00", align 1
@M5MOLS_RESTYPE_MONITOR = common dso_local global i32 0, align 4
@m5mols_default_ffmt = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @m5mols_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5mols_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.m5mols_platform_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.m5mols_info*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.m5mols_platform_data*, %struct.m5mols_platform_data** %13, align 8
  store %struct.m5mols_platform_data* %14, %struct.m5mols_platform_data** %6, align 8
  %15 = load %struct.m5mols_platform_data*, %struct.m5mols_platform_data** %6, align 8
  %16 = icmp eq %struct.m5mols_platform_data* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %207

23:                                               ; preds = %2
  %24 = load %struct.m5mols_platform_data*, %struct.m5mols_platform_data** %6, align 8
  %25 = getelementptr inbounds %struct.m5mols_platform_data, %struct.m5mols_platform_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @gpio_is_valid(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %207

35:                                               ; preds = %23
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %207

46:                                               ; preds = %35
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.m5mols_info* @devm_kzalloc(%struct.TYPE_11__* %48, i32 64, i32 %49)
  store %struct.m5mols_info* %50, %struct.m5mols_info** %8, align 8
  %51 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %52 = icmp ne %struct.m5mols_info* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %207

56:                                               ; preds = %46
  %57 = load %struct.m5mols_platform_data*, %struct.m5mols_platform_data** %6, align 8
  %58 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %59 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %58, i32 0, i32 7
  store %struct.m5mols_platform_data* %57, %struct.m5mols_platform_data** %59, align 8
  %60 = load %struct.m5mols_platform_data*, %struct.m5mols_platform_data** %6, align 8
  %61 = getelementptr inbounds %struct.m5mols_platform_data, %struct.m5mols_platform_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %64 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load %struct.m5mols_platform_data*, %struct.m5mols_platform_data** %6, align 8
  %66 = getelementptr inbounds %struct.m5mols_platform_data, %struct.m5mols_platform_data* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load i64, i64* @GPIOF_OUT_INIT_HIGH, align 8
  br label %73

71:                                               ; preds = %56
  %72 = load i64, i64* @GPIOF_OUT_INIT_LOW, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i64 [ %70, %69 ], [ %72, %71 ]
  store i64 %74, i64* %7, align 8
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = load %struct.m5mols_platform_data*, %struct.m5mols_platform_data** %6, align 8
  %78 = getelementptr inbounds %struct.m5mols_platform_data, %struct.m5mols_platform_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @devm_gpio_request_one(%struct.TYPE_11__* %76, i32 %79, i64 %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load i32, i32* %10, align 4
  %88 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %3, align 4
  br label %207

90:                                               ; preds = %73
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = load i32, i32* @supplies, align 4
  %94 = call i32 @ARRAY_SIZE(i32 %93)
  %95 = load i32, i32* @supplies, align 4
  %96 = call i32 @devm_regulator_bulk_get(%struct.TYPE_11__* %92, i32 %94, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = load i32, i32* %10, align 4
  %103 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %3, align 4
  br label %207

105:                                              ; preds = %90
  %106 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %107 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %106, i32 0, i32 5
  store %struct.v4l2_subdev* %107, %struct.v4l2_subdev** %9, align 8
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %108, %struct.i2c_client* %109, i32* @m5mols_ops)
  %111 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %112 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MODULE_NAME, align 4
  %115 = call i32 @strscpy(i32 %113, i32 %114, i32 4)
  %116 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %117 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %118 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %122 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %121, i32 0, i32 1
  store i32* @m5mols_subdev_internal_ops, i32** %122, align 8
  %123 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %124 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %125 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 4
  %127 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %128 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %127, i32 0, i32 0
  %129 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %130 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %129, i32 0, i32 4
  %131 = call i32 @media_entity_pads_init(%struct.TYPE_9__* %128, i32 1, %struct.TYPE_10__* %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %105
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %3, align 4
  br label %207

136:                                              ; preds = %105
  %137 = load i32, i32* @MEDIA_ENT_F_CAM_SENSOR, align 4
  %138 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %139 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  %141 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %142 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %141, i32 0, i32 3
  %143 = call i32 @init_waitqueue_head(i32* %142)
  %144 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %145 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %144, i32 0, i32 2
  %146 = call i32 @mutex_init(i32* %145)
  %147 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %148 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %147, i32 0, i32 0
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @m5mols_irq_handler, align 4
  %153 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %154 = load i32, i32* @MODULE_NAME, align 4
  %155 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %156 = call i32 @devm_request_irq(%struct.TYPE_11__* %148, i32 %151, i32 %152, i32 %153, i32 %154, %struct.v4l2_subdev* %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %136
  %160 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %161 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %160, i32 0, i32 0
  %162 = load i32, i32* %10, align 4
  %163 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %161, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %162)
  br label %202

164:                                              ; preds = %136
  %165 = load i32, i32* @M5MOLS_RESTYPE_MONITOR, align 4
  %166 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %167 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 8
  %168 = load i8**, i8*** @m5mols_default_ffmt, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i64 0
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %172 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %171, i32 0, i32 0
  %173 = load i8**, i8*** %172, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 0
  store i8* %170, i8** %174, align 8
  %175 = load i8**, i8*** @m5mols_default_ffmt, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 1
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %179 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %178, i32 0, i32 0
  %180 = load i8**, i8*** %179, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 1
  store i8* %177, i8** %181, align 8
  %182 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %183 = call i32 @m5mols_sensor_power(%struct.m5mols_info* %182, i32 1)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %164
  br label %202

187:                                              ; preds = %164
  %188 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %189 = call i32 @m5mols_fw_start(%struct.v4l2_subdev* %188)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %187
  %193 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %194 = call i32 @m5mols_init_controls(%struct.v4l2_subdev* %193)
  store i32 %194, i32* %10, align 4
  br label %195

195:                                              ; preds = %192, %187
  %196 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %197 = call i32 @m5mols_sensor_power(%struct.m5mols_info* %196, i32 0)
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %195
  store i32 0, i32* %3, align 4
  br label %207

201:                                              ; preds = %195
  br label %202

202:                                              ; preds = %201, %186, %159
  %203 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %204 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %203, i32 0, i32 0
  %205 = call i32 @media_entity_cleanup(%struct.TYPE_9__* %204)
  %206 = load i32, i32* %10, align 4
  store i32 %206, i32* %3, align 4
  br label %207

207:                                              ; preds = %202, %200, %134, %99, %84, %53, %40, %29, %17
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local %struct.m5mols_info* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_11__*, i32, i64, i8*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_9__*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_11__*, i32, i32, i32, i32, %struct.v4l2_subdev*) #1

declare dso_local i32 @m5mols_sensor_power(%struct.m5mols_info*, i32) #1

declare dso_local i32 @m5mols_fw_start(%struct.v4l2_subdev*) #1

declare dso_local i32 @m5mols_init_controls(%struct.v4l2_subdev*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
