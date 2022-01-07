; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_srf.c_smt_srf_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_srf.c_smt_srf_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32, i32, i8* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.s_srf_evc = type { i32*, i32, i8** }

@TICKS_PER_SECOND = common dso_local global i32 0, align 4
@SMT_COND_MAC_DUP_ADDR = common dso_local global i32 0, align 4
@RS_DUPADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SRF: %s index %d\00", align 1
@srf_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"SRF : smt_get_evc() failed\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"SRF: condition is %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@THRESHOLD_2 = common dso_local global i8* null, align 8
@THRESHOLD_32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smt_srf_event(%struct.s_smc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.s_smc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.s_srf_evc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* @TICKS_PER_SECOND, align 4
  %16 = mul nsw i32 2, %15
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SMT_COND_MAC_DUP_ADDR, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %25 = load i32, i32* @RS_DUPADDR, align 4
  %26 = call i32 @RS_SET(%struct.s_smc* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %20, %4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %128

30:                                               ; preds = %27
  %31 = load i32*, i32** @srf_names, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i8*, ...) @DB_SMT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.s_srf_evc* @smt_get_evc(%struct.s_smc* %38, i32 %39, i32 %40)
  store %struct.s_srf_evc* %41, %struct.s_srf_evc** %9, align 8
  %42 = icmp ne %struct.s_srf_evc* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %30
  %44 = call i32 (i8*, ...) @DB_SMT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %331

45:                                               ; preds = %30
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @SMT_IS_CONDITION(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.s_srf_evc*, %struct.s_srf_evc** %9, align 8
  %51 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %331

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %45
  %59 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %60 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %61 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @smt_set_timestamp(%struct.s_smc* %59, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @SMT_IS_CONDITION(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %101

68:                                               ; preds = %58
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %73 = call i32 (i8*, ...) @DB_SMT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %68
  %77 = load i8*, i8** @TRUE, align 8
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.s_srf_evc*, %struct.s_srf_evc** %9, align 8
  %80 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  store i32 %78, i32* %81, align 4
  %82 = load i8*, i8** @TRUE, align 8
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.s_srf_evc*, %struct.s_srf_evc** %9, align 8
  %85 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load i8*, i8** @TRUE, align 8
  %87 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %88 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  store i8* %86, i8** %89, align 8
  %90 = load i8*, i8** @TRUE, align 8
  %91 = ptrtoint i8* %90 to i32
  store i32 %91, i32* %10, align 4
  br label %100

92:                                               ; preds = %68
  %93 = load i8*, i8** @FALSE, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.s_srf_evc*, %struct.s_srf_evc** %9, align 8
  %96 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  store i32 %94, i32* %97, align 4
  %98 = load i8*, i8** @TRUE, align 8
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %92, %76
  br label %127

101:                                              ; preds = %58
  %102 = load %struct.s_srf_evc*, %struct.s_srf_evc** %9, align 8
  %103 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i8*, i8** @TRUE, align 8
  %108 = load %struct.s_srf_evc*, %struct.s_srf_evc** %9, align 8
  %109 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %108, i32 0, i32 2
  %110 = load i8**, i8*** %109, align 8
  store i8* %107, i8** %110, align 8
  br label %120

111:                                              ; preds = %101
  %112 = load i8*, i8** @TRUE, align 8
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.s_srf_evc*, %struct.s_srf_evc** %9, align 8
  %115 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load i8*, i8** @FALSE, align 8
  %117 = load %struct.s_srf_evc*, %struct.s_srf_evc** %9, align 8
  %118 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %117, i32 0, i32 2
  %119 = load i8**, i8*** %118, align 8
  store i8* %116, i8** %119, align 8
  br label %120

120:                                              ; preds = %111, %106
  %121 = load i8*, i8** @TRUE, align 8
  %122 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %123 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  store i8* %121, i8** %124, align 8
  %125 = load i8*, i8** @TRUE, align 8
  %126 = ptrtoint i8* %125 to i32
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %120, %100
  br label %128

128:                                              ; preds = %127, %27
  %129 = call i8* (...) @smt_get_time()
  %130 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %131 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = ptrtoint i8* %129 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %13, align 4
  %138 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %139 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  switch i32 %141, label %331 [
    i32 130, label %142
    i32 129, label %275
    i32 128, label %309
  ]

142:                                              ; preds = %128
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %142
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i8*, i8** @THRESHOLD_2, align 8
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %153 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  store i32 %151, i32* %154, align 4
  %155 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %156 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  store i32 129, i32* %157, align 8
  br label %331

158:                                              ; preds = %145, %142
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %167 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  store i32 129, i32* %168, align 8
  br label %331

169:                                              ; preds = %161, %158
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %169
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %14, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %178 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  store i32 129, i32* %179, align 8
  br label %331

180:                                              ; preds = %172, %169
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %199

183:                                              ; preds = %180
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp sge i32 %184, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %183
  %188 = load i8*, i8** @THRESHOLD_2, align 8
  %189 = ptrtoint i8* %188 to i32
  %190 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %191 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  store i32 %189, i32* %192, align 4
  %193 = call i8* (...) @smt_get_time()
  %194 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %195 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  store i8* %193, i8** %196, align 8
  %197 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %198 = call i32 @smt_send_srf(%struct.s_smc* %197)
  br label %331

199:                                              ; preds = %183, %180
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %199
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %14, align 4
  %205 = icmp sge i32 %203, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %202
  %207 = call i8* (...) @smt_get_time()
  %208 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %209 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  store i8* %207, i8** %210, align 8
  %211 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %212 = call i32 @smt_send_srf(%struct.s_smc* %211)
  br label %331

213:                                              ; preds = %202, %199
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %213
  %217 = load i32, i32* %13, align 4
  %218 = load i32, i32* %14, align 4
  %219 = icmp sge i32 %217, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %216
  %221 = call i8* (...) @smt_get_time()
  %222 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %223 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  store i8* %221, i8** %224, align 8
  %225 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %226 = call i32 @smt_send_srf(%struct.s_smc* %225)
  br label %331

227:                                              ; preds = %216, %213
  %228 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %229 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 3
  %231 = load i8*, i8** %230, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %264

233:                                              ; preds = %227
  %234 = load i32, i32* %13, align 4
  %235 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %236 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = icmp sge i32 %234, %238
  br i1 %239, label %240, label %264

240:                                              ; preds = %233
  %241 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %242 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = mul nsw i32 %244, 2
  store i32 %245, i32* %243, align 4
  %246 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %247 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @THRESHOLD_32, align 4
  %251 = icmp sgt i32 %249, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %240
  %253 = load i32, i32* @THRESHOLD_32, align 4
  %254 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %255 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 2
  store i32 %253, i32* %256, align 4
  br label %257

257:                                              ; preds = %252, %240
  %258 = call i8* (...) @smt_get_time()
  %259 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %260 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  store i8* %258, i8** %261, align 8
  %262 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %263 = call i32 @smt_send_srf(%struct.s_smc* %262)
  br label %331

264:                                              ; preds = %233, %227
  %265 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %266 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %264
  %271 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %272 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 1
  store i32 128, i32* %273, align 8
  br label %331

274:                                              ; preds = %264
  br label %331

275:                                              ; preds = %128
  %276 = load i32, i32* %13, align 4
  %277 = load i32, i32* %14, align 4
  %278 = icmp sge i32 %276, %277
  br i1 %278, label %279, label %289

279:                                              ; preds = %275
  %280 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %281 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 1
  store i32 130, i32* %282, align 8
  %283 = call i8* (...) @smt_get_time()
  %284 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %285 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  store i8* %283, i8** %286, align 8
  %287 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %288 = call i32 @smt_send_srf(%struct.s_smc* %287)
  br label %331

289:                                              ; preds = %275
  %290 = load i32, i32* %10, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %289
  %293 = load i8*, i8** @THRESHOLD_2, align 8
  %294 = ptrtoint i8* %293 to i32
  %295 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %296 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 2
  store i32 %294, i32* %297, align 4
  br label %298

298:                                              ; preds = %292, %289
  %299 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %300 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %308, label %304

304:                                              ; preds = %298
  %305 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %306 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 1
  store i32 128, i32* %307, align 8
  br label %331

308:                                              ; preds = %298
  br label %331

309:                                              ; preds = %128
  %310 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %311 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %330

315:                                              ; preds = %309
  %316 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %317 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 1
  store i32 130, i32* %318, align 8
  %319 = call i8* (...) @smt_get_time()
  %320 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %321 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 0
  store i8* %319, i8** %322, align 8
  %323 = load i8*, i8** @THRESHOLD_2, align 8
  %324 = ptrtoint i8* %323 to i32
  %325 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %326 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 2
  store i32 %324, i32* %327, align 4
  %328 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %329 = call i32 @clear_all_rep(%struct.s_smc* %328)
  br label %331

330:                                              ; preds = %309
  br label %331

331:                                              ; preds = %43, %56, %128, %330, %315, %308, %304, %279, %274, %270, %257, %220, %206, %187, %176, %165, %149
  ret void
}

declare dso_local i32 @RS_SET(%struct.s_smc*, i32) #1

declare dso_local i32 @DB_SMT(i8*, ...) #1

declare dso_local %struct.s_srf_evc* @smt_get_evc(%struct.s_smc*, i32, i32) #1

declare dso_local i64 @SMT_IS_CONDITION(i32) #1

declare dso_local i32 @smt_set_timestamp(%struct.s_smc*, i32) #1

declare dso_local i8* @smt_get_time(...) #1

declare dso_local i32 @smt_send_srf(%struct.s_smc*) #1

declare dso_local i32 @clear_all_rep(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
