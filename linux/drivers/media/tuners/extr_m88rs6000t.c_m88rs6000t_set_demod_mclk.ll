; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_m88rs6000t.c_m88rs6000t_set_demod_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_m88rs6000t.c_m88rs6000t_set_demod_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.m88rs6000t_dev* }
%struct.dtv_frontend_properties = type { i32, i64 }
%struct.m88rs6000t_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SYS_DVBS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @m88rs6000t_set_demod_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88rs6000t_set_demod_mclk(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.m88rs6000t_dev*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 1
  %23 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %22, align 8
  store %struct.m88rs6000t_dev* %23, %struct.m88rs6000t_dev** %3, align 8
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 0
  store %struct.dtv_frontend_properties* %25, %struct.dtv_frontend_properties** %4, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %26 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %27 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @regmap_read(i32 %28, i32 21, i32* %19)
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %20, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %254

33:                                               ; preds = %1
  %34 = load i32, i32* %19, align 4
  store i32 %34, i32* %6, align 4
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 45010000
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  store i32 14, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, 2
  store i32 %41, i32* %6, align 4
  store i32 115, i32* %7, align 4
  br label %45

42:                                               ; preds = %33
  store i32 10, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, -3
  store i32 %44, i32* %6, align 4
  store i32 96, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SYS_DVBS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 96000, i32* %18, align 4
  br label %53

52:                                               ; preds = %45
  store i32 144000, i32* %18, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 1
  %56 = shl i32 %55, 8
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 32
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = mul nsw i32 36000, %62
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %17, align 4
  %66 = sdiv i32 %65, %64
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp sle i32 %67, 32
  br i1 %68, label %69, label %75

69:                                               ; preds = %53
  store i32 2, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %70 = load i32, i32* %17, align 4
  %71 = sdiv i32 %70, 2
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %116

75:                                               ; preds = %53
  %76 = load i32, i32* %17, align 4
  %77 = icmp sle i32 %76, 48
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  store i32 3, i32* %11, align 4
  %79 = load i32, i32* %17, align 4
  %80 = sdiv i32 %79, 3
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sdiv i32 %83, 2
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %12, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load i32, i32* %13, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %115

90:                                               ; preds = %75
  %91 = load i32, i32* %17, align 4
  %92 = icmp sle i32 %91, 64
  br i1 %92, label %93, label %113

93:                                               ; preds = %90
  store i32 4, i32* %11, align 4
  %94 = load i32, i32* %17, align 4
  %95 = sdiv i32 %94, 4
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %12, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sdiv i32 %98, 3
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %12, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32, i32* %13, align 4
  %104 = sub nsw i32 %102, %103
  %105 = sdiv i32 %104, 2
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %12, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load i32, i32* %13, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load i32, i32* %14, align 4
  %112 = sub nsw i32 %110, %111
  store i32 %112, i32* %15, align 4
  br label %114

113:                                              ; preds = %90
  store i32 4, i32* %11, align 4
  store i32 16, i32* %12, align 4
  store i32 16, i32* %13, align 4
  store i32 16, i32* %14, align 4
  store i32 16, i32* %15, align 4
  br label %114

114:                                              ; preds = %113, %93
  br label %115

115:                                              ; preds = %114, %78
  br label %116

116:                                              ; preds = %115, %69
  %117 = load i32, i32* %12, align 4
  %118 = icmp eq i32 %117, 16
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %119, %116
  %121 = load i32, i32* %13, align 4
  %122 = icmp eq i32 %121, 16
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %123, %120
  %125 = load i32, i32* %14, align 4
  %126 = icmp eq i32 %125, 16
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 0, i32* %14, align 4
  br label %128

128:                                              ; preds = %127, %124
  %129 = load i32, i32* %15, align 4
  %130 = icmp eq i32 %129, 16
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 0, i32* %15, align 4
  br label %132

132:                                              ; preds = %131, %128
  %133 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %134 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @regmap_read(i32 %135, i32 29, i32* %19)
  store i32 %136, i32* %20, align 4
  %137 = load i32, i32* %20, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %254

140:                                              ; preds = %132
  %141 = load i32, i32* %19, align 4
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = and i32 %142, -4
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %11, align 4
  %145 = sub nsw i32 %144, 1
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %15, align 4
  %149 = shl i32 %148, 4
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %149, %150
  %152 = and i32 %151, 255
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %13, align 4
  %154 = shl i32 %153, 4
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %154, %155
  %157 = and i32 %156, 255
  store i32 %157, i32* %10, align 4
  %158 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %159 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @regmap_write(i32 %160, i32 5, i32 64)
  store i32 %161, i32* %20, align 4
  %162 = load i32, i32* %20, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %140
  br label %254

165:                                              ; preds = %140
  %166 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %167 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @regmap_write(i32 %168, i32 17, i32 8)
  store i32 %169, i32* %20, align 4
  %170 = load i32, i32* %20, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  br label %254

173:                                              ; preds = %165
  %174 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %175 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @regmap_write(i32 %176, i32 21, i32 %177)
  store i32 %178, i32* %20, align 4
  %179 = load i32, i32* %20, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  br label %254

182:                                              ; preds = %173
  %183 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %184 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @regmap_write(i32 %185, i32 22, i32 %186)
  store i32 %187, i32* %20, align 4
  %188 = load i32, i32* %20, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %254

191:                                              ; preds = %182
  %192 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %193 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @regmap_write(i32 %194, i32 29, i32 %195)
  store i32 %196, i32* %20, align 4
  %197 = load i32, i32* %20, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  br label %254

200:                                              ; preds = %191
  %201 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %202 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @regmap_write(i32 %203, i32 30, i32 %204)
  store i32 %205, i32* %20, align 4
  %206 = load i32, i32* %20, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  br label %254

209:                                              ; preds = %200
  %210 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %211 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @regmap_write(i32 %212, i32 31, i32 %213)
  store i32 %214, i32* %20, align 4
  %215 = load i32, i32* %20, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %209
  br label %254

218:                                              ; preds = %209
  %219 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %220 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @regmap_write(i32 %221, i32 23, i32 193)
  store i32 %222, i32* %20, align 4
  %223 = load i32, i32* %20, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  br label %254

226:                                              ; preds = %218
  %227 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %228 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @regmap_write(i32 %229, i32 23, i32 129)
  store i32 %230, i32* %20, align 4
  %231 = load i32, i32* %20, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %226
  br label %254

234:                                              ; preds = %226
  %235 = call i32 @usleep_range(i32 5000, i32 50000)
  %236 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %237 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @regmap_write(i32 %238, i32 5, i32 0)
  store i32 %239, i32* %20, align 4
  %240 = load i32, i32* %20, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %234
  br label %254

243:                                              ; preds = %234
  %244 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %245 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %5, align 4
  %248 = call i32 @regmap_write(i32 %246, i32 17, i32 %247)
  store i32 %248, i32* %20, align 4
  %249 = load i32, i32* %20, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %243
  br label %254

252:                                              ; preds = %243
  %253 = call i32 @usleep_range(i32 5000, i32 50000)
  br label %254

254:                                              ; preds = %252, %251, %242, %233, %225, %217, %208, %199, %190, %181, %172, %164, %139, %32
  %255 = load i32, i32* %20, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %254
  %258 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %259 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %258, i32 0, i32 0
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 0
  %262 = load i32, i32* %20, align 4
  %263 = call i32 @dev_dbg(i32* %261, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %262)
  br label %264

264:                                              ; preds = %257, %254
  %265 = load i32, i32* %20, align 4
  ret i32 %265
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
