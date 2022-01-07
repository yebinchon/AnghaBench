; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda8290.c_tda829x_find_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda8290.c_tda829x_find_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.dvb_frontend = type { %struct.TYPE_10__, %struct.tda8290_priv* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_8__ = type { i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.2*)* }
%struct.dvb_frontend.1 = type opaque
%struct.dvb_frontend.2 = type opaque
%struct.tda8290_priv = type { i32, %struct.TYPE_7__, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"could not clearly identify tuner address, defaulting to %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"setting tuner address to %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"tuner access failed!\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@TDA18271 = common dso_local global i32 0, align 4
@tda829x_tda18271_config = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@tda18271_attach = common dso_local global i32 0, align 4
@TDA8275 = common dso_local global i32 0, align 4
@TDA8275A = common dso_local global i32 0, align 4
@tda827x_attach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda829x_find_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda829x_find_tuner(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.tda8290_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.tda8290_priv*, %struct.tda8290_priv** %12, align 8
  store %struct.tda8290_priv* %13, %struct.tda8290_priv** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  store i32* %9, i32** %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  %18 = load i32, i32* @I2C_M_RD, align 4
  store i32 %18, i32* %17, align 8
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %27 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %29, align 8
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %32 = bitcast %struct.dvb_frontend* %31 to %struct.dvb_frontend.0*
  %33 = call i32 %30(%struct.dvb_frontend.0* %32, i32 1)
  br label %34

34:                                               ; preds = %25, %1
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 96, i32* %5, align 4
  br label %35

35:                                               ; preds = %56, %34
  %36 = load i32, i32* %5, align 4
  %37 = icmp sle i32 %36, 99
  br i1 %37, label %38, label %59

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load %struct.tda8290_priv*, %struct.tda8290_priv** %4, align 8
  %42 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @i2c_transfer(i32 %44, %struct.i2c_msg* %10, i32 1)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %55

48:                                               ; preds = %38
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = shl i32 %51, 8
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %48, %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %35

59:                                               ; preds = %35
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %63, align 8
  %65 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %68 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %70, align 8
  %72 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %73 = bitcast %struct.dvb_frontend* %72 to %struct.dvb_frontend.0*
  %74 = call i32 %71(%struct.dvb_frontend.0* %73, i32 0)
  br label %75

75:                                               ; preds = %66, %59
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %103

78:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %99, %78
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 255
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 %85, i32* %86, align 4
  %87 = load %struct.tda8290_priv*, %struct.tda8290_priv** %4, align 8
  %88 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @i2c_transfer(i32 %90, %struct.i2c_msg* %10, i32 1)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = load i32, i32* %8, align 4
  %96 = ashr i32 %95, 8
  store i32 %96, i32* %8, align 4
  br label %98

97:                                               ; preds = %83
  br label %102

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %79

102:                                              ; preds = %97, %79
  br label %103

103:                                              ; preds = %102, %75
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  store i32 96, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @tuner_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %107)
  br label %114

109:                                              ; preds = %103
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %110, 255
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @tuner_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %109, %106
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.tda8290_priv*, %struct.tda8290_priv** %4, align 8
  %117 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %8, align 4
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 %118, i32* %119, align 4
  %120 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %121 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %123, align 8
  %125 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %114
  %127 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %128 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %130, align 8
  %132 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %133 = bitcast %struct.dvb_frontend* %132 to %struct.dvb_frontend.0*
  %134 = call i32 %131(%struct.dvb_frontend.0* %133, i32 1)
  br label %135

135:                                              ; preds = %126, %114
  %136 = load %struct.tda8290_priv*, %struct.tda8290_priv** %4, align 8
  %137 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @i2c_transfer(i32 %139, %struct.i2c_msg* %10, i32 1)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 1
  br i1 %142, label %143, label %163

143:                                              ; preds = %135
  %144 = call i32 @tuner_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %145 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %146 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %148, align 8
  %150 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %149, null
  br i1 %150, label %151, label %160

151:                                              ; preds = %143
  %152 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %153 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %155, align 8
  %157 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %158 = bitcast %struct.dvb_frontend* %157 to %struct.dvb_frontend.0*
  %159 = call i32 %156(%struct.dvb_frontend.0* %158, i32 0)
  br label %160

160:                                              ; preds = %151, %143
  %161 = load i32, i32* @EREMOTEIO, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %2, align 4
  br label %277

163:                                              ; preds = %135
  %164 = load i32, i32* %9, align 4
  %165 = icmp eq i32 %164, 131
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %9, align 4
  %168 = icmp eq i32 %167, 132
  br i1 %168, label %169, label %192

169:                                              ; preds = %166, %163
  %170 = load i32, i32* @TDA18271, align 4
  %171 = load %struct.tda8290_priv*, %struct.tda8290_priv** %4, align 8
  %172 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load %struct.tda8290_priv*, %struct.tda8290_priv** %4, align 8
  %176 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tda829x_tda18271_config, i32 0, i32 2), align 4
  %179 = load %struct.tda8290_priv*, %struct.tda8290_priv** %4, align 8
  %180 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tda829x_tda18271_config, i32 0, i32 1), align 4
  %182 = load i32, i32* @tda18271_attach, align 4
  %183 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %184 = load %struct.tda8290_priv*, %struct.tda8290_priv** %4, align 8
  %185 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.tda8290_priv*, %struct.tda8290_priv** %4, align 8
  %188 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @dvb_attach(i32 %182, %struct.dvb_frontend* %183, i32 %186, i32 %190, %struct.TYPE_11__* @tda829x_tda18271_config)
  br label %228

192:                                              ; preds = %166
  %193 = load i32, i32* %9, align 4
  %194 = and i32 %193, 60
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %192
  %197 = load i32, i32* @TDA8275, align 4
  %198 = load %struct.tda8290_priv*, %struct.tda8290_priv** %4, align 8
  %199 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  br label %208

202:                                              ; preds = %192
  %203 = load i32, i32* @TDA8275A, align 4
  %204 = load %struct.tda8290_priv*, %struct.tda8290_priv** %4, align 8
  %205 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %202, %196
  %209 = load i32, i32* @tda827x_attach, align 4
  %210 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %211 = load %struct.tda8290_priv*, %struct.tda8290_priv** %4, align 8
  %212 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.tda8290_priv*, %struct.tda8290_priv** %4, align 8
  %215 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.tda8290_priv*, %struct.tda8290_priv** %4, align 8
  %219 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %218, i32 0, i32 2
  %220 = call i32 @dvb_attach(i32 %209, %struct.dvb_frontend* %210, i32 %213, i32 %217, %struct.TYPE_11__* %219)
  %221 = load %struct.tda8290_priv*, %struct.tda8290_priv** %4, align 8
  %222 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.tda8290_priv*, %struct.tda8290_priv** %4, align 8
  %226 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  store i32 %224, i32* %227, align 4
  br label %228

228:                                              ; preds = %208, %169
  %229 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %230 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  %233 = load i32 (%struct.dvb_frontend.2*)*, i32 (%struct.dvb_frontend.2*)** %232, align 8
  %234 = icmp ne i32 (%struct.dvb_frontend.2*)* %233, null
  br i1 %234, label %235, label %244

235:                                              ; preds = %228
  %236 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %237 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  %240 = load i32 (%struct.dvb_frontend.2*)*, i32 (%struct.dvb_frontend.2*)** %239, align 8
  %241 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %242 = bitcast %struct.dvb_frontend* %241 to %struct.dvb_frontend.2*
  %243 = call i32 %240(%struct.dvb_frontend.2* %242)
  br label %244

244:                                              ; preds = %235, %228
  %245 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %246 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %248, align 8
  %250 = icmp ne i32 (%struct.dvb_frontend.1*)* %249, null
  br i1 %250, label %251, label %260

251:                                              ; preds = %244
  %252 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %253 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %255, align 8
  %257 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %258 = bitcast %struct.dvb_frontend* %257 to %struct.dvb_frontend.1*
  %259 = call i32 %256(%struct.dvb_frontend.1* %258)
  br label %260

260:                                              ; preds = %251, %244
  %261 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %262 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %264, align 8
  %266 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %265, null
  br i1 %266, label %267, label %276

267:                                              ; preds = %260
  %268 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %269 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %271, align 8
  %273 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %274 = bitcast %struct.dvb_frontend* %273 to %struct.dvb_frontend.0*
  %275 = call i32 %272(%struct.dvb_frontend.0* %274, i32 0)
  br label %276

276:                                              ; preds = %267, %260
  store i32 0, i32* %2, align 4
  br label %277

277:                                              ; preds = %276, %160
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @tuner_info(i8*, i32) #1

declare dso_local i32 @tuner_warn(i8*) #1

declare dso_local i32 @dvb_attach(i32, %struct.dvb_frontend*, i32, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
