; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_is_filter_exact_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_is_filter_exact_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.tp_params }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ch_filter_specification = type { %struct.TYPE_6__, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@VNIC_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_filter_exact_match(%struct.adapter* %0, %struct.ch_filter_specification* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.ch_filter_specification*, align 8
  %6 = alloca %struct.tp_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.ch_filter_specification* %1, %struct.ch_filter_specification** %5, align 8
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.tp_params* %11, %struct.tp_params** %6, align 8
  %12 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %13 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = call i32 @is_hashfilter(%struct.adapter* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %325

19:                                               ; preds = %2
  %20 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %21 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 15
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %325

26:                                               ; preds = %19
  %27 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %28 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %26
  %32 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %33 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AF_INET6, align 4
  %37 = call i64 @is_inaddr_any(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %41 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 14
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AF_INET6, align 4
  %45 = call i32 @is_addr_all_mask(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39, %31
  store i32 0, i32* %3, align 4
  br label %325

48:                                               ; preds = %39
  %49 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %50 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @AF_INET6, align 4
  %54 = call i64 @is_inaddr_any(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  %57 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %58 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 13
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @AF_INET6, align 4
  %62 = call i32 @is_addr_all_mask(i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %56, %48
  store i32 0, i32* %3, align 4
  br label %325

65:                                               ; preds = %56
  br label %101

66:                                               ; preds = %26
  %67 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %68 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AF_INET, align 4
  %72 = call i64 @is_inaddr_any(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %66
  %75 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %76 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 14
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @AF_INET, align 4
  %80 = call i32 @is_addr_all_mask(i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %74, %66
  store i32 0, i32* %3, align 4
  br label %325

83:                                               ; preds = %74
  %84 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %85 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @AF_INET, align 4
  %89 = call i64 @is_inaddr_any(i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %83
  %92 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %93 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 13
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @AF_INET, align 4
  %97 = call i32 @is_addr_all_mask(i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91, %83
  store i32 0, i32* %3, align 4
  br label %325

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %65
  %102 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %103 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %109 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 65535
  br i1 %112, label %113, label %114

113:                                              ; preds = %107, %101
  store i32 0, i32* %3, align 4
  br label %325

114:                                              ; preds = %107
  %115 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %116 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %122 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 65535
  br i1 %125, label %126, label %127

126:                                              ; preds = %120, %114
  store i32 0, i32* %3, align 4
  br label %325

127:                                              ; preds = %120
  %128 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %129 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %127
  %133 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %134 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 12
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %139 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %137, %140
  %142 = load i32, i32* %8, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %132, %127
  %145 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %146 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %144
  %150 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %151 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 11
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %156 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %154, %157
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %149, %144
  %162 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %163 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp sge i32 %164, 0
  br i1 %165, label %166, label %200

166:                                              ; preds = %161
  %167 = load %struct.adapter*, %struct.adapter** %4, align 8
  %168 = getelementptr inbounds %struct.adapter, %struct.adapter* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @VNIC_F, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %166
  %176 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %177 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 10
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %182 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 %180, %183
  %185 = load i32, i32* %8, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %8, align 4
  br label %199

187:                                              ; preds = %166
  %188 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %189 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 9
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %194 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 %192, %195
  %197 = load i32, i32* %8, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %8, align 4
  br label %199

199:                                              ; preds = %187, %175
  br label %200

200:                                              ; preds = %199, %161
  %201 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %202 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = icmp sge i32 %203, 0
  br i1 %204, label %205, label %217

205:                                              ; preds = %200
  %206 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %207 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 8
  %209 = load i64, i64* %208, align 8
  %210 = trunc i64 %209 to i32
  %211 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %212 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = shl i32 %210, %213
  %215 = load i32, i32* %8, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %205, %200
  %218 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %219 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 4
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %234

222:                                              ; preds = %217
  %223 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %224 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 7
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %229 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 4
  %231 = shl i32 %227, %230
  %232 = load i32, i32* %8, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %8, align 4
  br label %234

234:                                              ; preds = %222, %217
  %235 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %236 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 4
  %238 = icmp sge i32 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %234
  %240 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %241 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 6
  %243 = load i64, i64* %242, align 8
  %244 = trunc i64 %243 to i32
  %245 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %246 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %245, i32 0, i32 7
  %247 = load i32, i32* %246, align 4
  %248 = shl i32 %244, %247
  %249 = load i32, i32* %8, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %8, align 4
  br label %251

251:                                              ; preds = %239, %234
  %252 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %253 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %252, i32 0, i32 8
  %254 = load i32, i32* %253, align 4
  %255 = icmp sge i32 %254, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %251
  %257 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %258 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 5
  %260 = load i64, i64* %259, align 8
  %261 = trunc i64 %260 to i32
  %262 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %263 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %262, i32 0, i32 8
  %264 = load i32, i32* %263, align 4
  %265 = shl i32 %261, %264
  %266 = load i32, i32* %8, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %8, align 4
  br label %268

268:                                              ; preds = %256, %251
  %269 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %270 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %269, i32 0, i32 9
  %271 = load i32, i32* %270, align 4
  %272 = icmp sge i32 %271, 0
  br i1 %272, label %273, label %285

273:                                              ; preds = %268
  %274 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %275 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 4
  %277 = load i64, i64* %276, align 8
  %278 = trunc i64 %277 to i32
  %279 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %280 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %279, i32 0, i32 9
  %281 = load i32, i32* %280, align 4
  %282 = shl i32 %278, %281
  %283 = load i32, i32* %8, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %8, align 4
  br label %285

285:                                              ; preds = %273, %268
  %286 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %287 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %286, i32 0, i32 10
  %288 = load i32, i32* %287, align 4
  %289 = icmp sge i32 %288, 0
  br i1 %289, label %290, label %302

290:                                              ; preds = %285
  %291 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %292 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = trunc i64 %294 to i32
  %296 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %297 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %296, i32 0, i32 10
  %298 = load i32, i32* %297, align 4
  %299 = shl i32 %295, %298
  %300 = load i32, i32* %8, align 4
  %301 = or i32 %300, %299
  store i32 %301, i32* %8, align 4
  br label %302

302:                                              ; preds = %290, %285
  %303 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %304 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %303, i32 0, i32 11
  %305 = load i32, i32* %304, align 4
  %306 = icmp sge i32 %305, 0
  br i1 %306, label %307, label %319

307:                                              ; preds = %302
  %308 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %309 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = trunc i64 %311 to i32
  %313 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %314 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %313, i32 0, i32 11
  %315 = load i32, i32* %314, align 4
  %316 = shl i32 %312, %315
  %317 = load i32, i32* %8, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %8, align 4
  br label %319

319:                                              ; preds = %307, %302
  %320 = load i32, i32* %8, align 4
  %321 = load i32, i32* %7, align 4
  %322 = icmp ne i32 %320, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %319
  store i32 0, i32* %3, align 4
  br label %325

324:                                              ; preds = %319
  store i32 1, i32* %3, align 4
  br label %325

325:                                              ; preds = %324, %323, %126, %113, %99, %82, %64, %47, %25, %18
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

declare dso_local i32 @is_hashfilter(%struct.adapter*) #1

declare dso_local i64 @is_inaddr_any(i32, i32) #1

declare dso_local i32 @is_addr_all_mask(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
