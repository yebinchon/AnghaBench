; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_set_radio_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_set_radio_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner_simple_priv* }
%struct.tuner_simple_priv = type { i32, i32, %struct.TYPE_4__, %struct.tunertype* }
%struct.TYPE_4__ = type { i32 }
%struct.tunertype = type { i32, %struct.tuner_params* }
%struct.tuner_params = type { i64, i32, i64, i64, i64, i32, i64, i32, i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.analog_parameters = type { i32, i64 }
%struct.v4l2_priv_tun_config = type { i32*, i32 }

@V4L2_TUNER_MODE_MONO = common dso_local global i64 0, align 8
@TUNER_PARAM_TYPE_RADIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Unsupported radio_if value %d\0A\00", align 1
@TUNER_RATIO_MASK = common dso_local global i32 0, align 4
@TUNER_RATIO_SELECT_50 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"radio 0x%02x 0x%02x 0x%02x 0x%02x\0A\00", align 1
@TUNER_TDA9887 = common dso_local global i32 0, align 4
@TDA9887_PORT1_ACTIVE = common dso_local global i32 0, align 4
@TDA9887_PORT2_ACTIVE = common dso_local global i32 0, align 4
@TDA9887_INTERCARRIER = common dso_local global i32 0, align 4
@TDA9887_GAIN_NORMAL = common dso_local global i32 0, align 4
@TDA9887_RIF_41_3 = common dso_local global i32 0, align 4
@TUNER_SET_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 4)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @simple_set_radio_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_set_radio_freq(%struct.dvb_frontend* %0, %struct.analog_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.analog_parameters*, align 8
  %6 = alloca %struct.tunertype*, align 8
  %7 = alloca %struct.tuner_simple_priv*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tuner_params*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.v4l2_priv_tun_config, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.analog_parameters* %1, %struct.analog_parameters** %5, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 0
  %19 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %18, align 8
  store %struct.tuner_simple_priv* %19, %struct.tuner_simple_priv** %7, align 8
  %20 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %21 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  %23 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %24 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @V4L2_TUNER_MODE_MONO, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  %30 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %29, i32 0, i32 3
  %31 = load %struct.tunertype*, %struct.tunertype** %30, align 8
  store %struct.tunertype* %31, %struct.tunertype** %6, align 8
  %32 = load %struct.tunertype*, %struct.tunertype** %6, align 8
  %33 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %52, %2
  %37 = load i32, i32* %11, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.tunertype*, %struct.tunertype** %6, align 8
  %41 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %40, i32 0, i32 1
  %42 = load %struct.tuner_params*, %struct.tuner_params** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %42, i64 %44
  %46 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TUNER_PARAM_TYPE_RADIO, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %55

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %11, align 4
  br label %36

55:                                               ; preds = %50, %36
  %56 = load %struct.tunertype*, %struct.tunertype** %6, align 8
  %57 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %56, i32 0, i32 1
  %58 = load %struct.tuner_params*, %struct.tuner_params** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %58, i64 %60
  store %struct.tuner_params* %61, %struct.tuner_params** %12, align 8
  %62 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %63 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %74 [
    i32 0, label %65
    i32 1, label %68
    i32 2, label %71
  ]

65:                                               ; preds = %55
  %66 = load i32, i32* %13, align 4
  %67 = add i32 %66, 171200
  store i32 %67, i32* %13, align 4
  br label %79

68:                                               ; preds = %55
  %69 = load i32, i32* %13, align 4
  %70 = add i32 %69, 532800
  store i32 %70, i32* %13, align 4
  br label %79

71:                                               ; preds = %55
  %72 = load i32, i32* %13, align 4
  %73 = add i32 %72, 660800
  store i32 %73, i32* %13, align 4
  br label %79

74:                                               ; preds = %55
  %75 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %76 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @tuner_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %77)
  store i32 0, i32* %3, align 4
  br label %253

79:                                               ; preds = %71, %68, %65
  %80 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %81 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %80, i32 0, i32 11
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @TUNER_RATIO_MASK, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  %89 = load i32, i32* @TUNER_RATIO_SELECT_50, align 4
  %90 = or i32 %88, %89
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %90, i32* %91, align 8
  %92 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %94 = call i32 @simple_radio_bandswitch(%struct.dvb_frontend* %92, i32* %93)
  %95 = load i32, i32* %13, align 4
  %96 = add i32 %95, 400
  %97 = udiv i32 %96, 800
  store i32 %97, i32* %9, align 4
  %98 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %99 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %98, i32 0, i32 10
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %79
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  %105 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %102
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %110, i32* %111, align 16
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %9, align 4
  %116 = ashr i32 %115, 8
  %117 = and i32 %116, 127
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %117, i32* %118, align 8
  %119 = load i32, i32* %9, align 4
  %120 = and i32 %119, 255
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %120, i32* %121, align 4
  br label %130

122:                                              ; preds = %102, %79
  %123 = load i32, i32* %9, align 4
  %124 = ashr i32 %123, 8
  %125 = and i32 %124, 127
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %125, i32* %126, align 16
  %127 = load i32, i32* %9, align 4
  %128 = and i32 %127, 255
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %122, %108
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %132 = load i32, i32* %131, align 16
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @tuner_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %132, i32 %134, i32 %136, i32 %138)
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  %142 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %144 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %143, i32 0, i32 9
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %225

147:                                              ; preds = %130
  store i32 0, i32* %15, align 4
  %148 = load i32, i32* @TUNER_TDA9887, align 4
  %149 = getelementptr inbounds %struct.v4l2_priv_tun_config, %struct.v4l2_priv_tun_config* %16, i32 0, i32 1
  store i32 %148, i32* %149, align 8
  %150 = getelementptr inbounds %struct.v4l2_priv_tun_config, %struct.v4l2_priv_tun_config* %16, i32 0, i32 0
  store i32* %15, i32** %150, align 8
  %151 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %152 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %151, i32 0, i32 8
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %147
  %156 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %157 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %155
  %161 = load i32, i32* @TDA9887_PORT1_ACTIVE, align 4
  %162 = load i32, i32* %15, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %15, align 4
  br label %164

164:                                              ; preds = %160, %155, %147
  %165 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %166 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %171 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %169
  %175 = load i32, i32* @TDA9887_PORT2_ACTIVE, align 4
  %176 = load i32, i32* %15, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %15, align 4
  br label %178

178:                                              ; preds = %174, %169, %164
  %179 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %180 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load i32, i32* @TDA9887_INTERCARRIER, align 4
  %185 = load i32, i32* %15, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %15, align 4
  br label %187

187:                                              ; preds = %183, %178
  %188 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %189 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = load i32, i32* %14, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load i32, i32* @TDA9887_PORT1_ACTIVE, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %15, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %15, align 4
  br label %200

200:                                              ; preds = %195, %192, %187
  %201 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %202 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load i32, i32* @TDA9887_GAIN_NORMAL, align 4
  %207 = load i32, i32* %15, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %15, align 4
  br label %209

209:                                              ; preds = %205, %200
  %210 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %211 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = icmp eq i32 %212, 2
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load i32, i32* @TDA9887_RIF_41_3, align 4
  %216 = load i32, i32* %15, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %15, align 4
  br label %218

218:                                              ; preds = %214, %209
  %219 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  %220 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @TUNER_SET_CONFIG, align 4
  %224 = call i32 @i2c_clients_command(i32 %222, i32 %223, %struct.v4l2_priv_tun_config* %16)
  br label %225

225:                                              ; preds = %218, %130
  %226 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  %227 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %226, i32 0, i32 2
  %228 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %229 = call i32 @tuner_i2c_xfer_send(%struct.TYPE_4__* %227, i32* %228, i32 4)
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 4, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %225
  %233 = load i32, i32* %10, align 4
  %234 = call i32 @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %232, %225
  %236 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  %237 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  switch i32 %238, label %252 [
    i32 128, label %239
  ]

239:                                              ; preds = %235
  %240 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 152, i32* %240, align 8
  %241 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 32, i32* %241, align 4
  %242 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  %243 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %242, i32 0, i32 2
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %245 = call i32 @tuner_i2c_xfer_send(%struct.TYPE_4__* %243, i32* %244, i32 4)
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* %10, align 4
  %247 = icmp ne i32 4, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %239
  %249 = load i32, i32* %10, align 4
  %250 = call i32 @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %249)
  br label %251

251:                                              ; preds = %248, %239
  br label %252

252:                                              ; preds = %235, %251
  store i32 0, i32* %3, align 4
  br label %253

253:                                              ; preds = %252, %74
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @tuner_warn(i8*, i32) #1

declare dso_local i32 @simple_radio_bandswitch(%struct.dvb_frontend*, i32*) #1

declare dso_local i32 @tuner_dbg(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_clients_command(i32, i32, %struct.v4l2_priv_tun_config*) #1

declare dso_local i32 @tuner_i2c_xfer_send(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
