; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_qm1d1c0042.c_qm1d1c0042_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_qm1d1c0042.c_qm1d1c0042_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_3__, %struct.qm1d1c0042_state* }
%struct.TYPE_3__ = type { i32 }
%struct.qm1d1c0042_state = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32 }

@conv_table = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @qm1d1c0042_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm1d1c0042_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.qm1d1c0042_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %14, align 8
  store %struct.qm1d1c0042_state* %15, %struct.qm1d1c0042_state** %4, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %21 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 240
  store i32 %25, i32* %23, align 4
  %26 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %27 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 8
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, 9
  store i32 %31, i32* %29, align 4
  %32 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %33 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 19
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 159
  store i32 %37, i32* %35, align 4
  %38 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %39 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 19
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, 32
  store i32 %43, i32* %41, align 4
  %44 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %45 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 15
  store i32 %49, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %96, %1
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 8
  br i1 %52, label %53, label %99

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = load i32**, i32*** @conv_table, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %54, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %53
  %64 = load i32, i32* %5, align 4
  %65 = load i32**, i32*** @conv_table, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %65, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %64, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %63
  %75 = load i32**, i32*** @conv_table, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 7
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32**, i32*** @conv_table, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 4
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %99

95:                                               ; preds = %63, %53
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %50

99:                                               ; preds = %74, %50
  %100 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @reg_write(%struct.qm1d1c0042_state* %100, i32 2, i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %2, align 4
  br label %404

107:                                              ; preds = %99
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %110 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sdiv i32 %112, 2
  %114 = add nsw i32 %108, %113
  %115 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %116 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sdiv i32 %114, %118
  store i32 %119, i32* %10, align 4
  %120 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %121 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 6
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 64
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %10, align 4
  %127 = sub nsw i32 %126, 12
  %128 = sdiv i32 %127, 4
  %129 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %130 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 6
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %128
  store i32 %134, i32* %132, align 4
  %135 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %136 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %137 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 6
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @reg_write(%struct.qm1d1c0042_state* %135, i32 6, i32 %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %107
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %2, align 4
  br label %404

146:                                              ; preds = %107
  %147 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %148 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 7
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 240
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = sub nsw i32 %154, 12
  %156 = sdiv i32 %155, 4
  %157 = add nsw i32 %156, 1
  %158 = mul nsw i32 4, %157
  %159 = sub nsw i32 %153, %158
  %160 = sub nsw i32 %159, 5
  %161 = and i32 %160, 15
  %162 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %163 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 7
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %161
  store i32 %167, i32* %165, align 4
  %168 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %169 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %170 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 7
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @reg_write(%struct.qm1d1c0042_state* %168, i32 7, i32 %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %146
  %178 = load i32, i32* %7, align 4
  store i32 %178, i32* %2, align 4
  br label %404

179:                                              ; preds = %146
  %180 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %181 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 8
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %8, align 4
  %185 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %186 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %179
  %191 = load i32, i32* %8, align 4
  %192 = and i32 %191, 240
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = or i32 %193, 2
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %190, %179
  %196 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @reg_write(%struct.qm1d1c0042_state* %196, i32 8, i32 %197)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = load i32, i32* %7, align 4
  store i32 %202, i32* %2, align 4
  br label %404

203:                                              ; preds = %195
  %204 = load i32, i32* %5, align 4
  %205 = shl i32 %204, 20
  %206 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %207 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i64 @div64_s64(i32 %205, i32 %209)
  %211 = load i32, i32* %10, align 4
  %212 = shl i32 %211, 20
  %213 = sext i32 %212 to i64
  %214 = sub nsw i64 %210, %213
  store i64 %214, i64* %12, align 8
  %215 = load i64, i64* %12, align 8
  %216 = icmp sge i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %203
  %218 = load i64, i64* %12, align 8
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %11, align 4
  br label %224

220:                                              ; preds = %203
  %221 = load i64, i64* %12, align 8
  %222 = add nsw i64 4194304, %221
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %11, align 4
  br label %224

224:                                              ; preds = %220, %217
  %225 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %226 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 9
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, 192
  store i32 %230, i32* %228, align 4
  %231 = load i32, i32* %11, align 4
  %232 = ashr i32 %231, 16
  %233 = and i32 %232, 63
  %234 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %235 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 9
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %233
  store i32 %239, i32* %237, align 4
  %240 = load i32, i32* %11, align 4
  %241 = ashr i32 %240, 8
  %242 = and i32 %241, 255
  %243 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %244 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 10
  store i32 %242, i32* %246, align 4
  %247 = load i32, i32* %11, align 4
  %248 = and i32 %247, 255
  %249 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %250 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 11
  store i32 %248, i32* %252, align 4
  %253 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %254 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %255 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 9
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @reg_write(%struct.qm1d1c0042_state* %253, i32 9, i32 %258)
  store i32 %259, i32* %7, align 4
  %260 = load i32, i32* %7, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %224
  %263 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %264 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %265 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 10
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @reg_write(%struct.qm1d1c0042_state* %263, i32 10, i32 %268)
  store i32 %269, i32* %7, align 4
  br label %270

270:                                              ; preds = %262, %224
  %271 = load i32, i32* %7, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %281

273:                                              ; preds = %270
  %274 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %275 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %276 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 11
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @reg_write(%struct.qm1d1c0042_state* %274, i32 11, i32 %279)
  store i32 %280, i32* %7, align 4
  br label %281

281:                                              ; preds = %273, %270
  %282 = load i32, i32* %7, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = load i32, i32* %7, align 4
  store i32 %285, i32* %2, align 4
  br label %404

286:                                              ; preds = %281
  %287 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %288 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %305, label %292

292:                                              ; preds = %286
  %293 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %294 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %295 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 19
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @reg_write(%struct.qm1d1c0042_state* %293, i32 19, i32 %298)
  store i32 %299, i32* %7, align 4
  %300 = load i32, i32* %7, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %292
  %303 = load i32, i32* %7, align 4
  store i32 %303, i32* %2, align 4
  br label %404

304:                                              ; preds = %292
  br label %305

305:                                              ; preds = %304, %286
  %306 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %307 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  %311 = zext i1 %310 to i64
  %312 = select i1 %310, i32 63, i32 127
  store i32 %312, i32* %9, align 4
  %313 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %314 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 12
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %9, align 4
  %319 = and i32 %317, %318
  store i32 %319, i32* %8, align 4
  %320 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %321 = load i32, i32* %8, align 4
  %322 = call i32 @reg_write(%struct.qm1d1c0042_state* %320, i32 12, i32 %321)
  store i32 %322, i32* %7, align 4
  %323 = load i32, i32* %7, align 4
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %305
  %326 = load i32, i32* %7, align 4
  store i32 %326, i32* %2, align 4
  br label %404

327:                                              ; preds = %305
  %328 = call i32 @usleep_range(i32 2000, i32 3000)
  %329 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %330 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 12
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %9, align 4
  %335 = xor i32 %334, -1
  %336 = or i32 %333, %335
  store i32 %336, i32* %8, align 4
  %337 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %338 = load i32, i32* %8, align 4
  %339 = call i32 @reg_write(%struct.qm1d1c0042_state* %337, i32 12, i32 %338)
  store i32 %339, i32* %7, align 4
  %340 = load i32, i32* %7, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %327
  %343 = load i32, i32* %7, align 4
  store i32 %343, i32* %2, align 4
  br label %404

344:                                              ; preds = %327
  %345 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %346 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %344
  %351 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %352 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @msleep(i32 %354)
  br label %377

356:                                              ; preds = %344
  %357 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %358 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %357, i32 0, i32 0
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 3
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, 1
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %356
  %365 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %366 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @msleep(i32 %368)
  br label %376

370:                                              ; preds = %356
  %371 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %372 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @msleep(i32 %374)
  br label %376

376:                                              ; preds = %370, %364
  br label %377

377:                                              ; preds = %376, %350
  %378 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %379 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %403

383:                                              ; preds = %377
  %384 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %385 = call i32 @reg_write(%struct.qm1d1c0042_state* %384, i32 8, i32 9)
  store i32 %385, i32* %7, align 4
  %386 = load i32, i32* %7, align 4
  %387 = icmp slt i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %383
  %389 = load i32, i32* %7, align 4
  store i32 %389, i32* %2, align 4
  br label %404

390:                                              ; preds = %383
  %391 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %392 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %4, align 8
  %393 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %392, i32 0, i32 0
  %394 = load i32*, i32** %393, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 19
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @reg_write(%struct.qm1d1c0042_state* %391, i32 19, i32 %396)
  store i32 %397, i32* %7, align 4
  %398 = load i32, i32* %7, align 4
  %399 = icmp slt i32 %398, 0
  br i1 %399, label %400, label %402

400:                                              ; preds = %390
  %401 = load i32, i32* %7, align 4
  store i32 %401, i32* %2, align 4
  br label %404

402:                                              ; preds = %390
  br label %403

403:                                              ; preds = %402, %377
  store i32 0, i32* %2, align 4
  br label %404

404:                                              ; preds = %403, %400, %388, %342, %325, %302, %284, %201, %177, %144, %105
  %405 = load i32, i32* %2, align 4
  ret i32 %405
}

declare dso_local i32 @reg_write(%struct.qm1d1c0042_state*, i32, i32) #1

declare dso_local i64 @div64_s64(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
