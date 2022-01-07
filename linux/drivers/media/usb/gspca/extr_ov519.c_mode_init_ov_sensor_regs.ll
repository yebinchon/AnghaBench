; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_mode_init_ov_sensor_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_mode_init_ov_sensor_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov_i2c_regvals = type { i32, i32 }
%struct.sd = type { i32, i32, i32 }
%struct.gspca_dev = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@OV7610_REG_COM_C = common dso_local global i32 0, align 4
@OV7670_R12_COM7 = common dso_local global i32 0, align 4
@OV7670_COM7_FMT_QVGA = common dso_local global i32 0, align 4
@OV7670_COM7_FMT_VGA = common dso_local global i32 0, align 4
@OV7670_COM7_FMT_MASK = common dso_local global i32 0, align 4
@OV7670_R13_COM8 = common dso_local global i32 0, align 4
@OV7670_COM8_AWB = common dso_local global i32 0, align 4
@OV7670_R17_HSTART = common dso_local global i32 0, align 4
@OV7670_R18_HSTOP = common dso_local global i32 0, align 4
@OV7670_R32_HREF = common dso_local global i32 0, align 4
@OV7670_R19_VSTART = common dso_local global i32 0, align 4
@OV7670_R1A_VSTOP = common dso_local global i32 0, align 4
@OV7670_R03_VREF = common dso_local global i32 0, align 4
@mode_init_ov_sensor_regs.sxga_15 = internal constant [4 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i32 17, i32 128 }, %struct.ov_i2c_regvals { i32 20, i32 62 }, %struct.ov_i2c_regvals { i32 36, i32 133 }, %struct.ov_i2c_regvals { i32 37, i32 117 }], align 16
@mode_init_ov_sensor_regs.sxga_7_5 = internal constant [4 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i32 17, i32 129 }, %struct.ov_i2c_regvals { i32 20, i32 62 }, %struct.ov_i2c_regvals { i32 36, i32 133 }, %struct.ov_i2c_regvals { i32 37, i32 117 }], align 16
@mode_init_ov_sensor_regs.vga_30 = internal constant [4 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i32 17, i32 129 }, %struct.ov_i2c_regvals { i32 20, i32 126 }, %struct.ov_i2c_regvals { i32 36, i32 112 }, %struct.ov_i2c_regvals { i32 37, i32 96 }], align 16
@mode_init_ov_sensor_regs.vga_15 = internal constant [4 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i32 17, i32 131 }, %struct.ov_i2c_regvals { i32 20, i32 62 }, %struct.ov_i2c_regvals { i32 36, i32 128 }, %struct.ov_i2c_regvals { i32 37, i32 112 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @mode_init_ov_sensor_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mode_init_ov_sensor_regs(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ov_i2c_regvals*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %12 = load %struct.sd*, %struct.sd** %2, align 8
  %13 = bitcast %struct.sd* %12 to %struct.gspca_dev*
  store %struct.gspca_dev* %13, %struct.gspca_dev** %3, align 8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = load %struct.sd*, %struct.sd** %2, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %436 [
    i32 142, label %28
    i32 141, label %71
    i32 140, label %98
    i32 129, label %184
    i32 136, label %200
    i32 135, label %217
    i32 134, label %217
    i32 130, label %217
    i32 133, label %276
    i32 132, label %276
    i32 131, label %309
    i32 139, label %388
    i32 138, label %399
    i32 137, label %399
    i32 128, label %408
  ]

28:                                               ; preds = %1
  %29 = load %struct.sd*, %struct.sd** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 32, i32 0
  %34 = call i32 @i2c_w_mask(%struct.sd* %29, i32 20, i32 %33, i32 32)
  %35 = load %struct.sd*, %struct.sd** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 32
  %40 = call i32 @i2c_w_mask(%struct.sd* %35, i32 40, i32 %39, i32 32)
  %41 = load %struct.sd*, %struct.sd** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 32, i32 58
  %46 = call i32 @i2c_w(%struct.sd* %41, i32 36, i32 %45)
  %47 = load %struct.sd*, %struct.sd** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 48, i32 96
  %52 = call i32 @i2c_w(%struct.sd* %47, i32 37, i32 %51)
  %53 = load %struct.sd*, %struct.sd** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 64, i32 0
  %58 = call i32 @i2c_w_mask(%struct.sd* %53, i32 45, i32 %57, i32 64)
  %59 = load %struct.sd*, %struct.sd** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 240, i32 144
  %64 = call i32 @i2c_w_mask(%struct.sd* %59, i32 103, i32 %63, i32 240)
  %65 = load %struct.sd*, %struct.sd** %2, align 8
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 32, i32 0
  %70 = call i32 @i2c_w_mask(%struct.sd* %65, i32 116, i32 %69, i32 32)
  br label %443

71:                                               ; preds = %1
  store i32 80, i32* %10, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.sd*, %struct.sd** %2, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 25
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 129, i32* %10, align 4
  br label %80

80:                                               ; preds = %79, %74
  br label %88

81:                                               ; preds = %71
  %82 = load %struct.sd*, %struct.sd** %2, align 8
  %83 = getelementptr inbounds %struct.sd, %struct.sd* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 10
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 129, i32* %10, align 4
  br label %87

87:                                               ; preds = %86, %81
  br label %88

88:                                               ; preds = %87, %80
  %89 = load %struct.sd*, %struct.sd** %2, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @i2c_w(%struct.sd* %89, i32 17, i32 %90)
  %92 = load %struct.sd*, %struct.sd** %2, align 8
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 96, i32 32
  %97 = call i32 @i2c_w(%struct.sd* %92, i32 18, i32 %96)
  br label %443

98:                                               ; preds = %1
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %98
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %103 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 1040, %105
  %107 = sdiv i32 %106, 2
  %108 = add nsw i32 %107, 496
  store i32 %108, i32* %5, align 4
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %110 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 776, %112
  %114 = sdiv i32 %113, 2
  store i32 %114, i32* %7, align 4
  br label %129

115:                                              ; preds = %98
  %116 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %117 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 2076, %119
  %121 = sdiv i32 %120, 2
  %122 = add nsw i32 %121, 256
  store i32 %122, i32* %5, align 4
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %124 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 1544, %126
  %128 = sdiv i32 %127, 2
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %115, %101
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %132 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %130, %134
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %138 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %136, %140
  store i32 %141, i32* %8, align 4
  %142 = load %struct.sd*, %struct.sd** %2, align 8
  %143 = load i32, i32* %4, align 4
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 64, i32 0
  %147 = call i32 @i2c_w_mask(%struct.sd* %142, i32 18, i32 %146, i32 240)
  %148 = load %struct.sd*, %struct.sd** %2, align 8
  %149 = load i32, i32* %6, align 4
  %150 = ashr i32 %149, 1
  %151 = and i32 %150, 7
  %152 = shl i32 %151, 3
  %153 = load i32, i32* %5, align 4
  %154 = ashr i32 %153, 1
  %155 = and i32 %154, 7
  %156 = or i32 %152, %155
  %157 = call i32 @i2c_w_mask(%struct.sd* %148, i32 50, i32 %156, i32 63)
  %158 = load %struct.sd*, %struct.sd** %2, align 8
  %159 = load i32, i32* %8, align 4
  %160 = ashr i32 %159, 1
  %161 = and i32 %160, 3
  %162 = shl i32 %161, 2
  %163 = load i32, i32* %7, align 4
  %164 = ashr i32 %163, 1
  %165 = and i32 %164, 3
  %166 = or i32 %162, %165
  %167 = call i32 @i2c_w_mask(%struct.sd* %158, i32 3, i32 %166, i32 15)
  %168 = load %struct.sd*, %struct.sd** %2, align 8
  %169 = load i32, i32* %5, align 4
  %170 = ashr i32 %169, 4
  %171 = call i32 @i2c_w(%struct.sd* %168, i32 23, i32 %170)
  %172 = load %struct.sd*, %struct.sd** %2, align 8
  %173 = load i32, i32* %6, align 4
  %174 = ashr i32 %173, 4
  %175 = call i32 @i2c_w(%struct.sd* %172, i32 24, i32 %174)
  %176 = load %struct.sd*, %struct.sd** %2, align 8
  %177 = load i32, i32* %7, align 4
  %178 = ashr i32 %177, 3
  %179 = call i32 @i2c_w(%struct.sd* %176, i32 25, i32 %178)
  %180 = load %struct.sd*, %struct.sd** %2, align 8
  %181 = load i32, i32* %8, align 4
  %182 = ashr i32 %181, 3
  %183 = call i32 @i2c_w(%struct.sd* %180, i32 26, i32 %182)
  br label %443

184:                                              ; preds = %1
  %185 = load %struct.sd*, %struct.sd** %2, align 8
  %186 = load i32, i32* @OV7610_REG_COM_C, align 4
  %187 = load i32, i32* %4, align 4
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i32 32, i32 0
  %191 = call i32 @i2c_w_mask(%struct.sd* %185, i32 %186, i32 %190, i32 32)
  %192 = load %struct.sd*, %struct.sd** %2, align 8
  %193 = call i32 @i2c_w_mask(%struct.sd* %192, i32 19, i32 0, i32 32)
  %194 = load %struct.sd*, %struct.sd** %2, align 8
  %195 = call i32 @i2c_w_mask(%struct.sd* %194, i32 18, i32 4, i32 6)
  %196 = load %struct.sd*, %struct.sd** %2, align 8
  %197 = call i32 @i2c_w_mask(%struct.sd* %196, i32 45, i32 0, i32 64)
  %198 = load %struct.sd*, %struct.sd** %2, align 8
  %199 = call i32 @i2c_w_mask(%struct.sd* %198, i32 40, i32 32, i32 32)
  br label %437

200:                                              ; preds = %1
  %201 = load %struct.sd*, %struct.sd** %2, align 8
  %202 = load i32, i32* %4, align 4
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i32 32, i32 0
  %206 = call i32 @i2c_w_mask(%struct.sd* %201, i32 20, i32 %205, i32 32)
  %207 = load %struct.sd*, %struct.sd** %2, align 8
  %208 = load i32, i32* %4, align 4
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i32 30, i32 158
  %212 = call i32 @i2c_w(%struct.sd* %207, i32 53, i32 %211)
  %213 = load %struct.sd*, %struct.sd** %2, align 8
  %214 = call i32 @i2c_w_mask(%struct.sd* %213, i32 19, i32 0, i32 32)
  %215 = load %struct.sd*, %struct.sd** %2, align 8
  %216 = call i32 @i2c_w_mask(%struct.sd* %215, i32 18, i32 4, i32 6)
  br label %437

217:                                              ; preds = %1, %1, %1
  %218 = load %struct.sd*, %struct.sd** %2, align 8
  %219 = load i32, i32* %4, align 4
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i32 32, i32 0
  %223 = call i32 @i2c_w_mask(%struct.sd* %218, i32 20, i32 %222, i32 32)
  %224 = load %struct.sd*, %struct.sd** %2, align 8
  %225 = load i32, i32* %4, align 4
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 0, i32 32
  %229 = call i32 @i2c_w_mask(%struct.sd* %224, i32 40, i32 %228, i32 32)
  %230 = load %struct.sd*, %struct.sd** %2, align 8
  %231 = load i32, i32* %4, align 4
  %232 = icmp ne i32 %231, 0
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 32, i32 58
  %235 = call i32 @i2c_w(%struct.sd* %230, i32 36, i32 %234)
  %236 = load %struct.sd*, %struct.sd** %2, align 8
  %237 = load i32, i32* %4, align 4
  %238 = icmp ne i32 %237, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i32 48, i32 96
  %241 = call i32 @i2c_w(%struct.sd* %236, i32 37, i32 %240)
  %242 = load %struct.sd*, %struct.sd** %2, align 8
  %243 = load i32, i32* %4, align 4
  %244 = icmp ne i32 %243, 0
  %245 = zext i1 %244 to i64
  %246 = select i1 %244, i32 64, i32 0
  %247 = call i32 @i2c_w_mask(%struct.sd* %242, i32 45, i32 %246, i32 64)
  %248 = load %struct.sd*, %struct.sd** %2, align 8
  %249 = load i32, i32* %4, align 4
  %250 = icmp ne i32 %249, 0
  %251 = zext i1 %250 to i64
  %252 = select i1 %250, i32 176, i32 144
  %253 = call i32 @i2c_w_mask(%struct.sd* %248, i32 103, i32 %252, i32 240)
  %254 = load %struct.sd*, %struct.sd** %2, align 8
  %255 = load i32, i32* %4, align 4
  %256 = icmp ne i32 %255, 0
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i32 32, i32 0
  %259 = call i32 @i2c_w_mask(%struct.sd* %254, i32 116, i32 %258, i32 32)
  %260 = load %struct.sd*, %struct.sd** %2, align 8
  %261 = call i32 @i2c_w_mask(%struct.sd* %260, i32 19, i32 0, i32 32)
  %262 = load %struct.sd*, %struct.sd** %2, align 8
  %263 = call i32 @i2c_w_mask(%struct.sd* %262, i32 18, i32 4, i32 6)
  %264 = load %struct.sd*, %struct.sd** %2, align 8
  %265 = getelementptr inbounds %struct.sd, %struct.sd* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 130
  br i1 %267, label %268, label %275

268:                                              ; preds = %217
  %269 = load %struct.sd*, %struct.sd** %2, align 8
  %270 = load i32, i32* %4, align 4
  %271 = icmp ne i32 %270, 0
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i32 30, i32 158
  %274 = call i32 @i2c_w(%struct.sd* %269, i32 53, i32 %273)
  br label %275

275:                                              ; preds = %268, %217
  br label %437

276:                                              ; preds = %1, %1
  %277 = load %struct.sd*, %struct.sd** %2, align 8
  %278 = load i32, i32* %4, align 4
  %279 = icmp ne i32 %278, 0
  %280 = zext i1 %279 to i64
  %281 = select i1 %279, i32 32, i32 0
  %282 = call i32 @i2c_w_mask(%struct.sd* %277, i32 20, i32 %281, i32 32)
  %283 = load %struct.sd*, %struct.sd** %2, align 8
  %284 = load i32, i32* %4, align 4
  %285 = icmp ne i32 %284, 0
  %286 = zext i1 %285 to i64
  %287 = select i1 %285, i32 0, i32 32
  %288 = call i32 @i2c_w_mask(%struct.sd* %283, i32 40, i32 %287, i32 32)
  %289 = load %struct.sd*, %struct.sd** %2, align 8
  %290 = load i32, i32* %4, align 4
  %291 = icmp ne i32 %290, 0
  %292 = zext i1 %291 to i64
  %293 = select i1 %291, i32 64, i32 0
  %294 = call i32 @i2c_w_mask(%struct.sd* %289, i32 45, i32 %293, i32 64)
  %295 = load %struct.sd*, %struct.sd** %2, align 8
  %296 = load i32, i32* %4, align 4
  %297 = icmp ne i32 %296, 0
  %298 = zext i1 %297 to i64
  %299 = select i1 %297, i32 240, i32 144
  %300 = call i32 @i2c_w_mask(%struct.sd* %295, i32 103, i32 %299, i32 240)
  %301 = load %struct.sd*, %struct.sd** %2, align 8
  %302 = load i32, i32* %4, align 4
  %303 = icmp ne i32 %302, 0
  %304 = zext i1 %303 to i64
  %305 = select i1 %303, i32 32, i32 0
  %306 = call i32 @i2c_w_mask(%struct.sd* %301, i32 116, i32 %305, i32 32)
  %307 = load %struct.sd*, %struct.sd** %2, align 8
  %308 = call i32 @i2c_w_mask(%struct.sd* %307, i32 18, i32 4, i32 4)
  br label %437

309:                                              ; preds = %1
  %310 = load %struct.sd*, %struct.sd** %2, align 8
  %311 = load i32, i32* @OV7670_R12_COM7, align 4
  %312 = load i32, i32* %4, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %309
  %315 = load i32, i32* @OV7670_COM7_FMT_QVGA, align 4
  br label %318

316:                                              ; preds = %309
  %317 = load i32, i32* @OV7670_COM7_FMT_VGA, align 4
  br label %318

318:                                              ; preds = %316, %314
  %319 = phi i32 [ %315, %314 ], [ %317, %316 ]
  %320 = load i32, i32* @OV7670_COM7_FMT_MASK, align 4
  %321 = call i32 @i2c_w_mask(%struct.sd* %310, i32 %311, i32 %319, i32 %320)
  %322 = load %struct.sd*, %struct.sd** %2, align 8
  %323 = call i32 @i2c_w_mask(%struct.sd* %322, i32 19, i32 0, i32 32)
  %324 = load %struct.sd*, %struct.sd** %2, align 8
  %325 = load i32, i32* @OV7670_R13_COM8, align 4
  %326 = load i32, i32* @OV7670_COM8_AWB, align 4
  %327 = load i32, i32* @OV7670_COM8_AWB, align 4
  %328 = call i32 @i2c_w_mask(%struct.sd* %324, i32 %325, i32 %326, i32 %327)
  %329 = load i32, i32* %4, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %318
  store i32 164, i32* %5, align 4
  store i32 28, i32* %6, align 4
  store i32 14, i32* %7, align 4
  store i32 494, i32* %8, align 4
  br label %333

332:                                              ; preds = %318
  store i32 158, i32* %5, align 4
  store i32 14, i32* %6, align 4
  store i32 10, i32* %7, align 4
  store i32 490, i32* %8, align 4
  br label %333

333:                                              ; preds = %332, %331
  %334 = load %struct.sd*, %struct.sd** %2, align 8
  %335 = load i32, i32* @OV7670_R17_HSTART, align 4
  %336 = load i32, i32* %5, align 4
  %337 = ashr i32 %336, 3
  %338 = call i32 @i2c_w(%struct.sd* %334, i32 %335, i32 %337)
  %339 = load %struct.sd*, %struct.sd** %2, align 8
  %340 = load i32, i32* @OV7670_R18_HSTOP, align 4
  %341 = load i32, i32* %6, align 4
  %342 = ashr i32 %341, 3
  %343 = call i32 @i2c_w(%struct.sd* %339, i32 %340, i32 %342)
  %344 = load %struct.sd*, %struct.sd** %2, align 8
  %345 = load i32, i32* @OV7670_R32_HREF, align 4
  %346 = call i32 @i2c_r(%struct.sd* %344, i32 %345)
  store i32 %346, i32* %9, align 4
  %347 = load i32, i32* %9, align 4
  %348 = and i32 %347, 192
  %349 = load i32, i32* %6, align 4
  %350 = and i32 %349, 7
  %351 = shl i32 %350, 3
  %352 = or i32 %348, %351
  %353 = load i32, i32* %5, align 4
  %354 = and i32 %353, 7
  %355 = or i32 %352, %354
  store i32 %355, i32* %9, align 4
  %356 = call i32 @msleep(i32 10)
  %357 = load %struct.sd*, %struct.sd** %2, align 8
  %358 = load i32, i32* @OV7670_R32_HREF, align 4
  %359 = load i32, i32* %9, align 4
  %360 = call i32 @i2c_w(%struct.sd* %357, i32 %358, i32 %359)
  %361 = load %struct.sd*, %struct.sd** %2, align 8
  %362 = load i32, i32* @OV7670_R19_VSTART, align 4
  %363 = load i32, i32* %7, align 4
  %364 = ashr i32 %363, 2
  %365 = call i32 @i2c_w(%struct.sd* %361, i32 %362, i32 %364)
  %366 = load %struct.sd*, %struct.sd** %2, align 8
  %367 = load i32, i32* @OV7670_R1A_VSTOP, align 4
  %368 = load i32, i32* %8, align 4
  %369 = ashr i32 %368, 2
  %370 = call i32 @i2c_w(%struct.sd* %366, i32 %367, i32 %369)
  %371 = load %struct.sd*, %struct.sd** %2, align 8
  %372 = load i32, i32* @OV7670_R03_VREF, align 4
  %373 = call i32 @i2c_r(%struct.sd* %371, i32 %372)
  store i32 %373, i32* %9, align 4
  %374 = load i32, i32* %9, align 4
  %375 = and i32 %374, 192
  %376 = load i32, i32* %8, align 4
  %377 = and i32 %376, 3
  %378 = shl i32 %377, 2
  %379 = or i32 %375, %378
  %380 = load i32, i32* %7, align 4
  %381 = and i32 %380, 3
  %382 = or i32 %379, %381
  store i32 %382, i32* %9, align 4
  %383 = call i32 @msleep(i32 10)
  %384 = load %struct.sd*, %struct.sd** %2, align 8
  %385 = load i32, i32* @OV7670_R03_VREF, align 4
  %386 = load i32, i32* %9, align 4
  %387 = call i32 @i2c_w(%struct.sd* %384, i32 %385, i32 %386)
  br label %437

388:                                              ; preds = %1
  %389 = load %struct.sd*, %struct.sd** %2, align 8
  %390 = load i32, i32* %4, align 4
  %391 = icmp ne i32 %390, 0
  %392 = zext i1 %391 to i64
  %393 = select i1 %391, i32 32, i32 0
  %394 = call i32 @i2c_w_mask(%struct.sd* %389, i32 20, i32 %393, i32 32)
  %395 = load %struct.sd*, %struct.sd** %2, align 8
  %396 = call i32 @i2c_w_mask(%struct.sd* %395, i32 19, i32 0, i32 32)
  %397 = load %struct.sd*, %struct.sd** %2, align 8
  %398 = call i32 @i2c_w_mask(%struct.sd* %397, i32 18, i32 4, i32 6)
  br label %437

399:                                              ; preds = %1, %1
  %400 = load %struct.sd*, %struct.sd** %2, align 8
  %401 = load i32, i32* %4, align 4
  %402 = icmp ne i32 %401, 0
  %403 = zext i1 %402 to i64
  %404 = select i1 %402, i32 32, i32 0
  %405 = call i32 @i2c_w_mask(%struct.sd* %400, i32 20, i32 %404, i32 32)
  %406 = load %struct.sd*, %struct.sd** %2, align 8
  %407 = call i32 @i2c_w_mask(%struct.sd* %406, i32 18, i32 4, i32 6)
  br label %437

408:                                              ; preds = %1
  %409 = load %struct.sd*, %struct.sd** %2, align 8
  %410 = load i32, i32* %4, align 4
  %411 = icmp ne i32 %410, 0
  %412 = zext i1 %411 to i64
  %413 = select i1 %411, i32 64, i32 0
  %414 = call i32 @i2c_w_mask(%struct.sd* %409, i32 18, i32 %413, i32 64)
  %415 = load i32, i32* %4, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %424

417:                                              ; preds = %408
  %418 = load %struct.sd*, %struct.sd** %2, align 8
  %419 = getelementptr inbounds %struct.sd, %struct.sd* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = icmp slt i32 %420, 30
  %422 = zext i1 %421 to i64
  %423 = select i1 %421, %struct.ov_i2c_regvals* getelementptr inbounds ([4 x %struct.ov_i2c_regvals], [4 x %struct.ov_i2c_regvals]* @mode_init_ov_sensor_regs.vga_15, i64 0, i64 0), %struct.ov_i2c_regvals* getelementptr inbounds ([4 x %struct.ov_i2c_regvals], [4 x %struct.ov_i2c_regvals]* @mode_init_ov_sensor_regs.vga_30, i64 0, i64 0)
  store %struct.ov_i2c_regvals* %423, %struct.ov_i2c_regvals** %11, align 8
  br label %431

424:                                              ; preds = %408
  %425 = load %struct.sd*, %struct.sd** %2, align 8
  %426 = getelementptr inbounds %struct.sd, %struct.sd* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = icmp slt i32 %427, 15
  %429 = zext i1 %428 to i64
  %430 = select i1 %428, %struct.ov_i2c_regvals* getelementptr inbounds ([4 x %struct.ov_i2c_regvals], [4 x %struct.ov_i2c_regvals]* @mode_init_ov_sensor_regs.sxga_7_5, i64 0, i64 0), %struct.ov_i2c_regvals* getelementptr inbounds ([4 x %struct.ov_i2c_regvals], [4 x %struct.ov_i2c_regvals]* @mode_init_ov_sensor_regs.sxga_15, i64 0, i64 0)
  store %struct.ov_i2c_regvals* %430, %struct.ov_i2c_regvals** %11, align 8
  br label %431

431:                                              ; preds = %424, %417
  %432 = load %struct.sd*, %struct.sd** %2, align 8
  %433 = load %struct.ov_i2c_regvals*, %struct.ov_i2c_regvals** %11, align 8
  %434 = call i32 @ARRAY_SIZE(%struct.ov_i2c_regvals* getelementptr inbounds ([4 x %struct.ov_i2c_regvals], [4 x %struct.ov_i2c_regvals]* @mode_init_ov_sensor_regs.sxga_15, i64 0, i64 0))
  %435 = call i32 @write_i2c_regvals(%struct.sd* %432, %struct.ov_i2c_regvals* %433, i32 %434)
  br label %443

436:                                              ; preds = %1
  br label %443

437:                                              ; preds = %399, %388, %333, %276, %275, %200, %184
  %438 = load %struct.sd*, %struct.sd** %2, align 8
  %439 = load %struct.sd*, %struct.sd** %2, align 8
  %440 = getelementptr inbounds %struct.sd, %struct.sd* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @i2c_w(%struct.sd* %438, i32 17, i32 %441)
  br label %443

443:                                              ; preds = %437, %436, %431, %129, %88, %28
  ret void
}

declare dso_local i32 @i2c_w_mask(%struct.sd*, i32, i32, i32) #1

declare dso_local i32 @i2c_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @i2c_r(%struct.sd*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @write_i2c_regvals(%struct.sd*, %struct.ov_i2c_regvals*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ov_i2c_regvals*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
