; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_fill_default_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_fill_default_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_filter_specification = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ch_filter_specification*)* @fill_default_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_default_mask(%struct.ch_filter_specification* %0) #0 {
  %2 = alloca %struct.ch_filter_specification*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ch_filter_specification* %0, %struct.ch_filter_specification** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %9 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 13
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %15 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 13
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %21 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 13
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, -1
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %19, %13, %1
  %26 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %27 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 12
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %33 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 12
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %39 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, -1
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %31, %25
  %44 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %45 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 11
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %51 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %57 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, -1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %49, %43
  %62 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %63 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 10
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %69 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %75 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, -1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %67, %61
  %80 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %81 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 9
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %87 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %93 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, -1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %85, %79
  %98 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %99 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 8
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %97
  %104 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %105 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %111 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, -1
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %109, %103, %97
  %116 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %117 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %115
  %122 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %123 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %129 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, -1
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %121, %115
  %134 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %135 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %133
  %140 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %141 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %147 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, -1
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %145, %139, %133
  %152 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %153 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %151
  %158 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %159 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %165 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, -1
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %163, %157, %151
  %170 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %171 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %169
  %176 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %177 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %175
  %182 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %183 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, -1
  store i32 %186, i32* %184, align 8
  br label %187

187:                                              ; preds = %181, %175, %169
  store i32 0, i32* %7, align 4
  br label %188

188:                                              ; preds = %237, %187
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %191 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @ARRAY_SIZE(i32* %193)
  %195 = icmp ult i32 %189, %194
  br i1 %195, label %196, label %240

196:                                              ; preds = %188
  %197 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %198 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %3, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %3, align 4
  %207 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %208 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %4, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %4, align 4
  %217 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %218 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %7, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %5, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %5, align 4
  %227 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %228 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %7, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %6, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %6, align 4
  br label %237

237:                                              ; preds = %196
  %238 = load i32, i32* %7, align 4
  %239 = add i32 %238, 1
  store i32 %239, i32* %7, align 4
  br label %188

240:                                              ; preds = %188
  %241 = load i32, i32* %3, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %252

243:                                              ; preds = %240
  %244 = load i32, i32* %4, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %252, label %246

246:                                              ; preds = %243
  %247 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %248 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = call i32 @memset(i32* %250, i32 -1, i32 8)
  br label %252

252:                                              ; preds = %246, %243, %240
  %253 = load i32, i32* %5, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %252
  %256 = load i32, i32* %6, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %255
  %259 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %260 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = call i32 @memset(i32* %262, i32 -1, i32 8)
  br label %264

264:                                              ; preds = %258, %255, %252
  %265 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %266 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %280

270:                                              ; preds = %264
  %271 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %272 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %270
  %277 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %278 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 3
  store i32 -1, i32* %279, align 4
  br label %280

280:                                              ; preds = %276, %270, %264
  %281 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %282 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %296

286:                                              ; preds = %280
  %287 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %288 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %286
  %293 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %2, align 8
  %294 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 2
  store i32 -1, i32* %295, align 8
  br label %296

296:                                              ; preds = %292, %286, %280
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
