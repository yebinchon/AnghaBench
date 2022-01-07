; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.igb_adapter = type { i32, i32, i32, i32, i32, %struct.igb_q_vector** }
%struct.igb_q_vector = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@IGB_MAX_ITR_USECS = common dso_local global i32 0, align 4
@IGB_MIN_ITR_USECS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IGB_FLAG_QUEUE_PAIRS = common dso_local global i32 0, align 4
@IGB_FLAG_DMAC = common dso_local global i32 0, align 4
@IGB_START_ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @igb_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.igb_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.igb_q_vector*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.igb_adapter* %10, %struct.igb_adapter** %6, align 8
  %11 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %11, i32 0, i32 20
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %105, label %15

15:                                               ; preds = %2
  %16 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %16, i32 0, i32 19
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %105, label %20

20:                                               ; preds = %15
  %21 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %21, i32 0, i32 18
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %105, label %25

25:                                               ; preds = %20
  %26 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %26, i32 0, i32 17
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %105, label %30

30:                                               ; preds = %25
  %31 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %31, i32 0, i32 16
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %105, label %35

35:                                               ; preds = %30
  %36 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %36, i32 0, i32 15
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %105, label %40

40:                                               ; preds = %35
  %41 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %41, i32 0, i32 14
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %105, label %45

45:                                               ; preds = %40
  %46 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %46, i32 0, i32 13
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %105, label %50

50:                                               ; preds = %45
  %51 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %51, i32 0, i32 12
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %105, label %55

55:                                               ; preds = %50
  %56 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %56, i32 0, i32 11
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %105, label %60

60:                                               ; preds = %55
  %61 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %61, i32 0, i32 10
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %105, label %65

65:                                               ; preds = %60
  %66 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %66, i32 0, i32 9
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %105, label %70

70:                                               ; preds = %65
  %71 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %71, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %105, label %75

75:                                               ; preds = %70
  %76 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %75
  %81 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %80
  %86 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %85
  %91 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %90
  %96 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %102 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100, %95, %90, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20, %15, %2
  %106 = load i32, i32* @ENOTSUPP, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %312

108:                                              ; preds = %100
  %109 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %110 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IGB_MAX_ITR_USECS, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %130, label %114

114:                                              ; preds = %108
  %115 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %116 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sgt i32 %117, 3
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %121 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @IGB_MIN_ITR_USECS, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %127 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %130, label %133

130:                                              ; preds = %125, %119, %108
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %312

133:                                              ; preds = %125
  %134 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %135 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @IGB_MAX_ITR_USECS, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %155, label %139

139:                                              ; preds = %133
  %140 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %141 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %142, 3
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %146 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @IGB_MIN_ITR_USECS, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %155, label %150

150:                                              ; preds = %144, %139
  %151 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %152 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %158

155:                                              ; preds = %150, %144, %133
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %312

158:                                              ; preds = %150
  %159 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %160 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @IGB_FLAG_QUEUE_PAIRS, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %158
  %166 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %167 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %312

173:                                              ; preds = %165, %158
  %174 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %175 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %193

178:                                              ; preds = %173
  %179 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %180 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @IGB_FLAG_DMAC, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %178
  %186 = load i32, i32* @IGB_FLAG_DMAC, align 4
  %187 = xor i32 %186, -1
  %188 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %189 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %185, %178
  br label %193

193:                                              ; preds = %192, %173
  %194 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %195 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %193
  %199 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %200 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp sle i32 %201, 3
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %205 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %208 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  br label %216

209:                                              ; preds = %198, %193
  %210 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %211 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = shl i32 %212, 2
  %214 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %215 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  br label %216

216:                                              ; preds = %209, %203
  %217 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %218 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @IGB_FLAG_QUEUE_PAIRS, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %216
  %224 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %225 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %228 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 8
  br label %253

229:                                              ; preds = %216
  %230 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %231 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %229
  %235 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %236 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = icmp sle i32 %237, 3
  br i1 %238, label %239, label %245

239:                                              ; preds = %234
  %240 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %241 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %244 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 8
  br label %252

245:                                              ; preds = %234, %229
  %246 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %247 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = shl i32 %248, 2
  %250 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %251 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %250, i32 0, i32 2
  store i32 %249, i32* %251, align 8
  br label %252

252:                                              ; preds = %245, %239
  br label %253

253:                                              ; preds = %252, %223
  store i32 0, i32* %7, align 4
  br label %254

254:                                              ; preds = %308, %253
  %255 = load i32, i32* %7, align 4
  %256 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %257 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = icmp slt i32 %255, %258
  br i1 %259, label %260, label %311

260:                                              ; preds = %254
  %261 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %262 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %261, i32 0, i32 5
  %263 = load %struct.igb_q_vector**, %struct.igb_q_vector*** %262, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.igb_q_vector*, %struct.igb_q_vector** %263, i64 %265
  %267 = load %struct.igb_q_vector*, %struct.igb_q_vector** %266, align 8
  store %struct.igb_q_vector* %267, %struct.igb_q_vector** %8, align 8
  %268 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %269 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.igb_q_vector*, %struct.igb_q_vector** %8, align 8
  %272 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 0
  store i32 %270, i32* %273, align 8
  %274 = load %struct.igb_q_vector*, %struct.igb_q_vector** %8, align 8
  %275 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %260
  %280 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %281 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.igb_q_vector*, %struct.igb_q_vector** %8, align 8
  %284 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %283, i32 0, i32 0
  store i32 %282, i32* %284, align 8
  br label %291

285:                                              ; preds = %260
  %286 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %287 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.igb_q_vector*, %struct.igb_q_vector** %8, align 8
  %290 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %289, i32 0, i32 0
  store i32 %288, i32* %290, align 8
  br label %291

291:                                              ; preds = %285, %279
  %292 = load %struct.igb_q_vector*, %struct.igb_q_vector** %8, align 8
  %293 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %305

296:                                              ; preds = %291
  %297 = load %struct.igb_q_vector*, %struct.igb_q_vector** %8, align 8
  %298 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp sle i32 %299, 3
  br i1 %300, label %301, label %305

301:                                              ; preds = %296
  %302 = load i32, i32* @IGB_START_ITR, align 4
  %303 = load %struct.igb_q_vector*, %struct.igb_q_vector** %8, align 8
  %304 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %303, i32 0, i32 0
  store i32 %302, i32* %304, align 8
  br label %305

305:                                              ; preds = %301, %296, %291
  %306 = load %struct.igb_q_vector*, %struct.igb_q_vector** %8, align 8
  %307 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %306, i32 0, i32 1
  store i32 1, i32* %307, align 4
  br label %308

308:                                              ; preds = %305
  %309 = load i32, i32* %7, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %7, align 4
  br label %254

311:                                              ; preds = %254
  store i32 0, i32* %3, align 4
  br label %312

312:                                              ; preds = %311, %170, %155, %130, %105
  %313 = load i32, i32* %3, align 4
  ret i32 %313
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
