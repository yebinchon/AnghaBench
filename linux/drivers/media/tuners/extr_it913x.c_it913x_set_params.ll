; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_it913x.c_it913x_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_it913x.c_it913x_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.it913x_dev* }
%struct.dtv_frontend_properties = type { i32, i32 }
%struct.it913x_dev = type { i32, i64, i32, i32, i32, i32, i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"role=%u, frequency %u, bandwidth_hz %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"t_cal_freq %u, pre_lo_freq %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @it913x_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @it913x_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.it913x_dev*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 1
  %19 = load %struct.it913x_dev*, %struct.it913x_dev** %18, align 8
  store %struct.it913x_dev* %19, %struct.it913x_dev** %4, align 8
  %20 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %21 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %20, i32 0, i32 7
  %22 = load %struct.platform_device*, %struct.platform_device** %21, align 8
  store %struct.platform_device* %22, %struct.platform_device** %5, align 8
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %23, i32 0, i32 0
  store %struct.dtv_frontend_properties* %24, %struct.dtv_frontend_properties** %6, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %28 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %34 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %35)
  %37 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %38 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %1
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %358

44:                                               ; preds = %1
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %47, 74000000
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 48, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %103

50:                                               ; preds = %44
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sle i32 %53, 111000000
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 32, i32* %12, align 4
  store i32 1, i32* %14, align 4
  br label %102

56:                                               ; preds = %50
  %57 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %58 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 %59, 148000000
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 24, i32* %12, align 4
  store i32 2, i32* %14, align 4
  br label %101

62:                                               ; preds = %56
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sle i32 %65, 222000000
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 16, i32* %12, align 4
  store i32 3, i32* %14, align 4
  br label %100

68:                                               ; preds = %62
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sle i32 %71, 296000000
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 12, i32* %12, align 4
  store i32 4, i32* %14, align 4
  br label %99

74:                                               ; preds = %68
  %75 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %76 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sle i32 %77, 445000000
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 8, i32* %12, align 4
  store i32 5, i32* %14, align 4
  br label %98

80:                                               ; preds = %74
  %81 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %82 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %85 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sle i32 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 6, i32* %12, align 4
  store i32 6, i32* %14, align 4
  br label %97

89:                                               ; preds = %80
  %90 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %91 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sle i32 %92, 950000000
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 4, i32* %12, align 4
  store i32 7, i32* %14, align 4
  br label %96

95:                                               ; preds = %89
  store i32 2, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %95, %94
  br label %97

97:                                               ; preds = %96, %88
  br label %98

98:                                               ; preds = %97, %79
  br label %99

99:                                               ; preds = %98, %73
  br label %100

100:                                              ; preds = %99, %67
  br label %101

101:                                              ; preds = %100, %61
  br label %102

102:                                              ; preds = %101, %55
  br label %103

103:                                              ; preds = %102, %49
  %104 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %105 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @regmap_read(i32 %106, i32 8449409, i32* %8)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %358

111:                                              ; preds = %103
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %12, align 4
  %114 = mul i32 %112, %113
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ult i32 %115, 32
  br i1 %116, label %117, label %130

117:                                              ; preds = %111
  %118 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %119 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* %11, align 4
  %124 = mul i32 %123, 9
  %125 = lshr i32 %124, 5
  store i32 %125, i32* %11, align 4
  br label %129

126:                                              ; preds = %117
  %127 = load i32, i32* %11, align 4
  %128 = lshr i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %126, %122
  br label %147

130:                                              ; preds = %111
  %131 = load i32, i32* %11, align 4
  %132 = sub i32 64, %131
  store i32 %132, i32* %11, align 4
  %133 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %134 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load i32, i32* %11, align 4
  %139 = mul i32 %138, 9
  %140 = lshr i32 %139, 5
  %141 = xor i32 %140, -1
  store i32 %141, i32* %11, align 4
  br label %146

142:                                              ; preds = %130
  %143 = load i32, i32* %11, align 4
  %144 = lshr i32 %143, 1
  %145 = xor i32 %144, -1
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %142, %137
  br label %147

147:                                              ; preds = %146, %129
  %148 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %149 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sdiv i32 %150, 1000
  %152 = load i32, i32* %12, align 4
  %153 = mul i32 %151, %152
  %154 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %155 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = mul i32 %153, %156
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %160 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = udiv i32 %158, %161
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %165 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = mul i32 %163, %166
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %8, align 4
  %170 = sub i32 %168, %169
  %171 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %172 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = lshr i32 %173, 1
  %175 = icmp uge i32 %170, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %147
  %177 = load i32, i32* %9, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %176, %147
  %180 = load i32, i32* %14, align 4
  %181 = shl i32 %180, 13
  %182 = load i32, i32* %9, align 4
  %183 = add i32 %182, %181
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %11, align 4
  %186 = add i32 %184, %185
  store i32 %186, i32* %10, align 4
  %187 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %9, align 4
  %191 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %188, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %189, i32 %190)
  %192 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %193 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp sle i32 %194, 440000000
  br i1 %195, label %196, label %197

196:                                              ; preds = %179
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %263

197:                                              ; preds = %179
  %198 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %199 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp sle i32 %200, 484000000
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  store i32 1, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %262

203:                                              ; preds = %197
  %204 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %205 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp sle i32 %206, 533000000
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i32 1, i32* %15, align 4
  store i32 2, i32* %16, align 4
  br label %261

209:                                              ; preds = %203
  %210 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %211 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp sle i32 %212, 587000000
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  store i32 1, i32* %15, align 4
  store i32 3, i32* %16, align 4
  br label %260

215:                                              ; preds = %209
  %216 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %217 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp sle i32 %218, 645000000
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  store i32 1, i32* %15, align 4
  store i32 4, i32* %16, align 4
  br label %259

221:                                              ; preds = %215
  %222 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %223 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp sle i32 %224, 710000000
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  store i32 1, i32* %15, align 4
  store i32 5, i32* %16, align 4
  br label %258

227:                                              ; preds = %221
  %228 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %229 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp sle i32 %230, 782000000
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  store i32 1, i32* %15, align 4
  store i32 6, i32* %16, align 4
  br label %257

233:                                              ; preds = %227
  %234 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %235 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp sle i32 %236, 860000000
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  store i32 1, i32* %15, align 4
  store i32 7, i32* %16, align 4
  br label %256

239:                                              ; preds = %233
  %240 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %241 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp sle i32 %242, 1492000000
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %255

245:                                              ; preds = %239
  %246 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %247 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp sle i32 %248, 1685000000
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  store i32 1, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %254

251:                                              ; preds = %245
  %252 = load i32, i32* @EINVAL, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %7, align 4
  br label %358

254:                                              ; preds = %250
  br label %255

255:                                              ; preds = %254, %244
  br label %256

256:                                              ; preds = %255, %238
  br label %257

257:                                              ; preds = %256, %232
  br label %258

258:                                              ; preds = %257, %226
  br label %259

259:                                              ; preds = %258, %220
  br label %260

260:                                              ; preds = %259, %214
  br label %261

261:                                              ; preds = %260, %208
  br label %262

262:                                              ; preds = %261, %202
  br label %263

263:                                              ; preds = %262, %196
  %264 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %265 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* %16, align 4
  %268 = call i32 @regmap_write(i32 %266, i32 8449542, i32 %267)
  store i32 %268, i32* %7, align 4
  %269 = load i32, i32* %7, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %263
  br label %358

272:                                              ; preds = %263
  %273 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %274 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp sle i32 %275, 5000000
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  store i32 0, i32* %13, align 4
  br label %293

278:                                              ; preds = %272
  %279 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %280 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = icmp sle i32 %281, 6000000
  br i1 %282, label %283, label %284

283:                                              ; preds = %278
  store i32 2, i32* %13, align 4
  br label %292

284:                                              ; preds = %278
  %285 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %286 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = icmp sle i32 %287, 7000000
  br i1 %288, label %289, label %290

289:                                              ; preds = %284
  store i32 4, i32* %13, align 4
  br label %291

290:                                              ; preds = %284
  store i32 6, i32* %13, align 4
  br label %291

291:                                              ; preds = %290, %289
  br label %292

292:                                              ; preds = %291, %283
  br label %293

293:                                              ; preds = %292, %277
  %294 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %295 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* %13, align 4
  %298 = call i32 @regmap_write(i32 %296, i32 8449110, i32 %297)
  store i32 %298, i32* %7, align 4
  %299 = load i32, i32* %7, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %293
  br label %358

302:                                              ; preds = %293
  %303 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %304 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* %15, align 4
  %307 = shl i32 %306, 3
  %308 = or i32 160, %307
  %309 = call i32 @regmap_write(i32 %305, i32 8449100, i32 %308)
  store i32 %309, i32* %7, align 4
  %310 = load i32, i32* %7, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %302
  br label %358

313:                                              ; preds = %302
  %314 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %315 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* %10, align 4
  %318 = lshr i32 %317, 0
  %319 = and i32 %318, 255
  %320 = call i32 @regmap_write(i32 %316, i32 8449101, i32 %319)
  store i32 %320, i32* %7, align 4
  %321 = load i32, i32* %7, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %313
  br label %358

324:                                              ; preds = %313
  %325 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %326 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* %10, align 4
  %329 = lshr i32 %328, 8
  %330 = and i32 %329, 255
  %331 = call i32 @regmap_write(i32 %327, i32 8449102, i32 %330)
  store i32 %331, i32* %7, align 4
  %332 = load i32, i32* %7, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %324
  br label %358

335:                                              ; preds = %324
  %336 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %337 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* %9, align 4
  %340 = lshr i32 %339, 0
  %341 = and i32 %340, 255
  %342 = call i32 @regmap_write(i32 %338, i32 8388894, i32 %341)
  store i32 %342, i32* %7, align 4
  %343 = load i32, i32* %7, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %335
  br label %358

346:                                              ; preds = %335
  %347 = load %struct.it913x_dev*, %struct.it913x_dev** %4, align 8
  %348 = getelementptr inbounds %struct.it913x_dev, %struct.it913x_dev* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* %9, align 4
  %351 = lshr i32 %350, 8
  %352 = and i32 %351, 255
  %353 = call i32 @regmap_write(i32 %349, i32 8388895, i32 %352)
  store i32 %353, i32* %7, align 4
  %354 = load i32, i32* %7, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %346
  br label %358

357:                                              ; preds = %346
  store i32 0, i32* %2, align 4
  br label %364

358:                                              ; preds = %356, %345, %334, %323, %312, %301, %271, %251, %110, %41
  %359 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %360 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %359, i32 0, i32 0
  %361 = load i32, i32* %7, align 4
  %362 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %360, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %361)
  %363 = load i32, i32* %7, align 4
  store i32 %363, i32* %2, align 4
  br label %364

364:                                              ; preds = %358, %357
  %365 = load i32, i32* %2, align 4
  ret i32 %365
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
