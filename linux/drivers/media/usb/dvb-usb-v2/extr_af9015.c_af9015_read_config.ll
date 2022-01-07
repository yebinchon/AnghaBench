; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_5__*, %struct.usb_interface* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.usb_interface = type { i32 }
%struct.af9015_state = type { i32, i32, i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32* }
%struct.req_t = type { i32, i32, i32*, i32, i32, i32, i32, i32 }

@READ_I2C = common dso_local global i32 0, align 4
@AF9015_I2C_EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AF9015_EEPROM_IR_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ir mode %02x\0A\00", align 1
@AF9015_EEPROM_TS_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ts mode %02x\0A\00", align 1
@AF9015_I2C_DEMOD = common dso_local global i32 0, align 4
@AF9015_EEPROM_DEMOD2_I2C = common dso_local global i32 0, align 4
@AF9015_EEPROM_OFFSET = common dso_local global i32 0, align 4
@AF9015_EEPROM_XTAL_TYPE1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"[%d] xtal %02x, clk %u\0A\00", align 1
@AF9015_EEPROM_IF1H = common dso_local global i32 0, align 4
@AF9015_EEPROM_IF1L = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"[%d] if frequency %u\0A\00", align 1
@AF9015_EEPROM_MT2060_IF1H = common dso_local global i32 0, align 4
@AF9015_EEPROM_MT2060_IF1L = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"[%d] MT2060 IF1 %u\0A\00", align 1
@AF9015_EEPROM_TUNER_ID1 = common dso_local global i32 0, align 4
@AF9013_GPIO_LO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"tuner id %02x not supported, please report!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"[%d] tuner id %02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"eeprom read failed %d\0A\00", align 1
@USB_VID_AVERMEDIA = common dso_local global i64 0, align 8
@USB_PID_AVERMEDIA_A850 = common dso_local global i64 0, align 8
@USB_PID_AVERMEDIA_A850T = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"AverMedia A850: overriding config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @af9015_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9015_read_config(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.af9015_state*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.req_t, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %12 = call %struct.af9015_state* @d_to_priv(%struct.dvb_usb_device* %11)
  store %struct.af9015_state* %12, %struct.af9015_state** %4, align 8
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 1
  %15 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  store %struct.usb_interface* %15, %struct.usb_interface** %5, align 8
  store i32 0, i32* %9, align 4
  %16 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 0
  %17 = load i32, i32* @READ_I2C, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 1
  %19 = load i32, i32* @AF9015_I2C_EEPROM, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 4
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 5
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 6
  %25 = ptrtoint i32* %7 to i32
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 7
  store i32 0, i32* %26, align 8
  %27 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %28 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @AF9015_EEPROM_IR_MODE, align 4
  %31 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i32 %30, i32* %31, align 8
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %42, %1
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %37 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %36, %struct.req_t* %10)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %45

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %32

45:                                               ; preds = %40, %32
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %353

49:                                               ; preds = %45
  %50 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %51 = call i32 @af9015_eeprom_hash(%struct.dvb_usb_device* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %353

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %58 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %60 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %59, i32 0, i32 0
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @AF9015_EEPROM_TS_MODE, align 4
  %64 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i32 %63, i32* %64, align 8
  %65 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %66 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %65, %struct.req_t* %10)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %353

70:                                               ; preds = %55
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %73 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %75 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %74, i32 0, i32 0
  %76 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %77 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @AF9015_I2C_DEMOD, align 4
  %81 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %82 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 %80, i32* %84, align 4
  %85 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %86 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %70
  %90 = load i32, i32* @AF9015_EEPROM_DEMOD2_I2C, align 4
  %91 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i32 %90, i32* %91, align 8
  %92 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %93 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %92, %struct.req_t* %10)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %353

97:                                               ; preds = %89
  %98 = load i32, i32* %7, align 4
  %99 = ashr i32 %98, 1
  %100 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %101 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %97, %70
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %349, %104
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %108 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  %111 = icmp slt i32 %106, %110
  br i1 %111, label %112, label %352

112:                                              ; preds = %105
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @AF9015_EEPROM_OFFSET, align 4
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %115, %112
  %118 = load i32, i32* @AF9015_EEPROM_XTAL_TYPE1, align 4
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %118, %119
  %121 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i32 %120, i32* %121, align 8
  %122 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %123 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %122, %struct.req_t* %10)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %353

127:                                              ; preds = %117
  %128 = load i32, i32* %7, align 4
  switch i32 %128, label %161 [
    i32 0, label %129
    i32 1, label %137
    i32 2, label %145
    i32 3, label %153
  ]

129:                                              ; preds = %127
  %130 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %131 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %130, i32 0, i32 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32 28800000, i32* %136, align 8
  br label %161

137:                                              ; preds = %127
  %138 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %139 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %138, i32 0, i32 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i32 20480000, i32* %144, align 8
  br label %161

145:                                              ; preds = %127
  %146 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %147 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %146, i32 0, i32 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i32 28000000, i32* %152, align 8
  br label %161

153:                                              ; preds = %127
  %154 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %155 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %154, i32 0, i32 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  store i32 25000000, i32* %160, align 8
  br label %161

161:                                              ; preds = %127, %153, %145, %137, %129
  %162 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %163 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %162, i32 0, i32 0
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %167 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %166, i32 0, i32 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %163, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %164, i32 %165, i32 %173)
  %175 = load i32, i32* @AF9015_EEPROM_IF1H, align 4
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %175, %176
  %178 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i32 %177, i32* %178, align 8
  %179 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %180 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %179, %struct.req_t* %10)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %161
  br label %353

184:                                              ; preds = %161
  %185 = load i32, i32* %7, align 4
  %186 = shl i32 %185, 8
  %187 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %188 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %187, i32 0, i32 4
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 1
  store i32 %186, i32* %193, align 4
  %194 = load i32, i32* @AF9015_EEPROM_IF1L, align 4
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %194, %195
  %197 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i32 %196, i32* %197, align 8
  %198 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %199 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %198, %struct.req_t* %10)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %184
  br label %353

203:                                              ; preds = %184
  %204 = load i32, i32* %7, align 4
  %205 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %206 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %205, i32 0, i32 4
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, %204
  store i32 %213, i32* %211, align 4
  %214 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %215 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %214, i32 0, i32 4
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = mul nsw i32 %221, 1000
  store i32 %222, i32* %220, align 4
  %223 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %224 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %223, i32 0, i32 0
  %225 = load i32, i32* %8, align 4
  %226 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %227 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %226, i32 0, i32 4
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %224, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %225, i32 %233)
  %235 = load i32, i32* @AF9015_EEPROM_MT2060_IF1H, align 4
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %235, %236
  %238 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i32 %237, i32* %238, align 8
  %239 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %240 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %239, %struct.req_t* %10)
  store i32 %240, i32* %6, align 4
  %241 = load i32, i32* %6, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %203
  br label %353

244:                                              ; preds = %203
  %245 = load i32, i32* %7, align 4
  %246 = shl i32 %245, 8
  %247 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %248 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %247, i32 0, i32 3
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 %246, i32* %252, align 4
  %253 = load i32, i32* @AF9015_EEPROM_MT2060_IF1L, align 4
  %254 = load i32, i32* %9, align 4
  %255 = add nsw i32 %253, %254
  %256 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i32 %255, i32* %256, align 8
  %257 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %258 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %257, %struct.req_t* %10)
  store i32 %258, i32* %6, align 4
  %259 = load i32, i32* %6, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %244
  br label %353

262:                                              ; preds = %244
  %263 = load i32, i32* %7, align 4
  %264 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %265 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %264, i32 0, i32 3
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, %263
  store i32 %271, i32* %269, align 4
  %272 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %273 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %272, i32 0, i32 0
  %274 = load i32, i32* %8, align 4
  %275 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %276 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %275, i32 0, i32 3
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %273, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %274, i32 %281)
  %283 = load i32, i32* @AF9015_EEPROM_TUNER_ID1, align 4
  %284 = load i32, i32* %9, align 4
  %285 = add nsw i32 %283, %284
  %286 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i32 %285, i32* %286, align 8
  %287 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %288 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %287, %struct.req_t* %10)
  store i32 %288, i32* %6, align 4
  %289 = load i32, i32* %6, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %262
  br label %353

292:                                              ; preds = %262
  %293 = load i32, i32* %7, align 4
  switch i32 %293, label %328 [
    i32 140, label %294
    i32 138, label %294
    i32 132, label %294
    i32 128, label %294
    i32 137, label %294
    i32 129, label %294
    i32 131, label %294
    i32 130, label %294
    i32 136, label %302
    i32 135, label %302
    i32 134, label %302
    i32 133, label %302
    i32 139, label %310
  ]

294:                                              ; preds = %292, %292, %292, %292, %292, %292, %292, %292
  %295 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %296 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %295, i32 0, i32 4
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %296, align 8
  %298 = load i32, i32* %8, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 2
  store i32 1, i32* %301, align 8
  br label %335

302:                                              ; preds = %292, %292, %292, %292
  %303 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %304 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %303, i32 0, i32 4
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %304, align 8
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 2
  store i32 0, i32* %309, align 8
  br label %335

310:                                              ; preds = %292
  %311 = load i32, i32* @AF9013_GPIO_LO, align 4
  %312 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %313 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %312, i32 0, i32 4
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %313, align 8
  %315 = load i32, i32* %8, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 4
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 1
  store i32 %311, i32* %320, align 4
  %321 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %322 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %321, i32 0, i32 4
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %322, align 8
  %324 = load i32, i32* %8, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 2
  store i32 1, i32* %327, align 8
  br label %335

328:                                              ; preds = %292
  %329 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %330 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %329, i32 0, i32 0
  %331 = load i32, i32* %7, align 4
  %332 = call i32 @dev_err(i32* %330, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %331)
  %333 = load i32, i32* @ENODEV, align 4
  %334 = sub nsw i32 0, %333
  store i32 %334, i32* %2, align 4
  br label %404

335:                                              ; preds = %310, %302, %294
  %336 = load i32, i32* %7, align 4
  %337 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %338 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %337, i32 0, i32 4
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 3
  store i32 %336, i32* %343, align 4
  %344 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %345 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %344, i32 0, i32 0
  %346 = load i32, i32* %8, align 4
  %347 = load i32, i32* %7, align 4
  %348 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %345, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %346, i32 %347)
  br label %349

349:                                              ; preds = %335
  %350 = load i32, i32* %8, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %8, align 4
  br label %105

352:                                              ; preds = %105
  br label %353

353:                                              ; preds = %352, %291, %261, %243, %202, %183, %126, %96, %69, %54, %48
  %354 = load i32, i32* %6, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %353
  %357 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %358 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %357, i32 0, i32 0
  %359 = load i32, i32* %6, align 4
  %360 = call i32 @dev_err(i32* %358, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %359)
  br label %361

361:                                              ; preds = %356, %353
  %362 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %363 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %362, i32 0, i32 0
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = call i64 @le16_to_cpu(i32 %367)
  %369 = load i64, i64* @USB_VID_AVERMEDIA, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %402

371:                                              ; preds = %361
  %372 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %373 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %372, i32 0, i32 0
  %374 = load %struct.TYPE_5__*, %struct.TYPE_5__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = call i64 @le16_to_cpu(i32 %377)
  %379 = load i64, i64* @USB_PID_AVERMEDIA_A850, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %391, label %381

381:                                              ; preds = %371
  %382 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %383 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %382, i32 0, i32 0
  %384 = load %struct.TYPE_5__*, %struct.TYPE_5__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = call i64 @le16_to_cpu(i32 %387)
  %389 = load i64, i64* @USB_PID_AVERMEDIA_A850T, align 8
  %390 = icmp eq i64 %388, %389
  br i1 %390, label %391, label %402

391:                                              ; preds = %381, %371
  %392 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %393 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %392, i32 0, i32 0
  %394 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %393, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %395 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %396 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %395, i32 0, i32 1
  store i32 0, i32* %396, align 4
  %397 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %398 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %397, i32 0, i32 4
  %399 = load %struct.TYPE_6__*, %struct.TYPE_6__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i64 0
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 1
  store i32 4570000, i32* %401, align 4
  br label %402

402:                                              ; preds = %391, %381, %361
  %403 = load i32, i32* %6, align 4
  store i32 %403, i32* %2, align 4
  br label %404

404:                                              ; preds = %402, %328
  %405 = load i32, i32* %2, align 4
  ret i32 %405
}

declare dso_local %struct.af9015_state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @af9015_ctrl_msg(%struct.dvb_usb_device*, %struct.req_t*) #1

declare dso_local i32 @af9015_eeprom_hash(%struct.dvb_usb_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
