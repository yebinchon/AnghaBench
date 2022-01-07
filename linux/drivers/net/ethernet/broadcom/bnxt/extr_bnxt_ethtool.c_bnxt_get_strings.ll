; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.net_device = type { i32 }
%struct.bnxt = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@bnxt_get_strings.str = internal global i8** null, align 8
@bnxt_ring_stats_str = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [9 x i8] c"[%d]: %s\00", align 1
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@bnxt_ring_tpa2_stats_str = common dso_local global i8** null, align 8
@bnxt_ring_tpa_stats_str = common dso_local global i8** null, align 8
@bnxt_ring_sw_stats_str = common dso_local global i8** null, align 8
@BNXT_NUM_SW_FUNC_STATS = common dso_local global i32 0, align 4
@bnxt_sw_func_stats = common dso_local global %struct.TYPE_16__* null, align 8
@BNXT_FLAG_PORT_STATS = common dso_local global i32 0, align 4
@BNXT_NUM_PORT_STATS = common dso_local global i32 0, align 4
@bnxt_port_stats_arr = common dso_local global %struct.TYPE_20__* null, align 8
@BNXT_FLAG_PORT_STATS_EXT = common dso_local global i32 0, align 4
@bnxt_port_stats_ext_arr = common dso_local global %struct.TYPE_19__* null, align 8
@bnxt_tx_port_stats_ext_arr = common dso_local global %struct.TYPE_13__* null, align 8
@bnxt_rx_bytes_pri_arr = common dso_local global %struct.TYPE_18__* null, align 8
@bnxt_rx_pkts_pri_arr = common dso_local global %struct.TYPE_17__* null, align 8
@bnxt_tx_bytes_pri_arr = common dso_local global %struct.TYPE_15__* null, align 8
@bnxt_tx_pkts_pri_arr = common dso_local global %struct.TYPE_14__* null, align 8
@BNXT_FLAG_PCIE_STATS = common dso_local global i32 0, align 4
@BNXT_NUM_PCIE_STATS = common dso_local global i32 0, align 4
@bnxt_pcie_stats_arr = common dso_local global %struct.TYPE_11__* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"bnxt_get_strings invalid request %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @bnxt_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bnxt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.bnxt* @netdev_priv(%struct.net_device* %11)
  store %struct.bnxt* %12, %struct.bnxt** %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %350 [
    i32 129, label %14
    i32 128, label %331
  ]

14:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %108, %14
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %111

21:                                               ; preds = %15
  %22 = load i8**, i8*** @bnxt_ring_stats_str, align 8
  %23 = call i32 @ARRAY_SIZE(i8** %22)
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %41, %21
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i8**, i8*** @bnxt_ring_stats_str, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @sprintf(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %35)
  %37 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %6, align 8
  br label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %24

44:                                               ; preds = %24
  %45 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %46 = call i32 @BNXT_SUPPORTS_TPA(%struct.bnxt* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %84

49:                                               ; preds = %44
  %50 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %51 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i8**, i8*** @bnxt_ring_tpa2_stats_str, align 8
  %56 = call i32 @ARRAY_SIZE(i8** %55)
  store i32 %56, i32* %10, align 4
  %57 = load i8**, i8*** @bnxt_ring_tpa2_stats_str, align 8
  store i8** %57, i8*** @bnxt_get_strings.str, align 8
  br label %62

58:                                               ; preds = %49
  %59 = load i8**, i8*** @bnxt_ring_tpa_stats_str, align 8
  %60 = call i32 @ARRAY_SIZE(i8** %59)
  store i32 %60, i32* %10, align 4
  %61 = load i8**, i8*** @bnxt_ring_tpa_stats_str, align 8
  store i8** %61, i8*** @bnxt_get_strings.str, align 8
  br label %62

62:                                               ; preds = %58, %54
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %80, %62
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i8**, i8*** @bnxt_get_strings.str, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @sprintf(i32* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %69, i8* %74)
  %76 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %6, align 8
  br label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %63

83:                                               ; preds = %63
  br label %84

84:                                               ; preds = %83, %48
  %85 = load i8**, i8*** @bnxt_ring_sw_stats_str, align 8
  %86 = call i32 @ARRAY_SIZE(i8** %85)
  store i32 %86, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %104, %84
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i8**, i8*** @bnxt_ring_sw_stats_str, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @sprintf(i32* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %93, i8* %98)
  %100 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %6, align 8
  br label %104

104:                                              ; preds = %91
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %87

107:                                              ; preds = %87
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %15

111:                                              ; preds = %15
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %129, %111
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @BNXT_NUM_SW_FUNC_STATS, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = load i32*, i32** %6, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** @bnxt_sw_func_stats, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @strcpy(i32* %117, i32 %123)
  %125 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %6, align 8
  br label %129

129:                                              ; preds = %116
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %112

132:                                              ; preds = %112
  %133 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %134 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @BNXT_FLAG_PORT_STATS, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %161

139:                                              ; preds = %132
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %157, %139
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @BNXT_NUM_PORT_STATS, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %140
  %145 = load i32*, i32** %6, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** @bnxt_port_stats_arr, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @strcpy(i32* %145, i32 %151)
  %153 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %154 = load i32*, i32** %6, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32* %156, i32** %6, align 8
  br label %157

157:                                              ; preds = %144
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %140

160:                                              ; preds = %140
  br label %161

161:                                              ; preds = %160, %132
  %162 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %163 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @BNXT_FLAG_PORT_STATS_EXT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %301

168:                                              ; preds = %161
  store i32 0, i32* %8, align 4
  br label %169

169:                                              ; preds = %188, %168
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %172 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %191

175:                                              ; preds = %169
  %176 = load i32*, i32** %6, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** @bnxt_port_stats_ext_arr, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @strcpy(i32* %176, i32 %182)
  %184 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %185 = load i32*, i32** %6, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32* %187, i32** %6, align 8
  br label %188

188:                                              ; preds = %175
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  br label %169

191:                                              ; preds = %169
  store i32 0, i32* %8, align 4
  br label %192

192:                                              ; preds = %211, %191
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %195 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %214

198:                                              ; preds = %192
  %199 = load i32*, i32** %6, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bnxt_tx_port_stats_ext_arr, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @strcpy(i32* %199, i32 %205)
  %207 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %208 = load i32*, i32** %6, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32* %210, i32** %6, align 8
  br label %211

211:                                              ; preds = %198
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %8, align 4
  br label %192

214:                                              ; preds = %192
  %215 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %216 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %300

219:                                              ; preds = %214
  store i32 0, i32* %8, align 4
  br label %220

220:                                              ; preds = %236, %219
  %221 = load i32, i32* %8, align 4
  %222 = icmp slt i32 %221, 8
  br i1 %222, label %223, label %239

223:                                              ; preds = %220
  %224 = load i32*, i32** %6, align 8
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** @bnxt_rx_bytes_pri_arr, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @strcpy(i32* %224, i32 %230)
  %232 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %233 = load i32*, i32** %6, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  store i32* %235, i32** %6, align 8
  br label %236

236:                                              ; preds = %223
  %237 = load i32, i32* %8, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %8, align 4
  br label %220

239:                                              ; preds = %220
  store i32 0, i32* %8, align 4
  br label %240

240:                                              ; preds = %256, %239
  %241 = load i32, i32* %8, align 4
  %242 = icmp slt i32 %241, 8
  br i1 %242, label %243, label %259

243:                                              ; preds = %240
  %244 = load i32*, i32** %6, align 8
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** @bnxt_rx_pkts_pri_arr, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @strcpy(i32* %244, i32 %250)
  %252 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %253 = load i32*, i32** %6, align 8
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  store i32* %255, i32** %6, align 8
  br label %256

256:                                              ; preds = %243
  %257 = load i32, i32* %8, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %8, align 4
  br label %240

259:                                              ; preds = %240
  store i32 0, i32* %8, align 4
  br label %260

260:                                              ; preds = %276, %259
  %261 = load i32, i32* %8, align 4
  %262 = icmp slt i32 %261, 8
  br i1 %262, label %263, label %279

263:                                              ; preds = %260
  %264 = load i32*, i32** %6, align 8
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bnxt_tx_bytes_pri_arr, align 8
  %266 = load i32, i32* %8, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @strcpy(i32* %264, i32 %270)
  %272 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %273 = load i32*, i32** %6, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32* %275, i32** %6, align 8
  br label %276

276:                                              ; preds = %263
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %8, align 4
  br label %260

279:                                              ; preds = %260
  store i32 0, i32* %8, align 4
  br label %280

280:                                              ; preds = %296, %279
  %281 = load i32, i32* %8, align 4
  %282 = icmp slt i32 %281, 8
  br i1 %282, label %283, label %299

283:                                              ; preds = %280
  %284 = load i32*, i32** %6, align 8
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bnxt_tx_pkts_pri_arr, align 8
  %286 = load i32, i32* %8, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @strcpy(i32* %284, i32 %290)
  %292 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %293 = load i32*, i32** %6, align 8
  %294 = sext i32 %292 to i64
  %295 = getelementptr inbounds i32, i32* %293, i64 %294
  store i32* %295, i32** %6, align 8
  br label %296

296:                                              ; preds = %283
  %297 = load i32, i32* %8, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %8, align 4
  br label %280

299:                                              ; preds = %280
  br label %300

300:                                              ; preds = %299, %214
  br label %301

301:                                              ; preds = %300, %161
  %302 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %303 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @BNXT_FLAG_PCIE_STATS, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %330

308:                                              ; preds = %301
  store i32 0, i32* %8, align 4
  br label %309

309:                                              ; preds = %326, %308
  %310 = load i32, i32* %8, align 4
  %311 = load i32, i32* @BNXT_NUM_PCIE_STATS, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %313, label %329

313:                                              ; preds = %309
  %314 = load i32*, i32** %6, align 8
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bnxt_pcie_stats_arr, align 8
  %316 = load i32, i32* %8, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @strcpy(i32* %314, i32 %320)
  %322 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %323 = load i32*, i32** %6, align 8
  %324 = sext i32 %322 to i64
  %325 = getelementptr inbounds i32, i32* %323, i64 %324
  store i32* %325, i32** %6, align 8
  br label %326

326:                                              ; preds = %313
  %327 = load i32, i32* %8, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %8, align 4
  br label %309

329:                                              ; preds = %309
  br label %330

330:                                              ; preds = %329, %301
  br label %356

331:                                              ; preds = %3
  %332 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %333 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 8
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %349

336:                                              ; preds = %331
  %337 = load i32*, i32** %6, align 8
  %338 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %339 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %338, i32 0, i32 6
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %344 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %347 = mul nsw i32 %345, %346
  %348 = call i32 @memcpy(i32* %337, i32 %342, i32 %347)
  br label %349

349:                                              ; preds = %336, %331
  br label %356

350:                                              ; preds = %3
  %351 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %352 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* %5, align 4
  %355 = call i32 @netdev_err(i32 %353, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %354)
  br label %356

356:                                              ; preds = %350, %349, %330
  ret void
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @sprintf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @BNXT_SUPPORTS_TPA(%struct.bnxt*) #1

declare dso_local i32 @strcpy(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
