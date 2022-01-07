; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.bnxt = type { i64, i32, i64, i64, i64*, i64, i64, i64, i64, i64, %struct.bnxt_napi** }
%struct.bnxt_napi = type { %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { %struct.TYPE_12__*, i64, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@bnxt_ring_stats_str = common dso_local global i32 0, align 4
@BNXT_NUM_SW_FUNC_STATS = common dso_local global i64 0, align 8
@bnxt_sw_func_stats = common dso_local global %struct.TYPE_16__* null, align 8
@RX_TOTAL_DISCARDS = common dso_local global i64 0, align 8
@TX_TOTAL_DISCARDS = common dso_local global i64 0, align 8
@BNXT_FLAG_PORT_STATS = common dso_local global i32 0, align 4
@BNXT_NUM_PORT_STATS = common dso_local global i64 0, align 8
@bnxt_port_stats_arr = common dso_local global %struct.TYPE_20__* null, align 8
@BNXT_FLAG_PORT_STATS_EXT = common dso_local global i32 0, align 4
@bnxt_port_stats_ext_arr = common dso_local global %struct.TYPE_19__* null, align 8
@bnxt_tx_port_stats_ext_arr = common dso_local global %struct.TYPE_13__* null, align 8
@bnxt_rx_bytes_pri_arr = common dso_local global %struct.TYPE_18__* null, align 8
@bnxt_rx_pkts_pri_arr = common dso_local global %struct.TYPE_17__* null, align 8
@bnxt_tx_bytes_pri_arr = common dso_local global %struct.TYPE_15__* null, align 8
@bnxt_tx_pkts_pri_arr = common dso_local global %struct.TYPE_14__* null, align 8
@BNXT_FLAG_PCIE_STATS = common dso_local global i32 0, align 4
@BNXT_NUM_PCIE_STATS = common dso_local global i64 0, align 8
@bnxt_pcie_stats_arr = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @bnxt_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bnxt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bnxt_napi*, align 8
  %12 = alloca %struct.bnxt_cp_ring_info*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %8, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call %struct.bnxt* @netdev_priv(%struct.net_device* %23)
  store %struct.bnxt* %24, %struct.bnxt** %9, align 8
  %25 = load i32, i32* @bnxt_ring_stats_str, align 4
  %26 = call i64 @ARRAY_SIZE(i32 %25)
  %27 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %28 = call i64 @bnxt_get_num_tpa_ring_stats(%struct.bnxt* %27)
  %29 = add i64 %26, %28
  store i64 %29, i64* %10, align 8
  %30 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %31 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %30, i32 0, i32 10
  %32 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %31, align 8
  %33 = icmp ne %struct.bnxt_napi** %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %3
  %35 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %36 = call i64 @bnxt_get_num_ring_stats(%struct.bnxt* %35)
  %37 = load i64, i64* @BNXT_NUM_SW_FUNC_STATS, align 8
  %38 = add i64 %36, %37
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %8, align 8
  br label %156

41:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %42

42:                                               ; preds = %51, %41
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @BNXT_NUM_SW_FUNC_STATS, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** @bnxt_sw_func_stats, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %7, align 8
  br label %42

54:                                               ; preds = %42
  store i64 0, i64* %7, align 8
  br label %55

55:                                               ; preds = %133, %54
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %58 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %136

61:                                               ; preds = %55
  %62 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %63 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %62, i32 0, i32 10
  %64 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %64, i64 %65
  %67 = load %struct.bnxt_napi*, %struct.bnxt_napi** %66, align 8
  store %struct.bnxt_napi* %67, %struct.bnxt_napi** %11, align 8
  %68 = load %struct.bnxt_napi*, %struct.bnxt_napi** %11, align 8
  %69 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %68, i32 0, i32 0
  store %struct.bnxt_cp_ring_info* %69, %struct.bnxt_cp_ring_info** %12, align 8
  %70 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %12, align 8
  %71 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = bitcast %struct.TYPE_12__* %72 to i32*
  store i32* %73, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %89, %61
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %10, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @le64_to_cpu(i32 %84)
  %86 = load i64*, i64** %6, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  store i64 %85, i64* %88, align 8
  br label %89

89:                                               ; preds = %79
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %8, align 8
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %74

94:                                               ; preds = %74
  %95 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %12, align 8
  %96 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %6, align 8
  %99 = load i64, i64* %8, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %8, align 8
  %101 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %97, i64* %101, align 8
  %102 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %12, align 8
  %103 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %6, align 8
  %106 = load i64, i64* %8, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %8, align 8
  %108 = getelementptr inbounds i64, i64* %105, i64 %106
  store i64 %104, i64* %108, align 8
  %109 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %12, align 8
  %110 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @le64_to_cpu(i32 %113)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** @bnxt_sw_func_stats, align 8
  %116 = load i64, i64* @RX_TOTAL_DISCARDS, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, %114
  store i64 %120, i64* %118, align 8
  %121 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %12, align 8
  %122 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %121, i32 0, i32 0
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @le64_to_cpu(i32 %125)
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** @bnxt_sw_func_stats, align 8
  %128 = load i64, i64* @TX_TOTAL_DISCARDS, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, %126
  store i64 %132, i64* %130, align 8
  br label %133

133:                                              ; preds = %94
  %134 = load i64, i64* %7, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %7, align 8
  br label %55

136:                                              ; preds = %55
  store i64 0, i64* %7, align 8
  br label %137

137:                                              ; preds = %150, %136
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* @BNXT_NUM_SW_FUNC_STATS, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %155

141:                                              ; preds = %137
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** @bnxt_sw_func_stats, align 8
  %143 = load i64, i64* %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64*, i64** %6, align 8
  %148 = load i64, i64* %8, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  store i64 %146, i64* %149, align 8
  br label %150

150:                                              ; preds = %141
  %151 = load i64, i64* %7, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %7, align 8
  %153 = load i64, i64* %8, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %8, align 8
  br label %137

155:                                              ; preds = %137
  br label %156

156:                                              ; preds = %155, %34
  %157 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %158 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @BNXT_FLAG_PORT_STATS, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %192

163:                                              ; preds = %156
  %164 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %165 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %164, i32 0, i32 9
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i32*
  store i32* %167, i32** %15, align 8
  store i64 0, i64* %7, align 8
  br label %168

168:                                              ; preds = %186, %163
  %169 = load i64, i64* %7, align 8
  %170 = load i64, i64* @BNXT_NUM_PORT_STATS, align 8
  %171 = icmp ult i64 %169, %170
  br i1 %171, label %172, label %191

172:                                              ; preds = %168
  %173 = load i32*, i32** %15, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** @bnxt_port_stats_arr, align 8
  %175 = load i64, i64* %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %173, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @le64_to_cpu(i32 %181)
  %183 = load i64*, i64** %6, align 8
  %184 = load i64, i64* %8, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  store i64 %182, i64* %185, align 8
  br label %186

186:                                              ; preds = %172
  %187 = load i64, i64* %7, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %7, align 8
  %189 = load i64, i64* %8, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %8, align 8
  br label %168

191:                                              ; preds = %168
  br label %192

192:                                              ; preds = %191, %156
  %193 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %194 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @BNXT_FLAG_PORT_STATS_EXT, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %386

199:                                              ; preds = %192
  %200 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %201 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %200, i32 0, i32 8
  %202 = load i64, i64* %201, align 8
  %203 = inttoptr i64 %202 to i32*
  store i32* %203, i32** %16, align 8
  %204 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %205 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %204, i32 0, i32 7
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to i32*
  store i32* %207, i32** %17, align 8
  store i64 0, i64* %7, align 8
  br label %208

208:                                              ; preds = %228, %199
  %209 = load i64, i64* %7, align 8
  %210 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %211 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp ult i64 %209, %212
  br i1 %213, label %214, label %233

214:                                              ; preds = %208
  %215 = load i32*, i32** %16, align 8
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** @bnxt_port_stats_ext_arr, align 8
  %217 = load i64, i64* %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %215, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i64 @le64_to_cpu(i32 %223)
  %225 = load i64*, i64** %6, align 8
  %226 = load i64, i64* %8, align 8
  %227 = getelementptr inbounds i64, i64* %225, i64 %226
  store i64 %224, i64* %227, align 8
  br label %228

228:                                              ; preds = %214
  %229 = load i64, i64* %7, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %7, align 8
  %231 = load i64, i64* %8, align 8
  %232 = add i64 %231, 1
  store i64 %232, i64* %8, align 8
  br label %208

233:                                              ; preds = %208
  store i64 0, i64* %7, align 8
  br label %234

234:                                              ; preds = %254, %233
  %235 = load i64, i64* %7, align 8
  %236 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %237 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = icmp ult i64 %235, %238
  br i1 %239, label %240, label %259

240:                                              ; preds = %234
  %241 = load i32*, i32** %17, align 8
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bnxt_tx_port_stats_ext_arr, align 8
  %243 = load i64, i64* %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %241, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = call i64 @le64_to_cpu(i32 %249)
  %251 = load i64*, i64** %6, align 8
  %252 = load i64, i64* %8, align 8
  %253 = getelementptr inbounds i64, i64* %251, i64 %252
  store i64 %250, i64* %253, align 8
  br label %254

254:                                              ; preds = %240
  %255 = load i64, i64* %7, align 8
  %256 = add i64 %255, 1
  store i64 %256, i64* %7, align 8
  %257 = load i64, i64* %8, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %8, align 8
  br label %234

259:                                              ; preds = %234
  %260 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %261 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %260, i32 0, i32 6
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %385

264:                                              ; preds = %259
  store i64 0, i64* %7, align 8
  br label %265

265:                                              ; preds = %289, %264
  %266 = load i64, i64* %7, align 8
  %267 = icmp ult i64 %266, 8
  br i1 %267, label %268, label %294

268:                                              ; preds = %265
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** @bnxt_rx_bytes_pri_arr, align 8
  %270 = load i64, i64* %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %275 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %274, i32 0, i32 4
  %276 = load i64*, i64** %275, align 8
  %277 = load i64, i64* %7, align 8
  %278 = getelementptr inbounds i64, i64* %276, i64 %277
  %279 = load i64, i64* %278, align 8
  %280 = add nsw i64 %273, %279
  store i64 %280, i64* %18, align 8
  %281 = load i32*, i32** %16, align 8
  %282 = load i64, i64* %18, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = call i64 @le64_to_cpu(i32 %284)
  %286 = load i64*, i64** %6, align 8
  %287 = load i64, i64* %8, align 8
  %288 = getelementptr inbounds i64, i64* %286, i64 %287
  store i64 %285, i64* %288, align 8
  br label %289

289:                                              ; preds = %268
  %290 = load i64, i64* %7, align 8
  %291 = add i64 %290, 1
  store i64 %291, i64* %7, align 8
  %292 = load i64, i64* %8, align 8
  %293 = add i64 %292, 1
  store i64 %293, i64* %8, align 8
  br label %265

294:                                              ; preds = %265
  store i64 0, i64* %7, align 8
  br label %295

295:                                              ; preds = %319, %294
  %296 = load i64, i64* %7, align 8
  %297 = icmp ult i64 %296, 8
  br i1 %297, label %298, label %324

298:                                              ; preds = %295
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** @bnxt_rx_pkts_pri_arr, align 8
  %300 = load i64, i64* %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %305 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %304, i32 0, i32 4
  %306 = load i64*, i64** %305, align 8
  %307 = load i64, i64* %7, align 8
  %308 = getelementptr inbounds i64, i64* %306, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = add nsw i64 %303, %309
  store i64 %310, i64* %19, align 8
  %311 = load i32*, i32** %16, align 8
  %312 = load i64, i64* %19, align 8
  %313 = getelementptr inbounds i32, i32* %311, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = call i64 @le64_to_cpu(i32 %314)
  %316 = load i64*, i64** %6, align 8
  %317 = load i64, i64* %8, align 8
  %318 = getelementptr inbounds i64, i64* %316, i64 %317
  store i64 %315, i64* %318, align 8
  br label %319

319:                                              ; preds = %298
  %320 = load i64, i64* %7, align 8
  %321 = add i64 %320, 1
  store i64 %321, i64* %7, align 8
  %322 = load i64, i64* %8, align 8
  %323 = add i64 %322, 1
  store i64 %323, i64* %8, align 8
  br label %295

324:                                              ; preds = %295
  store i64 0, i64* %7, align 8
  br label %325

325:                                              ; preds = %349, %324
  %326 = load i64, i64* %7, align 8
  %327 = icmp ult i64 %326, 8
  br i1 %327, label %328, label %354

328:                                              ; preds = %325
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bnxt_tx_bytes_pri_arr, align 8
  %330 = load i64, i64* %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %335 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %334, i32 0, i32 4
  %336 = load i64*, i64** %335, align 8
  %337 = load i64, i64* %7, align 8
  %338 = getelementptr inbounds i64, i64* %336, i64 %337
  %339 = load i64, i64* %338, align 8
  %340 = add nsw i64 %333, %339
  store i64 %340, i64* %20, align 8
  %341 = load i32*, i32** %17, align 8
  %342 = load i64, i64* %20, align 8
  %343 = getelementptr inbounds i32, i32* %341, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = call i64 @le64_to_cpu(i32 %344)
  %346 = load i64*, i64** %6, align 8
  %347 = load i64, i64* %8, align 8
  %348 = getelementptr inbounds i64, i64* %346, i64 %347
  store i64 %345, i64* %348, align 8
  br label %349

349:                                              ; preds = %328
  %350 = load i64, i64* %7, align 8
  %351 = add i64 %350, 1
  store i64 %351, i64* %7, align 8
  %352 = load i64, i64* %8, align 8
  %353 = add i64 %352, 1
  store i64 %353, i64* %8, align 8
  br label %325

354:                                              ; preds = %325
  store i64 0, i64* %7, align 8
  br label %355

355:                                              ; preds = %379, %354
  %356 = load i64, i64* %7, align 8
  %357 = icmp ult i64 %356, 8
  br i1 %357, label %358, label %384

358:                                              ; preds = %355
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bnxt_tx_pkts_pri_arr, align 8
  %360 = load i64, i64* %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %365 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %364, i32 0, i32 4
  %366 = load i64*, i64** %365, align 8
  %367 = load i64, i64* %7, align 8
  %368 = getelementptr inbounds i64, i64* %366, i64 %367
  %369 = load i64, i64* %368, align 8
  %370 = add nsw i64 %363, %369
  store i64 %370, i64* %21, align 8
  %371 = load i32*, i32** %17, align 8
  %372 = load i64, i64* %21, align 8
  %373 = getelementptr inbounds i32, i32* %371, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = call i64 @le64_to_cpu(i32 %374)
  %376 = load i64*, i64** %6, align 8
  %377 = load i64, i64* %8, align 8
  %378 = getelementptr inbounds i64, i64* %376, i64 %377
  store i64 %375, i64* %378, align 8
  br label %379

379:                                              ; preds = %358
  %380 = load i64, i64* %7, align 8
  %381 = add i64 %380, 1
  store i64 %381, i64* %7, align 8
  %382 = load i64, i64* %8, align 8
  %383 = add i64 %382, 1
  store i64 %383, i64* %8, align 8
  br label %355

384:                                              ; preds = %355
  br label %385

385:                                              ; preds = %384, %259
  br label %386

386:                                              ; preds = %385, %192
  %387 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %388 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @BNXT_FLAG_PCIE_STATS, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %422

393:                                              ; preds = %386
  %394 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %395 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %394, i32 0, i32 5
  %396 = load i64, i64* %395, align 8
  %397 = inttoptr i64 %396 to i32*
  store i32* %397, i32** %22, align 8
  store i64 0, i64* %7, align 8
  br label %398

398:                                              ; preds = %416, %393
  %399 = load i64, i64* %7, align 8
  %400 = load i64, i64* @BNXT_NUM_PCIE_STATS, align 8
  %401 = icmp ult i64 %399, %400
  br i1 %401, label %402, label %421

402:                                              ; preds = %398
  %403 = load i32*, i32** %22, align 8
  %404 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bnxt_pcie_stats_arr, align 8
  %405 = load i64, i64* %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %404, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %403, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = call i64 @le64_to_cpu(i32 %411)
  %413 = load i64*, i64** %6, align 8
  %414 = load i64, i64* %8, align 8
  %415 = getelementptr inbounds i64, i64* %413, i64 %414
  store i64 %412, i64* %415, align 8
  br label %416

416:                                              ; preds = %402
  %417 = load i64, i64* %7, align 8
  %418 = add i64 %417, 1
  store i64 %418, i64* %7, align 8
  %419 = load i64, i64* %8, align 8
  %420 = add i64 %419, 1
  store i64 %420, i64* %8, align 8
  br label %398

421:                                              ; preds = %398
  br label %422

422:                                              ; preds = %421, %386
  ret void
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i64 @bnxt_get_num_tpa_ring_stats(%struct.bnxt*) #1

declare dso_local i64 @bnxt_get_num_ring_stats(%struct.bnxt*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
