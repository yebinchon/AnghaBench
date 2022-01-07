; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_su3000_i2c_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_su3000_i2c_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32 }
%struct.dvb_usb_device = type { i32, i32, %struct.dw2102_state* }
%struct.dw2102_state = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"i2c transfer failed.\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"i2c wr: len=%d is too big!\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"i2c rd: len=%d is too big!\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"more than 2 i2c messages at a time is not handled yet.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @su3000_i2c_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @su3000_i2c_transfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.dw2102_state*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %11 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %10)
  store %struct.dvb_usb_device* %11, %struct.dvb_usb_device** %8, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %13 = icmp ne %struct.dvb_usb_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %302

17:                                               ; preds = %3
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %18, i32 0, i32 2
  %20 = load %struct.dw2102_state*, %struct.dw2102_state** %19, align 8
  store %struct.dw2102_state* %20, %struct.dw2102_state** %9, align 8
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %21, i32 0, i32 0
  %23 = call i64 @mutex_lock_interruptible(i32* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %302

28:                                               ; preds = %17
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %29, i32 0, i32 1
  %31 = call i64 @mutex_lock_interruptible(i32* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %302

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  switch i32 %40, label %292 [
    i32 1, label %41
    i32 2, label %183
  ]

41:                                               ; preds = %39
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i64 0
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %115 [
    i32 128, label %46
    i32 129, label %78
  ]

46:                                               ; preds = %41
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i64 0
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 54
  %54 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %55 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %59 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 3, i32* %61, align 4
  %62 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %63 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 0, i32* %65, align 4
  %66 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %67 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %68 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %71 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %66, i32* %69, i32 3, i32* %72, i32 0, i32 0)
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %46
  %76 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %46
  br label %182

78:                                               ; preds = %41
  %79 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %80 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 16, i32* %82, align 4
  %83 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %84 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %85 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %88 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %83, i32* %86, i32 1, i32* %89, i32 2, i32 0)
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %78
  %93 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %78
  %95 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %96 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %101 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %100, i64 0
  %102 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %99, i32* %104, align 4
  %105 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %106 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %111 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i64 0
  %112 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 %109, i32* %114, align 4
  br label %182

115:                                              ; preds = %41
  %116 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %117 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i64 0
  %118 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 3, %119
  %121 = sext i32 %120 to i64
  %122 = icmp ugt i64 %121, 8
  br i1 %122, label %123, label %131

123:                                              ; preds = %115
  %124 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %125 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %124, i64 0
  %126 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @EOPNOTSUPP, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %7, align 4
  br label %182

131:                                              ; preds = %115
  %132 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %133 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 8, i32* %135, align 4
  %136 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %137 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %136, i64 0
  %138 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %141 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 %139, i32* %143, align 4
  %144 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %145 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %144, i64 0
  %146 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %149 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  store i32 %147, i32* %151, align 4
  %152 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %153 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 3
  %156 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %157 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %156, i64 0
  %158 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %161 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %160, i64 0
  %162 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @memcpy(i32* %155, i32* %159, i32 %163)
  %165 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %166 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %167 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %170 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %169, i64 0
  %171 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 3
  %174 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %175 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %165, i32* %168, i32 %173, i32* %176, i32 1, i32 0)
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %131
  %180 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %131
  br label %182

182:                                              ; preds = %181, %123, %94, %77
  br label %294

183:                                              ; preds = %39
  %184 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %185 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %184, i64 0
  %186 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 4, %187
  %189 = sext i32 %188 to i64
  %190 = icmp ugt i64 %189, 8
  br i1 %190, label %191, label %199

191:                                              ; preds = %183
  %192 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %193 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %192, i64 0
  %194 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* @EOPNOTSUPP, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %7, align 4
  br label %294

199:                                              ; preds = %183
  %200 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %201 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %200, i64 1
  %202 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 1, %203
  %205 = sext i32 %204 to i64
  %206 = icmp ugt i64 %205, 8
  br i1 %206, label %207, label %215

207:                                              ; preds = %199
  %208 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %209 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %208, i64 1
  %210 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* @EOPNOTSUPP, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %7, align 4
  br label %294

215:                                              ; preds = %199
  %216 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %217 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  store i32 9, i32* %219, align 4
  %220 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %221 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %220, i64 0
  %222 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %225 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  store i32 %223, i32* %227, align 4
  %228 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %229 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %228, i64 1
  %230 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %233 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 2
  store i32 %231, i32* %235, align 4
  %236 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %237 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %236, i64 0
  %238 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %241 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 3
  store i32 %239, i32* %243, align 4
  %244 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %245 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 4
  %248 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %249 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %248, i64 0
  %250 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %253 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %252, i64 0
  %254 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @memcpy(i32* %247, i32* %251, i32 %255)
  %257 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %258 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %259 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %262 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %261, i64 0
  %263 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = add nsw i32 %264, 4
  %266 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %267 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %270 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %269, i64 1
  %271 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 %272, 1
  %274 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %257, i32* %260, i32 %265, i32* %268, i32 %273, i32 0)
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %215
  %277 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %278

278:                                              ; preds = %276, %215
  %279 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %280 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %279, i64 1
  %281 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = load %struct.dw2102_state*, %struct.dw2102_state** %9, align 8
  %284 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  %287 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %288 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %287, i64 1
  %289 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @memcpy(i32* %282, i32* %286, i32 %290)
  br label %294

292:                                              ; preds = %39
  %293 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %294

294:                                              ; preds = %292, %278, %207, %191, %182
  %295 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %296 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %295, i32 0, i32 1
  %297 = call i32 @mutex_unlock(i32* %296)
  %298 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %299 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %298, i32 0, i32 0
  %300 = call i32 @mutex_unlock(i32* %299)
  %301 = load i32, i32* %7, align 4
  store i32 %301, i32* %4, align 4
  br label %302

302:                                              ; preds = %294, %33, %25, %14
  %303 = load i32, i32* %4, align 4
  ret i32 %303
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
