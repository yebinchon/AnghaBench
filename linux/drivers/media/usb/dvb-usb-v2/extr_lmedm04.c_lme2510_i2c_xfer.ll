; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme2510_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme2510_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.dvb_usb_device = type { i32, %struct.lme2510_state* }
%struct.lme2510_state = type { i32, i32, i32, i32 }

@lme2510_i2c_xfer.obuf = internal global [64 x i32] zeroinitializer, align 16
@lme2510_i2c_xfer.ibuf = internal global [64 x i32] zeroinitializer, align 16
@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"i2c transfer failed.\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @lme2510_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lme2510_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.lme2510_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %16 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %15)
  store %struct.dvb_usb_device* %16, %struct.dvb_usb_device** %8, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 1
  %19 = load %struct.lme2510_state*, %struct.lme2510_state** %18, align 8
  store %struct.lme2510_state* %19, %struct.lme2510_state** %9, align 8
  %20 = load %struct.lme2510_state*, %struct.lme2510_state** %9, align 8
  %21 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* %14, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 5, i32* %14, align 4
  br label %29

29:                                               ; preds = %28, %3
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %248, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %251

34:                                               ; preds = %30
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i64 %37
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @I2C_M_RD, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %34
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i64 %51
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @I2C_M_RD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %47, %34
  %59 = phi i1 [ false, %34 ], [ %57, %47 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i64 %66
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.lme2510_state*, %struct.lme2510_state** %9, align 8
  %71 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %58
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.lme2510_state*, %struct.lme2510_state** %9, align 8
  %79 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  br label %85

81:                                               ; preds = %74
  %82 = load %struct.lme2510_state*, %struct.lme2510_state** %9, align 8
  %83 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i32 [ %80, %77 ], [ %84, %81 ]
  br label %91

87:                                               ; preds = %58
  %88 = load %struct.lme2510_state*, %struct.lme2510_state** %9, align 8
  %89 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  br label %91

91:                                               ; preds = %87, %85
  %92 = phi i32 [ %86, %85 ], [ %90, %87 ]
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %11, align 4
  %95 = shl i32 %94, 7
  %96 = or i32 %93, %95
  store i32 %96, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.obuf, i64 0, i64 0), align 16
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, 5
  br i1 %98, label %99, label %113

99:                                               ; preds = %91
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %111

103:                                              ; preds = %99
  %104 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %104, i64 %106
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  br label %111

111:                                              ; preds = %103, %102
  %112 = phi i32 [ 2, %102 ], [ %110, %103 ]
  store i32 %112, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.obuf, i64 0, i64 1), align 4
  br label %123

113:                                              ; preds = %91
  %114 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %114, i64 %116
  %118 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %119, %120
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.obuf, i64 0, i64 1), align 4
  br label %123

123:                                              ; preds = %113, %111
  %124 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %124, i64 %126
  %128 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 1
  store i32 %130, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.obuf, i64 0, i64 2), align 8
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %175

133:                                              ; preds = %123
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 3, i32* %13, align 4
  br label %174

137:                                              ; preds = %133
  %138 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %138, i64 %140
  %142 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %144, i64 %146
  %148 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @memcpy(i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.obuf, i64 0, i64 3), i32* %143, i32 %149)
  %151 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %151, i64 %154
  %156 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %158, i64 %160
  %162 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 3
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [64 x i32], [64 x i32]* @lme2510_i2c_xfer.obuf, i64 0, i64 %165
  store i32 %157, i32* %166, align 4
  %167 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %167, i64 %169
  %171 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 4
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %137, %136
  br label %196

175:                                              ; preds = %123
  %176 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %176, i64 %178
  %180 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %182, i64 %184
  %186 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @memcpy(i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.obuf, i64 0, i64 3), i32* %181, i32 %187)
  %189 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %189, i64 %191
  %193 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 3
  store i32 %195, i32* %13, align 4
  br label %196

196:                                              ; preds = %175, %174
  %197 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %198 = load i32, i32* %13, align 4
  %199 = call i64 @lme2510_msg(%struct.dvb_usb_device* %197, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.obuf, i64 0, i64 0), i32 %198, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.ibuf, i64 0, i64 0), i32 64)
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = call i32 @deb_info(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %203 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %204 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %203, i32 0, i32 0
  %205 = call i32 @mutex_unlock(i32* %204)
  %206 = load i32, i32* @EAGAIN, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %4, align 4
  br label %256

208:                                              ; preds = %196
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %247

211:                                              ; preds = %208
  %212 = load i32, i32* %12, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %228

214:                                              ; preds = %211
  %215 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %216 = load i32, i32* %10, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %215, i64 %217
  %219 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %218, i32 0, i32 3
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %221, i64 %223
  %225 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @memcpy(i32* %220, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.ibuf, i64 0, i64 1), i32 %226)
  br label %246

228:                                              ; preds = %211
  %229 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %230 = load i32, i32* %10, align 4
  %231 = add nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %229, i64 %232
  %234 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %233, i32 0, i32 3
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %236, i64 %239
  %241 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @memcpy(i32* %235, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @lme2510_i2c_xfer.ibuf, i64 0, i64 1), i32 %242)
  %244 = load i32, i32* %10, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %10, align 4
  br label %246

246:                                              ; preds = %228, %214
  br label %247

247:                                              ; preds = %246, %208
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %10, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %10, align 4
  br label %30

251:                                              ; preds = %30
  %252 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %253 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %252, i32 0, i32 0
  %254 = call i32 @mutex_unlock(i32* %253)
  %255 = load i32, i32* %10, align 4
  store i32 %255, i32* %4, align 4
  br label %256

256:                                              ; preds = %251, %201
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @lme2510_msg(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @deb_info(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
