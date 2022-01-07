; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tea5767.c_set_radio_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tea5767.c_set_radio_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tea5767_priv* }
%struct.tea5767_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.analog_parameters = type { i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"radio freq = %d.%03d MHz\0A\00", align 1
@TEA5767_PORT1_HIGH = common dso_local global i8 0, align 1
@V4L2_TUNER_MODE_MONO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"TEA5767 set to mono\0A\00", align 1
@TEA5767_MONO = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"TEA5767 set to stereo\0A\00", align 1
@TEA5767_PORT2_HIGH = common dso_local global i8 0, align 1
@TEA5767_HIGH_CUT_CTRL = common dso_local global i8 0, align 1
@TEA5767_ST_NOISE_CTL = common dso_local global i8 0, align 1
@TEA5767_SOFT_MUTE = common dso_local global i8 0, align 1
@TEA5767_JAPAN_BAND = common dso_local global i8 0, align 1
@TEA5767_DEEMPH_75 = common dso_local global i8 0, align 1
@TEA5767_PLLREF_ENABLE = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"radio HIGH LO inject xtal @ 13 MHz\0A\00", align 1
@TEA5767_HIGH_LO_INJECT = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"radio LOW LO inject xtal @ 13 MHz\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"radio LOW LO inject xtal @ 32,768 MHz\0A\00", align 1
@TEA5767_XTAL_32768 = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"radio HIGH LO inject xtal @ 32,768 MHz\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 5)\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @set_radio_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_radio_freq(%struct.dvb_frontend* %0, %struct.analog_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.analog_parameters*, align 8
  %5 = alloca %struct.tea5767_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.analog_parameters* %1, %struct.analog_parameters** %4, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.tea5767_priv*, %struct.tea5767_priv** %11, align 8
  store %struct.tea5767_priv* %12, %struct.tea5767_priv** %5, align 8
  %13 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %14 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = udiv i32 %16, 16000
  %18 = load i32, i32* %6, align 4
  %19 = udiv i32 %18, 16
  %20 = urem i32 %19, 1000
  %21 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2
  store i8 0, i8* %22, align 1
  %23 = load %struct.tea5767_priv*, %struct.tea5767_priv** %5, align 8
  %24 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load i8, i8* @TEA5767_PORT1_HIGH, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, %30
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %31, align 1
  br label %36

36:                                               ; preds = %28, %2
  %37 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %38 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @V4L2_TUNER_MODE_MONO, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i8, i8* @TEA5767_MONO, align 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %48, %45
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %46, align 1
  br label %53

51:                                               ; preds = %36
  %52 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %42
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 3
  store i8 0, i8* %54, align 1
  %55 = load %struct.tea5767_priv*, %struct.tea5767_priv** %5, align 8
  %56 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load i8, i8* @TEA5767_PORT2_HIGH, align 1
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 3
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, %62
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %63, align 1
  br label %68

68:                                               ; preds = %60, %53
  %69 = load %struct.tea5767_priv*, %struct.tea5767_priv** %5, align 8
  %70 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load i8, i8* @TEA5767_HIGH_CUT_CTRL, align 1
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 3
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %79, %76
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %77, align 1
  br label %82

82:                                               ; preds = %74, %68
  %83 = load %struct.tea5767_priv*, %struct.tea5767_priv** %5, align 8
  %84 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load i8, i8* @TEA5767_ST_NOISE_CTL, align 1
  %90 = zext i8 %89 to i32
  %91 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 3
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %93, %90
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %91, align 1
  br label %96

96:                                               ; preds = %88, %82
  %97 = load %struct.tea5767_priv*, %struct.tea5767_priv** %5, align 8
  %98 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = load i8, i8* @TEA5767_SOFT_MUTE, align 1
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 3
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %107, %104
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %105, align 1
  br label %110

110:                                              ; preds = %102, %96
  %111 = load %struct.tea5767_priv*, %struct.tea5767_priv** %5, align 8
  %112 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  %117 = load i8, i8* @TEA5767_JAPAN_BAND, align 1
  %118 = zext i8 %117 to i32
  %119 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 3
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = or i32 %121, %118
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %119, align 1
  br label %124

124:                                              ; preds = %116, %110
  %125 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 4
  store i8 0, i8* %125, align 1
  %126 = load %struct.tea5767_priv*, %struct.tea5767_priv** %5, align 8
  %127 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %124
  %132 = load i8, i8* @TEA5767_DEEMPH_75, align 1
  %133 = zext i8 %132 to i32
  %134 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 4
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = or i32 %136, %133
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %134, align 1
  br label %139

139:                                              ; preds = %131, %124
  %140 = load %struct.tea5767_priv*, %struct.tea5767_priv** %5, align 8
  %141 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %139
  %146 = load i8, i8* @TEA5767_PLLREF_ENABLE, align 1
  %147 = zext i8 %146 to i32
  %148 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 4
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = or i32 %150, %147
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %148, align 1
  br label %153

153:                                              ; preds = %145, %139
  %154 = load %struct.tea5767_priv*, %struct.tea5767_priv** %5, align 8
  %155 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  switch i32 %157, label %197 [
    i32 131, label %158
    i32 129, label %173
    i32 128, label %181
    i32 130, label %196
  ]

158:                                              ; preds = %153
  %159 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i8, i8* @TEA5767_HIGH_LO_INJECT, align 1
  %161 = zext i8 %160 to i32
  %162 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = or i32 %164, %161
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %162, align 1
  %167 = load i32, i32* %6, align 4
  %168 = mul i32 %167, 250
  %169 = add i32 %168, 700000
  %170 = add i32 %169, 225000
  %171 = add i32 %170, 25000
  %172 = udiv i32 %171, 50000
  store i32 %172, i32* %8, align 4
  br label %219

173:                                              ; preds = %153
  %174 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %175 = load i32, i32* %6, align 4
  %176 = mul i32 %175, 250
  %177 = sub i32 %176, 700000
  %178 = sub i32 %177, 225000
  %179 = add i32 %178, 25000
  %180 = udiv i32 %179, 50000
  store i32 %180, i32* %8, align 4
  br label %219

181:                                              ; preds = %153
  %182 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %183 = load i8, i8* @TEA5767_XTAL_32768, align 1
  %184 = zext i8 %183 to i32
  %185 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 3
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = or i32 %187, %184
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %185, align 1
  %190 = load i32, i32* %6, align 4
  %191 = mul i32 %190, 250
  %192 = sub i32 %191, 700000
  %193 = sub i32 %192, 225000
  %194 = add i32 %193, 16384
  %195 = lshr i32 %194, 15
  store i32 %195, i32* %8, align 4
  br label %219

196:                                              ; preds = %153
  br label %197

197:                                              ; preds = %153, %196
  %198 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %199 = load i8, i8* @TEA5767_HIGH_LO_INJECT, align 1
  %200 = zext i8 %199 to i32
  %201 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = or i32 %203, %200
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %201, align 1
  %206 = load i8, i8* @TEA5767_XTAL_32768, align 1
  %207 = zext i8 %206 to i32
  %208 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 3
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = or i32 %210, %207
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* %208, align 1
  %213 = load i32, i32* %6, align 4
  %214 = mul i32 %213, 250
  %215 = add i32 %214, 700000
  %216 = add i32 %215, 225000
  %217 = add i32 %216, 16384
  %218 = lshr i32 %217, 15
  store i32 %218, i32* %8, align 4
  br label %219

219:                                              ; preds = %197, %181, %173, %158
  %220 = load i32, i32* %8, align 4
  %221 = lshr i32 %220, 8
  %222 = and i32 %221, 63
  %223 = trunc i32 %222 to i8
  %224 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  store i8 %223, i8* %224, align 1
  %225 = load i32, i32* %8, align 4
  %226 = and i32 %225, 255
  %227 = trunc i32 %226 to i8
  %228 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1
  store i8 %227, i8* %228, align 1
  %229 = load %struct.tea5767_priv*, %struct.tea5767_priv** %5, align 8
  %230 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %229, i32 0, i32 1
  %231 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %232 = call i32 @tuner_i2c_xfer_send(i32* %230, i8* %231, i32 5)
  store i32 %232, i32* %9, align 4
  %233 = icmp ne i32 5, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %219
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %234, %219
  %238 = load i64, i64* @debug, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %237
  %241 = load %struct.tea5767_priv*, %struct.tea5767_priv** %5, align 8
  %242 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %241, i32 0, i32 1
  %243 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %244 = call i32 @tuner_i2c_xfer_recv(i32* %242, i8* %243, i32 5)
  store i32 %244, i32* %9, align 4
  %245 = icmp ne i32 5, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %240
  %247 = load i32, i32* %9, align 4
  %248 = call i32 @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %247)
  br label %253

249:                                              ; preds = %240
  %250 = load %struct.tea5767_priv*, %struct.tea5767_priv** %5, align 8
  %251 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %252 = call i32 @tea5767_status_dump(%struct.tea5767_priv* %250, i8* %251)
  br label %253

253:                                              ; preds = %249, %246
  br label %254

254:                                              ; preds = %253, %237
  %255 = load i32, i32* %6, align 4
  %256 = mul i32 %255, 125
  %257 = udiv i32 %256, 2
  %258 = load %struct.tea5767_priv*, %struct.tea5767_priv** %5, align 8
  %259 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %258, i32 0, i32 0
  store i32 %257, i32* %259, align 8
  ret i32 0
}

declare dso_local i32 @tuner_dbg(i8*, ...) #1

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #1

declare dso_local i32 @tuner_warn(i8*, i32) #1

declare dso_local i32 @tuner_i2c_xfer_recv(i32*, i8*, i32) #1

declare dso_local i32 @tea5767_status_dump(%struct.tea5767_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
