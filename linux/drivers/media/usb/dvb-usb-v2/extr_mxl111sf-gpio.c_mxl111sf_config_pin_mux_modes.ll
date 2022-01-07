; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-gpio.c_mxl111sf_config_pin_mux_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-gpio.c_mxl111sf_config_pin_mux_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@PIN_MUX_MPEG_MODE_MASK = common dso_local global i32 0, align 4
@PIN_MUX_MPEG_PAR_EN_MASK = common dso_local global i32 0, align 4
@PIN_MUX_MPEG_SER_EN_MASK = common dso_local global i32 0, align 4
@PIN_MUX_MPG_IN_MUX_MASK = common dso_local global i32 0, align 4
@PIN_MUX_BT656_ENABLE_MASK = common dso_local global i32 0, align 4
@PIN_MUX_I2S_ENABLE_MASK = common dso_local global i32 0, align 4
@PIN_MUX_SPI_MODE_MASK = common dso_local global i32 0, align 4
@PIN_MUX_MCLK_EN_CTRL_MASK = common dso_local global i32 0, align 4
@PIN_MUX_MPERR_EN_CTRL_MASK = common dso_local global i32 0, align 4
@PIN_MUX_MDVAL_EN_CTRL_MASK = common dso_local global i32 0, align 4
@PIN_MUX_MPSYN_EN_CTRL_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxl111sf_config_pin_mux_modes(%struct.mxl111sf_state* %0, i32 %1) #0 {
  %3 = alloca %struct.mxl111sf_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @mxl_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %17 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %16, i32 23, i32* %7)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = call i64 @mxl_fail(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %603

22:                                               ; preds = %2
  %23 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %24 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %23, i32 24, i32* %8)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i64 @mxl_fail(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %603

29:                                               ; preds = %22
  %30 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %31 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %30, i32 18, i32* %5)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i64 @mxl_fail(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %603

36:                                               ; preds = %29
  %37 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %38 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %37, i32 21, i32* %6)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i64 @mxl_fail(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %603

43:                                               ; preds = %36
  %44 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %45 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %44, i32 130, i32* %10)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i64 @mxl_fail(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %603

50:                                               ; preds = %43
  %51 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %52 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %51, i32 132, i32* %11)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i64 @mxl_fail(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %603

57:                                               ; preds = %50
  %58 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %59 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %58, i32 137, i32* %12)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i64 @mxl_fail(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %603

64:                                               ; preds = %57
  %65 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %66 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %65, i32 61, i32* %9)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i64 @mxl_fail(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %603

71:                                               ; preds = %64
  %72 = load i32, i32* %4, align 4
  switch i32 %72, label %490 [
    i32 134, label %73
    i32 133, label %116
    i32 135, label %159
    i32 131, label %208
    i32 130, label %256
    i32 128, label %303
    i32 129, label %348
    i32 132, label %394
    i32 137, label %442
    i32 136, label %489
  ]

73:                                               ; preds = %71
  %74 = load i32, i32* @PIN_MUX_MPEG_MODE_MASK, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* @PIN_MUX_MPEG_PAR_EN_MASK, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @PIN_MUX_MPEG_SER_EN_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* @PIN_MUX_MPG_IN_MUX_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* @PIN_MUX_BT656_ENABLE_MASK, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %5, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* @PIN_MUX_I2S_ENABLE_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* @PIN_MUX_SPI_MODE_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* @PIN_MUX_MCLK_EN_CTRL_MASK, align 4
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* @PIN_MUX_MPERR_EN_CTRL_MASK, align 4
  %104 = load i32, i32* %10, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* @PIN_MUX_MDVAL_EN_CTRL_MASK, align 4
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* @PIN_MUX_MPSYN_EN_CTRL_MASK, align 4
  %110 = load i32, i32* %10, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = or i32 %112, 240
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = or i32 %114, 240
  store i32 %115, i32* %12, align 4
  br label %538

116:                                              ; preds = %71
  %117 = load i32, i32* @PIN_MUX_MPEG_MODE_MASK, align 4
  %118 = load i32, i32* %7, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* @PIN_MUX_MPEG_PAR_EN_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %8, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* @PIN_MUX_MPEG_SER_EN_MASK, align 4
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* @PIN_MUX_MPG_IN_MUX_MASK, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* @PIN_MUX_BT656_ENABLE_MASK, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %5, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* @PIN_MUX_I2S_ENABLE_MASK, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* @PIN_MUX_SPI_MODE_MASK, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %9, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* @PIN_MUX_MCLK_EN_CTRL_MASK, align 4
  %144 = load i32, i32* %10, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* @PIN_MUX_MPERR_EN_CTRL_MASK, align 4
  %147 = load i32, i32* %10, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* @PIN_MUX_MDVAL_EN_CTRL_MASK, align 4
  %150 = load i32, i32* %10, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* @PIN_MUX_MPSYN_EN_CTRL_MASK, align 4
  %153 = load i32, i32* %10, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %11, align 4
  %156 = or i32 %155, 240
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %12, align 4
  %158 = or i32 %157, 240
  store i32 %158, i32* %12, align 4
  br label %538

159:                                              ; preds = %71
  %160 = load i32, i32* @PIN_MUX_MPEG_MODE_MASK, align 4
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %7, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* @PIN_MUX_MPEG_PAR_EN_MASK, align 4
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %8, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* @PIN_MUX_MPEG_SER_EN_MASK, align 4
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %8, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* @PIN_MUX_MPG_IN_MUX_MASK, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %9, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* @PIN_MUX_BT656_ENABLE_MASK, align 4
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %5, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* @PIN_MUX_I2S_ENABLE_MASK, align 4
  %181 = xor i32 %180, -1
  %182 = load i32, i32* %6, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* @PIN_MUX_SPI_MODE_MASK, align 4
  %185 = xor i32 %184, -1
  %186 = load i32, i32* %9, align 4
  %187 = and i32 %186, %185
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* @PIN_MUX_MCLK_EN_CTRL_MASK, align 4
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %10, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* @PIN_MUX_MPERR_EN_CTRL_MASK, align 4
  %193 = xor i32 %192, -1
  %194 = load i32, i32* %10, align 4
  %195 = and i32 %194, %193
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* @PIN_MUX_MDVAL_EN_CTRL_MASK, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %10, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* @PIN_MUX_MPSYN_EN_CTRL_MASK, align 4
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %10, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %11, align 4
  %205 = and i32 %204, 15
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* %12, align 4
  %207 = and i32 %206, 15
  store i32 %207, i32* %12, align 4
  br label %538

208:                                              ; preds = %71
  %209 = load i32, i32* @PIN_MUX_MPEG_MODE_MASK, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %7, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* @PIN_MUX_MPEG_PAR_EN_MASK, align 4
  %214 = xor i32 %213, -1
  %215 = load i32, i32* %8, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* @PIN_MUX_MPEG_SER_EN_MASK, align 4
  %218 = load i32, i32* %8, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* @PIN_MUX_MPG_IN_MUX_MASK, align 4
  %221 = xor i32 %220, -1
  %222 = load i32, i32* %9, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %9, align 4
  %224 = load i32, i32* @PIN_MUX_BT656_ENABLE_MASK, align 4
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %5, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %5, align 4
  %228 = load i32, i32* @PIN_MUX_I2S_ENABLE_MASK, align 4
  %229 = xor i32 %228, -1
  %230 = load i32, i32* %6, align 4
  %231 = and i32 %230, %229
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* @PIN_MUX_SPI_MODE_MASK, align 4
  %233 = xor i32 %232, -1
  %234 = load i32, i32* %9, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* @PIN_MUX_MCLK_EN_CTRL_MASK, align 4
  %237 = xor i32 %236, -1
  %238 = load i32, i32* %10, align 4
  %239 = and i32 %238, %237
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* @PIN_MUX_MPERR_EN_CTRL_MASK, align 4
  %241 = xor i32 %240, -1
  %242 = load i32, i32* %10, align 4
  %243 = and i32 %242, %241
  store i32 %243, i32* %10, align 4
  %244 = load i32, i32* @PIN_MUX_MDVAL_EN_CTRL_MASK, align 4
  %245 = xor i32 %244, -1
  %246 = load i32, i32* %10, align 4
  %247 = and i32 %246, %245
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* @PIN_MUX_MPSYN_EN_CTRL_MASK, align 4
  %249 = xor i32 %248, -1
  %250 = load i32, i32* %10, align 4
  %251 = and i32 %250, %249
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %11, align 4
  %253 = and i32 %252, 15
  store i32 %253, i32* %11, align 4
  %254 = load i32, i32* %12, align 4
  %255 = and i32 %254, 15
  store i32 %255, i32* %12, align 4
  br label %538

256:                                              ; preds = %71
  %257 = load i32, i32* @PIN_MUX_MPEG_MODE_MASK, align 4
  %258 = xor i32 %257, -1
  %259 = load i32, i32* %7, align 4
  %260 = and i32 %259, %258
  store i32 %260, i32* %7, align 4
  %261 = load i32, i32* @PIN_MUX_MPEG_PAR_EN_MASK, align 4
  %262 = xor i32 %261, -1
  %263 = load i32, i32* %8, align 4
  %264 = and i32 %263, %262
  store i32 %264, i32* %8, align 4
  %265 = load i32, i32* @PIN_MUX_MPEG_SER_EN_MASK, align 4
  %266 = load i32, i32* %8, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %8, align 4
  %268 = load i32, i32* @PIN_MUX_MPG_IN_MUX_MASK, align 4
  %269 = load i32, i32* %9, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %9, align 4
  %271 = load i32, i32* @PIN_MUX_BT656_ENABLE_MASK, align 4
  %272 = xor i32 %271, -1
  %273 = load i32, i32* %5, align 4
  %274 = and i32 %273, %272
  store i32 %274, i32* %5, align 4
  %275 = load i32, i32* @PIN_MUX_I2S_ENABLE_MASK, align 4
  %276 = xor i32 %275, -1
  %277 = load i32, i32* %6, align 4
  %278 = and i32 %277, %276
  store i32 %278, i32* %6, align 4
  %279 = load i32, i32* @PIN_MUX_SPI_MODE_MASK, align 4
  %280 = xor i32 %279, -1
  %281 = load i32, i32* %9, align 4
  %282 = and i32 %281, %280
  store i32 %282, i32* %9, align 4
  %283 = load i32, i32* @PIN_MUX_MCLK_EN_CTRL_MASK, align 4
  %284 = xor i32 %283, -1
  %285 = load i32, i32* %10, align 4
  %286 = and i32 %285, %284
  store i32 %286, i32* %10, align 4
  %287 = load i32, i32* @PIN_MUX_MPERR_EN_CTRL_MASK, align 4
  %288 = xor i32 %287, -1
  %289 = load i32, i32* %10, align 4
  %290 = and i32 %289, %288
  store i32 %290, i32* %10, align 4
  %291 = load i32, i32* @PIN_MUX_MDVAL_EN_CTRL_MASK, align 4
  %292 = xor i32 %291, -1
  %293 = load i32, i32* %10, align 4
  %294 = and i32 %293, %292
  store i32 %294, i32* %10, align 4
  %295 = load i32, i32* @PIN_MUX_MPSYN_EN_CTRL_MASK, align 4
  %296 = xor i32 %295, -1
  %297 = load i32, i32* %10, align 4
  %298 = and i32 %297, %296
  store i32 %298, i32* %10, align 4
  %299 = load i32, i32* %11, align 4
  %300 = and i32 %299, 15
  store i32 %300, i32* %11, align 4
  %301 = load i32, i32* %12, align 4
  %302 = and i32 %301, 15
  store i32 %302, i32* %12, align 4
  br label %538

303:                                              ; preds = %71
  %304 = load i32, i32* @PIN_MUX_MPEG_MODE_MASK, align 4
  %305 = xor i32 %304, -1
  %306 = load i32, i32* %7, align 4
  %307 = and i32 %306, %305
  store i32 %307, i32* %7, align 4
  %308 = load i32, i32* @PIN_MUX_MPEG_PAR_EN_MASK, align 4
  %309 = xor i32 %308, -1
  %310 = load i32, i32* %8, align 4
  %311 = and i32 %310, %309
  store i32 %311, i32* %8, align 4
  %312 = load i32, i32* @PIN_MUX_MPEG_SER_EN_MASK, align 4
  %313 = load i32, i32* %8, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %8, align 4
  %315 = load i32, i32* @PIN_MUX_MPG_IN_MUX_MASK, align 4
  %316 = load i32, i32* %9, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %9, align 4
  %318 = load i32, i32* @PIN_MUX_BT656_ENABLE_MASK, align 4
  %319 = xor i32 %318, -1
  %320 = load i32, i32* %5, align 4
  %321 = and i32 %320, %319
  store i32 %321, i32* %5, align 4
  %322 = load i32, i32* @PIN_MUX_I2S_ENABLE_MASK, align 4
  %323 = load i32, i32* %6, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %6, align 4
  %325 = load i32, i32* @PIN_MUX_SPI_MODE_MASK, align 4
  %326 = load i32, i32* %9, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %9, align 4
  %328 = load i32, i32* @PIN_MUX_MCLK_EN_CTRL_MASK, align 4
  %329 = xor i32 %328, -1
  %330 = load i32, i32* %10, align 4
  %331 = and i32 %330, %329
  store i32 %331, i32* %10, align 4
  %332 = load i32, i32* @PIN_MUX_MPERR_EN_CTRL_MASK, align 4
  %333 = xor i32 %332, -1
  %334 = load i32, i32* %10, align 4
  %335 = and i32 %334, %333
  store i32 %335, i32* %10, align 4
  %336 = load i32, i32* @PIN_MUX_MDVAL_EN_CTRL_MASK, align 4
  %337 = xor i32 %336, -1
  %338 = load i32, i32* %10, align 4
  %339 = and i32 %338, %337
  store i32 %339, i32* %10, align 4
  %340 = load i32, i32* @PIN_MUX_MPSYN_EN_CTRL_MASK, align 4
  %341 = xor i32 %340, -1
  %342 = load i32, i32* %10, align 4
  %343 = and i32 %342, %341
  store i32 %343, i32* %10, align 4
  %344 = load i32, i32* %11, align 4
  %345 = and i32 %344, 15
  store i32 %345, i32* %11, align 4
  %346 = load i32, i32* %12, align 4
  %347 = and i32 %346, 15
  store i32 %347, i32* %12, align 4
  br label %538

348:                                              ; preds = %71
  %349 = load i32, i32* @PIN_MUX_MPEG_MODE_MASK, align 4
  %350 = xor i32 %349, -1
  %351 = load i32, i32* %7, align 4
  %352 = and i32 %351, %350
  store i32 %352, i32* %7, align 4
  %353 = load i32, i32* @PIN_MUX_MPEG_PAR_EN_MASK, align 4
  %354 = xor i32 %353, -1
  %355 = load i32, i32* %8, align 4
  %356 = and i32 %355, %354
  store i32 %356, i32* %8, align 4
  %357 = load i32, i32* @PIN_MUX_MPEG_SER_EN_MASK, align 4
  %358 = load i32, i32* %8, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %8, align 4
  %360 = load i32, i32* @PIN_MUX_MPG_IN_MUX_MASK, align 4
  %361 = xor i32 %360, -1
  %362 = load i32, i32* %9, align 4
  %363 = and i32 %362, %361
  store i32 %363, i32* %9, align 4
  %364 = load i32, i32* @PIN_MUX_BT656_ENABLE_MASK, align 4
  %365 = xor i32 %364, -1
  %366 = load i32, i32* %5, align 4
  %367 = and i32 %366, %365
  store i32 %367, i32* %5, align 4
  %368 = load i32, i32* @PIN_MUX_I2S_ENABLE_MASK, align 4
  %369 = load i32, i32* %6, align 4
  %370 = or i32 %369, %368
  store i32 %370, i32* %6, align 4
  %371 = load i32, i32* @PIN_MUX_SPI_MODE_MASK, align 4
  %372 = load i32, i32* %9, align 4
  %373 = or i32 %372, %371
  store i32 %373, i32* %9, align 4
  %374 = load i32, i32* @PIN_MUX_MCLK_EN_CTRL_MASK, align 4
  %375 = xor i32 %374, -1
  %376 = load i32, i32* %10, align 4
  %377 = and i32 %376, %375
  store i32 %377, i32* %10, align 4
  %378 = load i32, i32* @PIN_MUX_MPERR_EN_CTRL_MASK, align 4
  %379 = xor i32 %378, -1
  %380 = load i32, i32* %10, align 4
  %381 = and i32 %380, %379
  store i32 %381, i32* %10, align 4
  %382 = load i32, i32* @PIN_MUX_MDVAL_EN_CTRL_MASK, align 4
  %383 = xor i32 %382, -1
  %384 = load i32, i32* %10, align 4
  %385 = and i32 %384, %383
  store i32 %385, i32* %10, align 4
  %386 = load i32, i32* @PIN_MUX_MPSYN_EN_CTRL_MASK, align 4
  %387 = xor i32 %386, -1
  %388 = load i32, i32* %10, align 4
  %389 = and i32 %388, %387
  store i32 %389, i32* %10, align 4
  %390 = load i32, i32* %11, align 4
  %391 = and i32 %390, 15
  store i32 %391, i32* %11, align 4
  %392 = load i32, i32* %12, align 4
  %393 = and i32 %392, 15
  store i32 %393, i32* %12, align 4
  br label %538

394:                                              ; preds = %71
  %395 = load i32, i32* @PIN_MUX_MPEG_MODE_MASK, align 4
  %396 = xor i32 %395, -1
  %397 = load i32, i32* %7, align 4
  %398 = and i32 %397, %396
  store i32 %398, i32* %7, align 4
  %399 = load i32, i32* @PIN_MUX_MPEG_PAR_EN_MASK, align 4
  %400 = load i32, i32* %8, align 4
  %401 = or i32 %400, %399
  store i32 %401, i32* %8, align 4
  %402 = load i32, i32* @PIN_MUX_MPEG_SER_EN_MASK, align 4
  %403 = xor i32 %402, -1
  %404 = load i32, i32* %8, align 4
  %405 = and i32 %404, %403
  store i32 %405, i32* %8, align 4
  %406 = load i32, i32* @PIN_MUX_MPG_IN_MUX_MASK, align 4
  %407 = xor i32 %406, -1
  %408 = load i32, i32* %9, align 4
  %409 = and i32 %408, %407
  store i32 %409, i32* %9, align 4
  %410 = load i32, i32* @PIN_MUX_BT656_ENABLE_MASK, align 4
  %411 = xor i32 %410, -1
  %412 = load i32, i32* %5, align 4
  %413 = and i32 %412, %411
  store i32 %413, i32* %5, align 4
  %414 = load i32, i32* @PIN_MUX_I2S_ENABLE_MASK, align 4
  %415 = xor i32 %414, -1
  %416 = load i32, i32* %6, align 4
  %417 = and i32 %416, %415
  store i32 %417, i32* %6, align 4
  %418 = load i32, i32* @PIN_MUX_SPI_MODE_MASK, align 4
  %419 = xor i32 %418, -1
  %420 = load i32, i32* %9, align 4
  %421 = and i32 %420, %419
  store i32 %421, i32* %9, align 4
  %422 = load i32, i32* @PIN_MUX_MCLK_EN_CTRL_MASK, align 4
  %423 = xor i32 %422, -1
  %424 = load i32, i32* %10, align 4
  %425 = and i32 %424, %423
  store i32 %425, i32* %10, align 4
  %426 = load i32, i32* @PIN_MUX_MPERR_EN_CTRL_MASK, align 4
  %427 = xor i32 %426, -1
  %428 = load i32, i32* %10, align 4
  %429 = and i32 %428, %427
  store i32 %429, i32* %10, align 4
  %430 = load i32, i32* @PIN_MUX_MDVAL_EN_CTRL_MASK, align 4
  %431 = xor i32 %430, -1
  %432 = load i32, i32* %10, align 4
  %433 = and i32 %432, %431
  store i32 %433, i32* %10, align 4
  %434 = load i32, i32* @PIN_MUX_MPSYN_EN_CTRL_MASK, align 4
  %435 = xor i32 %434, -1
  %436 = load i32, i32* %10, align 4
  %437 = and i32 %436, %435
  store i32 %437, i32* %10, align 4
  %438 = load i32, i32* %11, align 4
  %439 = and i32 %438, 15
  store i32 %439, i32* %11, align 4
  %440 = load i32, i32* %12, align 4
  %441 = and i32 %440, 15
  store i32 %441, i32* %12, align 4
  br label %538

442:                                              ; preds = %71
  %443 = load i32, i32* @PIN_MUX_MPEG_MODE_MASK, align 4
  %444 = xor i32 %443, -1
  %445 = load i32, i32* %7, align 4
  %446 = and i32 %445, %444
  store i32 %446, i32* %7, align 4
  %447 = load i32, i32* @PIN_MUX_MPEG_PAR_EN_MASK, align 4
  %448 = xor i32 %447, -1
  %449 = load i32, i32* %8, align 4
  %450 = and i32 %449, %448
  store i32 %450, i32* %8, align 4
  %451 = load i32, i32* @PIN_MUX_MPEG_SER_EN_MASK, align 4
  %452 = xor i32 %451, -1
  %453 = load i32, i32* %8, align 4
  %454 = and i32 %453, %452
  store i32 %454, i32* %8, align 4
  %455 = load i32, i32* @PIN_MUX_MPG_IN_MUX_MASK, align 4
  %456 = xor i32 %455, -1
  %457 = load i32, i32* %9, align 4
  %458 = and i32 %457, %456
  store i32 %458, i32* %9, align 4
  %459 = load i32, i32* @PIN_MUX_BT656_ENABLE_MASK, align 4
  %460 = load i32, i32* %5, align 4
  %461 = or i32 %460, %459
  store i32 %461, i32* %5, align 4
  %462 = load i32, i32* @PIN_MUX_I2S_ENABLE_MASK, align 4
  %463 = load i32, i32* %6, align 4
  %464 = or i32 %463, %462
  store i32 %464, i32* %6, align 4
  %465 = load i32, i32* @PIN_MUX_SPI_MODE_MASK, align 4
  %466 = xor i32 %465, -1
  %467 = load i32, i32* %9, align 4
  %468 = and i32 %467, %466
  store i32 %468, i32* %9, align 4
  %469 = load i32, i32* @PIN_MUX_MCLK_EN_CTRL_MASK, align 4
  %470 = xor i32 %469, -1
  %471 = load i32, i32* %10, align 4
  %472 = and i32 %471, %470
  store i32 %472, i32* %10, align 4
  %473 = load i32, i32* @PIN_MUX_MPERR_EN_CTRL_MASK, align 4
  %474 = xor i32 %473, -1
  %475 = load i32, i32* %10, align 4
  %476 = and i32 %475, %474
  store i32 %476, i32* %10, align 4
  %477 = load i32, i32* @PIN_MUX_MDVAL_EN_CTRL_MASK, align 4
  %478 = xor i32 %477, -1
  %479 = load i32, i32* %10, align 4
  %480 = and i32 %479, %478
  store i32 %480, i32* %10, align 4
  %481 = load i32, i32* @PIN_MUX_MPSYN_EN_CTRL_MASK, align 4
  %482 = xor i32 %481, -1
  %483 = load i32, i32* %10, align 4
  %484 = and i32 %483, %482
  store i32 %484, i32* %10, align 4
  %485 = load i32, i32* %11, align 4
  %486 = and i32 %485, 15
  store i32 %486, i32* %11, align 4
  %487 = load i32, i32* %12, align 4
  %488 = and i32 %487, 15
  store i32 %488, i32* %12, align 4
  br label %538

489:                                              ; preds = %71
  br label %490

490:                                              ; preds = %71, %489
  %491 = load i32, i32* @PIN_MUX_MPEG_MODE_MASK, align 4
  %492 = load i32, i32* %7, align 4
  %493 = or i32 %492, %491
  store i32 %493, i32* %7, align 4
  %494 = load i32, i32* @PIN_MUX_MPEG_PAR_EN_MASK, align 4
  %495 = xor i32 %494, -1
  %496 = load i32, i32* %8, align 4
  %497 = and i32 %496, %495
  store i32 %497, i32* %8, align 4
  %498 = load i32, i32* @PIN_MUX_MPEG_SER_EN_MASK, align 4
  %499 = xor i32 %498, -1
  %500 = load i32, i32* %8, align 4
  %501 = and i32 %500, %499
  store i32 %501, i32* %8, align 4
  %502 = load i32, i32* @PIN_MUX_MPG_IN_MUX_MASK, align 4
  %503 = xor i32 %502, -1
  %504 = load i32, i32* %9, align 4
  %505 = and i32 %504, %503
  store i32 %505, i32* %9, align 4
  %506 = load i32, i32* @PIN_MUX_BT656_ENABLE_MASK, align 4
  %507 = xor i32 %506, -1
  %508 = load i32, i32* %5, align 4
  %509 = and i32 %508, %507
  store i32 %509, i32* %5, align 4
  %510 = load i32, i32* @PIN_MUX_I2S_ENABLE_MASK, align 4
  %511 = xor i32 %510, -1
  %512 = load i32, i32* %6, align 4
  %513 = and i32 %512, %511
  store i32 %513, i32* %6, align 4
  %514 = load i32, i32* @PIN_MUX_SPI_MODE_MASK, align 4
  %515 = xor i32 %514, -1
  %516 = load i32, i32* %9, align 4
  %517 = and i32 %516, %515
  store i32 %517, i32* %9, align 4
  %518 = load i32, i32* @PIN_MUX_MCLK_EN_CTRL_MASK, align 4
  %519 = xor i32 %518, -1
  %520 = load i32, i32* %10, align 4
  %521 = and i32 %520, %519
  store i32 %521, i32* %10, align 4
  %522 = load i32, i32* @PIN_MUX_MPERR_EN_CTRL_MASK, align 4
  %523 = xor i32 %522, -1
  %524 = load i32, i32* %10, align 4
  %525 = and i32 %524, %523
  store i32 %525, i32* %10, align 4
  %526 = load i32, i32* @PIN_MUX_MDVAL_EN_CTRL_MASK, align 4
  %527 = xor i32 %526, -1
  %528 = load i32, i32* %10, align 4
  %529 = and i32 %528, %527
  store i32 %529, i32* %10, align 4
  %530 = load i32, i32* @PIN_MUX_MPSYN_EN_CTRL_MASK, align 4
  %531 = xor i32 %530, -1
  %532 = load i32, i32* %10, align 4
  %533 = and i32 %532, %531
  store i32 %533, i32* %10, align 4
  %534 = load i32, i32* %11, align 4
  %535 = and i32 %534, 15
  store i32 %535, i32* %11, align 4
  %536 = load i32, i32* %12, align 4
  %537 = and i32 %536, 15
  store i32 %537, i32* %12, align 4
  br label %538

538:                                              ; preds = %490, %442, %394, %348, %303, %256, %208, %159, %116, %73
  %539 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %540 = load i32, i32* %7, align 4
  %541 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %539, i32 23, i32 %540)
  store i32 %541, i32* %13, align 4
  %542 = load i32, i32* %13, align 4
  %543 = call i64 @mxl_fail(i32 %542)
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %545, label %546

545:                                              ; preds = %538
  br label %603

546:                                              ; preds = %538
  %547 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %548 = load i32, i32* %8, align 4
  %549 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %547, i32 24, i32 %548)
  store i32 %549, i32* %13, align 4
  %550 = load i32, i32* %13, align 4
  %551 = call i64 @mxl_fail(i32 %550)
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %553, label %554

553:                                              ; preds = %546
  br label %603

554:                                              ; preds = %546
  %555 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %556 = load i32, i32* %5, align 4
  %557 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %555, i32 18, i32 %556)
  store i32 %557, i32* %13, align 4
  %558 = load i32, i32* %13, align 4
  %559 = call i64 @mxl_fail(i32 %558)
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %562

561:                                              ; preds = %554
  br label %603

562:                                              ; preds = %554
  %563 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %564 = load i32, i32* %6, align 4
  %565 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %563, i32 21, i32 %564)
  store i32 %565, i32* %13, align 4
  %566 = load i32, i32* %13, align 4
  %567 = call i64 @mxl_fail(i32 %566)
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %569, label %570

569:                                              ; preds = %562
  br label %603

570:                                              ; preds = %562
  %571 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %572 = load i32, i32* %10, align 4
  %573 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %571, i32 130, i32 %572)
  store i32 %573, i32* %13, align 4
  %574 = load i32, i32* %13, align 4
  %575 = call i64 @mxl_fail(i32 %574)
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %578

577:                                              ; preds = %570
  br label %603

578:                                              ; preds = %570
  %579 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %580 = load i32, i32* %11, align 4
  %581 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %579, i32 132, i32 %580)
  store i32 %581, i32* %13, align 4
  %582 = load i32, i32* %13, align 4
  %583 = call i64 @mxl_fail(i32 %582)
  %584 = icmp ne i64 %583, 0
  br i1 %584, label %585, label %586

585:                                              ; preds = %578
  br label %603

586:                                              ; preds = %578
  %587 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %588 = load i32, i32* %12, align 4
  %589 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %587, i32 137, i32 %588)
  store i32 %589, i32* %13, align 4
  %590 = load i32, i32* %13, align 4
  %591 = call i64 @mxl_fail(i32 %590)
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %594

593:                                              ; preds = %586
  br label %603

594:                                              ; preds = %586
  %595 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %596 = load i32, i32* %9, align 4
  %597 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %595, i32 61, i32 %596)
  store i32 %597, i32* %13, align 4
  %598 = load i32, i32* %13, align 4
  %599 = call i64 @mxl_fail(i32 %598)
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %602

601:                                              ; preds = %594
  br label %603

602:                                              ; preds = %594
  br label %603

603:                                              ; preds = %602, %601, %593, %585, %577, %569, %561, %553, %545, %70, %63, %56, %49, %42, %35, %28, %21
  %604 = load i32, i32* %13, align 4
  ret i32 %604
}

declare dso_local i32 @mxl_debug(i8*, i32) #1

declare dso_local i32 @mxl111sf_read_reg(%struct.mxl111sf_state*, i32, i32*) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @mxl111sf_write_reg(%struct.mxl111sf_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
