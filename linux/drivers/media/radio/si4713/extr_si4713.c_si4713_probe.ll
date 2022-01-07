; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.device_node*, %struct.si4713_platform_data* }
%struct.device_node = type { i32 }
%struct.si4713_platform_data = type { i32 }
%struct.si4713_device = type { %struct.TYPE_12__, %struct.platform_device*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.v4l2_ctrl_handler, i32, i32*, i32*, i32* }
%struct.TYPE_12__ = type { %struct.v4l2_ctrl_handler* }
%struct.platform_device = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.radio_si4713_platform_data = type { %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to alloc video device.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to request gpio: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"no vdd regulator found: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"vio\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"no vio regulator found: %d\0A\00", align 1
@si4713_subdev_ops = common dso_local global i32 0, align 4
@si4713_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@DEFAULT_MUTE = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_PI = common dso_local global i32 0, align 4
@DEFAULT_RDS_PI = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_PTY = common dso_local global i32 0, align 4
@DEFAULT_RDS_PTY = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_COMPRESSED = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_ARTIFICIAL_HEAD = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_MONO_STEREO = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_TRAFFIC_PROGRAM = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_TRAFFIC_ANNOUNCEMENT = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_MUSIC_SPEECH = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_DYNAMIC_PTY = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_ALT_FREQS_ENABLE = common dso_local global i32 0, align 4
@si4713_alt_freqs_ctrl = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_DEVIATION = common dso_local global i32 0, align 4
@MAX_RDS_DEVIATION = common dso_local global i32 0, align 4
@DEFAULT_RDS_DEVIATION = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_PS_NAME = common dso_local global i32 0, align 4
@MAX_RDS_PS_NAME = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_RADIO_TEXT = common dso_local global i32 0, align 4
@MAX_RDS_RADIO_TEXT = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_LIMITER_ENABLED = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_LIMITER_RELEASE_TIME = common dso_local global i32 0, align 4
@MAX_LIMITER_RELEASE_TIME = common dso_local global i32 0, align 4
@DEFAULT_LIMITER_RTIME = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_LIMITER_DEVIATION = common dso_local global i32 0, align 4
@MAX_LIMITER_DEVIATION = common dso_local global i32 0, align 4
@DEFAULT_LIMITER_DEV = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_COMPRESSION_ENABLED = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_COMPRESSION_GAIN = common dso_local global i32 0, align 4
@MAX_ACOMP_GAIN = common dso_local global i32 0, align 4
@DEFAULT_ACOMP_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_COMPRESSION_THRESHOLD = common dso_local global i32 0, align 4
@MIN_ACOMP_THRESHOLD = common dso_local global i32 0, align 4
@MAX_ACOMP_THRESHOLD = common dso_local global i32 0, align 4
@DEFAULT_ACOMP_THRESHOLD = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_COMPRESSION_ATTACK_TIME = common dso_local global i32 0, align 4
@MAX_ACOMP_ATTACK_TIME = common dso_local global i32 0, align 4
@DEFAULT_ACOMP_ATIME = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_COMPRESSION_RELEASE_TIME = common dso_local global i32 0, align 4
@MAX_ACOMP_RELEASE_TIME = common dso_local global i32 0, align 4
@DEFAULT_ACOMP_RTIME = common dso_local global i32 0, align 4
@V4L2_CID_PILOT_TONE_ENABLED = common dso_local global i32 0, align 4
@V4L2_CID_PILOT_TONE_DEVIATION = common dso_local global i32 0, align 4
@MAX_PILOT_DEVIATION = common dso_local global i32 0, align 4
@DEFAULT_PILOT_DEVIATION = common dso_local global i32 0, align 4
@V4L2_CID_PILOT_TONE_FREQUENCY = common dso_local global i32 0, align 4
@MAX_PILOT_FREQUENCY = common dso_local global i32 0, align 4
@DEFAULT_PILOT_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_CID_TUNE_PREEMPHASIS = common dso_local global i32 0, align 4
@V4L2_PREEMPHASIS_75_uS = common dso_local global i32 0, align 4
@V4L2_PREEMPHASIS_50_uS = common dso_local global i32 0, align 4
@V4L2_CID_TUNE_POWER_LEVEL = common dso_local global i32 0, align 4
@SI4713_MAX_POWER = common dso_local global i32 0, align 4
@DEFAULT_POWER_LEVEL = common dso_local global i32 0, align 4
@V4L2_CID_TUNE_ANTENNA_CAPACITOR = common dso_local global i32 0, align 4
@SI4713_MAX_ANTCAP = common dso_local global i32 0, align 4
@si4713_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Could not request IRQ\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"IRQ requested.\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"IRQ not configured. Using timeouts.\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Failed to probe device information.\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"radio-si4713\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @si4713_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.si4713_device*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  %6 = alloca %struct.si4713_platform_data*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.radio_si4713_platform_data, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load %struct.si4713_platform_data*, %struct.si4713_platform_data** %13, align 8
  store %struct.si4713_platform_data* %14, %struct.si4713_platform_data** %6, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %7, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.si4713_device* @devm_kzalloc(%struct.TYPE_13__* %20, i32 280, i32 %21)
  store %struct.si4713_device* %22, %struct.si4713_device** %4, align 8
  %23 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %24 = icmp ne %struct.si4713_device* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 2
  %28 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  br label %398

31:                                               ; preds = %1
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 2
  %34 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %35 = call i32* @devm_gpiod_get_optional(%struct.TYPE_13__* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %37 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %36, i32 0, i32 35
  store i32* %35, i32** %37, align 8
  %38 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %39 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %38, i32 0, i32 35
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @IS_ERR(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %45 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %44, i32 0, i32 35
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @PTR_ERR(i32* %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 2
  %50 = load i32, i32* %10, align 4
  %51 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %398

52:                                               ; preds = %31
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 2
  %55 = call i8* @devm_regulator_get_optional(%struct.TYPE_13__* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %58 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %57, i32 0, i32 34
  store i32* %56, i32** %58, align 8
  %59 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %60 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %59, i32 0, i32 34
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @IS_ERR(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %52
  %65 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %66 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %65, i32 0, i32 34
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @PTR_ERR(i32* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @EPROBE_DEFER, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %398

74:                                               ; preds = %64
  %75 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 2
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @dev_dbg(%struct.TYPE_13__* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %80 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %79, i32 0, i32 34
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %74, %52
  %82 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 2
  %84 = call i8* @devm_regulator_get_optional(%struct.TYPE_13__* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %87 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %86, i32 0, i32 33
  store i32* %85, i32** %87, align 8
  %88 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %89 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %88, i32 0, i32 33
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @IS_ERR(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %81
  %94 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %95 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %94, i32 0, i32 33
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @PTR_ERR(i32* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @EPROBE_DEFER, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %398

103:                                              ; preds = %93
  %104 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 2
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @dev_dbg(%struct.TYPE_13__* %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  %108 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %109 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %108, i32 0, i32 33
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %103, %81
  %111 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %112 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %111, i32 0, i32 0
  %113 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %114 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_12__* %112, %struct.i2c_client* %113, i32* @si4713_subdev_ops)
  %115 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %116 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %115, i32 0, i32 32
  %117 = call i32 @init_completion(i32* %116)
  %118 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %119 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %118, i32 0, i32 31
  store %struct.v4l2_ctrl_handler* %119, %struct.v4l2_ctrl_handler** %5, align 8
  %120 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %121 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %120, i32 20)
  %122 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %123 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %124 = load i32, i32* @DEFAULT_MUTE, align 4
  %125 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %122, i32* @si4713_ctrl_ops, i32 %123, i32 0, i32 1, i32 1, i32 %124)
  %126 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %127 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %129 = load i32, i32* @V4L2_CID_RDS_TX_PI, align 4
  %130 = load i32, i32* @DEFAULT_RDS_PI, align 4
  %131 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %128, i32* @si4713_ctrl_ops, i32 %129, i32 0, i32 65535, i32 1, i32 %130)
  %132 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %133 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %132, i32 0, i32 30
  store i8* %131, i8** %133, align 8
  %134 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %135 = load i32, i32* @V4L2_CID_RDS_TX_PTY, align 4
  %136 = load i32, i32* @DEFAULT_RDS_PTY, align 4
  %137 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %134, i32* @si4713_ctrl_ops, i32 %135, i32 0, i32 31, i32 1, i32 %136)
  %138 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %139 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %138, i32 0, i32 29
  store i8* %137, i8** %139, align 8
  %140 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %141 = load i32, i32* @V4L2_CID_RDS_TX_COMPRESSED, align 4
  %142 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %140, i32* @si4713_ctrl_ops, i32 %141, i32 0, i32 1, i32 1, i32 0)
  %143 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %144 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %143, i32 0, i32 28
  store i8* %142, i8** %144, align 8
  %145 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %146 = load i32, i32* @V4L2_CID_RDS_TX_ARTIFICIAL_HEAD, align 4
  %147 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %145, i32* @si4713_ctrl_ops, i32 %146, i32 0, i32 1, i32 1, i32 0)
  %148 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %149 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %148, i32 0, i32 27
  store i8* %147, i8** %149, align 8
  %150 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %151 = load i32, i32* @V4L2_CID_RDS_TX_MONO_STEREO, align 4
  %152 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %150, i32* @si4713_ctrl_ops, i32 %151, i32 0, i32 1, i32 1, i32 1)
  %153 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %154 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %153, i32 0, i32 26
  store i8* %152, i8** %154, align 8
  %155 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %156 = load i32, i32* @V4L2_CID_RDS_TX_TRAFFIC_PROGRAM, align 4
  %157 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %155, i32* @si4713_ctrl_ops, i32 %156, i32 0, i32 1, i32 1, i32 0)
  %158 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %159 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %158, i32 0, i32 25
  store i8* %157, i8** %159, align 8
  %160 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %161 = load i32, i32* @V4L2_CID_RDS_TX_TRAFFIC_ANNOUNCEMENT, align 4
  %162 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %160, i32* @si4713_ctrl_ops, i32 %161, i32 0, i32 1, i32 1, i32 0)
  %163 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %164 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %163, i32 0, i32 24
  store i8* %162, i8** %164, align 8
  %165 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %166 = load i32, i32* @V4L2_CID_RDS_TX_MUSIC_SPEECH, align 4
  %167 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %165, i32* @si4713_ctrl_ops, i32 %166, i32 0, i32 1, i32 1, i32 1)
  %168 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %169 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %168, i32 0, i32 23
  store i8* %167, i8** %169, align 8
  %170 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %171 = load i32, i32* @V4L2_CID_RDS_TX_DYNAMIC_PTY, align 4
  %172 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %170, i32* @si4713_ctrl_ops, i32 %171, i32 0, i32 1, i32 1, i32 0)
  %173 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %174 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %173, i32 0, i32 22
  store i8* %172, i8** %174, align 8
  %175 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %176 = load i32, i32* @V4L2_CID_RDS_TX_ALT_FREQS_ENABLE, align 4
  %177 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %175, i32* @si4713_ctrl_ops, i32 %176, i32 0, i32 1, i32 1, i32 0)
  %178 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %179 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %178, i32 0, i32 21
  store i8* %177, i8** %179, align 8
  %180 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %181 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %180, i32* @si4713_alt_freqs_ctrl, i32* null)
  %182 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %183 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %182, i32 0, i32 20
  store i32 %181, i32* %183, align 8
  %184 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %185 = load i32, i32* @V4L2_CID_RDS_TX_DEVIATION, align 4
  %186 = load i32, i32* @MAX_RDS_DEVIATION, align 4
  %187 = load i32, i32* @DEFAULT_RDS_DEVIATION, align 4
  %188 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %184, i32* @si4713_ctrl_ops, i32 %185, i32 0, i32 %186, i32 10, i32 %187)
  %189 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %190 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %189, i32 0, i32 19
  store i8* %188, i8** %190, align 8
  %191 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %192 = load i32, i32* @V4L2_CID_RDS_TX_PS_NAME, align 4
  %193 = load i32, i32* @MAX_RDS_PS_NAME, align 4
  %194 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %191, i32* @si4713_ctrl_ops, i32 %192, i32 0, i32 %193, i32 8, i32 0)
  %195 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %196 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %195, i32 0, i32 18
  store i8* %194, i8** %196, align 8
  %197 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %198 = load i32, i32* @V4L2_CID_RDS_TX_RADIO_TEXT, align 4
  %199 = load i32, i32* @MAX_RDS_RADIO_TEXT, align 4
  %200 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %197, i32* @si4713_ctrl_ops, i32 %198, i32 0, i32 %199, i32 32, i32 0)
  %201 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %202 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %201, i32 0, i32 17
  store i8* %200, i8** %202, align 8
  %203 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %204 = load i32, i32* @V4L2_CID_AUDIO_LIMITER_ENABLED, align 4
  %205 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %203, i32* @si4713_ctrl_ops, i32 %204, i32 0, i32 1, i32 1, i32 1)
  %206 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %207 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %206, i32 0, i32 16
  store i8* %205, i8** %207, align 8
  %208 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %209 = load i32, i32* @V4L2_CID_AUDIO_LIMITER_RELEASE_TIME, align 4
  %210 = load i32, i32* @MAX_LIMITER_RELEASE_TIME, align 4
  %211 = load i32, i32* @DEFAULT_LIMITER_RTIME, align 4
  %212 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %208, i32* @si4713_ctrl_ops, i32 %209, i32 250, i32 %210, i32 10, i32 %211)
  %213 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %214 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %213, i32 0, i32 15
  store i8* %212, i8** %214, align 8
  %215 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %216 = load i32, i32* @V4L2_CID_AUDIO_LIMITER_DEVIATION, align 4
  %217 = load i32, i32* @MAX_LIMITER_DEVIATION, align 4
  %218 = load i32, i32* @DEFAULT_LIMITER_DEV, align 4
  %219 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %215, i32* @si4713_ctrl_ops, i32 %216, i32 0, i32 %217, i32 10, i32 %218)
  %220 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %221 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %220, i32 0, i32 14
  store i8* %219, i8** %221, align 8
  %222 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %223 = load i32, i32* @V4L2_CID_AUDIO_COMPRESSION_ENABLED, align 4
  %224 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %222, i32* @si4713_ctrl_ops, i32 %223, i32 0, i32 1, i32 1, i32 1)
  %225 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %226 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %225, i32 0, i32 13
  store i8* %224, i8** %226, align 8
  %227 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %228 = load i32, i32* @V4L2_CID_AUDIO_COMPRESSION_GAIN, align 4
  %229 = load i32, i32* @MAX_ACOMP_GAIN, align 4
  %230 = load i32, i32* @DEFAULT_ACOMP_GAIN, align 4
  %231 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %227, i32* @si4713_ctrl_ops, i32 %228, i32 0, i32 %229, i32 1, i32 %230)
  %232 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %233 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %232, i32 0, i32 12
  store i8* %231, i8** %233, align 8
  %234 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %235 = load i32, i32* @V4L2_CID_AUDIO_COMPRESSION_THRESHOLD, align 4
  %236 = load i32, i32* @MIN_ACOMP_THRESHOLD, align 4
  %237 = load i32, i32* @MAX_ACOMP_THRESHOLD, align 4
  %238 = load i32, i32* @DEFAULT_ACOMP_THRESHOLD, align 4
  %239 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %234, i32* @si4713_ctrl_ops, i32 %235, i32 %236, i32 %237, i32 1, i32 %238)
  %240 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %241 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %240, i32 0, i32 11
  store i8* %239, i8** %241, align 8
  %242 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %243 = load i32, i32* @V4L2_CID_AUDIO_COMPRESSION_ATTACK_TIME, align 4
  %244 = load i32, i32* @MAX_ACOMP_ATTACK_TIME, align 4
  %245 = load i32, i32* @DEFAULT_ACOMP_ATIME, align 4
  %246 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %242, i32* @si4713_ctrl_ops, i32 %243, i32 0, i32 %244, i32 500, i32 %245)
  %247 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %248 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %247, i32 0, i32 10
  store i8* %246, i8** %248, align 8
  %249 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %250 = load i32, i32* @V4L2_CID_AUDIO_COMPRESSION_RELEASE_TIME, align 4
  %251 = load i32, i32* @MAX_ACOMP_RELEASE_TIME, align 4
  %252 = load i32, i32* @DEFAULT_ACOMP_RTIME, align 4
  %253 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %249, i32* @si4713_ctrl_ops, i32 %250, i32 100000, i32 %251, i32 100000, i32 %252)
  %254 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %255 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %254, i32 0, i32 9
  store i8* %253, i8** %255, align 8
  %256 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %257 = load i32, i32* @V4L2_CID_PILOT_TONE_ENABLED, align 4
  %258 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %256, i32* @si4713_ctrl_ops, i32 %257, i32 0, i32 1, i32 1, i32 1)
  %259 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %260 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %259, i32 0, i32 8
  store i8* %258, i8** %260, align 8
  %261 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %262 = load i32, i32* @V4L2_CID_PILOT_TONE_DEVIATION, align 4
  %263 = load i32, i32* @MAX_PILOT_DEVIATION, align 4
  %264 = load i32, i32* @DEFAULT_PILOT_DEVIATION, align 4
  %265 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %261, i32* @si4713_ctrl_ops, i32 %262, i32 0, i32 %263, i32 10, i32 %264)
  %266 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %267 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %266, i32 0, i32 7
  store i8* %265, i8** %267, align 8
  %268 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %269 = load i32, i32* @V4L2_CID_PILOT_TONE_FREQUENCY, align 4
  %270 = load i32, i32* @MAX_PILOT_FREQUENCY, align 4
  %271 = load i32, i32* @DEFAULT_PILOT_FREQUENCY, align 4
  %272 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %268, i32* @si4713_ctrl_ops, i32 %269, i32 0, i32 %270, i32 1, i32 %271)
  %273 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %274 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %273, i32 0, i32 6
  store i8* %272, i8** %274, align 8
  %275 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %276 = load i32, i32* @V4L2_CID_TUNE_PREEMPHASIS, align 4
  %277 = load i32, i32* @V4L2_PREEMPHASIS_75_uS, align 4
  %278 = load i32, i32* @V4L2_PREEMPHASIS_50_uS, align 4
  %279 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %275, i32* @si4713_ctrl_ops, i32 %276, i32 %277, i32 0, i32 %278)
  %280 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %281 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %280, i32 0, i32 5
  store i32 %279, i32* %281, align 8
  %282 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %283 = load i32, i32* @V4L2_CID_TUNE_POWER_LEVEL, align 4
  %284 = load i32, i32* @SI4713_MAX_POWER, align 4
  %285 = load i32, i32* @DEFAULT_POWER_LEVEL, align 4
  %286 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %282, i32* @si4713_ctrl_ops, i32 %283, i32 0, i32 %284, i32 1, i32 %285)
  %287 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %288 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %287, i32 0, i32 4
  store i8* %286, i8** %288, align 8
  %289 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %290 = load i32, i32* @V4L2_CID_TUNE_ANTENNA_CAPACITOR, align 4
  %291 = load i32, i32* @SI4713_MAX_ANTCAP, align 4
  %292 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %289, i32* @si4713_ctrl_ops, i32 %290, i32 0, i32 %291, i32 1, i32 0)
  %293 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %294 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %293, i32 0, i32 3
  store i8* %292, i8** %294, align 8
  %295 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %296 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %110
  %300 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %301 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  store i32 %302, i32* %10, align 4
  br label %395

303:                                              ; preds = %110
  %304 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %305 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %304, i32 0, i32 2
  %306 = call i32 @v4l2_ctrl_cluster(i32 29, i8** %305)
  %307 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %308 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %309 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %307, %struct.v4l2_ctrl_handler** %310, align 8
  %311 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %312 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %339

315:                                              ; preds = %303
  %316 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %317 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %316, i32 0, i32 2
  %318 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %319 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = load i32, i32* @si4713_handler, align 4
  %322 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %323 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %324 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %327 = call i32 @devm_request_irq(%struct.TYPE_13__* %317, i64 %320, i32 %321, i32 %322, i32 %325, %struct.si4713_device* %326)
  store i32 %327, i32* %10, align 4
  %328 = load i32, i32* %10, align 4
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %315
  %331 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %332 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %331, i32 0, i32 0
  %333 = call i32 @v4l2_err(%struct.TYPE_12__* %332, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %395

334:                                              ; preds = %315
  %335 = load i32, i32* @debug, align 4
  %336 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %337 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %336, i32 0, i32 0
  %338 = call i32 @v4l2_dbg(i32 1, i32 %335, %struct.TYPE_12__* %337, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %343

339:                                              ; preds = %303
  %340 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %341 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %340, i32 0, i32 0
  %342 = call i32 @v4l2_warn(%struct.TYPE_12__* %341, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %343

343:                                              ; preds = %339, %334
  %344 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %345 = call i32 @si4713_initialize(%struct.si4713_device* %344)
  store i32 %345, i32* %10, align 4
  %346 = load i32, i32* %10, align 4
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %343
  %349 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %350 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %349, i32 0, i32 0
  %351 = call i32 @v4l2_err(%struct.TYPE_12__* %350, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  br label %395

352:                                              ; preds = %343
  %353 = load %struct.device_node*, %struct.device_node** %7, align 8
  %354 = icmp ne %struct.device_node* %353, null
  br i1 %354, label %364, label %355

355:                                              ; preds = %352
  %356 = load %struct.si4713_platform_data*, %struct.si4713_platform_data** %6, align 8
  %357 = icmp ne %struct.si4713_platform_data* %356, null
  br i1 %357, label %358, label %363

358:                                              ; preds = %355
  %359 = load %struct.si4713_platform_data*, %struct.si4713_platform_data** %6, align 8
  %360 = getelementptr inbounds %struct.si4713_platform_data, %struct.si4713_platform_data* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %364, label %363

363:                                              ; preds = %358, %355
  store i32 0, i32* %2, align 4
  br label %400

364:                                              ; preds = %358, %352
  %365 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 -1)
  store %struct.platform_device* %365, %struct.platform_device** %9, align 8
  %366 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %367 = icmp ne %struct.platform_device* %366, null
  br i1 %367, label %371, label %368

368:                                              ; preds = %364
  %369 = load i32, i32* @ENOMEM, align 4
  %370 = sub nsw i32 0, %369
  store i32 %370, i32* %10, align 4
  br label %389

371:                                              ; preds = %364
  %372 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %373 = getelementptr inbounds %struct.radio_si4713_platform_data, %struct.radio_si4713_platform_data* %8, i32 0, i32 0
  store %struct.i2c_client* %372, %struct.i2c_client** %373, align 8
  %374 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %375 = call i32 @platform_device_add_data(%struct.platform_device* %374, %struct.radio_si4713_platform_data* %8, i32 8)
  store i32 %375, i32* %10, align 4
  %376 = load i32, i32* %10, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %371
  br label %389

379:                                              ; preds = %371
  %380 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %381 = call i32 @platform_device_add(%struct.platform_device* %380)
  store i32 %381, i32* %10, align 4
  %382 = load i32, i32* %10, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %379
  br label %389

385:                                              ; preds = %379
  %386 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %387 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %388 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %387, i32 0, i32 1
  store %struct.platform_device* %386, %struct.platform_device** %388, align 8
  store i32 0, i32* %2, align 4
  br label %400

389:                                              ; preds = %384, %378, %368
  %390 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %391 = call i32 @platform_device_put(%struct.platform_device* %390)
  %392 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %393 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %392, i32 0, i32 0
  %394 = call i32 @v4l2_device_unregister_subdev(%struct.TYPE_12__* %393)
  br label %395

395:                                              ; preds = %389, %348, %330, %299
  %396 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %397 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %396)
  br label %398

398:                                              ; preds = %395, %102, %73, %43, %25
  %399 = load i32, i32* %10, align 4
  store i32 %399, i32* %2, align 4
  br label %400

400:                                              ; preds = %398, %385, %363
  %401 = load i32, i32* %2, align 4
  ret i32 %401
}

declare dso_local %struct.si4713_device* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32* @devm_gpiod_get_optional(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i8* @devm_regulator_get_optional(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_12__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, i32*, i32*) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_13__*, i64, i32, i32, i32, %struct.si4713_device*) #1

declare dso_local i32 @v4l2_err(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @v4l2_warn(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @si4713_initialize(%struct.si4713_device*) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, %struct.radio_si4713_platform_data*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.TYPE_12__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
