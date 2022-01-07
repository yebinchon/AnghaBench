; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ir-kbd-i2c.c_ir_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ir-kbd-i2c.c_ir_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i16, %struct.TYPE_9__, %struct.i2c_adapter* }
%struct.TYPE_9__ = type { %struct.IR_i2c_init_data* }
%struct.IR_i2c_init_data = type { i8*, i8*, i32, i32, i8*, i64, %struct.rc_dev* }
%struct.rc_dev = type { i8*, i8*, i32, i32, i32, i32, i64, i32, i32, %struct.IR_i2c*, %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.IR_i2c = type { i8*, i32, i32, i32, i32, i32, i32, i8*, %struct.rc_dev*, i64, %struct.i2c_client* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_adapter = type { %struct.TYPE_9__ }
%struct.i2c_device_id = type { i32 }

@RC_PROTO_BIT_UNKNOWN = common dso_local global i32 0, align 4
@FLAG_TX = common dso_local global i32 0, align 4
@FLAG_HDPVR = common dso_local global i32 0, align 4
@enable_hdpvr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"IR for HDPVR is known to cause problems during recording, use enable_hdpvr modparam to enable\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEFAULT_POLLING_INTERVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Pixelview\00", align 1
@get_key_pixelview = common dso_local global i8* null, align 8
@RC_PROTO_BIT_OTHER = common dso_local global i32 0, align 4
@RC_MAP_EMPTY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"Hauppauge\00", align 1
@get_key_haup = common dso_local global i8* null, align 8
@RC_PROTO_BIT_RC5 = common dso_local global i32 0, align 4
@RC_MAP_HAUPPAUGE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"KNC One\00", align 1
@get_key_knc1 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"FusionHDTV\00", align 1
@get_key_fusionhdtv = common dso_local global i8* null, align 8
@RC_MAP_FUSIONHDTV_MCE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"AVerMedia Cardbus remote\00", align 1
@get_key_avermedia_cardbus = common dso_local global i8* null, align 8
@RC_MAP_AVERMEDIA_CARDBUS = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"AVerMedia EM78P153\00", align 1
@RC_MAP_AVERMEDIA_M733A_RM_K6 = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"Hauppauge/Zilog Z8\00", align 1
@get_key_haup_xvr = common dso_local global i8* null, align 8
@RC_PROTO_BIT_RC6_MCE = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC6_6A_32 = common dso_local global i32 0, align 4
@RC_DRIVER_SCANCODE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Unsupported device at address 0x%02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@ir_open = common dso_local global i32 0, align 4
@ir_close = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i64 0, align 8
@ir_work = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"failed to setup tx i2c address\00", align 1
@zilog_tx = common dso_local global i32 0, align 4
@zilog_tx_carrier = common dso_local global i32 0, align 4
@zilog_tx_duty_cycle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ir_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.IR_i2c*, align 8
  %10 = alloca %struct.rc_dev*, align 8
  %11 = alloca %struct.i2c_adapter*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.IR_i2c_init_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %16 = load i32, i32* @RC_PROTO_BIT_UNKNOWN, align 4
  store i32 %16, i32* %8, align 4
  store %struct.rc_dev* null, %struct.rc_dev** %10, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 2
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %11, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i16, i16* %21, align 8
  store i16 %22, i16* %12, align 2
  %23 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FLAG_TX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %13, align 4
  %30 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FLAG_HDPVR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = load i32, i32* @enable_hdpvr, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 1
  %42 = call i32 @dev_err(%struct.TYPE_9__* %41, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %351

45:                                               ; preds = %36, %2
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 1
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.IR_i2c* @devm_kzalloc(%struct.TYPE_9__* %47, i32 64, i32 %48)
  store %struct.IR_i2c* %49, %struct.IR_i2c** %9, align 8
  %50 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %51 = icmp ne %struct.IR_i2c* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %351

55:                                               ; preds = %45
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %58 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %57, i32 0, i32 10
  store %struct.i2c_client* %56, %struct.i2c_client** %58, align 8
  %59 = load i64, i64* @DEFAULT_POLLING_INTERVAL, align 8
  %60 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %61 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %60, i32 0, i32 9
  store i64 %59, i64* %61, align 8
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %64 = call i32 @i2c_set_clientdata(%struct.i2c_client* %62, %struct.IR_i2c* %63)
  %65 = load i16, i16* %12, align 2
  %66 = zext i16 %65 to i32
  switch i32 %66, label %113 [
    i32 100, label %67
    i32 24, label %73
    i32 31, label %73
    i32 26, label %73
    i32 48, label %79
    i32 107, label %85
    i32 64, label %91
    i32 65, label %97
    i32 113, label %103
  ]

67:                                               ; preds = %55
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %68 = load i8*, i8** @get_key_pixelview, align 8
  %69 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %70 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %69, i32 0, i32 7
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @RC_PROTO_BIT_OTHER, align 4
  store i32 %71, i32* %8, align 4
  %72 = load i8*, i8** @RC_MAP_EMPTY, align 8
  store i8* %72, i8** %6, align 8
  br label %113

73:                                               ; preds = %55, %55, %55
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %74 = load i8*, i8** @get_key_haup, align 8
  %75 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %76 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %75, i32 0, i32 7
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @RC_PROTO_BIT_RC5, align 4
  store i32 %77, i32* %8, align 4
  %78 = load i8*, i8** @RC_MAP_HAUPPAUGE, align 8
  store i8* %78, i8** %6, align 8
  br label %113

79:                                               ; preds = %55
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  %80 = load i8*, i8** @get_key_knc1, align 8
  %81 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %82 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @RC_PROTO_BIT_OTHER, align 4
  store i32 %83, i32* %8, align 4
  %84 = load i8*, i8** @RC_MAP_EMPTY, align 8
  store i8* %84, i8** %6, align 8
  br label %113

85:                                               ; preds = %55
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  %86 = load i8*, i8** @get_key_fusionhdtv, align 8
  %87 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %88 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %87, i32 0, i32 7
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @RC_PROTO_BIT_UNKNOWN, align 4
  store i32 %89, i32* %8, align 4
  %90 = load i8*, i8** @RC_MAP_FUSIONHDTV_MCE, align 8
  store i8* %90, i8** %6, align 8
  br label %113

91:                                               ; preds = %55
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  %92 = load i8*, i8** @get_key_avermedia_cardbus, align 8
  %93 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %94 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %93, i32 0, i32 7
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* @RC_PROTO_BIT_OTHER, align 4
  store i32 %95, i32* %8, align 4
  %96 = load i8*, i8** @RC_MAP_AVERMEDIA_CARDBUS, align 8
  store i8* %96, i8** %6, align 8
  br label %113

97:                                               ; preds = %55
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  %98 = load i8*, i8** @get_key_avermedia_cardbus, align 8
  %99 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %100 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %99, i32 0, i32 7
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @RC_PROTO_BIT_OTHER, align 4
  store i32 %101, i32* %8, align 4
  %102 = load i8*, i8** @RC_MAP_AVERMEDIA_M733A_RM_K6, align 8
  store i8* %102, i8** %6, align 8
  br label %113

103:                                              ; preds = %55
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  %104 = load i8*, i8** @get_key_haup_xvr, align 8
  %105 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %106 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %105, i32 0, i32 7
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* @RC_PROTO_BIT_RC5, align 4
  %108 = load i32, i32* @RC_PROTO_BIT_RC6_MCE, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @RC_PROTO_BIT_RC6_6A_32, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %8, align 4
  %112 = load i8*, i8** @RC_MAP_HAUPPAUGE, align 8
  store i8* %112, i8** %6, align 8
  store i32 1, i32* %13, align 4
  br label %113

113:                                              ; preds = %55, %103, %97, %91, %85, %79, %73, %67
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %116, align 8
  %118 = icmp ne %struct.IR_i2c_init_data* %117, null
  br i1 %118, label %119, label %187

119:                                              ; preds = %113
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %122, align 8
  store %struct.IR_i2c_init_data* %123, %struct.IR_i2c_init_data** %15, align 8
  %124 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %15, align 8
  %125 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %6, align 8
  %127 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %15, align 8
  %128 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %127, i32 0, i32 6
  %129 = load %struct.rc_dev*, %struct.rc_dev** %128, align 8
  store %struct.rc_dev* %129, %struct.rc_dev** %10, align 8
  %130 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %15, align 8
  %131 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %7, align 8
  %133 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %15, align 8
  %134 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %119
  %138 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %15, align 8
  %139 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %137, %119
  %142 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %15, align 8
  %143 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %15, align 8
  %148 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %151 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %150, i32 0, i32 9
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %146, %141
  %153 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %15, align 8
  %154 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  switch i32 %155, label %186 [
    i32 133, label %156
    i32 128, label %162
    i32 131, label %166
    i32 129, label %170
    i32 132, label %174
    i32 130, label %178
    i32 134, label %182
  ]

156:                                              ; preds = %152
  %157 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %15, align 8
  %158 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %157, i32 0, i32 4
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %161 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %160, i32 0, i32 7
  store i8* %159, i8** %161, align 8
  br label %186

162:                                              ; preds = %152
  %163 = load i8*, i8** @get_key_pixelview, align 8
  %164 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %165 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %164, i32 0, i32 7
  store i8* %163, i8** %165, align 8
  br label %186

166:                                              ; preds = %152
  %167 = load i8*, i8** @get_key_haup, align 8
  %168 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %169 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %168, i32 0, i32 7
  store i8* %167, i8** %169, align 8
  br label %186

170:                                              ; preds = %152
  %171 = load i8*, i8** @get_key_knc1, align 8
  %172 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %173 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %172, i32 0, i32 7
  store i8* %171, i8** %173, align 8
  br label %186

174:                                              ; preds = %152
  %175 = load i8*, i8** @get_key_fusionhdtv, align 8
  %176 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %177 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %176, i32 0, i32 7
  store i8* %175, i8** %177, align 8
  br label %186

178:                                              ; preds = %152
  %179 = load i8*, i8** @get_key_haup_xvr, align 8
  %180 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %181 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %180, i32 0, i32 7
  store i8* %179, i8** %181, align 8
  br label %186

182:                                              ; preds = %152
  %183 = load i8*, i8** @get_key_avermedia_cardbus, align 8
  %184 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %185 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %184, i32 0, i32 7
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %152, %182, %178, %174, %170, %166, %162, %156
  br label %187

187:                                              ; preds = %186, %113
  %188 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %189 = icmp ne %struct.rc_dev* %188, null
  br i1 %189, label %199, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* @RC_DRIVER_SCANCODE, align 4
  %192 = call %struct.rc_dev* @rc_allocate_device(i32 %191)
  store %struct.rc_dev* %192, %struct.rc_dev** %10, align 8
  %193 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %194 = icmp ne %struct.rc_dev* %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %190
  %196 = load i32, i32* @ENOMEM, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %3, align 4
  br label %351

198:                                              ; preds = %190
  br label %199

199:                                              ; preds = %198, %187
  %200 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %201 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %202 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %201, i32 0, i32 8
  store %struct.rc_dev* %200, %struct.rc_dev** %202, align 8
  %203 = load i8*, i8** %7, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %216

205:                                              ; preds = %199
  %206 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %207 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %206, i32 0, i32 7
  %208 = load i8*, i8** %207, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = load i32, i32* %8, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i8*, i8** %6, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %223, label %216

216:                                              ; preds = %213, %210, %205, %199
  %217 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %218 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %217, i32 0, i32 1
  %219 = load i16, i16* %12, align 2
  %220 = call i32 @dev_warn(%struct.TYPE_9__* %218, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i16 zeroext %219)
  %221 = load i32, i32* @ENODEV, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %14, align 4
  br label %336

223:                                              ; preds = %213
  %224 = load i8*, i8** %6, align 8
  %225 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %226 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %225, i32 0, i32 0
  store i8* %224, i8** %226, align 8
  %227 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %228 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %231 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %230, i32 0, i32 0
  %232 = call i8* @dev_name(%struct.TYPE_9__* %231)
  %233 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %234 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %233, i32 0, i32 1
  %235 = call i8* @dev_name(%struct.TYPE_9__* %234)
  %236 = call i32 @snprintf(i32 %229, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %232, i8* %235)
  %237 = load i32, i32* @BUS_I2C, align 4
  %238 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %239 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %238, i32 0, i32 12
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  store i32 %237, i32* %240, align 4
  %241 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %242 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %245 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %244, i32 0, i32 11
  store i32 %243, i32* %245, align 8
  %246 = load i8*, i8** %7, align 8
  %247 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %248 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %247, i32 0, i32 0
  store i8* %246, i8** %248, align 8
  %249 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %250 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %249, i32 0, i32 1
  %251 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %252 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %251, i32 0, i32 10
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  store %struct.TYPE_9__* %250, %struct.TYPE_9__** %253, align 8
  %254 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %255 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %256 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %255, i32 0, i32 9
  store %struct.IR_i2c* %254, %struct.IR_i2c** %256, align 8
  %257 = load i32, i32* @ir_open, align 4
  %258 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %259 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %258, i32 0, i32 8
  store i32 %257, i32* %259, align 4
  %260 = load i32, i32* @ir_close, align 4
  %261 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %262 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %261, i32 0, i32 7
  store i32 %260, i32* %262, align 8
  %263 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %264 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %267 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %266, i32 0, i32 1
  store i8* %265, i8** %267, align 8
  %268 = load i32, i32* %8, align 4
  %269 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %270 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %269, i32 0, i32 2
  store i32 %268, i32* %270, align 8
  %271 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %272 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %271, i32 0, i32 6
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %223
  %276 = load i64, i64* @KBUILD_MODNAME, align 8
  %277 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %278 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %277, i32 0, i32 6
  store i64 %276, i64* %278, align 8
  br label %279

279:                                              ; preds = %275, %223
  %280 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %281 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %280, i32 0, i32 5
  %282 = call i32 @mutex_init(i32* %281)
  %283 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %284 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %283, i32 0, i32 4
  %285 = load i32, i32* @ir_work, align 4
  %286 = call i32 @INIT_DELAYED_WORK(i32* %284, i32 %285)
  %287 = load i32, i32* %13, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %329

289:                                              ; preds = %279
  %290 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %291 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %290, i32 0, i32 2
  %292 = load %struct.i2c_adapter*, %struct.i2c_adapter** %291, align 8
  %293 = call i32 @i2c_new_dummy_device(%struct.i2c_adapter* %292, i32 112)
  %294 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %295 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %294, i32 0, i32 3
  store i32 %293, i32* %295, align 8
  %296 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %297 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = call i64 @IS_ERR(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %309

301:                                              ; preds = %289
  %302 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %303 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %302, i32 0, i32 1
  %304 = call i32 @dev_err(%struct.TYPE_9__* %303, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %305 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %306 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @PTR_ERR(i32 %307)
  store i32 %308, i32* %14, align 4
  br label %336

309:                                              ; preds = %289
  %310 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %311 = call i32 @zilog_init(%struct.IR_i2c* %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %327, label %313

313:                                              ; preds = %309
  %314 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %315 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %314, i32 0, i32 1
  store i32 38000, i32* %315, align 8
  %316 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %317 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %316, i32 0, i32 2
  store i32 40, i32* %317, align 4
  %318 = load i32, i32* @zilog_tx, align 4
  %319 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %320 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %319, i32 0, i32 5
  store i32 %318, i32* %320, align 4
  %321 = load i32, i32* @zilog_tx_carrier, align 4
  %322 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %323 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %322, i32 0, i32 4
  store i32 %321, i32* %323, align 8
  %324 = load i32, i32* @zilog_tx_duty_cycle, align 4
  %325 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %326 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %325, i32 0, i32 3
  store i32 %324, i32* %326, align 4
  br label %327

327:                                              ; preds = %313, %309
  br label %328

328:                                              ; preds = %327
  br label %329

329:                                              ; preds = %328, %279
  %330 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %331 = call i32 @rc_register_device(%struct.rc_dev* %330)
  store i32 %331, i32* %14, align 4
  %332 = load i32, i32* %14, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %329
  br label %336

335:                                              ; preds = %329
  store i32 0, i32* %3, align 4
  br label %351

336:                                              ; preds = %334, %301, %216
  %337 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %338 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 8
  %340 = call i64 @IS_ERR(i32 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %347, label %342

342:                                              ; preds = %336
  %343 = load %struct.IR_i2c*, %struct.IR_i2c** %9, align 8
  %344 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @i2c_unregister_device(i32 %345)
  br label %347

347:                                              ; preds = %342, %336
  %348 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %349 = call i32 @rc_free_device(%struct.rc_dev* %348)
  %350 = load i32, i32* %14, align 4
  store i32 %350, i32* %3, align 4
  br label %351

351:                                              ; preds = %347, %335, %195, %52, %39
  %352 = load i32, i32* %3, align 4
  ret i32 %352
}

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.IR_i2c* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.IR_i2c*) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*, i16 zeroext) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @i2c_new_dummy_device(%struct.i2c_adapter*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @zilog_init(%struct.IR_i2c*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
