; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_5__*, %struct.usb_interface* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.usb_interface = type { i32 }
%struct.state = type { i32*, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i8* }

@AF9033_ADC_MULTIPLIER_2X = common dso_local global i8* null, align 8
@AF9033_TS_MODE_USB = common dso_local global i32 0, align 4
@AF9033_TS_MODE_SERIAL = common dso_local global i32 0, align 4
@USB_VID_AVERMEDIA = common dso_local global i32 0, align 4
@USB_PID_AVERMEDIA_TD310 = common dso_local global i32 0, align 4
@EEPROM_IR_MODE = common dso_local global i64 0, align 8
@EEPROM_IR_TYPE = common dso_local global i64 0, align 8
@EEPROM_2ND_DEMOD_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"2nd demod I2C addr=%02x\0A\00", align 1
@EEPROM_1_TUNER_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"[%d]tuner=%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"[%d] overriding tuner from %02x to %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"tuner id=%02x not supported, please report!\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"driver does not support 2nd tuner and will disable it\00", align 1
@EEPROM_1_IF_L = common dso_local global i32 0, align 4
@EEPROM_1_IF_H = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"[%d]IF=%d\0A\00", align 1
@clock_lut_it9135 = common dso_local global i32* null, align 8
@clock_lut_af9035 = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [64 x i8] c"Device may have issues with I2C read operations. Enabling fix.\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @af9035_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9035_read_config(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %11, i32 0, i32 1
  %13 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  store %struct.usb_interface* %13, %struct.usb_interface** %4, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %15 = call %struct.state* @d_to_priv(%struct.dvb_usb_device* %14)
  store %struct.state* %15, %struct.state** %5, align 8
  %16 = load %struct.state*, %struct.state** %5, align 8
  %17 = getelementptr inbounds %struct.state, %struct.state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 28, i32* %19, align 4
  %20 = load %struct.state*, %struct.state** %5, align 8
  %21 = getelementptr inbounds %struct.state, %struct.state* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 29, i32* %23, align 4
  %24 = load i8*, i8** @AF9033_ADC_MULTIPLIER_2X, align 8
  %25 = load %struct.state*, %struct.state** %5, align 8
  %26 = getelementptr inbounds %struct.state, %struct.state* %25, i32 0, i32 9
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  store i8* %24, i8** %29, align 8
  %30 = load i8*, i8** @AF9033_ADC_MULTIPLIER_2X, align 8
  %31 = load %struct.state*, %struct.state** %5, align 8
  %32 = getelementptr inbounds %struct.state, %struct.state* %31, i32 0, i32 9
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  store i8* %30, i8** %35, align 8
  %36 = load i32, i32* @AF9033_TS_MODE_USB, align 4
  %37 = load %struct.state*, %struct.state** %5, align 8
  %38 = getelementptr inbounds %struct.state, %struct.state* %37, i32 0, i32 9
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  store i32 %36, i32* %41, align 8
  %42 = load i32, i32* @AF9033_TS_MODE_SERIAL, align 4
  %43 = load %struct.state*, %struct.state** %5, align 8
  %44 = getelementptr inbounds %struct.state, %struct.state* %43, i32 0, i32 9
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  store i32 %42, i32* %47, align 8
  %48 = load %struct.state*, %struct.state** %5, align 8
  %49 = getelementptr inbounds %struct.state, %struct.state* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  %50 = load %struct.state*, %struct.state** %5, align 8
  %51 = getelementptr inbounds %struct.state, %struct.state* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 37173
  br i1 %53, label %54, label %102

54:                                               ; preds = %1
  %55 = load %struct.state*, %struct.state** %5, align 8
  %56 = getelementptr inbounds %struct.state, %struct.state* %55, i32 0, i32 9
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.state*, %struct.state** %5, align 8
  %61 = getelementptr inbounds %struct.state, %struct.state* %60, i32 0, i32 9
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.state*, %struct.state** %5, align 8
  %66 = getelementptr inbounds %struct.state, %struct.state* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %80

69:                                               ; preds = %54
  %70 = load %struct.state*, %struct.state** %5, align 8
  %71 = getelementptr inbounds %struct.state, %struct.state* %70, i32 0, i32 9
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32 135, i32* %74, align 4
  %75 = load %struct.state*, %struct.state** %5, align 8
  %76 = getelementptr inbounds %struct.state, %struct.state* %75, i32 0, i32 9
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 135, i32* %79, align 4
  br label %91

80:                                               ; preds = %54
  %81 = load %struct.state*, %struct.state** %5, align 8
  %82 = getelementptr inbounds %struct.state, %struct.state* %81, i32 0, i32 9
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i32 138, i32* %85, align 4
  %86 = load %struct.state*, %struct.state** %5, align 8
  %87 = getelementptr inbounds %struct.state, %struct.state* %86, i32 0, i32 9
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i32 138, i32* %90, align 4
  br label %91

91:                                               ; preds = %80, %69
  %92 = load %struct.state*, %struct.state** %5, align 8
  %93 = getelementptr inbounds %struct.state, %struct.state* %92, i32 0, i32 10
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.state*, %struct.state** %5, align 8
  %98 = getelementptr inbounds %struct.state, %struct.state* %97, i32 0, i32 4
  store i32 5, i32* %98, align 4
  %99 = load %struct.state*, %struct.state** %5, align 8
  %100 = getelementptr inbounds %struct.state, %struct.state* %99, i32 0, i32 5
  store i32 0, i32* %100, align 8
  br label %348

101:                                              ; preds = %91
  br label %132

102:                                              ; preds = %1
  %103 = load %struct.state*, %struct.state** %5, align 8
  %104 = getelementptr inbounds %struct.state, %struct.state* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 37638
  br i1 %106, label %107, label %131

107:                                              ; preds = %102
  %108 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %109 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le16_to_cpu(i32 %113)
  %115 = load i32, i32* @USB_VID_AVERMEDIA, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %107
  %118 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %119 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le16_to_cpu(i32 %123)
  %125 = load i32, i32* @USB_PID_AVERMEDIA_TD310, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load %struct.state*, %struct.state** %5, align 8
  %129 = getelementptr inbounds %struct.state, %struct.state* %128, i32 0, i32 1
  store i32 1, i32* %129, align 8
  br label %130

130:                                              ; preds = %127, %117, %107
  store i32 0, i32* %2, align 4
  br label %442

131:                                              ; preds = %102
  br label %132

132:                                              ; preds = %131, %101
  %133 = load %struct.state*, %struct.state** %5, align 8
  %134 = getelementptr inbounds %struct.state, %struct.state* %133, i32 0, i32 6
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* @EEPROM_IR_MODE, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.state*, %struct.state** %5, align 8
  %140 = getelementptr inbounds %struct.state, %struct.state* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 4
  %141 = load %struct.state*, %struct.state** %5, align 8
  %142 = getelementptr inbounds %struct.state, %struct.state* %141, i32 0, i32 6
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @EEPROM_IR_TYPE, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.state*, %struct.state** %5, align 8
  %148 = getelementptr inbounds %struct.state, %struct.state* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 8
  %149 = load %struct.state*, %struct.state** %5, align 8
  %150 = getelementptr inbounds %struct.state, %struct.state* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %132
  %154 = load %struct.state*, %struct.state** %5, align 8
  %155 = getelementptr inbounds %struct.state, %struct.state* %154, i32 0, i32 6
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @EEPROM_2ND_DEMOD_ADDR, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %153
  %163 = load i32, i32* %8, align 4
  %164 = ashr i32 %163, 1
  %165 = load %struct.state*, %struct.state** %5, align 8
  %166 = getelementptr inbounds %struct.state, %struct.state* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  store i32 %164, i32* %168, align 4
  br label %169

169:                                              ; preds = %162, %153
  %170 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %171 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %170, i32 0, i32 0
  %172 = load %struct.state*, %struct.state** %5, align 8
  %173 = getelementptr inbounds %struct.state, %struct.state* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %169, %132
  store i32 0, i32* %7, align 4
  br label %179

179:                                              ; preds = %344, %178
  %180 = load i32, i32* %7, align 4
  %181 = load %struct.state*, %struct.state** %5, align 8
  %182 = getelementptr inbounds %struct.state, %struct.state* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  %185 = icmp slt i32 %180, %184
  br i1 %185, label %186, label %347

186:                                              ; preds = %179
  store i32 0, i32* %10, align 4
  %187 = load %struct.state*, %struct.state** %5, align 8
  %188 = getelementptr inbounds %struct.state, %struct.state* %187, i32 0, i32 6
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* @EEPROM_1_TUNER_ID, align 4
  %191 = load i32, i32* %10, align 4
  %192 = add i32 %190, %191
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %189, i64 %193
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %8, align 4
  %196 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %197 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %196, i32 0, i32 0
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %8, align 4
  %200 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %197, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %198, i32 %199)
  %201 = load %struct.state*, %struct.state** %5, align 8
  %202 = getelementptr inbounds %struct.state, %struct.state* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %203, 37173
  br i1 %204, label %205, label %235

205:                                              ; preds = %186
  %206 = load %struct.state*, %struct.state** %5, align 8
  %207 = getelementptr inbounds %struct.state, %struct.state* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %210, label %222

210:                                              ; preds = %205
  %211 = load i32, i32* %8, align 4
  switch i32 %211, label %221 [
    i32 135, label %212
    i32 134, label %212
    i32 133, label %212
  ]

212:                                              ; preds = %210, %210, %210
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.state*, %struct.state** %5, align 8
  %215 = getelementptr inbounds %struct.state, %struct.state* %214, i32 0, i32 9
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 1
  store i32 %213, i32* %220, align 4
  br label %221

221:                                              ; preds = %210, %212
  br label %234

222:                                              ; preds = %205
  %223 = load i32, i32* %8, align 4
  switch i32 %223, label %233 [
    i32 138, label %224
    i32 137, label %224
    i32 136, label %224
  ]

224:                                              ; preds = %222, %222, %222
  %225 = load i32, i32* %8, align 4
  %226 = load %struct.state*, %struct.state** %5, align 8
  %227 = getelementptr inbounds %struct.state, %struct.state* %226, i32 0, i32 9
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 1
  store i32 %225, i32* %232, align 4
  br label %233

233:                                              ; preds = %222, %224
  br label %234

234:                                              ; preds = %233, %221
  br label %244

235:                                              ; preds = %186
  %236 = load i32, i32* %8, align 4
  %237 = load %struct.state*, %struct.state** %5, align 8
  %238 = getelementptr inbounds %struct.state, %struct.state* %237, i32 0, i32 9
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 1
  store i32 %236, i32* %243, align 4
  br label %244

244:                                              ; preds = %235, %234
  %245 = load %struct.state*, %struct.state** %5, align 8
  %246 = getelementptr inbounds %struct.state, %struct.state* %245, i32 0, i32 9
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %8, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %269

255:                                              ; preds = %244
  %256 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %257 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %256, i32 0, i32 0
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* %8, align 4
  %260 = load %struct.state*, %struct.state** %5, align 8
  %261 = getelementptr inbounds %struct.state, %struct.state* %260, i32 0, i32 9
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %261, align 8
  %263 = load i32, i32* %7, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 (i32*, i8*, ...) @dev_info(i32* %257, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %258, i32 %259, i32 %267)
  br label %269

269:                                              ; preds = %255, %244
  %270 = load %struct.state*, %struct.state** %5, align 8
  %271 = getelementptr inbounds %struct.state, %struct.state* %270, i32 0, i32 9
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %271, align 8
  %273 = load i32, i32* %7, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  switch i32 %277, label %287 [
    i32 130, label %278
    i32 141, label %278
    i32 132, label %278
    i32 131, label %278
    i32 139, label %278
    i32 140, label %278
    i32 138, label %286
    i32 137, label %286
    i32 136, label %286
    i32 135, label %286
    i32 134, label %286
    i32 133, label %286
  ]

278:                                              ; preds = %269, %269, %269, %269, %269, %269
  %279 = load %struct.state*, %struct.state** %5, align 8
  %280 = getelementptr inbounds %struct.state, %struct.state* %279, i32 0, i32 9
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %280, align 8
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 2
  store i32 1, i32* %285, align 8
  br label %292

286:                                              ; preds = %269, %269, %269, %269, %269, %269
  br label %292

287:                                              ; preds = %269
  %288 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %289 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %288, i32 0, i32 0
  %290 = load i32, i32* %8, align 4
  %291 = call i32 @dev_warn(i32* %289, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %290)
  br label %292

292:                                              ; preds = %287, %286, %278
  %293 = load i32, i32* %7, align 4
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %295, label %312

295:                                              ; preds = %292
  %296 = load %struct.state*, %struct.state** %5, align 8
  %297 = getelementptr inbounds %struct.state, %struct.state* %296, i32 0, i32 9
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %297, align 8
  %299 = load i32, i32* %7, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  switch i32 %303, label %305 [
    i32 140, label %304
    i32 138, label %304
    i32 137, label %304
    i32 136, label %304
    i32 135, label %304
    i32 134, label %304
    i32 133, label %304
    i32 132, label %304
  ]

304:                                              ; preds = %295, %295, %295, %295, %295, %295, %295, %295
  br label %311

305:                                              ; preds = %295
  %306 = load %struct.state*, %struct.state** %5, align 8
  %307 = getelementptr inbounds %struct.state, %struct.state* %306, i32 0, i32 7
  store i32 0, i32* %307, align 8
  %308 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %309 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %308, i32 0, i32 0
  %310 = call i32 (i32*, i8*, ...) @dev_info(i32* %309, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %311

311:                                              ; preds = %305, %304
  br label %312

312:                                              ; preds = %311, %292
  %313 = load %struct.state*, %struct.state** %5, align 8
  %314 = getelementptr inbounds %struct.state, %struct.state* %313, i32 0, i32 6
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* @EEPROM_1_IF_L, align 4
  %317 = load i32, i32* %10, align 4
  %318 = add i32 %316, %317
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %315, i64 %319
  %321 = load i32, i32* %320, align 4
  store i32 %321, i32* %8, align 4
  %322 = load i32, i32* %8, align 4
  %323 = shl i32 %322, 0
  store i32 %323, i32* %9, align 4
  %324 = load %struct.state*, %struct.state** %5, align 8
  %325 = getelementptr inbounds %struct.state, %struct.state* %324, i32 0, i32 6
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* @EEPROM_1_IF_H, align 4
  %328 = load i32, i32* %10, align 4
  %329 = add i32 %327, %328
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %326, i64 %330
  %332 = load i32, i32* %331, align 4
  store i32 %332, i32* %8, align 4
  %333 = load i32, i32* %8, align 4
  %334 = shl i32 %333, 8
  %335 = load i32, i32* %9, align 4
  %336 = or i32 %335, %334
  store i32 %336, i32* %9, align 4
  %337 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %338 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %337, i32 0, i32 0
  %339 = load i32, i32* %7, align 4
  %340 = load i32, i32* %9, align 4
  %341 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %338, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %339, i32 %340)
  %342 = load i32, i32* %10, align 4
  %343 = add i32 %342, 16
  store i32 %343, i32* %10, align 4
  br label %344

344:                                              ; preds = %312
  %345 = load i32, i32* %7, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %7, align 4
  br label %179

347:                                              ; preds = %179
  br label %348

348:                                              ; preds = %347, %96
  %349 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %350 = call i32 @af9035_rd_reg(%struct.dvb_usb_device* %349, i32 55296, i32* %8)
  store i32 %350, i32* %6, align 4
  %351 = load i32, i32* %6, align 4
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %348
  br label %436

354:                                              ; preds = %348
  %355 = load i32, i32* %8, align 4
  %356 = ashr i32 %355, 0
  %357 = and i32 %356, 15
  store i32 %357, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %358

358:                                              ; preds = %397, %354
  %359 = load i32, i32* %7, align 4
  %360 = load %struct.state*, %struct.state** %5, align 8
  %361 = getelementptr inbounds %struct.state, %struct.state* %360, i32 0, i32 9
  %362 = load %struct.TYPE_6__*, %struct.TYPE_6__** %361, align 8
  %363 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %362)
  %364 = icmp slt i32 %359, %363
  br i1 %364, label %365, label %400

365:                                              ; preds = %358
  %366 = load %struct.state*, %struct.state** %5, align 8
  %367 = getelementptr inbounds %struct.state, %struct.state* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 4
  %369 = icmp eq i32 %368, 37173
  br i1 %369, label %370, label %383

370:                                              ; preds = %365
  %371 = load i32*, i32** @clock_lut_it9135, align 8
  %372 = load i32, i32* %8, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.state*, %struct.state** %5, align 8
  %377 = getelementptr inbounds %struct.state, %struct.state* %376, i32 0, i32 9
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %377, align 8
  %379 = load i32, i32* %7, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 3
  store i32 %375, i32* %382, align 4
  br label %396

383:                                              ; preds = %365
  %384 = load i32*, i32** @clock_lut_af9035, align 8
  %385 = load i32, i32* %8, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.state*, %struct.state** %5, align 8
  %390 = getelementptr inbounds %struct.state, %struct.state* %389, i32 0, i32 9
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %390, align 8
  %392 = load i32, i32* %7, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 3
  store i32 %388, i32* %395, align 4
  br label %396

396:                                              ; preds = %383, %370
  br label %397

397:                                              ; preds = %396
  %398 = load i32, i32* %7, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %7, align 4
  br label %358

400:                                              ; preds = %358
  %401 = load %struct.state*, %struct.state** %5, align 8
  %402 = getelementptr inbounds %struct.state, %struct.state* %401, i32 0, i32 8
  store i32 0, i32* %402, align 4
  %403 = load %struct.state*, %struct.state** %5, align 8
  %404 = getelementptr inbounds %struct.state, %struct.state* %403, i32 0, i32 9
  %405 = load %struct.TYPE_6__*, %struct.TYPE_6__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i64 0
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = icmp eq i32 %408, 132
  br i1 %409, label %410, label %435

410:                                              ; preds = %400
  %411 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %412 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %411, i32 0, i32 0
  %413 = load %struct.TYPE_5__*, %struct.TYPE_5__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = call i32 @le16_to_cpu(i32 %416)
  %418 = load i32, i32* @USB_VID_AVERMEDIA, align 4
  %419 = icmp eq i32 %417, %418
  br i1 %419, label %420, label %435

420:                                              ; preds = %410
  %421 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %422 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %421, i32 0, i32 0
  %423 = load %struct.TYPE_5__*, %struct.TYPE_5__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @le16_to_cpu(i32 %426)
  switch i32 %427, label %434 [
    i32 129, label %428
    i32 128, label %428
  ]

428:                                              ; preds = %420, %420
  %429 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %430 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %429, i32 0, i32 0
  %431 = call i32 (i32*, i8*, ...) @dev_info(i32* %430, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0))
  %432 = load %struct.state*, %struct.state** %5, align 8
  %433 = getelementptr inbounds %struct.state, %struct.state* %432, i32 0, i32 8
  store i32 1, i32* %433, align 4
  br label %434

434:                                              ; preds = %420, %428
  br label %435

435:                                              ; preds = %434, %410, %400
  store i32 0, i32* %2, align 4
  br label %442

436:                                              ; preds = %353
  %437 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %438 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %437, i32 0, i32 0
  %439 = load i32, i32* %6, align 4
  %440 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %438, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %439)
  %441 = load i32, i32* %6, align 4
  store i32 %441, i32* %2, align 4
  br label %442

442:                                              ; preds = %436, %435, %130
  %443 = load i32, i32* %2, align 4
  ret i32 %443
}

declare dso_local %struct.state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @af9035_rd_reg(%struct.dvb_usb_device*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
