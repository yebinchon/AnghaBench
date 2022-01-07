; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.dvb_usb_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@USB_VID_MEDION = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@MAX_XFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"i2c rd: len=%d is too big!\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CMD_I2C_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"i2c read failed\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"i2c wr: len=%d is too big!\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"i2c read may have failed\0A\00", align 1
@CMD_I2C_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"i2c write may have failed\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @cxusb_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %22 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %21)
  store %struct.dvb_usb_device* %22, %struct.dvb_usb_device** %8, align 8
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %23, i32 0, i32 0
  %25 = call i64 @mutex_lock_interruptible(i32* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %407

30:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %389, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %392

35:                                               ; preds = %31
  %36 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @le16_to_cpu(i32 %41)
  %43 = load i64, i64* @USB_VID_MEDION, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %35
  %46 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i64 %48
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %55 [
    i32 99, label %52
  ]

52:                                               ; preds = %45
  %53 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %54 = call i32 @cxusb_gpio_tuner(%struct.dvb_usb_device* %53, i32 0)
  br label %58

55:                                               ; preds = %45
  %56 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %57 = call i32 @cxusb_gpio_tuner(%struct.dvb_usb_device* %56, i32 1)
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %35
  %60 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i64 %62
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @I2C_M_RD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %143

69:                                               ; preds = %59
  %70 = load i32, i32* @MAX_XFER_SIZE, align 4
  %71 = zext i32 %70 to i64
  %72 = call i8* @llvm.stacksave()
  store i8* %72, i8** %12, align 8
  %73 = alloca i32, i64 %71, align 16
  store i64 %71, i64* %13, align 8
  %74 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i64 %76
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 1, %79
  %81 = sext i32 %80 to i64
  %82 = mul nuw i64 4, %71
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %69
  %85 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i64 %87
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EOPNOTSUPP, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %9, align 4
  store i32 6, i32* %14, align 4
  br label %139

94:                                               ; preds = %69
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 0, i32* %95, align 4
  %96 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %96, i64 %98
  %100 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %101, i32* %102, align 4
  %103 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %103, i64 %105
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %108, i32* %109, align 4
  %110 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %111 = load i32, i32* @CMD_I2C_READ, align 4
  %112 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %113 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %113, i64 %115
  %117 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 1, %118
  %120 = call i64 @cxusb_ctrl_msg(%struct.dvb_usb_device* %110, i32 %111, i32* %112, i32 3, i32* %73, i32 %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %94
  %123 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %14, align 4
  br label %139

124:                                              ; preds = %94
  %125 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %125, i64 %127
  %129 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %73, i64 1
  %132 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %132, i64 %134
  %136 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @memcpy(i32* %130, i32* %131, i32 %137)
  store i32 0, i32* %14, align 4
  br label %139

139:                                              ; preds = %84, %124, %122
  %140 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %14, align 4
  switch i32 %141, label %409 [
    i32 0, label %142
    i32 2, label %392
    i32 6, label %402
  ]

142:                                              ; preds = %139
  br label %388

143:                                              ; preds = %59
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  %146 = load i32, i32* %7, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %311

148:                                              ; preds = %143
  %149 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %149, i64 %152
  %154 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @I2C_M_RD, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %311

159:                                              ; preds = %148
  %160 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %160, i64 %162
  %164 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %166, i64 %169
  %171 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %165, %172
  br i1 %173, label %174, label %311

174:                                              ; preds = %159
  %175 = load i32, i32* @MAX_XFER_SIZE, align 4
  %176 = zext i32 %175 to i64
  %177 = call i8* @llvm.stacksave()
  store i8* %177, i8** %15, align 8
  %178 = alloca i32, i64 %176, align 16
  store i64 %176, i64* %16, align 8
  %179 = load i32, i32* @MAX_XFER_SIZE, align 4
  %180 = zext i32 %179 to i64
  %181 = alloca i32, i64 %180, align 16
  store i64 %180, i64* %17, align 8
  %182 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %182, i64 %184
  %186 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 3, %187
  %189 = sext i32 %188 to i64
  %190 = mul nuw i64 4, %176
  %191 = icmp ugt i64 %189, %190
  br i1 %191, label %192, label %202

192:                                              ; preds = %174
  %193 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %193, i64 %195
  %197 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* @EOPNOTSUPP, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %9, align 4
  store i32 6, i32* %14, align 4
  br label %307

202:                                              ; preds = %174
  %203 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %203, i64 %206
  %208 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 1, %209
  %211 = sext i32 %210 to i64
  %212 = mul nuw i64 4, %180
  %213 = icmp ugt i64 %211, %212
  br i1 %213, label %214, label %225

214:                                              ; preds = %202
  %215 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %216 = load i32, i32* %10, align 4
  %217 = add nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %215, i64 %218
  %220 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* @EOPNOTSUPP, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %9, align 4
  store i32 6, i32* %14, align 4
  br label %307

225:                                              ; preds = %202
  %226 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %226, i64 %228
  %230 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = getelementptr inbounds i32, i32* %178, i64 0
  store i32 %231, i32* %232, align 16
  %233 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %234 = load i32, i32* %10, align 4
  %235 = add nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %233, i64 %236
  %238 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = getelementptr inbounds i32, i32* %178, i64 1
  store i32 %239, i32* %240, align 4
  %241 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %242 = load i32, i32* %10, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %241, i64 %243
  %245 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = getelementptr inbounds i32, i32* %178, i64 2
  store i32 %246, i32* %247, align 8
  %248 = getelementptr inbounds i32, i32* %178, i64 3
  %249 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %250 = load i32, i32* %10, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %249, i64 %251
  %253 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %252, i32 0, i32 3
  %254 = load i32*, i32** %253, align 8
  %255 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %256 = load i32, i32* %10, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %255, i64 %257
  %259 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @memcpy(i32* %248, i32* %254, i32 %260)
  %262 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %263 = load i32, i32* @CMD_I2C_READ, align 4
  %264 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %265 = load i32, i32* %10, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %264, i64 %266
  %268 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 3, %269
  %271 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %272 = load i32, i32* %10, align 4
  %273 = add nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %271, i64 %274
  %276 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = add nsw i32 1, %277
  %279 = call i64 @cxusb_ctrl_msg(%struct.dvb_usb_device* %262, i32 %263, i32* %178, i32 %270, i32* %181, i32 %278)
  %280 = icmp slt i64 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %225
  store i32 2, i32* %14, align 4
  br label %307

282:                                              ; preds = %225
  %283 = getelementptr inbounds i32, i32* %181, i64 0
  %284 = load i32, i32* %283, align 16
  %285 = icmp ne i32 %284, 8
  br i1 %285, label %286, label %288

286:                                              ; preds = %282
  %287 = call i32 @deb_i2c(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %288

288:                                              ; preds = %286, %282
  %289 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %290 = load i32, i32* %10, align 4
  %291 = add nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %289, i64 %292
  %294 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %293, i32 0, i32 3
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %181, i64 1
  %297 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %298 = load i32, i32* %10, align 4
  %299 = add nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %297, i64 %300
  %302 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @memcpy(i32* %295, i32* %296, i32 %303)
  %305 = load i32, i32* %10, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %307

307:                                              ; preds = %214, %192, %288, %281
  %308 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %308)
  %309 = load i32, i32* %14, align 4
  switch i32 %309, label %409 [
    i32 0, label %310
    i32 2, label %392
    i32 6, label %402
  ]

310:                                              ; preds = %307
  br label %387

311:                                              ; preds = %159, %148, %143
  %312 = load i32, i32* @MAX_XFER_SIZE, align 4
  %313 = zext i32 %312 to i64
  %314 = call i8* @llvm.stacksave()
  store i8* %314, i8** %18, align 8
  %315 = alloca i32, i64 %313, align 16
  store i64 %313, i64* %19, align 8
  %316 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %317 = load i32, i32* %10, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %316, i64 %318
  %320 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 2, %321
  %323 = sext i32 %322 to i64
  %324 = mul nuw i64 4, %313
  %325 = icmp ugt i64 %323, %324
  br i1 %325, label %326, label %336

326:                                              ; preds = %311
  %327 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %328 = load i32, i32* %10, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %327, i64 %329
  %331 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %332)
  %334 = load i32, i32* @EOPNOTSUPP, align 4
  %335 = sub nsw i32 0, %334
  store i32 %335, i32* %9, align 4
  store i32 6, i32* %14, align 4
  br label %383

336:                                              ; preds = %311
  %337 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %338 = load i32, i32* %10, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %337, i64 %339
  %341 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = getelementptr inbounds i32, i32* %315, i64 0
  store i32 %342, i32* %343, align 16
  %344 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %345 = load i32, i32* %10, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %344, i64 %346
  %348 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = getelementptr inbounds i32, i32* %315, i64 1
  store i32 %349, i32* %350, align 4
  %351 = getelementptr inbounds i32, i32* %315, i64 2
  %352 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %353 = load i32, i32* %10, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %352, i64 %354
  %356 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %355, i32 0, i32 3
  %357 = load i32*, i32** %356, align 8
  %358 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %359 = load i32, i32* %10, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %358, i64 %360
  %362 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @memcpy(i32* %351, i32* %357, i32 %363)
  %365 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %366 = load i32, i32* @CMD_I2C_WRITE, align 4
  %367 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %368 = load i32, i32* %10, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %367, i64 %369
  %371 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = add nsw i32 2, %372
  %374 = call i64 @cxusb_ctrl_msg(%struct.dvb_usb_device* %365, i32 %366, i32* %315, i32 %373, i32* %20, i32 1)
  %375 = icmp slt i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %336
  store i32 2, i32* %14, align 4
  br label %383

377:                                              ; preds = %336
  %378 = load i32, i32* %20, align 4
  %379 = icmp ne i32 %378, 8
  br i1 %379, label %380, label %382

380:                                              ; preds = %377
  %381 = call i32 @deb_i2c(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %382

382:                                              ; preds = %380, %377
  store i32 0, i32* %14, align 4
  br label %383

383:                                              ; preds = %326, %382, %376
  %384 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %384)
  %385 = load i32, i32* %14, align 4
  switch i32 %385, label %409 [
    i32 0, label %386
    i32 2, label %392
    i32 6, label %402
  ]

386:                                              ; preds = %383
  br label %387

387:                                              ; preds = %386, %310
  br label %388

388:                                              ; preds = %387, %142
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %10, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %10, align 4
  br label %31

392:                                              ; preds = %383, %307, %139, %31
  %393 = load i32, i32* %10, align 4
  %394 = load i32, i32* %7, align 4
  %395 = icmp eq i32 %393, %394
  br i1 %395, label %396, label %398

396:                                              ; preds = %392
  %397 = load i32, i32* %7, align 4
  store i32 %397, i32* %9, align 4
  br label %401

398:                                              ; preds = %392
  %399 = load i32, i32* @EREMOTEIO, align 4
  %400 = sub nsw i32 0, %399
  store i32 %400, i32* %9, align 4
  br label %401

401:                                              ; preds = %398, %396
  br label %402

402:                                              ; preds = %401, %383, %307, %139
  %403 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %404 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %403, i32 0, i32 0
  %405 = call i32 @mutex_unlock(i32* %404)
  %406 = load i32, i32* %9, align 4
  store i32 %406, i32* %4, align 4
  br label %407

407:                                              ; preds = %402, %27
  %408 = load i32, i32* %4, align 4
  ret i32 %408

409:                                              ; preds = %383, %307, %139
  unreachable
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @cxusb_gpio_tuner(%struct.dvb_usb_device*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @cxusb_ctrl_msg(%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @deb_i2c(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
