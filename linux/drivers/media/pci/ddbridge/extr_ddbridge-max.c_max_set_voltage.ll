; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_max_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_max_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ddb_input* }
%struct.ddb_input = type { i32, %struct.ddb_port* }
%struct.ddb_port = type { i64, %struct.ddb_dvb*, %struct.ddb* }
%struct.ddb_dvb = type { i32, i64, i32 }
%struct.ddb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64*, i32 }

@SEC_VOLTAGE_OFF = common dso_local global i32 0, align 4
@old_quattro = common dso_local global i32 0, align 4
@SEC_TONE_ON = common dso_local global i32 0, align 4
@SEC_VOLTAGE_18 = common dso_local global i32 0, align 4
@SEC_VOLTAGE_13 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @max_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddb_input*, align 8
  %6 = alloca %struct.ddb_port*, align 8
  %7 = alloca %struct.ddb*, align 8
  %8 = alloca %struct.ddb_dvb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = load %struct.ddb_input*, %struct.ddb_input** %15, align 8
  store %struct.ddb_input* %16, %struct.ddb_input** %5, align 8
  %17 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %18 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %17, i32 0, i32 1
  %19 = load %struct.ddb_port*, %struct.ddb_port** %18, align 8
  store %struct.ddb_port* %19, %struct.ddb_port** %6, align 8
  %20 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %21 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %20, i32 0, i32 2
  %22 = load %struct.ddb*, %struct.ddb** %21, align 8
  store %struct.ddb* %22, %struct.ddb** %7, align 8
  %23 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %24 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %23, i32 0, i32 1
  %25 = load %struct.ddb_dvb*, %struct.ddb_dvb** %24, align 8
  %26 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %27 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %25, i64 %30
  store %struct.ddb_dvb* %31, %struct.ddb_dvb** %8, align 8
  store i32 0, i32* %9, align 4
  %32 = load %struct.ddb*, %struct.ddb** %7, align 8
  %33 = getelementptr inbounds %struct.ddb, %struct.ddb* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %36 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %42 = load %struct.ddb*, %struct.ddb** %7, align 8
  %43 = getelementptr inbounds %struct.ddb, %struct.ddb* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %46 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %13, align 4
  %52 = load %struct.ddb*, %struct.ddb** %7, align 8
  %53 = getelementptr inbounds %struct.ddb, %struct.ddb* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %56 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.ddb_dvb*, %struct.ddb_dvb** %8, align 8
  %64 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %13, align 4
  switch i32 %65, label %67 [
    i32 3, label %66
    i32 0, label %68
    i32 1, label %134
    i32 2, label %134
  ]

66:                                               ; preds = %2
  br label %67

67:                                               ; preds = %2, %66
  br label %68

68:                                               ; preds = %2, %67
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %73 = call i32 @max_set_input_unlocked(%struct.dvb_frontend* %72, i32 0)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @SEC_VOLTAGE_OFF, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %74
  %79 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %80 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = zext i32 %81 to i64
  %83 = shl i64 1, %82
  %84 = xor i64 %83, -1
  %85 = load %struct.ddb*, %struct.ddb** %7, align 8
  %86 = getelementptr inbounds %struct.ddb, %struct.ddb* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %89 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i64*, i64** %93, align 8
  %95 = load %struct.ddb_dvb*, %struct.ddb_dvb** %8, align 8
  %96 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %99, %84
  store i64 %100, i64* %98, align 8
  br label %123

101:                                              ; preds = %74
  %102 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %103 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = zext i32 %104 to i64
  %106 = shl i64 1, %105
  %107 = load %struct.ddb*, %struct.ddb** %7, align 8
  %108 = getelementptr inbounds %struct.ddb, %struct.ddb* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %111 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = load %struct.ddb_dvb*, %struct.ddb_dvb** %8, align 8
  %118 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i64, i64* %116, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = or i64 %121, %106
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %101, %78
  %124 = load %struct.ddb*, %struct.ddb** %7, align 8
  %125 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %126 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.ddb_dvb*, %struct.ddb_dvb** %8, align 8
  %129 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @lnb_set_voltage(%struct.ddb* %124, i64 %127, i32 %131, i32 %132)
  store i32 %133, i32* %12, align 4
  br label %321

134:                                              ; preds = %2, %2
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @SEC_VOLTAGE_OFF, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %158

138:                                              ; preds = %134
  %139 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %140 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = zext i32 %141 to i64
  %143 = shl i64 1, %142
  %144 = xor i64 %143, -1
  %145 = load %struct.ddb*, %struct.ddb** %7, align 8
  %146 = getelementptr inbounds %struct.ddb, %struct.ddb* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %149 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = and i64 %155, %144
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %153, align 8
  br label %177

158:                                              ; preds = %134
  %159 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %160 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = zext i32 %161 to i64
  %163 = shl i64 1, %162
  %164 = load %struct.ddb*, %struct.ddb** %7, align 8
  %165 = getelementptr inbounds %struct.ddb, %struct.ddb* %164, i32 0, i32 0
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %168 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = or i64 %174, %163
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %172, align 8
  br label %177

177:                                              ; preds = %158, %138
  %178 = load %struct.ddb*, %struct.ddb** %7, align 8
  %179 = getelementptr inbounds %struct.ddb, %struct.ddb* %178, i32 0, i32 0
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %182 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* @old_quattro, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %209

190:                                              ; preds = %177
  %191 = load %struct.ddb_dvb*, %struct.ddb_dvb** %8, align 8
  %192 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @SEC_TONE_ON, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = load i32, i32* %9, align 4
  %198 = or i32 %197, 2
  store i32 %198, i32* %9, align 4
  br label %199

199:                                              ; preds = %196, %190
  %200 = load %struct.ddb_dvb*, %struct.ddb_dvb** %8, align 8
  %201 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @SEC_VOLTAGE_18, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %199
  %206 = load i32, i32* %9, align 4
  %207 = or i32 %206, 1
  store i32 %207, i32* %9, align 4
  br label %208

208:                                              ; preds = %205, %199
  br label %228

209:                                              ; preds = %177
  %210 = load %struct.ddb_dvb*, %struct.ddb_dvb** %8, align 8
  %211 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @SEC_TONE_ON, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load i32, i32* %9, align 4
  %217 = or i32 %216, 1
  store i32 %217, i32* %9, align 4
  br label %218

218:                                              ; preds = %215, %209
  %219 = load %struct.ddb_dvb*, %struct.ddb_dvb** %8, align 8
  %220 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @SEC_VOLTAGE_18, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i32, i32* %9, align 4
  %226 = or i32 %225, 2
  store i32 %226, i32* %9, align 4
  br label %227

227:                                              ; preds = %224, %218
  br label %228

228:                                              ; preds = %227, %208
  %229 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @max_set_input_unlocked(%struct.dvb_frontend* %229, i32 %230)
  store i32 %231, i32* %12, align 4
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* %11, align 4
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %235, label %320

235:                                              ; preds = %228
  %236 = load i32, i32* %10, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %290

238:                                              ; preds = %235
  %239 = load %struct.ddb*, %struct.ddb** %7, align 8
  %240 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %241 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* @SEC_VOLTAGE_13, align 4
  %244 = call i32 @lnb_set_voltage(%struct.ddb* %239, i64 %242, i32 0, i32 %243)
  %245 = load i32, i32* %13, align 4
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %247, label %289

247:                                              ; preds = %238
  %248 = load %struct.ddb*, %struct.ddb** %7, align 8
  %249 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %250 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* @SEC_VOLTAGE_13, align 4
  %253 = call i32 @lnb_set_voltage(%struct.ddb* %248, i64 %251, i32 0, i32 %252)
  %254 = load i32, i32* @old_quattro, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %247
  %257 = load %struct.ddb*, %struct.ddb** %7, align 8
  %258 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %259 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i32, i32* @SEC_VOLTAGE_18, align 4
  %262 = call i32 @lnb_set_voltage(%struct.ddb* %257, i64 %260, i32 1, i32 %261)
  %263 = load %struct.ddb*, %struct.ddb** %7, align 8
  %264 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %265 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i32, i32* @SEC_VOLTAGE_13, align 4
  %268 = call i32 @lnb_set_voltage(%struct.ddb* %263, i64 %266, i32 2, i32 %267)
  br label %282

269:                                              ; preds = %247
  %270 = load %struct.ddb*, %struct.ddb** %7, align 8
  %271 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %272 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i32, i32* @SEC_VOLTAGE_13, align 4
  %275 = call i32 @lnb_set_voltage(%struct.ddb* %270, i64 %273, i32 1, i32 %274)
  %276 = load %struct.ddb*, %struct.ddb** %7, align 8
  %277 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %278 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i32, i32* @SEC_VOLTAGE_18, align 4
  %281 = call i32 @lnb_set_voltage(%struct.ddb* %276, i64 %279, i32 2, i32 %280)
  br label %282

282:                                              ; preds = %269, %256
  %283 = load %struct.ddb*, %struct.ddb** %7, align 8
  %284 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %285 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i32, i32* @SEC_VOLTAGE_18, align 4
  %288 = call i32 @lnb_set_voltage(%struct.ddb* %283, i64 %286, i32 3, i32 %287)
  br label %289

289:                                              ; preds = %282, %238
  br label %319

290:                                              ; preds = %235
  %291 = load %struct.ddb*, %struct.ddb** %7, align 8
  %292 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %293 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i32, i32* @SEC_VOLTAGE_OFF, align 4
  %296 = call i32 @lnb_set_voltage(%struct.ddb* %291, i64 %294, i32 0, i32 %295)
  %297 = load i32, i32* %13, align 4
  %298 = icmp eq i32 %297, 1
  br i1 %298, label %299, label %318

299:                                              ; preds = %290
  %300 = load %struct.ddb*, %struct.ddb** %7, align 8
  %301 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %302 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i32, i32* @SEC_VOLTAGE_OFF, align 4
  %305 = call i32 @lnb_set_voltage(%struct.ddb* %300, i64 %303, i32 1, i32 %304)
  %306 = load %struct.ddb*, %struct.ddb** %7, align 8
  %307 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %308 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i32, i32* @SEC_VOLTAGE_OFF, align 4
  %311 = call i32 @lnb_set_voltage(%struct.ddb* %306, i64 %309, i32 2, i32 %310)
  %312 = load %struct.ddb*, %struct.ddb** %7, align 8
  %313 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %314 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i32, i32* @SEC_VOLTAGE_OFF, align 4
  %317 = call i32 @lnb_set_voltage(%struct.ddb* %312, i64 %315, i32 3, i32 %316)
  br label %318

318:                                              ; preds = %299, %290
  br label %319

319:                                              ; preds = %318, %289
  br label %320

320:                                              ; preds = %319, %228
  br label %321

321:                                              ; preds = %320, %123
  %322 = load %struct.ddb*, %struct.ddb** %7, align 8
  %323 = getelementptr inbounds %struct.ddb, %struct.ddb* %322, i32 0, i32 0
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %323, align 8
  %325 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %326 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 3
  %331 = call i32 @mutex_unlock(i32* %330)
  %332 = load i32, i32* %12, align 4
  ret i32 %332
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max_set_input_unlocked(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @lnb_set_voltage(%struct.ddb*, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
