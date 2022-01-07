; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.ixgbe_adapter = type { %struct.TYPE_5__, %struct.ixgbe_ring**, %struct.ixgbe_ring** }
%struct.TYPE_5__ = type { i64*, i64*, i64*, i64* }
%struct.ixgbe_ring = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.rtnl_link_stats64 = type { i32 }

@IXGBE_GLOBAL_STATS_LEN = common dso_local global i32 0, align 4
@ixgbe_gstrings_stats = common dso_local global %struct.TYPE_6__* null, align 8
@IXGBE_NUM_RX_QUEUES = common dso_local global i32 0, align 4
@IXGBE_MAX_PACKET_BUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @ixgbe_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ixgbe_adapter*, align 8
  %8 = alloca %struct.rtnl_link_stats64, align 4
  %9 = alloca %struct.rtnl_link_stats64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ixgbe_ring*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.ixgbe_adapter* %16, %struct.ixgbe_adapter** %7, align 8
  store i8* null, i8** %14, align 8
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %18 = call i32 @ixgbe_update_stats(%struct.ixgbe_adapter* %17)
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call %struct.rtnl_link_stats64* @dev_get_stats(%struct.net_device* %19, %struct.rtnl_link_stats64* %8)
  store %struct.rtnl_link_stats64* %20, %struct.rtnl_link_stats64** %9, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %82, %3
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @IXGBE_GLOBAL_STATS_LEN, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %85

25:                                               ; preds = %21
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ixgbe_gstrings_stats, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %54 [
    i32 128, label %32
    i32 129, label %43
  ]

32:                                               ; preds = %25
  %33 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %9, align 8
  %34 = bitcast %struct.rtnl_link_stats64* %33 to i8*
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ixgbe_gstrings_stats, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %34, i64 %41
  store i8* %42, i8** %14, align 8
  br label %59

43:                                               ; preds = %25
  %44 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %45 = bitcast %struct.ixgbe_adapter* %44 to i8*
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ixgbe_gstrings_stats, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
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
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ixgbe_gstrings_stats, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
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

86:                                               ; preds = %145, %85
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %148

92:                                               ; preds = %86
  %93 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %94 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %93, i32 0, i32 2
  %95 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %95, i64 %97
  %99 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %98, align 8
  store %struct.ixgbe_ring* %99, %struct.ixgbe_ring** %11, align 8
  %100 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %101 = icmp ne %struct.ixgbe_ring* %100, null
  br i1 %101, label %114, label %102

102:                                              ; preds = %92
  %103 = load i64*, i64** %6, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  store i64 0, i64* %106, align 8
  %107 = load i64*, i64** %6, align 8
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %107, i64 %110
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 2
  store i32 %113, i32* %12, align 4
  br label %145

114:                                              ; preds = %92
  br label %115

115:                                              ; preds = %136, %114
  %116 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %117 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %116, i32 0, i32 1
  %118 = call i32 @u64_stats_fetch_begin_irq(i32* %117)
  store i32 %118, i32* %10, align 4
  %119 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %120 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %6, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  store i64 %122, i64* %126, align 8
  %127 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %128 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64*, i64** %6, align 8
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %131, i64 %134
  store i64 %130, i64* %135, align 8
  br label %136

136:                                              ; preds = %115
  %137 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %138 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %137, i32 0, i32 1
  %139 = load i32, i32* %10, align 4
  %140 = call i64 @u64_stats_fetch_retry_irq(i32* %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %115, label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 2
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %142, %102
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %13, align 4
  br label %86

148:                                              ; preds = %86
  store i32 0, i32* %13, align 4
  br label %149

149:                                              ; preds = %206, %148
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @IXGBE_NUM_RX_QUEUES, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %209

153:                                              ; preds = %149
  %154 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %155 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %154, i32 0, i32 1
  %156 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %156, i64 %158
  %160 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %159, align 8
  store %struct.ixgbe_ring* %160, %struct.ixgbe_ring** %11, align 8
  %161 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %162 = icmp ne %struct.ixgbe_ring* %161, null
  br i1 %162, label %175, label %163

163:                                              ; preds = %153
  %164 = load i64*, i64** %6, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  store i64 0, i64* %167, align 8
  %168 = load i64*, i64** %6, align 8
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %168, i64 %171
  store i64 0, i64* %172, align 8
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 2
  store i32 %174, i32* %12, align 4
  br label %206

175:                                              ; preds = %153
  br label %176

176:                                              ; preds = %197, %175
  %177 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %178 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %177, i32 0, i32 1
  %179 = call i32 @u64_stats_fetch_begin_irq(i32* %178)
  store i32 %179, i32* %10, align 4
  %180 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %181 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64*, i64** %6, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  store i64 %183, i64* %187, align 8
  %188 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %189 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64*, i64** %6, align 8
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %192, i64 %195
  store i64 %191, i64* %196, align 8
  br label %197

197:                                              ; preds = %176
  %198 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %199 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %198, i32 0, i32 1
  %200 = load i32, i32* %10, align 4
  %201 = call i64 @u64_stats_fetch_retry_irq(i32* %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %176, label %203

203:                                              ; preds = %197
  %204 = load i32, i32* %12, align 4
  %205 = add nsw i32 %204, 2
  store i32 %205, i32* %12, align 4
  br label %206

206:                                              ; preds = %203, %163
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %13, align 4
  br label %149

209:                                              ; preds = %149
  store i32 0, i32* %13, align 4
  br label %210

210:                                              ; preds = %241, %209
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* @IXGBE_MAX_PACKET_BUFFERS, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %244

214:                                              ; preds = %210
  %215 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %216 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 3
  %218 = load i64*, i64** %217, align 8
  %219 = load i32, i32* %13, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = load i64*, i64** %6, align 8
  %224 = load i32, i32* %12, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %12, align 4
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i64, i64* %223, i64 %226
  store i64 %222, i64* %227, align 8
  %228 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %229 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 2
  %231 = load i64*, i64** %230, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = load i64*, i64** %6, align 8
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %12, align 4
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i64, i64* %236, i64 %239
  store i64 %235, i64* %240, align 8
  br label %241

241:                                              ; preds = %214
  %242 = load i32, i32* %13, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %13, align 4
  br label %210

244:                                              ; preds = %210
  store i32 0, i32* %13, align 4
  br label %245

245:                                              ; preds = %276, %244
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* @IXGBE_MAX_PACKET_BUFFERS, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %279

249:                                              ; preds = %245
  %250 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %251 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 1
  %253 = load i64*, i64** %252, align 8
  %254 = load i32, i32* %13, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i64, i64* %253, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = load i64*, i64** %6, align 8
  %259 = load i32, i32* %12, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %12, align 4
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i64, i64* %258, i64 %261
  store i64 %257, i64* %262, align 8
  %263 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %264 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 0
  %266 = load i64*, i64** %265, align 8
  %267 = load i32, i32* %13, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i64, i64* %266, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = load i64*, i64** %6, align 8
  %272 = load i32, i32* %12, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %12, align 4
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i64, i64* %271, i64 %274
  store i64 %270, i64* %275, align 8
  br label %276

276:                                              ; preds = %249
  %277 = load i32, i32* %13, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %13, align 4
  br label %245

279:                                              ; preds = %245
  ret void
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_update_stats(%struct.ixgbe_adapter*) #1

declare dso_local %struct.rtnl_link_stats64* @dev_get_stats(%struct.net_device*, %struct.rtnl_link_stats64*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
