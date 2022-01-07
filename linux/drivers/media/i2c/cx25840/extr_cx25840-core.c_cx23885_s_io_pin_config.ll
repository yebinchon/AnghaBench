; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx23885_s_io_pin_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx23885_s_io_pin_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_io_pin_config = type { i64, i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }

@CX25840_PIN_DRIVE_FAST = common dso_local global i64 0, align 8
@CX23885_PAD_IRQ_N = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IO_PIN_DISABLE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IO_PIN_INPUT = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IO_PIN_ACTIVE_LOW = common dso_local global i32 0, align 4
@CX23885_PAD_GPIO19 = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IO_PIN_SET_VALUE = common dso_local global i32 0, align 4
@CX23885_PAD_GPIO20 = common dso_local global i32 0, align 4
@CX23885_PAD_GPIO21 = common dso_local global i32 0, align 4
@CX23885_PAD_GPIO22 = common dso_local global i32 0, align 4
@CX23885_PAD_GPIO23 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64, %struct.v4l2_subdev_io_pin_config*)* @cx23885_s_io_pin_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_s_io_pin_config(%struct.v4l2_subdev* %0, i64 %1, %struct.v4l2_subdev_io_pin_config* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.v4l2_subdev_io_pin_config*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.v4l2_subdev_io_pin_config* %2, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %7, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %16 = call i32 @cx25840_read4(%struct.i2c_client* %15, i32 288)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %18 = call i64 @cx25840_read(%struct.i2c_client* %17, i32 352)
  store i64 %18, i64* %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %20 = call i64 @cx25840_read(%struct.i2c_client* %19, i32 356)
  store i64 %20, i64* %11, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %399, %3
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %5, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %402

26:                                               ; preds = %21
  %27 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %27, i64 %29
  %31 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @CX25840_PIN_DRIVE_FAST, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i64, i64* @CX25840_PIN_DRIVE_FAST, align 8
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %36, %26
  %39 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %39, i64 %41
  %43 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %398 [
    i32 130, label %45
    i32 129, label %96
    i32 128, label %153
    i32 132, label %227
    i32 131, label %284
    i32 133, label %341
  ]

45:                                               ; preds = %38
  %46 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %46, i64 %48
  %50 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CX23885_PAD_IRQ_N, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, -33554433
  store i32 %56, i32* %9, align 4
  br label %95

57:                                               ; preds = %45
  %58 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %58, i64 %60
  %62 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @V4L2_SUBDEV_IO_PIN_DISABLE, align 4
  %65 = call i32 @BIT(i32 %64)
  %66 = load i32, i32* @V4L2_SUBDEV_IO_PIN_INPUT, align 4
  %67 = call i32 @BIT(i32 %66)
  %68 = or i32 %65, %67
  %69 = and i32 %63, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %57
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, -33554433
  store i32 %73, i32* %9, align 4
  br label %77

74:                                               ; preds = %57
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, 33554432
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %78, i64 %80
  %82 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @V4L2_SUBDEV_IO_PIN_ACTIVE_LOW, align 4
  %85 = call i32 @BIT(i32 %84)
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load i32, i32* %9, align 4
  %90 = and i32 %89, -16777217
  store i32 %90, i32* %9, align 4
  br label %94

91:                                               ; preds = %77
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, 16777216
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %54
  br label %398

96:                                               ; preds = %38
  %97 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %97, i64 %99
  %101 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CX23885_PAD_GPIO19, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %96
  %106 = load i64, i64* %10, align 8
  %107 = or i64 %106, 1
  store i64 %107, i64* %10, align 8
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, -786433
  store i32 %109, i32* %9, align 4
  %110 = load i64, i64* %12, align 8
  %111 = shl i64 %110, 18
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = or i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %9, align 4
  br label %152

116:                                              ; preds = %96
  %117 = load i64, i64* %10, align 8
  %118 = and i64 %117, -2
  store i64 %118, i64* %10, align 8
  %119 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %119, i64 %121
  %123 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @V4L2_SUBDEV_IO_PIN_SET_VALUE, align 4
  %126 = call i32 @BIT(i32 %125)
  %127 = and i32 %124, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %116
  %130 = load i64, i64* %11, align 8
  %131 = and i64 %130, -2
  store i64 %131, i64* %11, align 8
  %132 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %132, i64 %134
  %136 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, 1
  %139 = shl i32 %138, 0
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %11, align 8
  %142 = or i64 %141, %140
  store i64 %142, i64* %11, align 8
  br label %143

143:                                              ; preds = %129, %116
  %144 = load i32, i32* %9, align 4
  %145 = and i32 %144, -12289
  store i32 %145, i32* %9, align 4
  %146 = load i64, i64* %12, align 8
  %147 = shl i64 %146, 12
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = or i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %9, align 4
  br label %152

152:                                              ; preds = %143, %105
  br label %398

153:                                              ; preds = %38
  %154 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %154, i64 %156
  %158 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @CX23885_PAD_GPIO20, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %190

162:                                              ; preds = %153
  %163 = load i64, i64* %10, align 8
  %164 = or i64 %163, 2
  store i64 %164, i64* %10, align 8
  %165 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %165, i64 %167
  %169 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @V4L2_SUBDEV_IO_PIN_DISABLE, align 4
  %172 = call i32 @BIT(i32 %171)
  %173 = and i32 %170, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %162
  %176 = load i32, i32* %9, align 4
  %177 = and i32 %176, -1025
  store i32 %177, i32* %9, align 4
  br label %181

178:                                              ; preds = %162
  %179 = load i32, i32* %9, align 4
  %180 = or i32 %179, 1024
  store i32 %180, i32* %9, align 4
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* %9, align 4
  %183 = and i32 %182, -786433
  store i32 %183, i32* %9, align 4
  %184 = load i64, i64* %12, align 8
  %185 = shl i64 %184, 18
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = or i64 %187, %185
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %9, align 4
  br label %226

190:                                              ; preds = %153
  %191 = load i64, i64* %10, align 8
  %192 = and i64 %191, -3
  store i64 %192, i64* %10, align 8
  %193 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %193, i64 %195
  %197 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @V4L2_SUBDEV_IO_PIN_SET_VALUE, align 4
  %200 = call i32 @BIT(i32 %199)
  %201 = and i32 %198, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %217

203:                                              ; preds = %190
  %204 = load i64, i64* %11, align 8
  %205 = and i64 %204, -3
  store i64 %205, i64* %11, align 8
  %206 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %206, i64 %208
  %210 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, 1
  %213 = shl i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = load i64, i64* %11, align 8
  %216 = or i64 %215, %214
  store i64 %216, i64* %11, align 8
  br label %217

217:                                              ; preds = %203, %190
  %218 = load i32, i32* %9, align 4
  %219 = and i32 %218, -12289
  store i32 %219, i32* %9, align 4
  %220 = load i64, i64* %12, align 8
  %221 = shl i64 %220, 12
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = or i64 %223, %221
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %9, align 4
  br label %226

226:                                              ; preds = %217, %181
  br label %398

227:                                              ; preds = %38
  %228 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %228, i64 %230
  %232 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @CX23885_PAD_GPIO21, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %247

236:                                              ; preds = %227
  %237 = load i64, i64* %10, align 8
  %238 = or i64 %237, 4
  store i64 %238, i64* %10, align 8
  %239 = load i32, i32* %9, align 4
  %240 = and i32 %239, -12582913
  store i32 %240, i32* %9, align 4
  %241 = load i64, i64* %12, align 8
  %242 = shl i64 %241, 22
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = or i64 %244, %242
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %9, align 4
  br label %283

247:                                              ; preds = %227
  %248 = load i64, i64* %10, align 8
  %249 = and i64 %248, -5
  store i64 %249, i64* %10, align 8
  %250 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %250, i64 %252
  %254 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @V4L2_SUBDEV_IO_PIN_SET_VALUE, align 4
  %257 = call i32 @BIT(i32 %256)
  %258 = and i32 %255, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %274

260:                                              ; preds = %247
  %261 = load i64, i64* %11, align 8
  %262 = and i64 %261, -5
  store i64 %262, i64* %11, align 8
  %263 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %263, i64 %265
  %267 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = and i32 %268, 1
  %270 = shl i32 %269, 2
  %271 = sext i32 %270 to i64
  %272 = load i64, i64* %11, align 8
  %273 = or i64 %272, %271
  store i64 %273, i64* %11, align 8
  br label %274

274:                                              ; preds = %260, %247
  %275 = load i32, i32* %9, align 4
  %276 = and i32 %275, -12289
  store i32 %276, i32* %9, align 4
  %277 = load i64, i64* %12, align 8
  %278 = shl i64 %277, 12
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  %281 = or i64 %280, %278
  %282 = trunc i64 %281 to i32
  store i32 %282, i32* %9, align 4
  br label %283

283:                                              ; preds = %274, %236
  br label %398

284:                                              ; preds = %38
  %285 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %286 = load i32, i32* %8, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %285, i64 %287
  %289 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @CX23885_PAD_GPIO22, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %304

293:                                              ; preds = %284
  %294 = load i64, i64* %10, align 8
  %295 = or i64 %294, 8
  store i64 %295, i64* %10, align 8
  %296 = load i32, i32* %9, align 4
  %297 = and i32 %296, -12582913
  store i32 %297, i32* %9, align 4
  %298 = load i64, i64* %12, align 8
  %299 = shl i64 %298, 22
  %300 = load i32, i32* %9, align 4
  %301 = sext i32 %300 to i64
  %302 = or i64 %301, %299
  %303 = trunc i64 %302 to i32
  store i32 %303, i32* %9, align 4
  br label %340

304:                                              ; preds = %284
  %305 = load i64, i64* %10, align 8
  %306 = and i64 %305, -9
  store i64 %306, i64* %10, align 8
  %307 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %308 = load i32, i32* %8, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %307, i64 %309
  %311 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @V4L2_SUBDEV_IO_PIN_SET_VALUE, align 4
  %314 = call i32 @BIT(i32 %313)
  %315 = and i32 %312, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %331

317:                                              ; preds = %304
  %318 = load i64, i64* %11, align 8
  %319 = and i64 %318, -9
  store i64 %319, i64* %11, align 8
  %320 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %321 = load i32, i32* %8, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %320, i64 %322
  %324 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 8
  %326 = and i32 %325, 1
  %327 = shl i32 %326, 3
  %328 = sext i32 %327 to i64
  %329 = load i64, i64* %11, align 8
  %330 = or i64 %329, %328
  store i64 %330, i64* %11, align 8
  br label %331

331:                                              ; preds = %317, %304
  %332 = load i32, i32* %9, align 4
  %333 = and i32 %332, -12289
  store i32 %333, i32* %9, align 4
  %334 = load i64, i64* %12, align 8
  %335 = shl i64 %334, 12
  %336 = load i32, i32* %9, align 4
  %337 = sext i32 %336 to i64
  %338 = or i64 %337, %335
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %9, align 4
  br label %340

340:                                              ; preds = %331, %293
  br label %398

341:                                              ; preds = %38
  %342 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %343 = load i32, i32* %8, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %342, i64 %344
  %346 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @CX23885_PAD_GPIO23, align 4
  %349 = icmp ne i32 %347, %348
  br i1 %349, label %350, label %361

350:                                              ; preds = %341
  %351 = load i64, i64* %10, align 8
  %352 = or i64 %351, 16
  store i64 %352, i64* %10, align 8
  %353 = load i32, i32* %9, align 4
  %354 = and i32 %353, -12582913
  store i32 %354, i32* %9, align 4
  %355 = load i64, i64* %12, align 8
  %356 = shl i64 %355, 22
  %357 = load i32, i32* %9, align 4
  %358 = sext i32 %357 to i64
  %359 = or i64 %358, %356
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %9, align 4
  br label %397

361:                                              ; preds = %341
  %362 = load i64, i64* %10, align 8
  %363 = and i64 %362, -17
  store i64 %363, i64* %10, align 8
  %364 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %365 = load i32, i32* %8, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %364, i64 %366
  %368 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @V4L2_SUBDEV_IO_PIN_SET_VALUE, align 4
  %371 = call i32 @BIT(i32 %370)
  %372 = and i32 %369, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %388

374:                                              ; preds = %361
  %375 = load i64, i64* %11, align 8
  %376 = and i64 %375, -17
  store i64 %376, i64* %11, align 8
  %377 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %6, align 8
  %378 = load i32, i32* %8, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %377, i64 %379
  %381 = getelementptr inbounds %struct.v4l2_subdev_io_pin_config, %struct.v4l2_subdev_io_pin_config* %380, i32 0, i32 3
  %382 = load i32, i32* %381, align 8
  %383 = and i32 %382, 1
  %384 = shl i32 %383, 4
  %385 = sext i32 %384 to i64
  %386 = load i64, i64* %11, align 8
  %387 = or i64 %386, %385
  store i64 %387, i64* %11, align 8
  br label %388

388:                                              ; preds = %374, %361
  %389 = load i32, i32* %9, align 4
  %390 = and i32 %389, -12289
  store i32 %390, i32* %9, align 4
  %391 = load i64, i64* %12, align 8
  %392 = shl i64 %391, 12
  %393 = load i32, i32* %9, align 4
  %394 = sext i32 %393 to i64
  %395 = or i64 %394, %392
  %396 = trunc i64 %395 to i32
  store i32 %396, i32* %9, align 4
  br label %397

397:                                              ; preds = %388, %350
  br label %398

398:                                              ; preds = %38, %397, %340, %283, %226, %152, %95
  br label %399

399:                                              ; preds = %398
  %400 = load i32, i32* %8, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %8, align 4
  br label %21

402:                                              ; preds = %21
  %403 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %404 = load i64, i64* %11, align 8
  %405 = call i32 @cx25840_write(%struct.i2c_client* %403, i32 356, i64 %404)
  %406 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %407 = load i64, i64* %10, align 8
  %408 = call i32 @cx25840_write(%struct.i2c_client* %406, i32 352, i64 %407)
  %409 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %410 = load i32, i32* %9, align 4
  %411 = call i32 @cx25840_write4(%struct.i2c_client* %409, i32 288, i32 %410)
  ret i32 0
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx25840_read4(%struct.i2c_client*, i32) #1

declare dso_local i64 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @cx25840_write4(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
