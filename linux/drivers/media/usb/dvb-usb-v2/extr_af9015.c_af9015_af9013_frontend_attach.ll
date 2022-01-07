; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_af9013_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_af9013_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.af9015_state = type { i32*, i32*, i32*, i32*, %struct.i2c_client**, %struct.TYPE_6__*, i32*, i64 }
%struct.i2c_client = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* (%struct.i2c_client*)*, i8**, i32, i32 }
%struct.dvb_usb_device = type { i32, %struct.usb_interface* }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"adap id %u\0A\00", align 1
@AF9013_TS_MODE_USB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"\00\01\09\00\00", align 1
@AF9013_GPIO_HI = common dso_local global i8* null, align 8
@AF9013_GPIO_TUNER_ON = common dso_local global i8* null, align 8
@AF9013_TS_MODE_SERIAL = common dso_local global i32 0, align 4
@AF9013_GPIO_LO = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"firmware copy to 2nd frontend failed, will disable it\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"af9013\00", align 1
@af9015_af9013_set_frontend = common dso_local global i32 0, align 4
@af9015_af9013_read_status = common dso_local global i32 0, align 4
@af9015_af9013_init = common dso_local global i32 0, align 4
@af9015_af9013_sleep = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @af9015_af9013_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9015_af9013_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.af9015_state*, align 8
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %10 = call %struct.af9015_state* @adap_to_priv(%struct.dvb_usb_adapter* %9)
  store %struct.af9015_state* %10, %struct.af9015_state** %4, align 8
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %12 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %11)
  store %struct.dvb_usb_device* %12, %struct.dvb_usb_device** %5, align 8
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 1
  %15 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  store %struct.usb_interface* %15, %struct.usb_interface** %6, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %1
  %27 = load i32, i32* @AF9013_TS_MODE_USB, align 4
  %28 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %29 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %28, i32 0, i32 5
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  store i32 %27, i32* %32, align 4
  %33 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %34 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %33, i32 0, i32 5
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memcpy(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %40 = load i8*, i8** @AF9013_GPIO_HI, align 8
  %41 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %42 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %41, i32 0, i32 5
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  store i8* %40, i8** %47, align 8
  %48 = load i8*, i8** @AF9013_GPIO_TUNER_ON, align 8
  %49 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %50 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %49, i32 0, i32 5
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 3
  store i8* %48, i8** %55, align 8
  br label %119

56:                                               ; preds = %1
  %57 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %118

61:                                               ; preds = %56
  %62 = load i32, i32* @AF9013_TS_MODE_SERIAL, align 4
  %63 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %64 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %63, i32 0, i32 5
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  store i32 %62, i32* %67, align 4
  %68 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %69 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %68, i32 0, i32 5
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 7, i32* %72, align 8
  %73 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %74 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %73, i32 0, i32 5
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @memcpy(i32 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %80 = load i8*, i8** @AF9013_GPIO_TUNER_ON, align 8
  %81 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %82 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %81, i32 0, i32 5
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  store i8* %80, i8** %87, align 8
  %88 = load i8*, i8** @AF9013_GPIO_LO, align 8
  %89 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %90 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %89, i32 0, i32 5
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  store i8* %88, i8** %95, align 8
  %96 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %97 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %61
  %101 = call i32 @msleep(i32 100)
  %102 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %103 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %102)
  %104 = call i32 @af9015_copy_firmware(%struct.dvb_usb_device* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %109 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %108, i32 0, i32 0
  %110 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %111 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %112 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %111, i32 0, i32 7
  store i64 0, i64* %112, align 8
  br label %275

113:                                              ; preds = %100
  br label %117

114:                                              ; preds = %61
  %115 = load i32, i32* @ENODEV, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %8, align 4
  br label %275

117:                                              ; preds = %113
  br label %118

118:                                              ; preds = %117, %56
  br label %119

119:                                              ; preds = %118, %26
  %120 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %121 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %120, i32 0, i32 0
  %122 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %123 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %126 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %132 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %131, i32 0, i32 5
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %137
  %139 = call %struct.i2c_client* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* %121, i32 %130, %struct.TYPE_6__* %138)
  store %struct.i2c_client* %139, %struct.i2c_client** %7, align 8
  %140 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %141 = icmp ne %struct.i2c_client* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %119
  %143 = load i32, i32* @ENODEV, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %8, align 4
  br label %275

145:                                              ; preds = %119
  %146 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %147 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %146, i32 0, i32 5
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %150 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_5__* (%struct.i2c_client*)*, %struct.TYPE_5__* (%struct.i2c_client*)** %154, align 8
  %156 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %157 = call %struct.TYPE_5__* %155(%struct.i2c_client* %156)
  %158 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %158, i32 0, i32 1
  %160 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %160, i64 0
  store %struct.TYPE_5__* %157, %struct.TYPE_5__** %161, align 8
  %162 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %163 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %164 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %163, i32 0, i32 4
  %165 = load %struct.i2c_client**, %struct.i2c_client*** %164, align 8
  %166 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %167 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %165, i64 %169
  store %struct.i2c_client* %162, %struct.i2c_client** %170, align 8
  %171 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %172 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %171, i32 0, i32 1
  %173 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %173, i64 0
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = icmp ne %struct.TYPE_5__* %175, null
  br i1 %176, label %177, label %274

177:                                              ; preds = %145
  %178 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %179 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %178, i32 0, i32 1
  %180 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %180, i64 0
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %187 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %186, i32 0, i32 3
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %190 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %188, i64 %192
  store i32 %185, i32* %193, align 4
  %194 = load i32, i32* @af9015_af9013_set_frontend, align 4
  %195 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %196 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %195, i32 0, i32 1
  %197 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %197, i64 0
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 3
  store i32 %194, i32* %201, align 4
  %202 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %203 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %202, i32 0, i32 1
  %204 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %204, i64 0
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %211 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %214 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %212, i64 %216
  store i32 %209, i32* %217, align 4
  %218 = load i32, i32* @af9015_af9013_read_status, align 4
  %219 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %220 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %219, i32 0, i32 1
  %221 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %221, i64 0
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 2
  store i32 %218, i32* %225, align 4
  %226 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %227 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %226, i32 0, i32 1
  %228 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %228, i64 0
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %235 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %238 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %236, i64 %240
  store i32 %233, i32* %241, align 4
  %242 = load i32, i32* @af9015_af9013_init, align 4
  %243 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %244 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %243, i32 0, i32 1
  %245 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %245, i64 0
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 1
  store i32 %242, i32* %249, align 4
  %250 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %251 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %250, i32 0, i32 1
  %252 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %252, i64 0
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %259 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %262 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %260, i64 %264
  store i32 %257, i32* %265, align 4
  %266 = load i32, i32* @af9015_af9013_sleep, align 4
  %267 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %268 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %267, i32 0, i32 1
  %269 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %269, i64 0
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  store i32 %266, i32* %273, align 4
  br label %274

274:                                              ; preds = %177, %145
  store i32 0, i32* %2, align 4
  br label %281

275:                                              ; preds = %142, %114, %107
  %276 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %277 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %276, i32 0, i32 0
  %278 = load i32, i32* %8, align 4
  %279 = call i32 @dev_dbg(i32* %277, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %278)
  %280 = load i32, i32* %8, align 4
  store i32 %280, i32* %2, align 4
  br label %281

281:                                              ; preds = %275, %274
  %282 = load i32, i32* %2, align 4
  ret i32 %282
}

declare dso_local %struct.af9015_state* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @af9015_copy_firmware(%struct.dvb_usb_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.i2c_client* @dvb_module_probe(i8*, i32*, i32*, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
