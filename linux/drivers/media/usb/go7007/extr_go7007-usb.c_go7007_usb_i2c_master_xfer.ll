; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.go7007 = type { i32*, i64, %struct.go7007_usb* }
%struct.go7007_usb = type { i32 }

@EIO = common dso_local global i32 0, align 4
@STATUS_SHUTDOWN = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @go7007_usb_i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_usb_i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.go7007*, align 8
  %9 = alloca %struct.go7007_usb*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = call %struct.go7007* @i2c_get_adapdata(%struct.i2c_adapter* %14)
  store %struct.go7007* %15, %struct.go7007** %8, align 8
  %16 = load %struct.go7007*, %struct.go7007** %8, align 8
  %17 = getelementptr inbounds %struct.go7007, %struct.go7007* %16, i32 0, i32 2
  %18 = load %struct.go7007_usb*, %struct.go7007_usb** %17, align 8
  store %struct.go7007_usb* %18, %struct.go7007_usb** %9, align 8
  %19 = load %struct.go7007*, %struct.go7007** %8, align 8
  %20 = getelementptr inbounds %struct.go7007, %struct.go7007* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %13, align 4
  %24 = load %struct.go7007*, %struct.go7007** %8, align 8
  %25 = getelementptr inbounds %struct.go7007, %struct.go7007* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @STATUS_SHUTDOWN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %283

32:                                               ; preds = %3
  %33 = load %struct.go7007_usb*, %struct.go7007_usb** %9, align 8
  %34 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %273, %32
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %276

40:                                               ; preds = %36
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %136

45:                                               ; preds = %40
  %46 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i64 %48
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i64 %55
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %51, %58
  br i1 %59, label %60, label %136

60:                                               ; preds = %45
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i64 %63
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @I2C_M_RD, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %136, label %70

70:                                               ; preds = %60
  %71 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i64 %74
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @I2C_M_RD, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %136

81:                                               ; preds = %70
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 1, i32* %83, align 4
  %84 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i64 %86
  %88 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %93, i64 %95
  %97 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = shl i32 %98, 1
  %100 = load i32*, i32** %10, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 %99, i32* %101, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %104, i64 %106
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i64 %112
  %114 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @memcpy(i32* %103, i32* %109, i32 %115)
  %117 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i64 %119
  %121 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 3
  store i32 %123, i32* %11, align 4
  %124 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %124, i64 %127
  %129 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  store i32 %130, i32* %135, align 4
  br label %217

136:                                              ; preds = %70, %60, %45, %40
  %137 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %137, i64 %139
  %141 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @I2C_M_RD, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %168

146:                                              ; preds = %136
  %147 = load i32*, i32** %10, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  store i32 1, i32* %148, align 4
  %149 = load i32*, i32** %10, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  store i32 1, i32* %150, align 4
  %151 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %151, i64 %153
  %155 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = shl i32 %156, 1
  %158 = load i32*, i32** %10, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  store i32 %157, i32* %159, align 4
  %160 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %160, i64 %162
  %164 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  store i32 %165, i32* %167, align 4
  store i32 4, i32* %11, align 4
  br label %216

168:                                              ; preds = %136
  %169 = load i32*, i32** %10, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  store i32 0, i32* %170, align 4
  %171 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %171, i64 %173
  %175 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  %178 = load i32*, i32** %10, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  store i32 %177, i32* %179, align 4
  %180 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %180, i64 %182
  %184 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = shl i32 %185, 1
  %187 = load i32*, i32** %10, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  store i32 %186, i32* %188, align 4
  %189 = load i32*, i32** %10, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 3
  %191 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %191, i64 %193
  %195 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %197, i64 %199
  %201 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @memcpy(i32* %190, i32* %196, i32 %202)
  %204 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %204, i64 %206
  %208 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %209, 3
  store i32 %210, i32* %11, align 4
  %211 = load i32*, i32** %10, align 8
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %11, align 4
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  store i32 0, i32* %215, align 4
  br label %216

216:                                              ; preds = %168, %146
  br label %217

217:                                              ; preds = %216, %81
  %218 = load %struct.go7007*, %struct.go7007** %8, align 8
  %219 = load i32*, i32** %10, align 8
  %220 = load i32, i32* %11, align 4
  %221 = call i64 @go7007_usb_vendor_request(%struct.go7007* %218, i32 36, i32 0, i32 0, i32* %219, i32 %220, i32 0)
  %222 = icmp slt i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  br label %278

224:                                              ; preds = %217
  %225 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %226 = load i32, i32* %12, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %225, i64 %227
  %229 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @I2C_M_RD, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %272

234:                                              ; preds = %224
  %235 = load i32*, i32** %10, align 8
  %236 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %236, i64 %238
  %240 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, 1
  %243 = call i32 @memset(i32* %235, i32 0, i32 %242)
  %244 = load %struct.go7007*, %struct.go7007** %8, align 8
  %245 = load i32*, i32** %10, align 8
  %246 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %247 = load i32, i32* %12, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %246, i64 %248
  %250 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %251, 1
  %253 = call i64 @go7007_usb_vendor_request(%struct.go7007* %244, i32 37, i32 0, i32 0, i32* %245, i32 %252, i32 1)
  %254 = icmp slt i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %234
  br label %278

256:                                              ; preds = %234
  %257 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %258 = load i32, i32* %12, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %257, i64 %259
  %261 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %260, i32 0, i32 3
  %262 = load i32*, i32** %261, align 8
  %263 = load i32*, i32** %10, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 1
  %265 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %266 = load i32, i32* %12, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %265, i64 %267
  %269 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @memcpy(i32* %262, i32* %264, i32 %270)
  br label %272

272:                                              ; preds = %256, %224
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %12, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %12, align 4
  br label %36

276:                                              ; preds = %36
  %277 = load i32, i32* %7, align 4
  store i32 %277, i32* %13, align 4
  br label %278

278:                                              ; preds = %276, %255, %223
  %279 = load %struct.go7007_usb*, %struct.go7007_usb** %9, align 8
  %280 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %279, i32 0, i32 0
  %281 = call i32 @mutex_unlock(i32* %280)
  %282 = load i32, i32* %13, align 4
  store i32 %282, i32* %4, align 4
  br label %283

283:                                              ; preds = %278, %29
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

declare dso_local %struct.go7007* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @go7007_usb_vendor_request(%struct.go7007*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
