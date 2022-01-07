; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5005s.c_MXL_IFSynthInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5005s.c_MXL_IFSynthInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mxl5005s_state* }
%struct.mxl5005s_state = type { i64, i64, i32, i64 }

@IF_DIVVAL = common dso_local global i32 0, align 4
@IF_VCO_BIAS = common dso_local global i32 0, align 4
@CHCAL_INT_MOD_IF = common dso_local global i32 0, align 4
@CHCAL_FRAC_MOD_IF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @MXL_IFSynthInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MXL_IFSynthInit(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.mxl5005s_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  store %struct.mxl5005s_state* %11, %struct.mxl5005s_state** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 2, i32* %6, align 4
  %12 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %13 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %14, 12000000
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %18 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ule i64 %19, 16000000
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 2, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %16, %1
  %23 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %24 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %25, 16000000
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %29 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ule i64 %30, 32000000
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %27, %22
  %34 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %35 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %204

38:                                               ; preds = %33
  %39 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %40 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %204

43:                                               ; preds = %38
  %44 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %45 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 41000000
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %50 = load i32, i32* @IF_DIVVAL, align 4
  %51 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %49, i32 %50, i32 8)
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %57 = load i32, i32* @IF_VCO_BIAS, align 4
  %58 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %56, i32 %57, i32 12)
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  store i32 328000000, i32* %5, align 4
  br label %63

63:                                               ; preds = %48, %43
  %64 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %65 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 47000000
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %70 = load i32, i32* @IF_DIVVAL, align 4
  %71 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %69, i32 %70, i32 8)
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %4, align 4
  %76 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %77 = load i32, i32* @IF_VCO_BIAS, align 4
  %78 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %76, i32 %77, i32 8)
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %4, align 4
  store i32 376000000, i32* %5, align 4
  br label %83

83:                                               ; preds = %68, %63
  %84 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %85 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 54000000
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %90 = load i32, i32* @IF_DIVVAL, align 4
  %91 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %89, i32 %90, i32 16)
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %4, align 4
  %96 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %97 = load i32, i32* @IF_VCO_BIAS, align 4
  %98 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %96, i32 %97, i32 12)
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %4, align 4
  store i32 324000000, i32* %5, align 4
  br label %103

103:                                              ; preds = %88, %83
  %104 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %105 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 60000000
  br i1 %107, label %108, label %123

108:                                              ; preds = %103
  %109 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %110 = load i32, i32* @IF_DIVVAL, align 4
  %111 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %109, i32 %110, i32 16)
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %4, align 4
  %116 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %117 = load i32, i32* @IF_VCO_BIAS, align 4
  %118 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %116, i32 %117, i32 8)
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %4, align 4
  store i32 360000000, i32* %5, align 4
  br label %123

123:                                              ; preds = %108, %103
  %124 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %125 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 39250000
  br i1 %127, label %128, label %143

128:                                              ; preds = %123
  %129 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %130 = load i32, i32* @IF_DIVVAL, align 4
  %131 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %129, i32 %130, i32 8)
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %4, align 4
  %136 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %137 = load i32, i32* @IF_VCO_BIAS, align 4
  %138 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %136, i32 %137, i32 12)
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %4, align 4
  store i32 314000000, i32* %5, align 4
  br label %143

143:                                              ; preds = %128, %123
  %144 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %145 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 39650000
  br i1 %147, label %148, label %163

148:                                              ; preds = %143
  %149 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %150 = load i32, i32* @IF_DIVVAL, align 4
  %151 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %149, i32 %150, i32 8)
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %4, align 4
  %156 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %157 = load i32, i32* @IF_VCO_BIAS, align 4
  %158 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %156, i32 %157, i32 12)
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %4, align 4
  store i32 317200000, i32* %5, align 4
  br label %163

163:                                              ; preds = %148, %143
  %164 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %165 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 40150000
  br i1 %167, label %168, label %183

168:                                              ; preds = %163
  %169 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %170 = load i32, i32* @IF_DIVVAL, align 4
  %171 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %169, i32 %170, i32 8)
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %173, %171
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %4, align 4
  %176 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %177 = load i32, i32* @IF_VCO_BIAS, align 4
  %178 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %176, i32 %177, i32 12)
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %180, %178
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %4, align 4
  store i32 321200000, i32* %5, align 4
  br label %183

183:                                              ; preds = %168, %163
  %184 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %185 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 40650000
  br i1 %187, label %188, label %203

188:                                              ; preds = %183
  %189 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %190 = load i32, i32* @IF_DIVVAL, align 4
  %191 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %189, i32 %190, i32 8)
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %193, %191
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %4, align 4
  %196 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %197 = load i32, i32* @IF_VCO_BIAS, align 4
  %198 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %196, i32 %197, i32 12)
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %200, %198
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %4, align 4
  store i32 325200000, i32* %5, align 4
  br label %203

203:                                              ; preds = %188, %183
  br label %204

204:                                              ; preds = %203, %38, %33
  %205 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %206 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %219, label %209

209:                                              ; preds = %204
  %210 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %211 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %740

214:                                              ; preds = %209
  %215 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %216 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %740

219:                                              ; preds = %214, %204
  %220 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %221 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = icmp eq i64 %222, 57000000
  br i1 %223, label %224, label %239

224:                                              ; preds = %219
  %225 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %226 = load i32, i32* @IF_DIVVAL, align 4
  %227 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %225, i32 %226, i32 16)
  %228 = load i32, i32* %4, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %229, %227
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %4, align 4
  %232 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %233 = load i32, i32* @IF_VCO_BIAS, align 4
  %234 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %232, i32 %233, i32 8)
  %235 = load i32, i32* %4, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %236, %234
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %4, align 4
  store i32 342000000, i32* %5, align 4
  br label %239

239:                                              ; preds = %224, %219
  %240 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %241 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = icmp eq i64 %242, 44000000
  br i1 %243, label %244, label %259

244:                                              ; preds = %239
  %245 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %246 = load i32, i32* @IF_DIVVAL, align 4
  %247 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %245, i32 %246, i32 8)
  %248 = load i32, i32* %4, align 4
  %249 = sext i32 %248 to i64
  %250 = add nsw i64 %249, %247
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %4, align 4
  %252 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %253 = load i32, i32* @IF_VCO_BIAS, align 4
  %254 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %252, i32 %253, i32 8)
  %255 = load i32, i32* %4, align 4
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %256, %254
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %4, align 4
  store i32 352000000, i32* %5, align 4
  br label %259

259:                                              ; preds = %244, %239
  %260 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %261 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %260, i32 0, i32 3
  %262 = load i64, i64* %261, align 8
  %263 = icmp eq i64 %262, 43750000
  br i1 %263, label %264, label %279

264:                                              ; preds = %259
  %265 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %266 = load i32, i32* @IF_DIVVAL, align 4
  %267 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %265, i32 %266, i32 8)
  %268 = load i32, i32* %4, align 4
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %269, %267
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %4, align 4
  %272 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %273 = load i32, i32* @IF_VCO_BIAS, align 4
  %274 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %272, i32 %273, i32 8)
  %275 = load i32, i32* %4, align 4
  %276 = sext i32 %275 to i64
  %277 = add nsw i64 %276, %274
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %4, align 4
  store i32 350000000, i32* %5, align 4
  br label %279

279:                                              ; preds = %264, %259
  %280 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %281 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = icmp eq i64 %282, 36650000
  br i1 %283, label %284, label %299

284:                                              ; preds = %279
  %285 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %286 = load i32, i32* @IF_DIVVAL, align 4
  %287 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %285, i32 %286, i32 4)
  %288 = load i32, i32* %4, align 4
  %289 = sext i32 %288 to i64
  %290 = add nsw i64 %289, %287
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %4, align 4
  %292 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %293 = load i32, i32* @IF_VCO_BIAS, align 4
  %294 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %292, i32 %293, i32 8)
  %295 = load i32, i32* %4, align 4
  %296 = sext i32 %295 to i64
  %297 = add nsw i64 %296, %294
  %298 = trunc i64 %297 to i32
  store i32 %298, i32* %4, align 4
  store i32 366500000, i32* %5, align 4
  br label %299

299:                                              ; preds = %284, %279
  %300 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %301 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = icmp eq i64 %302, 36150000
  br i1 %303, label %304, label %319

304:                                              ; preds = %299
  %305 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %306 = load i32, i32* @IF_DIVVAL, align 4
  %307 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %305, i32 %306, i32 4)
  %308 = load i32, i32* %4, align 4
  %309 = sext i32 %308 to i64
  %310 = add nsw i64 %309, %307
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %4, align 4
  %312 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %313 = load i32, i32* @IF_VCO_BIAS, align 4
  %314 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %312, i32 %313, i32 8)
  %315 = load i32, i32* %4, align 4
  %316 = sext i32 %315 to i64
  %317 = add nsw i64 %316, %314
  %318 = trunc i64 %317 to i32
  store i32 %318, i32* %4, align 4
  store i32 361500000, i32* %5, align 4
  br label %319

319:                                              ; preds = %304, %299
  %320 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %321 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = icmp eq i64 %322, 36000000
  br i1 %323, label %324, label %339

324:                                              ; preds = %319
  %325 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %326 = load i32, i32* @IF_DIVVAL, align 4
  %327 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %325, i32 %326, i32 4)
  %328 = load i32, i32* %4, align 4
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %329, %327
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %4, align 4
  %332 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %333 = load i32, i32* @IF_VCO_BIAS, align 4
  %334 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %332, i32 %333, i32 8)
  %335 = load i32, i32* %4, align 4
  %336 = sext i32 %335 to i64
  %337 = add nsw i64 %336, %334
  %338 = trunc i64 %337 to i32
  store i32 %338, i32* %4, align 4
  store i32 360000000, i32* %5, align 4
  br label %339

339:                                              ; preds = %324, %319
  %340 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %341 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %340, i32 0, i32 3
  %342 = load i64, i64* %341, align 8
  %343 = icmp eq i64 %342, 35250000
  br i1 %343, label %344, label %359

344:                                              ; preds = %339
  %345 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %346 = load i32, i32* @IF_DIVVAL, align 4
  %347 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %345, i32 %346, i32 4)
  %348 = load i32, i32* %4, align 4
  %349 = sext i32 %348 to i64
  %350 = add nsw i64 %349, %347
  %351 = trunc i64 %350 to i32
  store i32 %351, i32* %4, align 4
  %352 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %353 = load i32, i32* @IF_VCO_BIAS, align 4
  %354 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %352, i32 %353, i32 8)
  %355 = load i32, i32* %4, align 4
  %356 = sext i32 %355 to i64
  %357 = add nsw i64 %356, %354
  %358 = trunc i64 %357 to i32
  store i32 %358, i32* %4, align 4
  store i32 352500000, i32* %5, align 4
  br label %359

359:                                              ; preds = %344, %339
  %360 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %361 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %360, i32 0, i32 3
  %362 = load i64, i64* %361, align 8
  %363 = icmp eq i64 %362, 34750000
  br i1 %363, label %364, label %379

364:                                              ; preds = %359
  %365 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %366 = load i32, i32* @IF_DIVVAL, align 4
  %367 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %365, i32 %366, i32 4)
  %368 = load i32, i32* %4, align 4
  %369 = sext i32 %368 to i64
  %370 = add nsw i64 %369, %367
  %371 = trunc i64 %370 to i32
  store i32 %371, i32* %4, align 4
  %372 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %373 = load i32, i32* @IF_VCO_BIAS, align 4
  %374 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %372, i32 %373, i32 8)
  %375 = load i32, i32* %4, align 4
  %376 = sext i32 %375 to i64
  %377 = add nsw i64 %376, %374
  %378 = trunc i64 %377 to i32
  store i32 %378, i32* %4, align 4
  store i32 347500000, i32* %5, align 4
  br label %379

379:                                              ; preds = %364, %359
  %380 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %381 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %380, i32 0, i32 3
  %382 = load i64, i64* %381, align 8
  %383 = icmp eq i64 %382, 6280000
  br i1 %383, label %384, label %399

384:                                              ; preds = %379
  %385 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %386 = load i32, i32* @IF_DIVVAL, align 4
  %387 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %385, i32 %386, i32 7)
  %388 = load i32, i32* %4, align 4
  %389 = sext i32 %388 to i64
  %390 = add nsw i64 %389, %387
  %391 = trunc i64 %390 to i32
  store i32 %391, i32* %4, align 4
  %392 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %393 = load i32, i32* @IF_VCO_BIAS, align 4
  %394 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %392, i32 %393, i32 8)
  %395 = load i32, i32* %4, align 4
  %396 = sext i32 %395 to i64
  %397 = add nsw i64 %396, %394
  %398 = trunc i64 %397 to i32
  store i32 %398, i32* %4, align 4
  store i32 376800000, i32* %5, align 4
  br label %399

399:                                              ; preds = %384, %379
  %400 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %401 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %400, i32 0, i32 3
  %402 = load i64, i64* %401, align 8
  %403 = icmp eq i64 %402, 5000000
  br i1 %403, label %404, label %419

404:                                              ; preds = %399
  %405 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %406 = load i32, i32* @IF_DIVVAL, align 4
  %407 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %405, i32 %406, i32 9)
  %408 = load i32, i32* %4, align 4
  %409 = sext i32 %408 to i64
  %410 = add nsw i64 %409, %407
  %411 = trunc i64 %410 to i32
  store i32 %411, i32* %4, align 4
  %412 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %413 = load i32, i32* @IF_VCO_BIAS, align 4
  %414 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %412, i32 %413, i32 8)
  %415 = load i32, i32* %4, align 4
  %416 = sext i32 %415 to i64
  %417 = add nsw i64 %416, %414
  %418 = trunc i64 %417 to i32
  store i32 %418, i32* %4, align 4
  store i32 360000000, i32* %5, align 4
  br label %419

419:                                              ; preds = %404, %399
  %420 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %421 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %420, i32 0, i32 3
  %422 = load i64, i64* %421, align 8
  %423 = icmp eq i64 %422, 4500000
  br i1 %423, label %424, label %439

424:                                              ; preds = %419
  %425 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %426 = load i32, i32* @IF_DIVVAL, align 4
  %427 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %425, i32 %426, i32 6)
  %428 = load i32, i32* %4, align 4
  %429 = sext i32 %428 to i64
  %430 = add nsw i64 %429, %427
  %431 = trunc i64 %430 to i32
  store i32 %431, i32* %4, align 4
  %432 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %433 = load i32, i32* @IF_VCO_BIAS, align 4
  %434 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %432, i32 %433, i32 8)
  %435 = load i32, i32* %4, align 4
  %436 = sext i32 %435 to i64
  %437 = add nsw i64 %436, %434
  %438 = trunc i64 %437 to i32
  store i32 %438, i32* %4, align 4
  store i32 360000000, i32* %5, align 4
  br label %439

439:                                              ; preds = %424, %419
  %440 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %441 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %440, i32 0, i32 3
  %442 = load i64, i64* %441, align 8
  %443 = icmp eq i64 %442, 4570000
  br i1 %443, label %444, label %459

444:                                              ; preds = %439
  %445 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %446 = load i32, i32* @IF_DIVVAL, align 4
  %447 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %445, i32 %446, i32 6)
  %448 = load i32, i32* %4, align 4
  %449 = sext i32 %448 to i64
  %450 = add nsw i64 %449, %447
  %451 = trunc i64 %450 to i32
  store i32 %451, i32* %4, align 4
  %452 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %453 = load i32, i32* @IF_VCO_BIAS, align 4
  %454 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %452, i32 %453, i32 8)
  %455 = load i32, i32* %4, align 4
  %456 = sext i32 %455 to i64
  %457 = add nsw i64 %456, %454
  %458 = trunc i64 %457 to i32
  store i32 %458, i32* %4, align 4
  store i32 365600000, i32* %5, align 4
  br label %459

459:                                              ; preds = %444, %439
  %460 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %461 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %460, i32 0, i32 3
  %462 = load i64, i64* %461, align 8
  %463 = icmp eq i64 %462, 4000000
  br i1 %463, label %464, label %479

464:                                              ; preds = %459
  %465 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %466 = load i32, i32* @IF_DIVVAL, align 4
  %467 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %465, i32 %466, i32 5)
  %468 = load i32, i32* %4, align 4
  %469 = sext i32 %468 to i64
  %470 = add nsw i64 %469, %467
  %471 = trunc i64 %470 to i32
  store i32 %471, i32* %4, align 4
  %472 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %473 = load i32, i32* @IF_VCO_BIAS, align 4
  %474 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %472, i32 %473, i32 8)
  %475 = load i32, i32* %4, align 4
  %476 = sext i32 %475 to i64
  %477 = add nsw i64 %476, %474
  %478 = trunc i64 %477 to i32
  store i32 %478, i32* %4, align 4
  store i32 360000000, i32* %5, align 4
  br label %479

479:                                              ; preds = %464, %459
  %480 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %481 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %480, i32 0, i32 3
  %482 = load i64, i64* %481, align 8
  %483 = icmp eq i64 %482, 57400000
  br i1 %483, label %484, label %499

484:                                              ; preds = %479
  %485 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %486 = load i32, i32* @IF_DIVVAL, align 4
  %487 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %485, i32 %486, i32 16)
  %488 = load i32, i32* %4, align 4
  %489 = sext i32 %488 to i64
  %490 = add nsw i64 %489, %487
  %491 = trunc i64 %490 to i32
  store i32 %491, i32* %4, align 4
  %492 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %493 = load i32, i32* @IF_VCO_BIAS, align 4
  %494 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %492, i32 %493, i32 8)
  %495 = load i32, i32* %4, align 4
  %496 = sext i32 %495 to i64
  %497 = add nsw i64 %496, %494
  %498 = trunc i64 %497 to i32
  store i32 %498, i32* %4, align 4
  store i32 344400000, i32* %5, align 4
  br label %499

499:                                              ; preds = %484, %479
  %500 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %501 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %500, i32 0, i32 3
  %502 = load i64, i64* %501, align 8
  %503 = icmp eq i64 %502, 44400000
  br i1 %503, label %504, label %519

504:                                              ; preds = %499
  %505 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %506 = load i32, i32* @IF_DIVVAL, align 4
  %507 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %505, i32 %506, i32 8)
  %508 = load i32, i32* %4, align 4
  %509 = sext i32 %508 to i64
  %510 = add nsw i64 %509, %507
  %511 = trunc i64 %510 to i32
  store i32 %511, i32* %4, align 4
  %512 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %513 = load i32, i32* @IF_VCO_BIAS, align 4
  %514 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %512, i32 %513, i32 8)
  %515 = load i32, i32* %4, align 4
  %516 = sext i32 %515 to i64
  %517 = add nsw i64 %516, %514
  %518 = trunc i64 %517 to i32
  store i32 %518, i32* %4, align 4
  store i32 355200000, i32* %5, align 4
  br label %519

519:                                              ; preds = %504, %499
  %520 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %521 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %520, i32 0, i32 3
  %522 = load i64, i64* %521, align 8
  %523 = icmp eq i64 %522, 44150000
  br i1 %523, label %524, label %539

524:                                              ; preds = %519
  %525 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %526 = load i32, i32* @IF_DIVVAL, align 4
  %527 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %525, i32 %526, i32 8)
  %528 = load i32, i32* %4, align 4
  %529 = sext i32 %528 to i64
  %530 = add nsw i64 %529, %527
  %531 = trunc i64 %530 to i32
  store i32 %531, i32* %4, align 4
  %532 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %533 = load i32, i32* @IF_VCO_BIAS, align 4
  %534 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %532, i32 %533, i32 8)
  %535 = load i32, i32* %4, align 4
  %536 = sext i32 %535 to i64
  %537 = add nsw i64 %536, %534
  %538 = trunc i64 %537 to i32
  store i32 %538, i32* %4, align 4
  store i32 353200000, i32* %5, align 4
  br label %539

539:                                              ; preds = %524, %519
  %540 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %541 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %540, i32 0, i32 3
  %542 = load i64, i64* %541, align 8
  %543 = icmp eq i64 %542, 37050000
  br i1 %543, label %544, label %559

544:                                              ; preds = %539
  %545 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %546 = load i32, i32* @IF_DIVVAL, align 4
  %547 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %545, i32 %546, i32 4)
  %548 = load i32, i32* %4, align 4
  %549 = sext i32 %548 to i64
  %550 = add nsw i64 %549, %547
  %551 = trunc i64 %550 to i32
  store i32 %551, i32* %4, align 4
  %552 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %553 = load i32, i32* @IF_VCO_BIAS, align 4
  %554 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %552, i32 %553, i32 8)
  %555 = load i32, i32* %4, align 4
  %556 = sext i32 %555 to i64
  %557 = add nsw i64 %556, %554
  %558 = trunc i64 %557 to i32
  store i32 %558, i32* %4, align 4
  store i32 370500000, i32* %5, align 4
  br label %559

559:                                              ; preds = %544, %539
  %560 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %561 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %560, i32 0, i32 3
  %562 = load i64, i64* %561, align 8
  %563 = icmp eq i64 %562, 36550000
  br i1 %563, label %564, label %579

564:                                              ; preds = %559
  %565 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %566 = load i32, i32* @IF_DIVVAL, align 4
  %567 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %565, i32 %566, i32 4)
  %568 = load i32, i32* %4, align 4
  %569 = sext i32 %568 to i64
  %570 = add nsw i64 %569, %567
  %571 = trunc i64 %570 to i32
  store i32 %571, i32* %4, align 4
  %572 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %573 = load i32, i32* @IF_VCO_BIAS, align 4
  %574 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %572, i32 %573, i32 8)
  %575 = load i32, i32* %4, align 4
  %576 = sext i32 %575 to i64
  %577 = add nsw i64 %576, %574
  %578 = trunc i64 %577 to i32
  store i32 %578, i32* %4, align 4
  store i32 365500000, i32* %5, align 4
  br label %579

579:                                              ; preds = %564, %559
  %580 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %581 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %580, i32 0, i32 3
  %582 = load i64, i64* %581, align 8
  %583 = icmp eq i64 %582, 36125000
  br i1 %583, label %584, label %599

584:                                              ; preds = %579
  %585 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %586 = load i32, i32* @IF_DIVVAL, align 4
  %587 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %585, i32 %586, i32 4)
  %588 = load i32, i32* %4, align 4
  %589 = sext i32 %588 to i64
  %590 = add nsw i64 %589, %587
  %591 = trunc i64 %590 to i32
  store i32 %591, i32* %4, align 4
  %592 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %593 = load i32, i32* @IF_VCO_BIAS, align 4
  %594 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %592, i32 %593, i32 8)
  %595 = load i32, i32* %4, align 4
  %596 = sext i32 %595 to i64
  %597 = add nsw i64 %596, %594
  %598 = trunc i64 %597 to i32
  store i32 %598, i32* %4, align 4
  store i32 361250000, i32* %5, align 4
  br label %599

599:                                              ; preds = %584, %579
  %600 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %601 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %600, i32 0, i32 3
  %602 = load i64, i64* %601, align 8
  %603 = icmp eq i64 %602, 6000000
  br i1 %603, label %604, label %619

604:                                              ; preds = %599
  %605 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %606 = load i32, i32* @IF_DIVVAL, align 4
  %607 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %605, i32 %606, i32 7)
  %608 = load i32, i32* %4, align 4
  %609 = sext i32 %608 to i64
  %610 = add nsw i64 %609, %607
  %611 = trunc i64 %610 to i32
  store i32 %611, i32* %4, align 4
  %612 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %613 = load i32, i32* @IF_VCO_BIAS, align 4
  %614 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %612, i32 %613, i32 8)
  %615 = load i32, i32* %4, align 4
  %616 = sext i32 %615 to i64
  %617 = add nsw i64 %616, %614
  %618 = trunc i64 %617 to i32
  store i32 %618, i32* %4, align 4
  store i32 360000000, i32* %5, align 4
  br label %619

619:                                              ; preds = %604, %599
  %620 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %621 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %620, i32 0, i32 3
  %622 = load i64, i64* %621, align 8
  %623 = icmp eq i64 %622, 5400000
  br i1 %623, label %624, label %639

624:                                              ; preds = %619
  %625 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %626 = load i32, i32* @IF_DIVVAL, align 4
  %627 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %625, i32 %626, i32 7)
  %628 = load i32, i32* %4, align 4
  %629 = sext i32 %628 to i64
  %630 = add nsw i64 %629, %627
  %631 = trunc i64 %630 to i32
  store i32 %631, i32* %4, align 4
  %632 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %633 = load i32, i32* @IF_VCO_BIAS, align 4
  %634 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %632, i32 %633, i32 12)
  %635 = load i32, i32* %4, align 4
  %636 = sext i32 %635 to i64
  %637 = add nsw i64 %636, %634
  %638 = trunc i64 %637 to i32
  store i32 %638, i32* %4, align 4
  store i32 324000000, i32* %5, align 4
  br label %639

639:                                              ; preds = %624, %619
  %640 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %641 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %640, i32 0, i32 3
  %642 = load i64, i64* %641, align 8
  %643 = icmp eq i64 %642, 5380000
  br i1 %643, label %644, label %659

644:                                              ; preds = %639
  %645 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %646 = load i32, i32* @IF_DIVVAL, align 4
  %647 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %645, i32 %646, i32 7)
  %648 = load i32, i32* %4, align 4
  %649 = sext i32 %648 to i64
  %650 = add nsw i64 %649, %647
  %651 = trunc i64 %650 to i32
  store i32 %651, i32* %4, align 4
  %652 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %653 = load i32, i32* @IF_VCO_BIAS, align 4
  %654 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %652, i32 %653, i32 12)
  %655 = load i32, i32* %4, align 4
  %656 = sext i32 %655 to i64
  %657 = add nsw i64 %656, %654
  %658 = trunc i64 %657 to i32
  store i32 %658, i32* %4, align 4
  store i32 322800000, i32* %5, align 4
  br label %659

659:                                              ; preds = %644, %639
  %660 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %661 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %660, i32 0, i32 3
  %662 = load i64, i64* %661, align 8
  %663 = icmp eq i64 %662, 5200000
  br i1 %663, label %664, label %679

664:                                              ; preds = %659
  %665 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %666 = load i32, i32* @IF_DIVVAL, align 4
  %667 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %665, i32 %666, i32 9)
  %668 = load i32, i32* %4, align 4
  %669 = sext i32 %668 to i64
  %670 = add nsw i64 %669, %667
  %671 = trunc i64 %670 to i32
  store i32 %671, i32* %4, align 4
  %672 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %673 = load i32, i32* @IF_VCO_BIAS, align 4
  %674 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %672, i32 %673, i32 8)
  %675 = load i32, i32* %4, align 4
  %676 = sext i32 %675 to i64
  %677 = add nsw i64 %676, %674
  %678 = trunc i64 %677 to i32
  store i32 %678, i32* %4, align 4
  store i32 374400000, i32* %5, align 4
  br label %679

679:                                              ; preds = %664, %659
  %680 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %681 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %680, i32 0, i32 3
  %682 = load i64, i64* %681, align 8
  %683 = icmp eq i64 %682, 4900000
  br i1 %683, label %684, label %699

684:                                              ; preds = %679
  %685 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %686 = load i32, i32* @IF_DIVVAL, align 4
  %687 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %685, i32 %686, i32 9)
  %688 = load i32, i32* %4, align 4
  %689 = sext i32 %688 to i64
  %690 = add nsw i64 %689, %687
  %691 = trunc i64 %690 to i32
  store i32 %691, i32* %4, align 4
  %692 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %693 = load i32, i32* @IF_VCO_BIAS, align 4
  %694 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %692, i32 %693, i32 8)
  %695 = load i32, i32* %4, align 4
  %696 = sext i32 %695 to i64
  %697 = add nsw i64 %696, %694
  %698 = trunc i64 %697 to i32
  store i32 %698, i32* %4, align 4
  store i32 352800000, i32* %5, align 4
  br label %699

699:                                              ; preds = %684, %679
  %700 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %701 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %700, i32 0, i32 3
  %702 = load i64, i64* %701, align 8
  %703 = icmp eq i64 %702, 4400000
  br i1 %703, label %704, label %719

704:                                              ; preds = %699
  %705 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %706 = load i32, i32* @IF_DIVVAL, align 4
  %707 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %705, i32 %706, i32 6)
  %708 = load i32, i32* %4, align 4
  %709 = sext i32 %708 to i64
  %710 = add nsw i64 %709, %707
  %711 = trunc i64 %710 to i32
  store i32 %711, i32* %4, align 4
  %712 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %713 = load i32, i32* @IF_VCO_BIAS, align 4
  %714 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %712, i32 %713, i32 8)
  %715 = load i32, i32* %4, align 4
  %716 = sext i32 %715 to i64
  %717 = add nsw i64 %716, %714
  %718 = trunc i64 %717 to i32
  store i32 %718, i32* %4, align 4
  store i32 352000000, i32* %5, align 4
  br label %719

719:                                              ; preds = %704, %699
  %720 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %721 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %720, i32 0, i32 3
  %722 = load i64, i64* %721, align 8
  %723 = icmp eq i64 %722, 4063000
  br i1 %723, label %724, label %739

724:                                              ; preds = %719
  %725 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %726 = load i32, i32* @IF_DIVVAL, align 4
  %727 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %725, i32 %726, i32 5)
  %728 = load i32, i32* %4, align 4
  %729 = sext i32 %728 to i64
  %730 = add nsw i64 %729, %727
  %731 = trunc i64 %730 to i32
  store i32 %731, i32* %4, align 4
  %732 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %733 = load i32, i32* @IF_VCO_BIAS, align 4
  %734 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %732, i32 %733, i32 8)
  %735 = load i32, i32* %4, align 4
  %736 = sext i32 %735 to i64
  %737 = add nsw i64 %736, %734
  %738 = trunc i64 %737 to i32
  store i32 %738, i32* %4, align 4
  store i32 365670000, i32* %5, align 4
  br label %739

739:                                              ; preds = %724, %719
  br label %740

740:                                              ; preds = %739, %214, %209
  %741 = load i32, i32* %5, align 4
  %742 = sext i32 %741 to i64
  %743 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %744 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %743, i32 0, i32 0
  %745 = load i64, i64* %744, align 8
  %746 = load i32, i32* %6, align 4
  %747 = sext i32 %746 to i64
  %748 = mul i64 %745, %747
  %749 = udiv i64 %748, 2
  %750 = udiv i64 %742, %749
  %751 = trunc i64 %750 to i32
  store i32 %751, i32* %7, align 4
  %752 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %753 = load i32, i32* @CHCAL_INT_MOD_IF, align 4
  %754 = load i32, i32* %7, align 4
  %755 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %752, i32 %753, i32 %754)
  %756 = load i32, i32* %4, align 4
  %757 = sext i32 %756 to i64
  %758 = add nsw i64 %757, %755
  %759 = trunc i64 %758 to i32
  store i32 %759, i32* %4, align 4
  %760 = load i32, i32* %5, align 4
  %761 = sdiv i32 %760, 1000
  %762 = sext i32 %761 to i64
  %763 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %764 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %763, i32 0, i32 0
  %765 = load i64, i64* %764, align 8
  %766 = udiv i64 %765, 1000
  %767 = load i32, i32* %6, align 4
  %768 = sext i32 %767 to i64
  %769 = mul i64 %766, %768
  %770 = udiv i64 %769, 2
  %771 = load i32, i32* %7, align 4
  %772 = sext i32 %771 to i64
  %773 = mul i64 %770, %772
  %774 = sub i64 %762, %773
  %775 = mul i64 65536, %774
  %776 = trunc i64 %775 to i32
  store i32 %776, i32* %8, align 4
  %777 = load i32, i32* %8, align 4
  %778 = sext i32 %777 to i64
  %779 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %3, align 8
  %780 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %779, i32 0, i32 0
  %781 = load i64, i64* %780, align 8
  %782 = load i32, i32* %6, align 4
  %783 = sext i32 %782 to i64
  %784 = mul i64 %781, %783
  %785 = udiv i64 %784, 2
  %786 = udiv i64 %785, 1000
  %787 = udiv i64 %778, %786
  %788 = trunc i64 %787 to i32
  store i32 %788, i32* %8, align 4
  %789 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %790 = load i32, i32* @CHCAL_FRAC_MOD_IF, align 4
  %791 = load i32, i32* %8, align 4
  %792 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %789, i32 %790, i32 %791)
  %793 = load i32, i32* %4, align 4
  %794 = sext i32 %793 to i64
  %795 = add nsw i64 %794, %792
  %796 = trunc i64 %795 to i32
  store i32 %796, i32* %4, align 4
  %797 = load i32, i32* %4, align 4
  ret i32 %797
}

declare dso_local i64 @MXL_ControlWrite(%struct.dvb_frontend*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
