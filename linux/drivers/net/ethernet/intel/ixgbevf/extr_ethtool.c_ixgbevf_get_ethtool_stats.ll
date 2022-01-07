; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_ixgbevf_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_ixgbevf_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.ixgbevf_adapter = type { i32, i32, i32, %struct.ixgbevf_ring**, %struct.ixgbevf_ring**, %struct.ixgbevf_ring** }
%struct.ixgbevf_ring = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.rtnl_link_stats64 = type { i32 }

@IXGBEVF_GLOBAL_STATS_LEN = common dso_local global i32 0, align 4
@ixgbevf_gstrings_stats = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @ixgbevf_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ixgbevf_adapter*, align 8
  %8 = alloca %struct.rtnl_link_stats64, align 4
  %9 = alloca %struct.rtnl_link_stats64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ixgbevf_ring*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.ixgbevf_adapter* %16, %struct.ixgbevf_adapter** %7, align 8
  %17 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %18 = call i32 @ixgbevf_update_stats(%struct.ixgbevf_adapter* %17)
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call %struct.rtnl_link_stats64* @dev_get_stats(%struct.net_device* %19, %struct.rtnl_link_stats64* %8)
  store %struct.rtnl_link_stats64* %20, %struct.rtnl_link_stats64** %9, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %82, %3
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @IXGBEVF_GLOBAL_STATS_LEN, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %85

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ixgbevf_gstrings_stats, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %54 [
    i32 128, label %32
    i32 129, label %43
  ]

32:                                               ; preds = %25
  %33 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %9, align 8
  %34 = bitcast %struct.rtnl_link_stats64* %33 to i8*
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ixgbevf_gstrings_stats, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %34, i64 %41
  store i8* %42, i8** %14, align 8
  br label %59

43:                                               ; preds = %25
  %44 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %45 = bitcast %struct.ixgbevf_adapter* %44 to i8*
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ixgbevf_gstrings_stats, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %45, i64 %52
  store i8* %53, i8** %14, align 8
  br label %59

54:                                               ; preds = %25
  %55 = load i64*, i64** %6, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 0, i64* %58, align 8
  br label %82

59:                                               ; preds = %43, %32
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ixgbevf_gstrings_stats, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 %66, 8
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i8*, i8** %14, align 8
  %70 = bitcast i8* %69 to i64*
  %71 = load i64, i64* %70, align 8
  br label %76

72:                                               ; preds = %59
  %73 = load i8*, i8** %14, align 8
  %74 = bitcast i8* %73 to i64*
  %75 = load i64, i64* %74, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i64 [ %71, %68 ], [ %75, %72 ]
  %78 = load i64*, i64** %6, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 %77, i64* %81, align 8
  br label %82

82:                                               ; preds = %76, %54
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %21

85:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %144, %85
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %89 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %147

92:                                               ; preds = %86
  %93 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %94 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %93, i32 0, i32 5
  %95 = load %struct.ixgbevf_ring**, %struct.ixgbevf_ring*** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %95, i64 %97
  %99 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %98, align 8
  store %struct.ixgbevf_ring* %99, %struct.ixgbevf_ring** %11, align 8
  %100 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %11, align 8
  %101 = icmp ne %struct.ixgbevf_ring* %100, null
  br i1 %101, label %113, label %102

102:                                              ; preds = %92
  %103 = load i64*, i64** %6, align 8
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  store i64 0, i64* %107, align 8
  %108 = load i64*, i64** %6, align 8
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i64, i64* %108, i64 %111
  store i64 0, i64* %112, align 8
  br label %144

113:                                              ; preds = %92
  br label %114

114:                                              ; preds = %135, %113
  %115 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %11, align 8
  %116 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %115, i32 0, i32 1
  %117 = call i32 @u64_stats_fetch_begin_irq(i32* %116)
  store i32 %117, i32* %10, align 4
  %118 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %11, align 8
  %119 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64*, i64** %6, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  store i64 %121, i64* %125, align 8
  %126 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %11, align 8
  %127 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64*, i64** %6, align 8
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %130, i64 %133
  store i64 %129, i64* %134, align 8
  br label %135

135:                                              ; preds = %114
  %136 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %11, align 8
  %137 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %136, i32 0, i32 1
  %138 = load i32, i32* %10, align 4
  %139 = call i64 @u64_stats_fetch_retry_irq(i32* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %114, label %141

141:                                              ; preds = %135
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 2
  store i32 %143, i32* %12, align 4
  br label %144

144:                                              ; preds = %141, %102
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %86

147:                                              ; preds = %86
  store i32 0, i32* %13, align 4
  br label %148

148:                                              ; preds = %206, %147
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %151 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %209

154:                                              ; preds = %148
  %155 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %156 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %155, i32 0, i32 4
  %157 = load %struct.ixgbevf_ring**, %struct.ixgbevf_ring*** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %157, i64 %159
  %161 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %160, align 8
  store %struct.ixgbevf_ring* %161, %struct.ixgbevf_ring** %11, align 8
  %162 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %11, align 8
  %163 = icmp ne %struct.ixgbevf_ring* %162, null
  br i1 %163, label %175, label %164

164:                                              ; preds = %154
  %165 = load i64*, i64** %6, align 8
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i64, i64* %165, i64 %168
  store i64 0, i64* %169, align 8
  %170 = load i64*, i64** %6, align 8
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %12, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i64, i64* %170, i64 %173
  store i64 0, i64* %174, align 8
  br label %206

175:                                              ; preds = %154
  br label %176

176:                                              ; preds = %197, %175
  %177 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %11, align 8
  %178 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %177, i32 0, i32 1
  %179 = call i32 @u64_stats_fetch_begin_irq(i32* %178)
  store i32 %179, i32* %10, align 4
  %180 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %11, align 8
  %181 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64*, i64** %6, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  store i64 %183, i64* %187, align 8
  %188 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %11, align 8
  %189 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64*, i64** %6, align 8
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %192, i64 %195
  store i64 %191, i64* %196, align 8
  br label %197

197:                                              ; preds = %176
  %198 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %11, align 8
  %199 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %198, i32 0, i32 1
  %200 = load i32, i32* %10, align 4
  %201 = call i64 @u64_stats_fetch_retry_irq(i32* %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %176, label %203

203:                                              ; preds = %197
  %204 = load i32, i32* %12, align 4
  %205 = add nsw i32 %204, 2
  store i32 %205, i32* %12, align 4
  br label %206

206:                                              ; preds = %203, %164
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %13, align 4
  br label %148

209:                                              ; preds = %148
  store i32 0, i32* %13, align 4
  br label %210

210:                                              ; preds = %268, %209
  %211 = load i32, i32* %13, align 4
  %212 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %213 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %271

216:                                              ; preds = %210
  %217 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %218 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %217, i32 0, i32 3
  %219 = load %struct.ixgbevf_ring**, %struct.ixgbevf_ring*** %218, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %219, i64 %221
  %223 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %222, align 8
  store %struct.ixgbevf_ring* %223, %struct.ixgbevf_ring** %11, align 8
  %224 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %11, align 8
  %225 = icmp ne %struct.ixgbevf_ring* %224, null
  br i1 %225, label %237, label %226

226:                                              ; preds = %216
  %227 = load i64*, i64** %6, align 8
  %228 = load i32, i32* %12, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %12, align 4
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i64, i64* %227, i64 %230
  store i64 0, i64* %231, align 8
  %232 = load i64*, i64** %6, align 8
  %233 = load i32, i32* %12, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %12, align 4
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i64, i64* %232, i64 %235
  store i64 0, i64* %236, align 8
  br label %268

237:                                              ; preds = %216
  br label %238

238:                                              ; preds = %259, %237
  %239 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %11, align 8
  %240 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %239, i32 0, i32 1
  %241 = call i32 @u64_stats_fetch_begin_irq(i32* %240)
  store i32 %241, i32* %10, align 4
  %242 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %11, align 8
  %243 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64*, i64** %6, align 8
  %247 = load i32, i32* %12, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %246, i64 %248
  store i64 %245, i64* %249, align 8
  %250 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %11, align 8
  %251 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64*, i64** %6, align 8
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %254, i64 %257
  store i64 %253, i64* %258, align 8
  br label %259

259:                                              ; preds = %238
  %260 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %11, align 8
  %261 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %260, i32 0, i32 1
  %262 = load i32, i32* %10, align 4
  %263 = call i64 @u64_stats_fetch_retry_irq(i32* %261, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %238, label %265

265:                                              ; preds = %259
  %266 = load i32, i32* %12, align 4
  %267 = add nsw i32 %266, 2
  store i32 %267, i32* %12, align 4
  br label %268

268:                                              ; preds = %265, %226
  %269 = load i32, i32* %13, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %13, align 4
  br label %210

271:                                              ; preds = %210
  ret void
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_update_stats(%struct.ixgbevf_adapter*) #1

declare dso_local %struct.rtnl_link_stats64* @dev_get_stats(%struct.net_device*, %struct.rtnl_link_stats64*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
