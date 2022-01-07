; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda8290.c_tda8290_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda8290.c_tda8290_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.dvb_frontend = type { %struct.TYPE_10__, %struct.tda8290_priv* }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_9__ = type { i32 (%struct.dvb_frontend.1*, %struct.analog_parameters*)* }
%struct.dvb_frontend.1 = type opaque
%struct.analog_parameters = type opaque
%struct.tda8290_priv = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.dvb_frontend.2*)*, i64 }
%struct.dvb_frontend.2 = type opaque
%struct.analog_parameters.3 = type { i64 }

@tda8290_set_params.soft_reset = internal global [2 x i8] zeroinitializer, align 1
@tda8290_set_params.expert_mode = internal global [2 x i8] c"\01\80", align 1
@tda8290_set_params.agc_out_on = internal global [2 x i8] c"\02\00", align 1
@tda8290_set_params.gainset_off = internal global [2 x i8] c"(\14", align 1
@tda8290_set_params.if_agc_spd = internal global [2 x i8] c"\0F\88", align 1
@tda8290_set_params.adc_head_6 = internal global [2 x i8] c"\05\04", align 1
@tda8290_set_params.adc_head_9 = internal global [2 x i8] c"\05\02", align 1
@tda8290_set_params.adc_head_12 = internal global [2 x i8] c"\05\01", align 1
@tda8290_set_params.pll_bw_nom = internal global [2 x i8] c"\0DG", align 1
@tda8290_set_params.pll_bw_low = internal global [2 x i8] c"\0D'", align 1
@tda8290_set_params.gainset_2 = internal global [2 x i8] c"(d", align 1
@tda8290_set_params.agc_rst_on = internal global [2 x i8] c"\0E\0B", align 1
@tda8290_set_params.agc_rst_off = internal global [2 x i8] c"\0E\09", align 1
@tda8290_set_params.if_agc_set = internal global [2 x i8] c"\0F\81", align 1
@tda8290_set_params.addr_adc_sat = internal global i8 26, align 1
@tda8290_set_params.addr_agc_stat = internal global i8 29, align 1
@tda8290_set_params.addr_pll_stat = internal global i8 27, align 1
@tda8290_set_params.adc_sat = internal global i8 0, align 1
@tda8290_set_params.agc_stat = internal global i8 0, align 1
@tda8290_set_params.pll_stat = internal global i8 0, align 1
@.str = private unnamed_addr constant [27 x i8] c"tda827xa config is 0x%02x\0A\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@__const.tda8290_set_params.deemphasis = private unnamed_addr constant [2 x i8] c"\13\01", align 1
@deemphasis_50 = common dso_local global i64 0, align 8
@fm_mode = common dso_local global %struct.TYPE_11__* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"tda8290 is locked, AGC: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"tda8290 not locked, no signal?\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"adjust gain, step 1. Agc: %d, ADC stat: %d, lock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"adjust gain, step 2. Agc: %d, lock: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"adjust gain, step 3. Agc: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"trying to resolve SECAM L deadlock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, %struct.analog_parameters.3*)* @tda8290_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda8290_set_params(%struct.dvb_frontend* %0, %struct.analog_parameters.3* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.analog_parameters.3*, align 8
  %5 = alloca %struct.tda8290_priv*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8], align 1
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.analog_parameters.3* %1, %struct.analog_parameters.3** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  %11 = load %struct.tda8290_priv*, %struct.tda8290_priv** %10, align 8
  store %struct.tda8290_priv* %11, %struct.tda8290_priv** %5, align 8
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 1, i8* %12, align 1
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %15 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %13, align 1
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %19 = load %struct.analog_parameters.3*, %struct.analog_parameters.3** %4, align 8
  %20 = call i32 @set_audio(%struct.dvb_frontend* %18, %struct.analog_parameters.3* %19)
  %21 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %22 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %28 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %26, %2
  %33 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %34 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %33, i32 0, i32 1
  %35 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %36 = call i32 @tuner_i2c_xfer_send(i32* %34, i8* %35, i32 2)
  %37 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %38 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %37, i32 0, i32 1
  %39 = call i32 @tuner_i2c_xfer_send(i32* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_set_params.agc_out_on, i64 0, i64 0), i32 2)
  %40 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %41 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %40, i32 0, i32 1
  %42 = call i32 @tuner_i2c_xfer_send(i32* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_set_params.soft_reset, i64 0, i64 0), i32 2)
  %43 = call i32 @msleep(i32 1)
  %44 = load %struct.analog_parameters.3*, %struct.analog_parameters.3** %4, align 8
  %45 = getelementptr inbounds %struct.analog_parameters.3, %struct.analog_parameters.3* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %32
  %50 = bitcast [2 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %50, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda8290_set_params.deemphasis, i32 0, i32 0), i64 2, i1 false)
  %51 = load i64, i64* @deemphasis_50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 2, i8* %54, align 1
  br label %55

55:                                               ; preds = %53, %49
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %71, %55
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fm_mode, align 8
  %59 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %58)
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %63 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %62, i32 0, i32 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fm_mode, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @tuner_i2c_xfer_send(i32* %63, i8* %69, i32 2)
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %56

74:                                               ; preds = %56
  %75 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %76 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %75, i32 0, i32 1
  %77 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %78 = call i32 @tuner_i2c_xfer_send(i32* %76, i8* %77, i32 2)
  br label %111

79:                                               ; preds = %32
  %80 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %81 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 128
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_set_params.expert_mode, i64 0, i64 1), align 1
  %85 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %86 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %85, i32 0, i32 1
  %87 = call i32 @tuner_i2c_xfer_send(i32* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_set_params.expert_mode, i64 0, i64 0), i32 2)
  %88 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %89 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %88, i32 0, i32 1
  %90 = call i32 @tuner_i2c_xfer_send(i32* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_set_params.gainset_off, i64 0, i64 0), i32 2)
  %91 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %92 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %91, i32 0, i32 1
  %93 = call i32 @tuner_i2c_xfer_send(i32* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_set_params.if_agc_spd, i64 0, i64 0), i32 2)
  %94 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %95 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, 96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %79
  %100 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %101 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %100, i32 0, i32 1
  %102 = call i32 @tuner_i2c_xfer_send(i32* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_set_params.adc_head_9, i64 0, i64 0), i32 2)
  br label %107

103:                                              ; preds = %79
  %104 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %105 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %104, i32 0, i32 1
  %106 = call i32 @tuner_i2c_xfer_send(i32* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_set_params.adc_head_6, i64 0, i64 0), i32 2)
  br label %107

107:                                              ; preds = %103, %99
  %108 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %109 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %108, i32 0, i32 1
  %110 = call i32 @tuner_i2c_xfer_send(i32* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_set_params.pll_bw_nom, i64 0, i64 0), i32 2)
  br label %111

111:                                              ; preds = %107, %74
  %112 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %113 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %115, align 8
  %117 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %116, null
  br i1 %117, label %118, label %127

118:                                              ; preds = %111
  %119 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %120 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %122, align 8
  %124 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %125 = bitcast %struct.dvb_frontend* %124 to %struct.dvb_frontend.0*
  %126 = call i32 %123(%struct.dvb_frontend.0* %125, i32 1)
  br label %127

127:                                              ; preds = %118, %111
  %128 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %129 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32 (%struct.dvb_frontend.1*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.analog_parameters*)** %131, align 8
  %133 = icmp ne i32 (%struct.dvb_frontend.1*, %struct.analog_parameters*)* %132, null
  br i1 %133, label %134, label %145

134:                                              ; preds = %127
  %135 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %136 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32 (%struct.dvb_frontend.1*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.analog_parameters*)** %138, align 8
  %140 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %141 = bitcast %struct.dvb_frontend* %140 to %struct.dvb_frontend.1*
  %142 = load %struct.analog_parameters.3*, %struct.analog_parameters.3** %4, align 8
  %143 = bitcast %struct.analog_parameters.3* %142 to %struct.analog_parameters*
  %144 = call i32 %139(%struct.dvb_frontend.1* %141, %struct.analog_parameters* %143)
  br label %145

145:                                              ; preds = %134, %127
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %171, %145
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %147, 3
  br i1 %148, label %149, label %174

149:                                              ; preds = %146
  %150 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %151 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %150, i32 0, i32 1
  %152 = call i32 @tuner_i2c_xfer_send_recv(i32* %151, i8* @tda8290_set_params.addr_pll_stat, i32 1, i8* @tda8290_set_params.pll_stat, i32 1)
  %153 = load i8, i8* @tda8290_set_params.pll_stat, align 1
  %154 = zext i8 %153 to i32
  %155 = and i32 %154, 128
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %149
  %158 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %159 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %158, i32 0, i32 1
  %160 = call i32 @tuner_i2c_xfer_send_recv(i32* %159, i8* @tda8290_set_params.addr_adc_sat, i32 1, i8* @tda8290_set_params.adc_sat, i32 1)
  %161 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %162 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %161, i32 0, i32 1
  %163 = call i32 @tuner_i2c_xfer_send_recv(i32* %162, i8* @tda8290_set_params.addr_agc_stat, i32 1, i8* @tda8290_set_params.agc_stat, i32 1)
  %164 = load i8, i8* @tda8290_set_params.agc_stat, align 1
  %165 = zext i8 %164 to i32
  %166 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %165)
  br label %174

167:                                              ; preds = %149
  %168 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %169 = call i32 @msleep(i32 100)
  br label %170

170:                                              ; preds = %167
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %146

174:                                              ; preds = %157, %146
  %175 = load i8, i8* @tda8290_set_params.agc_stat, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp sgt i32 %176, 115
  br i1 %177, label %187, label %178

178:                                              ; preds = %174
  %179 = load i8, i8* @tda8290_set_params.pll_stat, align 1
  %180 = zext i8 %179 to i32
  %181 = and i32 %180, 128
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %263, label %183

183:                                              ; preds = %178
  %184 = load i8, i8* @tda8290_set_params.adc_sat, align 1
  %185 = zext i8 %184 to i32
  %186 = icmp slt i32 %185, 20
  br i1 %186, label %187, label %263

187:                                              ; preds = %183, %174
  %188 = load i8, i8* @tda8290_set_params.agc_stat, align 1
  %189 = zext i8 %188 to i32
  %190 = load i8, i8* @tda8290_set_params.adc_sat, align 1
  %191 = zext i8 %190 to i32
  %192 = load i8, i8* @tda8290_set_params.pll_stat, align 1
  %193 = zext i8 %192 to i32
  %194 = and i32 %193, 128
  %195 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %189, i32 %191, i32 %194)
  %196 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %197 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %196, i32 0, i32 1
  %198 = call i32 @tuner_i2c_xfer_send(i32* %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_set_params.gainset_2, i64 0, i64 0), i32 2)
  %199 = call i32 @msleep(i32 100)
  %200 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %201 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %200, i32 0, i32 1
  %202 = call i32 @tuner_i2c_xfer_send_recv(i32* %201, i8* @tda8290_set_params.addr_agc_stat, i32 1, i8* @tda8290_set_params.agc_stat, i32 1)
  %203 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %204 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %203, i32 0, i32 1
  %205 = call i32 @tuner_i2c_xfer_send_recv(i32* %204, i8* @tda8290_set_params.addr_pll_stat, i32 1, i8* @tda8290_set_params.pll_stat, i32 1)
  %206 = load i8, i8* @tda8290_set_params.agc_stat, align 1
  %207 = zext i8 %206 to i32
  %208 = icmp sgt i32 %207, 115
  br i1 %208, label %214, label %209

209:                                              ; preds = %187
  %210 = load i8, i8* @tda8290_set_params.pll_stat, align 1
  %211 = zext i8 %210 to i32
  %212 = and i32 %211, 128
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %262, label %214

214:                                              ; preds = %209, %187
  %215 = load i8, i8* @tda8290_set_params.agc_stat, align 1
  %216 = zext i8 %215 to i32
  %217 = load i8, i8* @tda8290_set_params.pll_stat, align 1
  %218 = zext i8 %217 to i32
  %219 = and i32 %218, 128
  %220 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %216, i32 %219)
  %221 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %222 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = load i32 (%struct.dvb_frontend.2*)*, i32 (%struct.dvb_frontend.2*)** %223, align 8
  %225 = icmp ne i32 (%struct.dvb_frontend.2*)* %224, null
  br i1 %225, label %226, label %234

226:                                              ; preds = %214
  %227 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %228 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = load i32 (%struct.dvb_frontend.2*)*, i32 (%struct.dvb_frontend.2*)** %229, align 8
  %231 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %232 = bitcast %struct.dvb_frontend* %231 to %struct.dvb_frontend.2*
  %233 = call i32 %230(%struct.dvb_frontend.2* %232)
  br label %234

234:                                              ; preds = %226, %214
  %235 = call i32 @msleep(i32 100)
  %236 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %237 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %236, i32 0, i32 1
  %238 = call i32 @tuner_i2c_xfer_send_recv(i32* %237, i8* @tda8290_set_params.addr_agc_stat, i32 1, i8* @tda8290_set_params.agc_stat, i32 1)
  %239 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %240 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %239, i32 0, i32 1
  %241 = call i32 @tuner_i2c_xfer_send_recv(i32* %240, i8* @tda8290_set_params.addr_pll_stat, i32 1, i8* @tda8290_set_params.pll_stat, i32 1)
  %242 = load i8, i8* @tda8290_set_params.agc_stat, align 1
  %243 = zext i8 %242 to i32
  %244 = icmp sgt i32 %243, 115
  br i1 %244, label %250, label %245

245:                                              ; preds = %234
  %246 = load i8, i8* @tda8290_set_params.pll_stat, align 1
  %247 = zext i8 %246 to i32
  %248 = and i32 %247, 128
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %261, label %250

250:                                              ; preds = %245, %234
  %251 = load i8, i8* @tda8290_set_params.agc_stat, align 1
  %252 = zext i8 %251 to i32
  %253 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %252)
  %254 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %255 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %254, i32 0, i32 1
  %256 = call i32 @tuner_i2c_xfer_send(i32* %255, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_set_params.adc_head_12, i64 0, i64 0), i32 2)
  %257 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %258 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %257, i32 0, i32 1
  %259 = call i32 @tuner_i2c_xfer_send(i32* %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_set_params.pll_bw_low, i64 0, i64 0), i32 2)
  %260 = call i32 @msleep(i32 100)
  br label %261

261:                                              ; preds = %250, %245
  br label %262

262:                                              ; preds = %261, %209
  br label %263

263:                                              ; preds = %262, %183, %178
  %264 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %265 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = and i32 %266, 96
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %294

269:                                              ; preds = %263
  %270 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %271 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %270, i32 0, i32 1
  %272 = call i32 @tuner_i2c_xfer_send_recv(i32* %271, i8* @tda8290_set_params.addr_adc_sat, i32 1, i8* @tda8290_set_params.adc_sat, i32 1)
  %273 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %274 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %273, i32 0, i32 1
  %275 = call i32 @tuner_i2c_xfer_send_recv(i32* %274, i8* @tda8290_set_params.addr_pll_stat, i32 1, i8* @tda8290_set_params.pll_stat, i32 1)
  %276 = load i8, i8* @tda8290_set_params.adc_sat, align 1
  %277 = zext i8 %276 to i32
  %278 = icmp sgt i32 %277, 20
  br i1 %278, label %284, label %279

279:                                              ; preds = %269
  %280 = load i8, i8* @tda8290_set_params.pll_stat, align 1
  %281 = zext i8 %280 to i32
  %282 = and i32 %281, 128
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %293, label %284

284:                                              ; preds = %279, %269
  %285 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %286 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %287 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %286, i32 0, i32 1
  %288 = call i32 @tuner_i2c_xfer_send(i32* %287, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_set_params.agc_rst_on, i64 0, i64 0), i32 2)
  %289 = call i32 @msleep(i32 40)
  %290 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %291 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %290, i32 0, i32 1
  %292 = call i32 @tuner_i2c_xfer_send(i32* %291, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_set_params.agc_rst_off, i64 0, i64 0), i32 2)
  br label %293

293:                                              ; preds = %284, %279
  br label %294

294:                                              ; preds = %293, %263
  %295 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %296 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 0
  %299 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %298, align 8
  %300 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %299, null
  br i1 %300, label %301, label %310

301:                                              ; preds = %294
  %302 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %303 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 0
  %306 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %305, align 8
  %307 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %308 = bitcast %struct.dvb_frontend* %307 to %struct.dvb_frontend.0*
  %309 = call i32 %306(%struct.dvb_frontend.0* %308, i32 0)
  br label %310

310:                                              ; preds = %301, %294
  %311 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %312 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %311, i32 0, i32 1
  %313 = call i32 @tuner_i2c_xfer_send(i32* %312, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8290_set_params.if_agc_set, i64 0, i64 0), i32 2)
  ret void
}

declare dso_local i32 @set_audio(%struct.dvb_frontend*, %struct.analog_parameters.3*) #1

declare dso_local i32 @tuner_dbg(i8*, ...) #1

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @tuner_i2c_xfer_send_recv(i32*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
