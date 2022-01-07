; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_hash_filter_ntuple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_hash_filter_ntuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_filter_specification = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { i32 }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tp_params }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FT_VLAN_VLD_F = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@USE_ENC_IDX_F = common dso_local global i32 0, align 4
@VNIC_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ch_filter_specification*, %struct.net_device*)* @hash_filter_ntuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_filter_ntuple(%struct.ch_filter_specification* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.ch_filter_specification*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.tp_params*, align 8
  %7 = alloca i32, align 4
  store %struct.ch_filter_specification* %0, %struct.ch_filter_specification** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.adapter* @netdev2adap(%struct.net_device* %8)
  store %struct.adapter* %9, %struct.adapter** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %5, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.tp_params* %12, %struct.tp_params** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %14 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %19 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load i32, i32* @FT_VLAN_VLD_F, align 4
  %25 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %26 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %24, %28
  %30 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %31 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %29, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %23, %17, %2
  %37 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %38 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %43 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %49 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 14
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %54 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %52, %55
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %47, %41, %36
  %60 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %61 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %59
  %65 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %66 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 13
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %64
  %71 = load i64, i64* @IPPROTO_TCP, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %74 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %72, %75
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %91

79:                                               ; preds = %64
  %80 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %81 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 13
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %86 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %84, %87
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %79, %70
  br label %92

92:                                               ; preds = %91, %59
  %93 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %94 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %92
  %98 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %99 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 7
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %97
  %104 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %105 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 12
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %110 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %108, %111
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %103, %97, %92
  %116 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %117 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %209

120:                                              ; preds = %115
  %121 = load %struct.adapter*, %struct.adapter** %5, align 8
  %122 = getelementptr inbounds %struct.adapter, %struct.adapter* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @USE_ENC_IDX_F, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %152

129:                                              ; preds = %120
  %130 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %131 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %129
  %136 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %137 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 16
  %141 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %142 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %140, %144
  %146 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %147 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 %145, %148
  %150 = load i32, i32* %7, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %7, align 4
  br label %208

152:                                              ; preds = %129, %120
  %153 = load %struct.adapter*, %struct.adapter** %5, align 8
  %154 = getelementptr inbounds %struct.adapter, %struct.adapter* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @VNIC_F, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %190

161:                                              ; preds = %152
  %162 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %163 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %161
  %168 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %169 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 16
  %173 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %174 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = shl i32 %176, 13
  %178 = or i32 %172, %177
  %179 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %180 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %178, %182
  %184 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %185 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 %183, %186
  %188 = load i32, i32* %7, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %7, align 4
  br label %207

190:                                              ; preds = %161, %152
  %191 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %192 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = shl i32 %194, 16
  %196 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %197 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %195, %199
  %201 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %202 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %200, %203
  %205 = load i32, i32* %7, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %7, align 4
  br label %207

207:                                              ; preds = %190, %167
  br label %208

208:                                              ; preds = %207, %135
  br label %209

209:                                              ; preds = %208, %115
  %210 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %211 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  %213 = icmp sge i32 %212, 0
  br i1 %213, label %214, label %232

214:                                              ; preds = %209
  %215 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %216 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 4
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %232

220:                                              ; preds = %214
  %221 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %222 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 11
  %224 = load i64, i64* %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %227 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 4
  %229 = shl i32 %225, %228
  %230 = load i32, i32* %7, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %7, align 4
  br label %232

232:                                              ; preds = %220, %214, %209
  %233 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %234 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 4
  %236 = icmp sge i32 %235, 0
  br i1 %236, label %237, label %255

237:                                              ; preds = %232
  %238 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %239 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %255

243:                                              ; preds = %237
  %244 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %245 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 10
  %247 = load i64, i64* %246, align 8
  %248 = trunc i64 %247 to i32
  %249 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %250 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %249, i32 0, i32 7
  %251 = load i32, i32* %250, align 4
  %252 = shl i32 %248, %251
  %253 = load i32, i32* %7, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %7, align 4
  br label %255

255:                                              ; preds = %243, %237, %232
  %256 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %257 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %256, i32 0, i32 8
  %258 = load i32, i32* %257, align 4
  %259 = icmp sge i32 %258, 0
  br i1 %259, label %260, label %278

260:                                              ; preds = %255
  %261 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %262 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %278

266:                                              ; preds = %260
  %267 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %268 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 9
  %270 = load i64, i64* %269, align 8
  %271 = trunc i64 %270 to i32
  %272 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %273 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %272, i32 0, i32 8
  %274 = load i32, i32* %273, align 4
  %275 = shl i32 %271, %274
  %276 = load i32, i32* %7, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %7, align 4
  br label %278

278:                                              ; preds = %266, %260, %255
  %279 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %280 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %279, i32 0, i32 9
  %281 = load i32, i32* %280, align 4
  %282 = icmp sge i32 %281, 0
  br i1 %282, label %283, label %301

283:                                              ; preds = %278
  %284 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %285 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %301

289:                                              ; preds = %283
  %290 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %291 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 8
  %293 = load i64, i64* %292, align 8
  %294 = trunc i64 %293 to i32
  %295 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %296 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %295, i32 0, i32 9
  %297 = load i32, i32* %296, align 4
  %298 = shl i32 %294, %297
  %299 = load i32, i32* %7, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %7, align 4
  br label %301

301:                                              ; preds = %289, %283, %278
  %302 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %303 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %302, i32 0, i32 10
  %304 = load i32, i32* %303, align 4
  %305 = icmp sge i32 %304, 0
  br i1 %305, label %306, label %324

306:                                              ; preds = %301
  %307 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %308 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %324

312:                                              ; preds = %306
  %313 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %3, align 8
  %314 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 7
  %316 = load i64, i64* %315, align 8
  %317 = trunc i64 %316 to i32
  %318 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %319 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %318, i32 0, i32 10
  %320 = load i32, i32* %319, align 4
  %321 = shl i32 %317, %320
  %322 = load i32, i32* %7, align 4
  %323 = or i32 %322, %321
  store i32 %323, i32* %7, align 4
  br label %324

324:                                              ; preds = %312, %306, %301
  %325 = load i32, i32* %7, align 4
  ret i32 %325
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
