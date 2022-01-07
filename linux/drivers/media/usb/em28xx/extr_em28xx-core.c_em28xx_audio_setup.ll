; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-core.c_em28xx_audio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-core.c_em28xx_audio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CHIP_ID_EM2870 = common dso_local global i64 0, align 8
@CHIP_ID_EM2874 = common dso_local global i64 0, align 8
@CHIP_ID_EM28174 = common dso_local global i64 0, align 8
@CHIP_ID_EM28178 = common dso_local global i64 0, align 8
@EM28XX_INT_AUDIO_NONE = common dso_local global i8* null, align 8
@EM28XX_USB_AUDIO_NONE = common dso_local global i8* null, align 8
@EM28XX_R00_CHIPCFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Config register raw data: 0x%02x\0A\00", align 1
@EM28XX_INT_AUDIO_AC97 = common dso_local global i8* null, align 8
@EM28XX_CHIPCFG_AUDIOMASK = common dso_local global i32 0, align 4
@EM28XX_CHIPCFG_AC97 = common dso_local global i32 0, align 4
@EM28XX_INT_AUDIO_I2S = common dso_local global i8* null, align 8
@CHIP_ID_EM2860 = common dso_local global i64 0, align 8
@EM2820_CHIPCFG_I2S_1_SAMPRATE = common dso_local global i32 0, align 4
@EM2860_CHIPCFG_I2S_5_SAMPRATES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"I2S Audio (%d sample rate(s))\0A\00", align 1
@AC97_VENDOR_ID1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"AC97 chip type couldn't be determined\0A\00", align 1
@EM28XX_USB_AUDIO_VENDOR = common dso_local global i64 0, align 8
@AC97_VENDOR_ID2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"AC97 vendor ID = 0x%08x\0A\00", align 1
@AC97_RESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"AC97 features = 0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"No AC97 audio processor\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Empia 202 AC97 audio processor detected\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Sigmatel audio processor detected (stac 97%02x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Unknown AC97 audio processor detected!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_audio_setup(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %11 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CHIP_ID_EM2870, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %33, label %15

15:                                               ; preds = %1
  %16 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %17 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CHIP_ID_EM2874, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %23 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHIP_ID_EM28174, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %29 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CHIP_ID_EM28178, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27, %21, %15, %1
  %34 = load i8*, i8** @EM28XX_INT_AUDIO_NONE, align 8
  %35 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %36 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @EM28XX_USB_AUDIO_NONE, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %40 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  store i32 0, i32* %2, align 4
  br label %243

41:                                               ; preds = %27
  %42 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %43 = load i32, i32* @EM28XX_R00_CHIPCFG, align 4
  %44 = call i32 @em28xx_read_reg(%struct.em28xx* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %46 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i32*, i8*, ...) @dev_info(i32* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load i8*, i8** @EM28XX_INT_AUDIO_AC97, align 8
  %55 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %56 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  br label %123

57:                                               ; preds = %41
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @EM28XX_CHIPCFG_AUDIOMASK, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i8*, i8** @EM28XX_INT_AUDIO_NONE, align 8
  %64 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %65 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @EM28XX_USB_AUDIO_NONE, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %69 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  store i32 0, i32* %2, align 4
  br label %243

70:                                               ; preds = %57
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @EM28XX_CHIPCFG_AUDIOMASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @EM28XX_CHIPCFG_AC97, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %117

76:                                               ; preds = %70
  %77 = load i8*, i8** @EM28XX_INT_AUDIO_I2S, align 8
  %78 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %79 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %81 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CHIP_ID_EM2860, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %76
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @EM28XX_CHIPCFG_AUDIOMASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @EM2820_CHIPCFG_I2S_1_SAMPRATE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 1, i32* %9, align 4
  br label %107

92:                                               ; preds = %85, %76
  %93 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %94 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CHIP_ID_EM2860, align 8
  %97 = icmp sge i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @EM28XX_CHIPCFG_AUDIOMASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @EM2860_CHIPCFG_I2S_5_SAMPRATES, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 5, i32* %9, align 4
  br label %106

105:                                              ; preds = %98, %92
  store i32 3, i32* %9, align 4
  br label %106

106:                                              ; preds = %105, %104
  br label %107

107:                                              ; preds = %106, %91
  %108 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %109 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (i32*, i8*, ...) @dev_info(i32* %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %115 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i32 128, i32* %116, align 8
  br label %208

117:                                              ; preds = %70
  %118 = load i8*, i8** @EM28XX_INT_AUDIO_AC97, align 8
  %119 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %120 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %117
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122, %53
  %124 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %125 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  store i32 130, i32* %126, align 8
  %127 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %128 = load i32, i32* @AC97_VENDOR_ID1, align 4
  %129 = call i32 @em28xx_read_ac97(%struct.em28xx* %127, i32 %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %155

132:                                              ; preds = %123
  %133 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %134 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %133, i32 0, i32 2
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = call i32 (i32*, i8*, ...) @dev_warn(i32* %136, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %138 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %139 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i32 128, i32* %140, align 8
  %141 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %142 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @EM28XX_USB_AUDIO_VENDOR, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %132
  %147 = load i8*, i8** @EM28XX_USB_AUDIO_NONE, align 8
  %148 = ptrtoint i8* %147 to i64
  %149 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %150 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %146, %132
  %152 = load i8*, i8** @EM28XX_INT_AUDIO_NONE, align 8
  %153 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %154 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %153, i32 0, i32 4
  store i8* %152, i8** %154, align 8
  br label %208

155:                                              ; preds = %123
  %156 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %157 = load i32, i32* @AC97_VENDOR_ID2, align 4
  %158 = call i32 @em28xx_read_ac97(%struct.em28xx* %156, i32 %157)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  br label %208

162:                                              ; preds = %155
  %163 = load i32, i32* %4, align 4
  %164 = shl i32 %163, 16
  %165 = load i32, i32* %5, align 4
  %166 = or i32 %164, %165
  store i32 %166, i32* %8, align 4
  %167 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %168 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %167, i32 0, i32 2
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %8, align 4
  %172 = call i32 (i32*, i8*, ...) @dev_warn(i32* %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  %173 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %174 = load i32, i32* @AC97_RESET, align 4
  %175 = call i32 @em28xx_read_ac97(%struct.em28xx* %173, i32 %174)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %162
  br label %208

179:                                              ; preds = %162
  %180 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %181 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %180, i32 0, i32 2
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %6, align 4
  %185 = call i32 (i32*, i8*, ...) @dev_warn(i32* %183, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %8, align 4
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %191, label %188

188:                                              ; preds = %179
  %189 = load i32, i32* %8, align 4
  %190 = icmp eq i32 %189, -2088470960
  br i1 %190, label %191, label %198

191:                                              ; preds = %188, %179
  %192 = load i32, i32* %6, align 4
  %193 = icmp eq i32 %192, 27280
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %196 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  store i32 131, i32* %197, align 8
  br label %207

198:                                              ; preds = %191, %188
  %199 = load i32, i32* %8, align 4
  %200 = ashr i32 %199, 8
  %201 = icmp eq i32 %200, 8619126
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %204 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  store i32 129, i32* %205, align 8
  br label %206

206:                                              ; preds = %202, %198
  br label %207

207:                                              ; preds = %206, %194
  br label %208

208:                                              ; preds = %207, %178, %161, %151, %107
  %209 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %210 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  switch i32 %212, label %239 [
    i32 128, label %213
    i32 131, label %219
    i32 129, label %225
    i32 130, label %233
  ]

213:                                              ; preds = %208
  %214 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %215 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %214, i32 0, i32 2
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = call i32 (i32*, i8*, ...) @dev_info(i32* %217, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %240

219:                                              ; preds = %208
  %220 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %221 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %220, i32 0, i32 2
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = call i32 (i32*, i8*, ...) @dev_info(i32* %223, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %240

225:                                              ; preds = %208
  %226 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %227 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %226, i32 0, i32 2
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i32, i32* %8, align 4
  %231 = and i32 %230, 255
  %232 = call i32 (i32*, i8*, ...) @dev_info(i32* %229, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %231)
  br label %240

233:                                              ; preds = %208
  %234 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %235 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %234, i32 0, i32 2
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = call i32 (i32*, i8*, ...) @dev_warn(i32* %237, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %240

239:                                              ; preds = %208
  br label %240

240:                                              ; preds = %239, %233, %225, %219, %213
  %241 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %242 = call i32 @em28xx_audio_analog_set(%struct.em28xx* %241)
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %240, %62, %33
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i32 @em28xx_read_reg(%struct.em28xx*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @em28xx_read_ac97(%struct.em28xx*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @em28xx_audio_analog_set(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
