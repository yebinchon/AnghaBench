; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_i2c_xfer_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_i2c_xfer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.dvb_usb_device = type { i32, i32, i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32* }

@EINTR = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@REQUEST_NEW_I2C_READ = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"i2c read error (status = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"buffer too small to fit %d bytes\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"<<< \00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"could not acquire lock\00", align 1
@REQUEST_NEW_I2C_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"i2c message to big: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c">>> \00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"i2c write error (status = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dib0700_i2c_xfer_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0700_i2c_xfer_new(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.dib0700_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %20 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %19)
  store %struct.dvb_usb_device* %20, %struct.dvb_usb_device** %8, align 8
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %21, i32 0, i32 3
  %23 = load %struct.dib0700_state*, %struct.dib0700_state** %22, align 8
  store %struct.dib0700_state* %23, %struct.dib0700_state** %9, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %25 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %24, i32 0, i32 0
  %26 = call i64 @mutex_lock_interruptible(i32* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINTR, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %327

31:                                               ; preds = %3
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %317, %31
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %320

36:                                               ; preds = %32
  %37 = load i32, i32* %15, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %12, align 4
  br label %53

40:                                               ; preds = %36
  %41 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i64 %43
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @I2C_M_NOSTART, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  store i32 1, i32* %12, align 4
  br label %52

51:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %13, align 4
  br label %59

59:                                               ; preds = %58, %53
  %60 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i64 %62
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @I2C_M_RD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %179

69:                                               ; preds = %59
  %70 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i64 %72
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 1
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %12, align 4
  %78 = shl i32 %77, 7
  %79 = load i32, i32* %13, align 4
  %80 = shl i32 %79, 6
  %81 = or i32 %78, %80
  %82 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i64 %84
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 63
  %89 = or i32 %81, %88
  %90 = shl i32 %89, 8
  %91 = load i32, i32* %18, align 4
  %92 = or i32 %90, %91
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %11, align 4
  %94 = shl i32 %93, 6
  %95 = and i32 %94, 192
  %96 = load i32, i32* %10, align 4
  %97 = shl i32 %96, 4
  %98 = and i32 %97, 48
  %99 = or i32 %95, %98
  store i32 %99, i32* %16, align 4
  %100 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %101 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %104 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @usb_rcvctrlpipe(i32 %105, i32 0)
  %107 = load i32, i32* @REQUEST_NEW_I2C_READ, align 4
  %108 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %109 = load i32, i32* @USB_DIR_IN, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %114 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i64 %118
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %123 = call i32 @usb_control_msg(i32 %102, i32 %106, i32 %107, i32 %110, i32 %111, i32 %112, i32* %115, i32 %121, i32 %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %69
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @deb_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %127)
  br label %322

129:                                              ; preds = %69
  %130 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %130, i64 %132
  %134 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = icmp ugt i64 %136, 8
  br i1 %137, label %138, label %148

138:                                              ; preds = %129
  %139 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %139, i64 %141
  %143 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @deb_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @EIO, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %14, align 4
  br label %322

148:                                              ; preds = %129
  %149 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %149, i64 %151
  %153 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %156 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %158, i64 %160
  %162 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @memcpy(i32* %154, i32* %157, i32 %163)
  %165 = call i32 @deb_data(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %166 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %166, i64 %168
  %170 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %172, i64 %174
  %176 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @debug_dump(i32* %171, i32 %177, i32 (i8*)* @deb_data)
  br label %316

179:                                              ; preds = %59
  %180 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %181 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %180, i32 0, i32 1
  %182 = call i64 @mutex_lock_interruptible(i32* %181)
  %183 = icmp slt i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %186 = load i32, i32* @EINTR, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %14, align 4
  br label %322

188:                                              ; preds = %179
  %189 = load i32, i32* @REQUEST_NEW_I2C_WRITE, align 4
  %190 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %191 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  store i32 %189, i32* %193, align 4
  %194 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %195 = load i32, i32* %15, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %194, i64 %196
  %198 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = shl i32 %199, 1
  %201 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %202 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  store i32 %200, i32* %204, align 4
  %205 = load i32, i32* %12, align 4
  %206 = shl i32 %205, 7
  %207 = load i32, i32* %13, align 4
  %208 = shl i32 %207, 6
  %209 = or i32 %206, %208
  %210 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %211 = load i32, i32* %15, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %210, i64 %212
  %214 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %215, 63
  %217 = or i32 %209, %216
  %218 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %219 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  store i32 %217, i32* %221, align 4
  %222 = load i32, i32* %11, align 4
  %223 = shl i32 %222, 6
  %224 = and i32 %223, 192
  %225 = load i32, i32* %10, align 4
  %226 = shl i32 %225, 4
  %227 = and i32 %226, 48
  %228 = or i32 %224, %227
  %229 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %230 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 3
  store i32 %228, i32* %232, align 4
  %233 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %234 = load i32, i32* %15, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %233, i64 %235
  %237 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = icmp ugt i64 %239, 4
  br i1 %240, label %241, label %254

241:                                              ; preds = %188
  %242 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %242, i64 %244
  %246 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @deb_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %247)
  %249 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %250 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %249, i32 0, i32 1
  %251 = call i32 @mutex_unlock(i32* %250)
  %252 = load i32, i32* @EIO, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %14, align 4
  br label %322

254:                                              ; preds = %188
  %255 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %256 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 4
  %259 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %260 = load i32, i32* %15, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %259, i64 %261
  %263 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %262, i32 0, i32 3
  %264 = load i32*, i32** %263, align 8
  %265 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %266 = load i32, i32* %15, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %265, i64 %267
  %269 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @memcpy(i32* %258, i32* %264, i32 %270)
  %272 = call i32 @deb_data(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %273 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %274 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %277 = load i32, i32* %15, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %276, i64 %278
  %280 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = add nsw i32 %281, 4
  %283 = call i32 @debug_dump(i32* %275, i32 %282, i32 (i8*)* @deb_data)
  %284 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %285 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %288 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @usb_sndctrlpipe(i32 %289, i32 0)
  %291 = load i32, i32* @REQUEST_NEW_I2C_WRITE, align 4
  %292 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %293 = load i32, i32* @USB_DIR_OUT, align 4
  %294 = or i32 %292, %293
  %295 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %296 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %299 = load i32, i32* %15, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %298, i64 %300
  %302 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = add nsw i32 %303, 4
  %305 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %306 = call i32 @usb_control_msg(i32 %286, i32 %290, i32 %291, i32 %294, i32 0, i32 0, i32* %297, i32 %304, i32 %305)
  store i32 %306, i32* %14, align 4
  %307 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %308 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %307, i32 0, i32 1
  %309 = call i32 @mutex_unlock(i32* %308)
  %310 = load i32, i32* %14, align 4
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %254
  %313 = load i32, i32* %14, align 4
  %314 = call i32 @deb_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %313)
  br label %320

315:                                              ; preds = %254
  br label %316

316:                                              ; preds = %315, %148
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %15, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %15, align 4
  br label %32

320:                                              ; preds = %312, %32
  %321 = load i32, i32* %15, align 4
  store i32 %321, i32* %14, align 4
  br label %322

322:                                              ; preds = %320, %241, %184, %138, %126
  %323 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %324 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %323, i32 0, i32 0
  %325 = call i32 @mutex_unlock(i32* %324)
  %326 = load i32, i32* %14, align 4
  store i32 %326, i32* %4, align 4
  br label %327

327:                                              ; preds = %322, %28
  %328 = load i32, i32* %4, align 4
  ret i32 %328
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @deb_info(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @deb_data(i8*) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*)*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
