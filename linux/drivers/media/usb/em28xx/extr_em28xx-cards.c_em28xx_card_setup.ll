; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_card_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_card_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.em28xx = type { i64, i32, i32, i32, i64*, i64, i32*, %struct.TYPE_6__*, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.tveeprom = type { i32, i64 }
%struct.TYPE_8__ = type { i64, i32 }

@EM28XX_NOSENSOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Board not discovered\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Identified as %s (card=%d)\0A\00", align 1
@em28xx_boards = common dso_local global %struct.TYPE_7__* null, align 8
@TVEEPROM_AUDPROC_MSP = common dso_local global i32 0, align 4
@EM2820_R08_GPIO_CTRL = common dso_local global i32 0, align 4
@EM28XX_ANALOG_MODE = common dso_local global i32 0, align 4
@EM28XX_BOARD_NOT_VALIDATED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [146 x i8] c"\0A\0AThe support for this board weren't valid yet.\0APlease send a report of having this working\0Anot to V4L mailing list (and/or to other addresses)\0A\0A\00", align 1
@tuner = common dso_local global i64 0, align 8
@MAX_EM28XX_INPUT = common dso_local global i32 0, align 4
@EM28XX_AMUX_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*)* @em28xx_card_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_card_setup(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tveeprom, align 8
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %8 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %9 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %8, i32 0, i32 9
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %14 = call i32 @em28xx_detect_sensor(%struct.em28xx* %13)
  %15 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EM28XX_NOSENSOR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 9
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %20, %12
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %26 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %44 [
    i32 142, label %28
    i32 136, label %28
    i32 141, label %28
  ]

28:                                               ; preds = %24, %24, %24
  %29 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %30 = call i32 @em28xx_hint_board(%struct.em28xx* %29)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %34 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %33, i32 0, i32 7
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %43

38:                                               ; preds = %28
  %39 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %40 = call i32 @em28xx_set_model(%struct.em28xx* %39)
  %41 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %42 = call i32 @em28xx_pre_card_setup(%struct.em28xx* %41)
  br label %43

43:                                               ; preds = %38, %32
  br label %47

44:                                               ; preds = %24
  %45 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %46 = call i32 @em28xx_set_model(%struct.em28xx* %45)
  br label %47

47:                                               ; preds = %44, %43
  %48 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %49 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %48, i32 0, i32 7
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %53 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %57 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_info(i32* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @em28xx_boards, align 8
  %61 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %62 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %69 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %68, i32 0, i32 5
  store i64 %67, i64* %69, align 8
  %70 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %71 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %144 [
    i32 138, label %73
    i32 135, label %73
    i32 134, label %73
    i32 130, label %73
    i32 129, label %73
    i32 128, label %73
    i32 139, label %73
    i32 140, label %73
    i32 132, label %98
    i32 137, label %106
    i32 136, label %110
    i32 141, label %110
    i32 133, label %110
    i32 131, label %127
  ]

73:                                               ; preds = %47, %47, %47, %47, %47, %47, %47, %47
  %74 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %75 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %74, i32 0, i32 6
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %144

79:                                               ; preds = %73
  %80 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %81 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @tveeprom_hauppauge_analog(%struct.tveeprom* %7, i32* %82)
  %84 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %7, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %87 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %86, i32 0, i32 5
  store i64 %85, i64* %87, align 8
  %88 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %7, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @TVEEPROM_AUDPROC_MSP, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %79
  %93 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %94 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %93, i32 0, i32 2
  store i32 2048000, i32* %94, align 4
  %95 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %96 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %95, i32 0, i32 3
  store i32 1, i32* %96, align 8
  br label %97

97:                                               ; preds = %92, %79
  br label %144

98:                                               ; preds = %47
  %99 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %100 = call i32 @em28xx_write_reg(%struct.em28xx* %99, i32 13, i32 66)
  %101 = call i32 @usleep_range(i32 10000, i32 11000)
  %102 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %103 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %104 = call i32 @em28xx_write_reg(%struct.em28xx* %102, i32 %103, i32 253)
  %105 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %144

106:                                              ; preds = %47
  %107 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %108 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %109 = call i32 @em28xx_write_reg(%struct.em28xx* %107, i32 %108, i32 249)
  br label %144

110:                                              ; preds = %47, %47, %47
  %111 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %112 = call i32 @em28xx_hint_board(%struct.em28xx* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %116 = call i32 @em28xx_set_model(%struct.em28xx* %115)
  br label %117

117:                                              ; preds = %114, %110
  %118 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %119 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %120 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %119, i32 0, i32 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @em28xx_gpio_set(%struct.em28xx* %118, i32 %122)
  %124 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %125 = load i32, i32* @EM28XX_ANALOG_MODE, align 4
  %126 = call i32 @em28xx_set_mode(%struct.em28xx* %124, i32 %125)
  br label %144

127:                                              ; preds = %47
  %128 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %129 = call i32 @em28xx_hint_board(%struct.em28xx* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %133 = call i32 @em28xx_set_model(%struct.em28xx* %132)
  br label %134

134:                                              ; preds = %131, %127
  %135 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %136 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %137 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %136, i32 0, i32 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @em28xx_gpio_set(%struct.em28xx* %135, i32 %139)
  %141 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %142 = load i32, i32* @EM28XX_ANALOG_MODE, align 4
  %143 = call i32 @em28xx_set_mode(%struct.em28xx* %141, i32 %142)
  br label %144

144:                                              ; preds = %47, %134, %117, %106, %98, %97, %78
  %145 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %146 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %145, i32 0, i32 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @EM28XX_BOARD_NOT_VALIDATED, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %153 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %152, i32 0, i32 7
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = call i32 @dev_err(i32* %155, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.2, i64 0, i64 0))
  br label %157

157:                                              ; preds = %151, %144
  %158 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %159 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %158, i32 0, i32 6
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @kfree(i32* %160)
  %162 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %163 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %162, i32 0, i32 6
  store i32* null, i32** %163, align 8
  %164 = load i64, i64* @tuner, align 8
  %165 = icmp sge i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %157
  %167 = load i64, i64* @tuner, align 8
  %168 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %169 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %168, i32 0, i32 5
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %166, %157
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %221, %170
  %172 = load i32, i32* %3, align 4
  %173 = load i32, i32* @MAX_EM28XX_INPUT, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %224

175:                                              ; preds = %171
  %176 = load i32, i32* %3, align 4
  %177 = call %struct.TYPE_8__* @INPUT(i32 %176)
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %175
  br label %221

182:                                              ; preds = %175
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %202, %182
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* %5, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %205

187:                                              ; preds = %183
  %188 = load i32, i32* %3, align 4
  %189 = call %struct.TYPE_8__* @INPUT(i32 %188)
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %193 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %192, i32 0, i32 4
  %194 = load i64*, i64** %193, align 8
  %195 = load i32, i32* %4, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %191, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %187
  store i32 1, i32* %6, align 4
  br label %205

201:                                              ; preds = %187
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %4, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %4, align 4
  br label %183

205:                                              ; preds = %200, %183
  %206 = load i32, i32* %6, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  br label %221

209:                                              ; preds = %205
  %210 = load i32, i32* %3, align 4
  %211 = call %struct.TYPE_8__* @INPUT(i32 %210)
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %215 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %214, i32 0, i32 4
  %216 = load i64*, i64** %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %5, align 4
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i64, i64* %216, i64 %219
  store i64 %213, i64* %220, align 8
  br label %221

221:                                              ; preds = %209, %208, %181
  %222 = load i32, i32* %3, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %3, align 4
  br label %171

224:                                              ; preds = %171
  br label %225

225:                                              ; preds = %237, %224
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* @MAX_EM28XX_INPUT, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %240

229:                                              ; preds = %225
  %230 = load i64, i64* @EM28XX_AMUX_UNUSED, align 8
  %231 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %232 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %231, i32 0, i32 4
  %233 = load i64*, i64** %232, align 8
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  store i64 %230, i64* %236, align 8
  br label %237

237:                                              ; preds = %229
  %238 = load i32, i32* %5, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %5, align 4
  br label %225

240:                                              ; preds = %225
  ret void
}

declare dso_local i32 @em28xx_detect_sensor(%struct.em28xx*) #1

declare dso_local i32 @em28xx_hint_board(%struct.em28xx*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @em28xx_set_model(%struct.em28xx*) #1

declare dso_local i32 @em28xx_pre_card_setup(%struct.em28xx*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @tveeprom_hauppauge_analog(%struct.tveeprom*, i32*) #1

declare dso_local i32 @em28xx_write_reg(%struct.em28xx*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @em28xx_gpio_set(%struct.em28xx*, i32) #1

declare dso_local i32 @em28xx_set_mode(%struct.em28xx*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.TYPE_8__* @INPUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
