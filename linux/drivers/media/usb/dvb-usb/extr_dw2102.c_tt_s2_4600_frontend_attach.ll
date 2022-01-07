; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_tt_s2_4600_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_tt_s2_4600_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_12__*, %struct.dvb_usb_device* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.dvb_usb_device = type { %struct.i2c_adapter, i32, %struct.dw2102_state* }
%struct.i2c_adapter = type { i32 }
%struct.dw2102_state = type { i32*, i64, i32, %struct.i2c_client*, %struct.i2c_client* }
%struct.i2c_client = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.i2c_board_info = type { i32, %struct.ts2020_config*, i32 }
%struct.ts2020_config = type { i32, i32, i32, i32, i32, %struct.TYPE_13__*, %struct.i2c_adapter* (%struct.i2c_client.0*)*, %struct.TYPE_13__* (%struct.i2c_client.1*)*, i64, i64, i32, i64, i64, i64, i32 }
%struct.i2c_client.0 = type opaque
%struct.i2c_client.1 = type opaque
%struct.m88ds3103_platform_data = type { i32, i32, i32, i32, i32, %struct.TYPE_13__*, %struct.i2c_adapter* (%struct.i2c_client.2*)*, %struct.TYPE_13__* (%struct.i2c_client.3*)*, i64, i64, i32, i64, i64, i64, i32 }
%struct.i2c_client.2 = type opaque
%struct.i2c_client.3 = type opaque

@.str = private unnamed_addr constant [30 x i8] c"command 0x0e transfer failed.\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"command 0x51 transfer failed.\00", align 1
@M88DS3103_TS_CI = common dso_local global i32 0, align 4
@M88DS3103_CLOCK_OUT_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"m88ds3103\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"ts2022\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ts2020\00", align 1
@tt_s2_4600_read_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @tt_s2_4600_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt_s2_4600_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.dw2102_state*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.i2c_board_info, align 8
  %9 = alloca %struct.m88ds3103_platform_data, align 8
  %10 = alloca %struct.ts2020_config, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %11, i32 0, i32 1
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %12, align 8
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %4, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 2
  %16 = load %struct.dw2102_state*, %struct.dw2102_state** %15, align 8
  store %struct.dw2102_state* %16, %struct.dw2102_state** %5, align 8
  %17 = bitcast %struct.m88ds3103_platform_data* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 104, i1 false)
  %18 = bitcast %struct.ts2020_config* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 104, i1 false)
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %23 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 14, i32* %25, align 4
  %26 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %27 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 128, i32* %29, align 4
  %30 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %31 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 0, i32* %33, align 4
  %34 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %35 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %36 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %39 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @dvb_usb_generic_rw(%struct.dvb_usb_device* %34, i32* %37, i32 3, i32* %40, i32 1, i32 0)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %1
  %46 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %47 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 14, i32* %49, align 4
  %50 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %51 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 2, i32* %53, align 4
  %54 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %55 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 1, i32* %57, align 4
  %58 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %59 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %60 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %63 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @dvb_usb_generic_rw(%struct.dvb_usb_device* %58, i32* %61, i32 3, i32* %64, i32 1, i32 0)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %45
  %68 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %45
  %70 = call i32 @msleep(i32 300)
  %71 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %72 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 14, i32* %74, align 4
  %75 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %76 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 131, i32* %78, align 4
  %79 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %80 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 0, i32* %82, align 4
  %83 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %84 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %85 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %88 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i64 @dvb_usb_generic_rw(%struct.dvb_usb_device* %83, i32* %86, i32 3, i32* %89, i32 1, i32 0)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %69
  %93 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %69
  %95 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %96 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 14, i32* %98, align 4
  %99 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %100 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 131, i32* %102, align 4
  %103 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %104 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 1, i32* %106, align 4
  %107 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %108 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %109 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %112 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i64 @dvb_usb_generic_rw(%struct.dvb_usb_device* %107, i32* %110, i32 3, i32* %113, i32 1, i32 0)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %94
  %117 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %94
  %119 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %120 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 81, i32* %122, align 4
  %123 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %124 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %125 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %128 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @dvb_usb_generic_rw(%struct.dvb_usb_device* %123, i32* %126, i32 1, i32* %129, i32 1, i32 0)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %118
  %133 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %118
  %135 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %136 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %135, i32 0, i32 1
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %9, i32 0, i32 0
  store i32 27000000, i32* %138, align 8
  %139 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %9, i32 0, i32 1
  store i32 33, i32* %139, align 4
  %140 = load i32, i32* @M88DS3103_TS_CI, align 4
  %141 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %9, i32 0, i32 14
  store i32 %140, i32* %141, align 8
  %142 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %9, i32 0, i32 2
  store i32 16000, i32* %142, align 8
  %143 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %9, i32 0, i32 13
  store i64 0, i64* %143, align 8
  %144 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %9, i32 0, i32 12
  store i64 0, i64* %144, align 8
  %145 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %9, i32 0, i32 3
  store i32 153, i32* %145, align 4
  %146 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %9, i32 0, i32 11
  store i64 0, i64* %146, align 8
  %147 = load i32, i32* @M88DS3103_CLOCK_OUT_ENABLED, align 4
  %148 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %9, i32 0, i32 10
  store i32 %147, i32* %148, align 8
  %149 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %9, i32 0, i32 9
  store i64 0, i64* %149, align 8
  %150 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %9, i32 0, i32 4
  store i32 1, i32* %150, align 8
  %151 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %9, i32 0, i32 8
  store i64 0, i64* %151, align 8
  %152 = call i32 @memset(%struct.i2c_board_info* %8, i32 0, i32 24)
  %153 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @I2C_NAME_SIZE, align 4
  %156 = call i32 @strscpy(i32 %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  %157 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 0
  store i32 104, i32* %157, align 8
  %158 = bitcast %struct.m88ds3103_platform_data* %9 to %struct.ts2020_config*
  %159 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 1
  store %struct.ts2020_config* %158, %struct.ts2020_config** %159, align 8
  %160 = call i32 @request_module(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %161 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %162 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %161, i32 0, i32 0
  %163 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %162, %struct.i2c_board_info* %8)
  store %struct.i2c_client* %163, %struct.i2c_client** %7, align 8
  %164 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %165 = icmp eq %struct.i2c_client* %164, null
  br i1 %165, label %172, label %166

166:                                              ; preds = %134
  %167 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %168 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = icmp eq %struct.TYPE_10__* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %166, %134
  %173 = load i32, i32* @ENODEV, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %2, align 4
  br label %308

175:                                              ; preds = %166
  %176 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %177 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @try_module_get(i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %175
  %185 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %186 = call i32 @i2c_unregister_device(%struct.i2c_client* %185)
  %187 = load i32, i32* @ENODEV, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %2, align 4
  br label %308

189:                                              ; preds = %175
  %190 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %9, i32 0, i32 7
  %191 = load %struct.TYPE_13__* (%struct.i2c_client.3*)*, %struct.TYPE_13__* (%struct.i2c_client.3*)** %190, align 8
  %192 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %193 = bitcast %struct.i2c_client* %192 to %struct.i2c_client.3*
  %194 = call %struct.TYPE_13__* %191(%struct.i2c_client.3* %193)
  %195 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %196 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %195, i32 0, i32 0
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i64 0
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  store %struct.TYPE_13__* %194, %struct.TYPE_13__** %199, align 8
  %200 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %9, i32 0, i32 6
  %201 = load %struct.i2c_adapter* (%struct.i2c_client.2*)*, %struct.i2c_adapter* (%struct.i2c_client.2*)** %200, align 8
  %202 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %203 = bitcast %struct.i2c_client* %202 to %struct.i2c_client.2*
  %204 = call %struct.i2c_adapter* %201(%struct.i2c_client.2* %203)
  store %struct.i2c_adapter* %204, %struct.i2c_adapter** %6, align 8
  %205 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %206 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %207 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %206, i32 0, i32 4
  store %struct.i2c_client* %205, %struct.i2c_client** %207, align 8
  %208 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %209 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %208, i32 0, i32 0
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i64 0
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %212, align 8
  %214 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %10, i32 0, i32 5
  store %struct.TYPE_13__* %213, %struct.TYPE_13__** %214, align 8
  %215 = call i32 @memset(%struct.i2c_board_info* %8, i32 0, i32 24)
  %216 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @I2C_NAME_SIZE, align 4
  %219 = call i32 @strscpy(i32 %217, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %218)
  %220 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 0
  store i32 96, i32* %220, align 8
  %221 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 1
  store %struct.ts2020_config* %10, %struct.ts2020_config** %221, align 8
  %222 = call i32 @request_module(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %223 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %224 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %223, %struct.i2c_board_info* %8)
  store %struct.i2c_client* %224, %struct.i2c_client** %7, align 8
  %225 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %226 = icmp eq %struct.i2c_client* %225, null
  br i1 %226, label %233, label %227

227:                                              ; preds = %189
  %228 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %229 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %230, align 8
  %232 = icmp eq %struct.TYPE_10__* %231, null
  br i1 %232, label %233, label %243

233:                                              ; preds = %227, %189
  %234 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %235 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %234, i32 0, i32 0
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i64 0
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %238, align 8
  %240 = call i32 @dvb_frontend_detach(%struct.TYPE_13__* %239)
  %241 = load i32, i32* @ENODEV, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %2, align 4
  br label %308

243:                                              ; preds = %227
  %244 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %245 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @try_module_get(i32 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %264, label %252

252:                                              ; preds = %243
  %253 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %254 = call i32 @i2c_unregister_device(%struct.i2c_client* %253)
  %255 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %256 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %255, i32 0, i32 0
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i64 0
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %259, align 8
  %261 = call i32 @dvb_frontend_detach(%struct.TYPE_13__* %260)
  %262 = load i32, i32* @ENODEV, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %2, align 4
  br label %308

264:                                              ; preds = %243
  %265 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %266 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %265, i32 0, i32 0
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i64 0
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %276 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %275, i32 0, i32 0
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i64 0
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 2
  store i32 %274, i32* %282, align 4
  %283 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %284 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %285 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %284, i32 0, i32 3
  store %struct.i2c_client* %283, %struct.i2c_client** %285, align 8
  %286 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %287 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %286, i32 0, i32 0
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i64 0
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %296 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %295, i32 0, i32 2
  store i32 %294, i32* %296, align 8
  %297 = load i32, i32* @tt_s2_4600_read_status, align 4
  %298 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %299 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %298, i32 0, i32 0
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i64 0
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 0
  store i32 %297, i32* %305, align 4
  %306 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %307 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %306, i32 0, i32 1
  store i64 0, i64* %307, align 8
  store i32 0, i32* %2, align 4
  br label %308

308:                                              ; preds = %264, %252, %233, %184, %172
  %309 = load i32, i32* %2, align 4
  ret i32 %309
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i64 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @err(i8*) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #2

declare dso_local i32 @strscpy(i32, i8*, i32) #2

declare dso_local i32 @request_module(i8*) #2

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #2

declare dso_local i32 @try_module_get(i32) #2

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #2

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
