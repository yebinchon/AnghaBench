; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_ttusb2.c_ttusb2_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_ttusb2.c_ttusb2_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.dvb_usb_device = type { i32 }

@ttusb2_i2c_xfer.obuf = internal global [60 x i32] zeroinitializer, align 16
@ttusb2_i2c_xfer.ibuf = internal global [60 x i32] zeroinitializer, align 16
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"more than 2 i2c messages at a time is not handled yet. TODO.\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"i2c wr len=%d too high\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"i2c rd len=%d too high\00", align 1
@CMD_I2C_XFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"i2c transfer failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @ttusb2_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusb2_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %8, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 0
  %16 = call i64 @mutex_lock_interruptible(i32* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %239

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @warn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %231, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %234

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i64 %40
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @I2C_M_RD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %36, %31
  %48 = phi i1 [ false, %31 ], [ %46, %36 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i64 %52
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @I2C_M_RD, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %11, align 4
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i64 %60
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 3, %63
  %65 = sext i32 %64 to i64
  %66 = icmp ugt i64 %65, 240
  br i1 %66, label %67, label %75

67:                                               ; preds = %47
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i64 %70
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %234

75:                                               ; preds = %47
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %75
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i64 %82
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 3, %85
  %87 = sext i32 %86 to i64
  %88 = icmp ugt i64 %87, 240
  br i1 %88, label %89, label %98

89:                                               ; preds = %78
  %90 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i64 %93
  %95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %234

98:                                               ; preds = %78
  br label %122

99:                                               ; preds = %75
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %99
  %103 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %103, i64 %105
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 3, %108
  %110 = sext i32 %109 to i64
  %111 = icmp ugt i64 %110, 240
  br i1 %111, label %112, label %120

112:                                              ; preds = %102
  %113 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %113, i64 %115
  %117 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  br label %234

120:                                              ; preds = %102
  br label %121

121:                                              ; preds = %120, %99
  br label %122

122:                                              ; preds = %121, %98
  %123 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %123, i64 %125
  %127 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = shl i32 %128, 1
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = or i32 %130, %131
  %133 = or i32 %129, %132
  store i32 %133, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 0), align 16
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %122
  store i32 0, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 1), align 4
  br label %144

137:                                              ; preds = %122
  %138 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %138, i64 %140
  %142 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 1), align 4
  br label %144

144:                                              ; preds = %137, %136
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %148, i64 %151
  %153 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 2), align 8
  br label %167

155:                                              ; preds = %144
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %159, i64 %161
  %163 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 2), align 8
  br label %166

165:                                              ; preds = %155
  store i32 0, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 2), align 8
  br label %166

166:                                              ; preds = %165, %158
  br label %167

167:                                              ; preds = %166, %147
  %168 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %168, i64 %170
  %172 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %174, i64 %176
  %178 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @memcpy(i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 3), i32* %173, i32 %179)
  %181 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %182 = load i32, i32* @CMD_I2C_XFER, align 4
  %183 = load i32, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 1), align 4
  %184 = add nsw i32 %183, 3
  %185 = load i32, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 2), align 8
  %186 = add nsw i32 %185, 3
  %187 = call i64 @ttusb2_msg(%struct.dvb_usb_device* %181, i32 %182, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.obuf, i64 0, i64 0), i32 %184, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.ibuf, i64 0, i64 0), i32 %186)
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %167
  %190 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %234

191:                                              ; preds = %167
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %212

194:                                              ; preds = %191
  %195 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %195, i64 %198
  %200 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %202, i64 %205
  %207 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @memcpy(i32* %201, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.ibuf, i64 0, i64 3), i32 %208)
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %9, align 4
  br label %230

212:                                              ; preds = %191
  %213 = load i32, i32* %11, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %229

215:                                              ; preds = %212
  %216 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %216, i64 %218
  %220 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %223 = load i32, i32* %9, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %222, i64 %224
  %226 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @memcpy(i32* %221, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @ttusb2_i2c_xfer.ibuf, i64 0, i64 3), i32 %227)
  br label %229

229:                                              ; preds = %215, %212
  br label %230

230:                                              ; preds = %229, %194
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %27

234:                                              ; preds = %189, %112, %89, %67, %27
  %235 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %236 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %235, i32 0, i32 0
  %237 = call i32 @mutex_unlock(i32* %236)
  %238 = load i32, i32* %9, align 4
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %234, %18
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @ttusb2_msg(%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
