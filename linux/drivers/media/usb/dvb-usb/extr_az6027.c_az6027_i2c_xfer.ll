; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_az6027.c_az6027_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_az6027.c_az6027_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }
%struct.dvb_usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"more than 2 i2c messages at a time is not handled yet. TODO.\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @az6027_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az6027_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8**, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %18 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %17)
  store %struct.dvb_usb_device* %18, %struct.dvb_usb_device** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8** @kmalloc(i32 256, i32 %19)
  store i8** %20, i8*** %16, align 8
  %21 = load i8**, i8*** %16, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %402

26:                                               ; preds = %3
  %27 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %28 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %27, i32 0, i32 0
  %29 = call i64 @mutex_lock_interruptible(i32* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8**, i8*** %16, align 8
  %33 = call i32 @kfree(i8** %32)
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %402

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 2
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @warn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %392, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %395

46:                                               ; preds = %42
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i64 %49
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 153
  br i1 %53, label %54, label %71

54:                                               ; preds = %46
  store i8* inttoptr (i64 190 to i8*), i8** %15, align 8
  store i32 0, i32* %12, align 4
  %55 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i64 %57
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 255
  store i32 %63, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %64 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i8**, i8*** %16, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @az6027_usb_out_op(%struct.dvb_usb_device* %64, i8* %65, i32 %66, i32 %67, i8** %68, i32 %69)
  br label %71

71:                                               ; preds = %54, %46
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i64 %74
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 208
  br i1 %78, label %79, label %256

79:                                               ; preds = %71
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %180

84:                                               ; preds = %79
  %85 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i64 %88
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @I2C_M_RD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %180

95:                                               ; preds = %84
  store i8* inttoptr (i64 185 to i8*), i8** %15, align 8
  %96 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %96, i64 %98
  %100 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 8
  %105 = and i32 %104, 65280
  %106 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i64 %108
  %110 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 255
  %115 = or i32 %105, %114
  store i32 %115, i32* %12, align 4
  %116 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i64 %118
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %122, i64 %124
  %126 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 8
  %129 = add nsw i32 %121, %128
  store i32 %129, i32* %13, align 4
  %130 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %130, i64 %133
  %135 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 6
  store i32 %137, i32* %14, align 4
  %138 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %139 = load i8*, i8** %15, align 8
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i8**, i8*** %16, align 8
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @az6027_usb_in_op(%struct.dvb_usb_device* %138, i8* %139, i32 %140, i32 %141, i8** %142, i32 %143)
  %145 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %145, i64 %148
  %150 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %152

152:                                              ; preds = %174, %95
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %177

156:                                              ; preds = %152
  %157 = load i8**, i8*** %16, align 8
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 5
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %157, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %164, i64 %167
  %169 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %163, i32* %173, align 4
  br label %174

174:                                              ; preds = %156
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %152

177:                                              ; preds = %152
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  br label %255

180:                                              ; preds = %84, %79
  store i8* inttoptr (i64 189 to i8*), i8** %15, align 8
  %181 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %181, i64 %183
  %185 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = shl i32 %188, 8
  %190 = and i32 %189, 65280
  %191 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %191, i64 %193
  %195 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 255
  %200 = or i32 %190, %199
  store i32 %200, i32* %12, align 4
  %201 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %201, i64 %203
  %205 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, 512
  store i32 %207, i32* %13, align 4
  %208 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %208, i64 %210
  %212 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 %213, 2
  store i32 %214, i32* %14, align 4
  %215 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %215, i64 %217
  %219 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %220, 2
  store i32 %221, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %222

222:                                              ; preds = %244, %180
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* %11, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %247

226:                                              ; preds = %222
  %227 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %227, i64 %229
  %231 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 2
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = inttoptr i64 %238 to i8*
  %240 = load i8**, i8*** %16, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  store i8* %239, i8** %243, align 8
  br label %244

244:                                              ; preds = %226
  %245 = load i32, i32* %10, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %10, align 4
  br label %222

247:                                              ; preds = %222
  %248 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %249 = load i8*, i8** %15, align 8
  %250 = load i32, i32* %13, align 4
  %251 = load i32, i32* %12, align 4
  %252 = load i8**, i8*** %16, align 8
  %253 = load i32, i32* %14, align 4
  %254 = call i32 @az6027_usb_out_op(%struct.dvb_usb_device* %248, i8* %249, i32 %250, i32 %251, i8** %252, i32 %253)
  br label %255

255:                                              ; preds = %247, %177
  br label %256

256:                                              ; preds = %255, %71
  %257 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %257, i64 %259
  %261 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp eq i32 %262, 192
  br i1 %263, label %264, label %391

264:                                              ; preds = %256
  %265 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %265, i64 %267
  %269 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @I2C_M_RD, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %326

274:                                              ; preds = %264
  store i8* inttoptr (i64 185 to i8*), i8** %15, align 8
  store i32 0, i32* %12, align 4
  %275 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %275, i64 %277
  %279 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  store i32 %280, i32* %13, align 4
  %281 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %282 = load i32, i32* %9, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %281, i64 %283
  %285 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, 6
  store i32 %287, i32* %14, align 4
  %288 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %289 = load i8*, i8** %15, align 8
  %290 = load i32, i32* %13, align 4
  %291 = load i32, i32* %12, align 4
  %292 = load i8**, i8*** %16, align 8
  %293 = load i32, i32* %14, align 4
  %294 = call i32 @az6027_usb_in_op(%struct.dvb_usb_device* %288, i8* %289, i32 %290, i32 %291, i8** %292, i32 %293)
  %295 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %296 = load i32, i32* %9, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %295, i64 %297
  %299 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %301

301:                                              ; preds = %322, %274
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* %11, align 4
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %305, label %325

305:                                              ; preds = %301
  %306 = load i8**, i8*** %16, align 8
  %307 = load i32, i32* %10, align 4
  %308 = add nsw i32 %307, 5
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8*, i8** %306, i64 %309
  %311 = load i8*, i8** %310, align 8
  %312 = ptrtoint i8* %311 to i32
  %313 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %314 = load i32, i32* %9, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %313, i64 %315
  %317 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %10, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  store i32 %312, i32* %321, align 4
  br label %322

322:                                              ; preds = %305
  %323 = load i32, i32* %10, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %10, align 4
  br label %301

325:                                              ; preds = %301
  br label %390

326:                                              ; preds = %264
  store i8* inttoptr (i64 189 to i8*), i8** %15, align 8
  %327 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %328 = load i32, i32* %9, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %327, i64 %329
  %331 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 0
  %334 = load i32, i32* %333, align 4
  %335 = and i32 %334, 255
  store i32 %335, i32* %12, align 4
  %336 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %337 = load i32, i32* %9, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %336, i64 %338
  %340 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = add nsw i32 %341, 256
  store i32 %342, i32* %13, align 4
  %343 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %344 = load i32, i32* %9, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %343, i64 %345
  %347 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 4
  %349 = sub nsw i32 %348, 1
  store i32 %349, i32* %14, align 4
  %350 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %351 = load i32, i32* %9, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %350, i64 %352
  %354 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 4
  %356 = sub nsw i32 %355, 1
  store i32 %356, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %357

357:                                              ; preds = %379, %326
  %358 = load i32, i32* %10, align 4
  %359 = load i32, i32* %11, align 4
  %360 = icmp slt i32 %358, %359
  br i1 %360, label %361, label %382

361:                                              ; preds = %357
  %362 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %363 = load i32, i32* %9, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %362, i64 %364
  %366 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %365, i32 0, i32 1
  %367 = load i32*, i32** %366, align 8
  %368 = load i32, i32* %10, align 4
  %369 = add nsw i32 %368, 1
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %367, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = sext i32 %372 to i64
  %374 = inttoptr i64 %373 to i8*
  %375 = load i8**, i8*** %16, align 8
  %376 = load i32, i32* %10, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8*, i8** %375, i64 %377
  store i8* %374, i8** %378, align 8
  br label %379

379:                                              ; preds = %361
  %380 = load i32, i32* %10, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %10, align 4
  br label %357

382:                                              ; preds = %357
  %383 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %384 = load i8*, i8** %15, align 8
  %385 = load i32, i32* %13, align 4
  %386 = load i32, i32* %12, align 4
  %387 = load i8**, i8*** %16, align 8
  %388 = load i32, i32* %14, align 4
  %389 = call i32 @az6027_usb_out_op(%struct.dvb_usb_device* %383, i8* %384, i32 %385, i32 %386, i8** %387, i32 %388)
  br label %390

390:                                              ; preds = %382, %325
  br label %391

391:                                              ; preds = %390, %256
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %9, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %9, align 4
  br label %42

395:                                              ; preds = %42
  %396 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %397 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %396, i32 0, i32 0
  %398 = call i32 @mutex_unlock(i32* %397)
  %399 = load i8**, i8*** %16, align 8
  %400 = call i32 @kfree(i8** %399)
  %401 = load i32, i32* %9, align 4
  store i32 %401, i32* %4, align 4
  br label %402

402:                                              ; preds = %395, %31, %23
  %403 = load i32, i32* %4, align 4
  ret i32 %403
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i8** @kmalloc(i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @az6027_usb_out_op(%struct.dvb_usb_device*, i8*, i32, i32, i8**, i32) #1

declare dso_local i32 @az6027_usb_in_op(%struct.dvb_usb_device*, i8*, i32, i32, i8**, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
