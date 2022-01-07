; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_output_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_output_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_enable = type { i32 }
%struct.venus_inst = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_4__*, %struct.venus_core* }
%struct.TYPE_4__ = type { i32 }
%struct.venus_core = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@__const.vdec_output_conf.en = private unnamed_addr constant %struct.hfi_enable { i32 1 }, align 4
@VIDC_WORK_MODE_2 = common dso_local global i32 0, align 4
@VIDC_CORE_ID_1 = common dso_local global i32 0, align 4
@HFI_VERSION_1XX = common dso_local global i64 0, align 8
@HFI_PROPERTY_PARAM_VDEC_CONTINUE_DATA_TRANSFER = common dso_local global i32 0, align 4
@HFI_BUFFER_OUTPUT2 = common dso_local global i8* null, align 8
@HFI_BUFFER_OUTPUT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*)* @vdec_output_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_output_conf(%struct.venus_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca %struct.hfi_enable, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  %13 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %14 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %13, i32 0, i32 9
  %15 = load %struct.venus_core*, %struct.venus_core** %14, align 8
  store %struct.venus_core* %15, %struct.venus_core** %4, align 8
  %16 = bitcast %struct.hfi_enable* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.hfi_enable* @__const.vdec_output_conf.en to i8*), i64 4, i1 false)
  %17 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %18 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %21 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %23 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %24 = load i32, i32* @VIDC_WORK_MODE_2, align 4
  %25 = call i32 @venus_helper_set_work_mode(%struct.venus_inst* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %2, align 4
  br label %240

30:                                               ; preds = %1
  %31 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %32 = load i32, i32* @VIDC_CORE_ID_1, align 4
  %33 = call i32 @venus_helper_set_core_usage(%struct.venus_inst* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %2, align 4
  br label %240

38:                                               ; preds = %30
  %39 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %40 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @HFI_VERSION_1XX, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load i32, i32* @HFI_PROPERTY_PARAM_VDEC_CONTINUE_DATA_TRANSFER, align 4
  store i32 %47, i32* %11, align 4
  %48 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @hfi_session_set_property(%struct.venus_inst* %48, i32 %49, %struct.hfi_enable* %5)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %2, align 4
  br label %240

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %38
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %57, 1920
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ALIGN(i32 1080, i32 32)
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, i32* %10, align 4
  br label %64

64:                                               ; preds = %63, %59, %56
  %65 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %66 = call i64 @IS_V4(%struct.venus_core* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 1, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %64
  %70 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %71 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %72 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %71, i32 0, i32 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @venus_helper_get_out_fmts(%struct.venus_inst* %70, i32 %75, i32* %8, i32* %9, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %2, align 4
  br label %240

82:                                               ; preds = %69
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i8* @venus_helper_get_framesz_raw(i32 %83, i32 %84, i32 %85)
  %87 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %88 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i8* @venus_helper_get_framesz_raw(i32 %89, i32 %90, i32 %91)
  %93 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %94 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %93, i32 0, i32 5
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @is_ubwc_fmt(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %82
  %99 = load i8*, i8** @HFI_BUFFER_OUTPUT2, align 8
  %100 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %101 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %100, i32 0, i32 7
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %104 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i8*, i8** @HFI_BUFFER_OUTPUT, align 8
  %106 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %107 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %110 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  br label %140

111:                                              ; preds = %82
  %112 = load i32, i32* %9, align 4
  %113 = call i64 @is_ubwc_fmt(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load i8*, i8** @HFI_BUFFER_OUTPUT, align 8
  %117 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %118 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %117, i32 0, i32 7
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %121 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load i8*, i8** @HFI_BUFFER_OUTPUT2, align 8
  %123 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %124 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %123, i32 0, i32 6
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %127 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  br label %139

128:                                              ; preds = %111
  %129 = load i8*, i8** @HFI_BUFFER_OUTPUT, align 8
  %130 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %131 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %130, i32 0, i32 7
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %134 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %136 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %135, i32 0, i32 6
  store i8* null, i8** %136, align 8
  %137 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %138 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %137, i32 0, i32 3
  store i32 0, i32* %138, align 4
  br label %139

139:                                              ; preds = %128, %115
  br label %140

140:                                              ; preds = %139, %98
  %141 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %142 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %143 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %146 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %145, i32 0, i32 7
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @venus_helper_set_raw_format(%struct.venus_inst* %141, i32 %144, i8* %147)
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %140
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %2, align 4
  br label %240

153:                                              ; preds = %140
  %154 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %155 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %189

158:                                              ; preds = %153
  %159 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %160 = call i32 @venus_helper_set_multistream(%struct.venus_inst* %159, i32 0, i32 1)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* %12, align 4
  store i32 %164, i32* %2, align 4
  br label %240

165:                                              ; preds = %158
  %166 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %167 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %168 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %171 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %170, i32 0, i32 6
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @venus_helper_set_raw_format(%struct.venus_inst* %166, i32 %169, i8* %172)
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %165
  %177 = load i32, i32* %12, align 4
  store i32 %177, i32* %2, align 4
  br label %240

178:                                              ; preds = %165
  %179 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %7, align 4
  %182 = load i8*, i8** @HFI_BUFFER_OUTPUT2, align 8
  %183 = call i32 @venus_helper_set_output_resolution(%struct.venus_inst* %179, i32 %180, i32 %181, i8* %182)
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = load i32, i32* %12, align 4
  store i32 %187, i32* %2, align 4
  br label %240

188:                                              ; preds = %178
  br label %189

189:                                              ; preds = %188, %153
  %190 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %191 = call i64 @IS_V3(%struct.venus_core* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %195 = call i64 @IS_V4(%struct.venus_core* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %232

197:                                              ; preds = %193, %189
  %198 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %199 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %198, i32 0, i32 5
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %214

202:                                              ; preds = %197
  %203 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %204 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %205 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %204, i32 0, i32 5
  %206 = load i8*, i8** %205, align 8
  %207 = load i8*, i8** @HFI_BUFFER_OUTPUT2, align 8
  %208 = call i32 @venus_helper_set_bufsize(%struct.venus_inst* %203, i8* %206, i8* %207)
  store i32 %208, i32* %12, align 4
  %209 = load i32, i32* %12, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %202
  %212 = load i32, i32* %12, align 4
  store i32 %212, i32* %2, align 4
  br label %240

213:                                              ; preds = %202
  br label %214

214:                                              ; preds = %213, %197
  %215 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %216 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %215, i32 0, i32 4
  %217 = load i8*, i8** %216, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %231

219:                                              ; preds = %214
  %220 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %221 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %222 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %221, i32 0, i32 4
  %223 = load i8*, i8** %222, align 8
  %224 = load i8*, i8** @HFI_BUFFER_OUTPUT, align 8
  %225 = call i32 @venus_helper_set_bufsize(%struct.venus_inst* %220, i8* %223, i8* %224)
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* %12, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %219
  %229 = load i32, i32* %12, align 4
  store i32 %229, i32* %2, align 4
  br label %240

230:                                              ; preds = %219
  br label %231

231:                                              ; preds = %230, %214
  br label %232

232:                                              ; preds = %231, %193
  %233 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %234 = call i32 @venus_helper_set_dyn_bufmode(%struct.venus_inst* %233)
  store i32 %234, i32* %12, align 4
  %235 = load i32, i32* %12, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %232
  %238 = load i32, i32* %12, align 4
  store i32 %238, i32* %2, align 4
  br label %240

239:                                              ; preds = %232
  store i32 0, i32* %2, align 4
  br label %240

240:                                              ; preds = %239, %237, %228, %211, %186, %176, %163, %151, %80, %53, %36, %28
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @venus_helper_set_work_mode(%struct.venus_inst*, i32) #2

declare dso_local i32 @venus_helper_set_core_usage(%struct.venus_inst*, i32) #2

declare dso_local i32 @hfi_session_set_property(%struct.venus_inst*, i32, %struct.hfi_enable*) #2

declare dso_local i32 @ALIGN(i32, i32) #2

declare dso_local i64 @IS_V4(%struct.venus_core*) #2

declare dso_local i32 @venus_helper_get_out_fmts(%struct.venus_inst*, i32, i32*, i32*, i32) #2

declare dso_local i8* @venus_helper_get_framesz_raw(i32, i32, i32) #2

declare dso_local i64 @is_ubwc_fmt(i32) #2

declare dso_local i32 @venus_helper_set_raw_format(%struct.venus_inst*, i32, i8*) #2

declare dso_local i32 @venus_helper_set_multistream(%struct.venus_inst*, i32, i32) #2

declare dso_local i32 @venus_helper_set_output_resolution(%struct.venus_inst*, i32, i32, i8*) #2

declare dso_local i64 @IS_V3(%struct.venus_core*) #2

declare dso_local i32 @venus_helper_set_bufsize(%struct.venus_inst*, i8*, i8*) #2

declare dso_local i32 @venus_helper_set_dyn_bufmode(%struct.venus_inst*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
