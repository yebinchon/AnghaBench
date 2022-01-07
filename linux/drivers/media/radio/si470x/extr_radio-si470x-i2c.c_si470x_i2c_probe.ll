; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-i2c.c_si470x_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-i2c.c_si470x_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.si470x_device = type { i32, i64 (%struct.si470x_device*, i64)*, i32*, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@si470x_get_register = common dso_local global i32 0, align 4
@si470x_fops_open = common dso_local global i32 0, align 4
@si470x_fops_release = common dso_local global i32 0, align 4
@si470x_vidioc_querycap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"couldn't register v4l2_device\0A\00", align 1
@si470x_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"couldn't register control\0A\00", align 1
@si470x_viddev_template = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@video_device_release_empty = common dso_local global i32 0, align 4
@V4L2_CAP_HW_FREQ_SEEK = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@V4L2_CAP_RDS_CAPTURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to request gpio: %d\0A\00", align 1
@POWERCFG_ENABLE = common dso_local global i32 0, align 4
@POWERCFG = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"DeviceID=0x%4.4hx ChipID=0x%4.4hx\0A\00", align 1
@DEVICEID = common dso_local global i64 0, align 8
@SI_CHIPID = common dso_local global i64 0, align 8
@SI_CHIPID_FIRMWARE = common dso_local global i32 0, align 4
@RADIO_FW_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"This driver is known to work with firmware version %hu,\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"but the device has firmware version %hu.\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"If you have some trouble using this driver,\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"please report to V4L ML at linux-media@vger.kernel.org\0A\00", align 1
@FREQ_MUL = common dso_local global double 0.000000e+00, align 8
@rds_buf = common dso_local global i32 0, align 4
@si470x_i2c_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"Failed to register interrupt\0A\00", align 1
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4
@radio_nr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"Could not register video device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @si470x_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_i2c_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.si470x_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 0, i32* %5, align 4
  store i8 0, i8* %6, align 1
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.si470x_device* @devm_kzalloc(i32* %8, i32 144, i32 %9)
  store %struct.si470x_device* %10, %struct.si470x_device** %4, align 8
  %11 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %12 = icmp ne %struct.si470x_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %297

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %19 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %18, i32 0, i32 18
  store %struct.i2c_client* %17, %struct.i2c_client** %19, align 8
  %20 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %21 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %23 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %22, i32 0, i32 12
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %26 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %25, i32 0, i32 17
  %27 = call i32 @init_completion(i32* %26)
  %28 = load i32, i32* @si470x_get_register, align 4
  %29 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %30 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %29, i32 0, i32 16
  store i32 %28, i32* %30, align 8
  %31 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %32 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %31, i32 0, i32 1
  store i64 (%struct.si470x_device*, i64)* @si470x_set_register, i64 (%struct.si470x_device*, i64)** %32, align 8
  %33 = load i32, i32* @si470x_fops_open, align 4
  %34 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %35 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %34, i32 0, i32 15
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @si470x_fops_release, align 4
  %37 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %38 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %37, i32 0, i32 14
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @si470x_vidioc_querycap, align 4
  %40 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %41 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %40, i32 0, i32 13
  store i32 %39, i32* %41, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %45 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %44, i32 0, i32 4
  %46 = call i32 @v4l2_device_register(i32* %43, i32* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %16
  %50 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 (i32*, i8*, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %297

53:                                               ; preds = %16
  %54 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %55 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %54, i32 0, i32 5
  %56 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__* %55, i32 2)
  %57 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %58 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %57, i32 0, i32 5
  %59 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %60 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %58, i32* @si470x_ctrl_ops, i32 %59, i32 0, i32 1, i32 1, i32 1)
  %61 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %62 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %61, i32 0, i32 5
  %63 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %64 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %62, i32* @si470x_ctrl_ops, i32 %63, i32 0, i32 15, i32 1, i32 15)
  %65 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %66 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %53
  %71 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %72 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %5, align 4
  %75 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = call i32 (i32*, i8*, ...) @dev_err(i32* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %293

78:                                               ; preds = %53
  %79 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %80 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %79, i32 0, i32 6
  %81 = bitcast %struct.TYPE_7__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 bitcast (%struct.TYPE_7__* @si470x_viddev_template to i8*), i64 32, i1 false)
  %82 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %83 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %82, i32 0, i32 5
  %84 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %85 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 4
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %86, align 8
  %87 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %88 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %87, i32 0, i32 12
  %89 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %90 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  store i32* %88, i32** %91, align 8
  %92 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %93 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %92, i32 0, i32 4
  %94 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %95 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  store i32* %93, i32** %96, align 8
  %97 = load i32, i32* @video_device_release_empty, align 4
  %98 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %99 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @V4L2_CAP_HW_FREQ_SEEK, align 4
  %102 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @V4L2_CAP_RDS_CAPTURE, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %111 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %114 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %113, i32 0, i32 6
  %115 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %116 = call i32 @video_set_drvdata(%struct.TYPE_7__* %114, %struct.si470x_device* %115)
  %117 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 0
  %119 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %120 = call i64 @devm_gpiod_get_optional(i32* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %122 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %121, i32 0, i32 11
  store i64 %120, i64* %122, align 8
  %123 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %124 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %123, i32 0, i32 11
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @IS_ERR(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %78
  %129 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %130 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %129, i32 0, i32 11
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @PTR_ERR(i64 %131)
  store i32 %132, i32* %5, align 4
  %133 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %134 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %133, i32 0, i32 0
  %135 = load i32, i32* %5, align 4
  %136 = call i32 (i32*, i8*, ...) @dev_err(i32* %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  br label %289

137:                                              ; preds = %78
  %138 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %139 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %138, i32 0, i32 11
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %144 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %143, i32 0, i32 11
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @gpiod_set_value(i64 %145, i32 1)
  br label %147

147:                                              ; preds = %142, %137
  %148 = load i32, i32* @POWERCFG_ENABLE, align 4
  %149 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %150 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* @POWERCFG, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32 %148, i32* %153, align 4
  %154 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %155 = load i64, i64* @POWERCFG, align 8
  %156 = call i64 @si470x_set_register(%struct.si470x_device* %154, i64 %155)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %147
  %159 = load i32, i32* @EIO, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %5, align 4
  br label %289

161:                                              ; preds = %147
  %162 = call i32 @msleep(i32 110)
  %163 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %164 = call i64 @si470x_get_all_registers(%struct.si470x_device* %163)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32, i32* @EIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %5, align 4
  br label %289

169:                                              ; preds = %161
  %170 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %171 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %170, i32 0, i32 0
  %172 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %173 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* @DEVICEID, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %179 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* @SI_CHIPID, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @dev_info(i32* %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %177, i32 %183)
  %185 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %186 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @SI_CHIPID, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @SI_CHIPID_FIRMWARE, align 4
  %192 = and i32 %190, %191
  %193 = load i32, i32* @RADIO_FW_VERSION, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %211

195:                                              ; preds = %169
  %196 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %197 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %196, i32 0, i32 0
  %198 = load i32, i32* @RADIO_FW_VERSION, align 4
  %199 = call i32 (i32*, i8*, ...) @dev_warn(i32* %197, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %198)
  %200 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %201 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %200, i32 0, i32 0
  %202 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %203 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* @SI_CHIPID, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @SI_CHIPID_FIRMWARE, align 4
  %209 = and i32 %207, %208
  %210 = call i32 (i32*, i8*, ...) @dev_warn(i32* %201, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %209)
  store i8 1, i8* %6, align 1
  br label %211

211:                                              ; preds = %195, %169
  %212 = load i8, i8* %6, align 1
  %213 = zext i8 %212 to i32
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %222

215:                                              ; preds = %211
  %216 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %217 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %216, i32 0, i32 0
  %218 = call i32 (i32*, i8*, ...) @dev_warn(i32* %217, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  %219 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %220 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %219, i32 0, i32 0
  %221 = call i32 (i32*, i8*, ...) @dev_warn(i32* %220, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  br label %222

222:                                              ; preds = %215, %211
  %223 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %224 = load double, double* @FREQ_MUL, align 8
  %225 = fmul double 8.750000e+01, %224
  %226 = call i32 @si470x_set_freq(%struct.si470x_device* %223, double %225)
  %227 = load i32, i32* @rds_buf, align 4
  %228 = mul nsw i32 %227, 3
  %229 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %230 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 8
  %231 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %232 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %231, i32 0, i32 0
  %233 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %234 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @GFP_KERNEL, align 4
  %237 = call i32 @devm_kmalloc(i32* %232, i32 %235, i32 %236)
  %238 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %239 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %238, i32 0, i32 10
  store i32 %237, i32* %239, align 8
  %240 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %241 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %240, i32 0, i32 10
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %222
  %245 = load i32, i32* @EIO, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %5, align 4
  br label %289

247:                                              ; preds = %222
  %248 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %249 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %248, i32 0, i32 9
  store i64 0, i64* %249, align 8
  %250 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %251 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %250, i32 0, i32 8
  store i64 0, i64* %251, align 8
  %252 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %253 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %252, i32 0, i32 7
  %254 = call i32 @init_waitqueue_head(i32* %253)
  %255 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %256 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %255, i32 0, i32 0
  %257 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %258 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @si470x_i2c_interrupt, align 4
  %261 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %262 = load i32, i32* @IRQF_ONESHOT, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* @DRIVER_NAME, align 4
  %265 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %266 = call i32 @devm_request_threaded_irq(i32* %256, i32 %259, i32* null, i32 %260, i32 %263, i32 %264, %struct.si470x_device* %265)
  store i32 %266, i32* %5, align 4
  %267 = load i32, i32* %5, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %247
  %270 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %271 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %270, i32 0, i32 0
  %272 = call i32 (i32*, i8*, ...) @dev_err(i32* %271, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %289

273:                                              ; preds = %247
  %274 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %275 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %274, i32 0, i32 6
  %276 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %277 = load i32, i32* @radio_nr, align 4
  %278 = call i32 @video_register_device(%struct.TYPE_7__* %275, i32 %276, i32 %277)
  store i32 %278, i32* %5, align 4
  %279 = load i32, i32* %5, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %273
  %282 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %283 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %282, i32 0, i32 0
  %284 = call i32 (i32*, i8*, ...) @dev_warn(i32* %283, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %289

285:                                              ; preds = %273
  %286 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %287 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %288 = call i32 @i2c_set_clientdata(%struct.i2c_client* %286, %struct.si470x_device* %287)
  store i32 0, i32* %2, align 4
  br label %299

289:                                              ; preds = %281, %269, %244, %166, %158, %128
  %290 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %291 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %290, i32 0, i32 5
  %292 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_8__* %291)
  br label %293

293:                                              ; preds = %289, %70
  %294 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %295 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %294, i32 0, i32 4
  %296 = call i32 @v4l2_device_unregister(i32* %295)
  br label %297

297:                                              ; preds = %293, %49, %13
  %298 = load i32, i32* %5, align 4
  store i32 %298, i32* %2, align 4
  br label %299

299:                                              ; preds = %297, %285
  %300 = load i32, i32* %2, align 4
  ret i32 %300
}

declare dso_local %struct.si470x_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @si470x_set_register(%struct.si470x_device*, i64) #1

declare dso_local i32 @v4l2_device_register(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_8__*, i32*, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.TYPE_7__*, %struct.si470x_device*) #1

declare dso_local i64 @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @si470x_get_all_registers(%struct.si470x_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @si470x_set_freq(%struct.si470x_device*, double) #1

declare dso_local i32 @devm_kmalloc(i32*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.si470x_device*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.si470x_device*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
