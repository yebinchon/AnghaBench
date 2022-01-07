; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac4_descs.c_dwmac4_wrback_get_rx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac4_descs.c_dwmac4_wrback_get_rx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_desc = type { i32, i32, i32 }
%struct.net_device_stats = type { i32, i32 }

@good_frame = common dso_local global i32 0, align 4
@RDES3_OWN = common dso_local global i32 0, align 4
@dma_own = common dso_local global i32 0, align 4
@RDES3_LAST_DESCRIPTOR = common dso_local global i32 0, align 4
@discard_frame = common dso_local global i32 0, align 4
@RDES3_ERROR_SUMMARY = common dso_local global i32 0, align 4
@RDES3_GIANT_PACKET = common dso_local global i32 0, align 4
@RDES3_OVERFLOW_ERROR = common dso_local global i32 0, align 4
@RDES3_RECEIVE_WATCHDOG = common dso_local global i32 0, align 4
@RDES3_RECEIVE_ERROR = common dso_local global i32 0, align 4
@RDES3_CRC_ERROR = common dso_local global i32 0, align 4
@RDES3_DRIBBLE_ERROR = common dso_local global i32 0, align 4
@ERDES4_MSG_TYPE_MASK = common dso_local global i32 0, align 4
@RDES1_IP_HDR_ERROR = common dso_local global i32 0, align 4
@RDES1_IP_CSUM_BYPASSED = common dso_local global i32 0, align 4
@RDES1_IPV4_HEADER = common dso_local global i32 0, align 4
@RDES1_IPV6_HEADER = common dso_local global i32 0, align 4
@RDES_EXT_NO_PTP = common dso_local global i32 0, align 4
@RDES_EXT_SYNC = common dso_local global i32 0, align 4
@RDES_EXT_FOLLOW_UP = common dso_local global i32 0, align 4
@RDES_EXT_DELAY_REQ = common dso_local global i32 0, align 4
@RDES_EXT_DELAY_RESP = common dso_local global i32 0, align 4
@RDES_EXT_PDELAY_REQ = common dso_local global i32 0, align 4
@RDES_EXT_PDELAY_RESP = common dso_local global i32 0, align 4
@RDES_EXT_PDELAY_FOLLOW_UP = common dso_local global i32 0, align 4
@RDES_PTP_ANNOUNCE = common dso_local global i32 0, align 4
@RDES_PTP_MANAGEMENT = common dso_local global i32 0, align 4
@RDES_PTP_PKT_RESERVED_TYPE = common dso_local global i32 0, align 4
@RDES1_PTP_PACKET_TYPE = common dso_local global i32 0, align 4
@RDES1_PTP_VER = common dso_local global i32 0, align 4
@RDES1_TIMESTAMP_DROPPED = common dso_local global i32 0, align 4
@RDES2_SA_FILTER_FAIL = common dso_local global i32 0, align 4
@RDES2_DA_FILTER_FAIL = common dso_local global i32 0, align 4
@RDES2_L3_FILTER_MATCH = common dso_local global i32 0, align 4
@RDES2_L4_FILTER_MATCH = common dso_local global i32 0, align 4
@RDES2_L3_L4_FILT_NB_MATCH_MASK = common dso_local global i32 0, align 4
@RDES2_L3_L4_FILT_NB_MATCH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*)* @dwmac4_wrback_get_rx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwmac4_wrback_get_rx_status(i8* %0, %struct.stmmac_extra_stats* %1, %struct.dma_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stmmac_extra_stats*, align 8
  %7 = alloca %struct.dma_desc*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.stmmac_extra_stats* %1, %struct.stmmac_extra_stats** %6, align 8
  store %struct.dma_desc* %2, %struct.dma_desc** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.net_device_stats*
  store %struct.net_device_stats* %15, %struct.net_device_stats** %8, align 8
  %16 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %17 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %21 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %25 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @good_frame, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @RDES3_OWN, align 4
  %31 = and i32 %29, %30
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @dma_own, align 4
  store i32 %35, i32* %4, align 4
  br label %366

36:                                               ; preds = %3
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @RDES3_LAST_DESCRIPTOR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @discard_frame, align 4
  store i32 %46, i32* %4, align 4
  br label %366

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @RDES3_ERROR_SUMMARY, align 4
  %50 = and i32 %48, %49
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %125

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @RDES3_GIANT_PACKET, align 4
  %56 = and i32 %54, %55
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %61 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %53
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @RDES3_OVERFLOW_ERROR, align 4
  %67 = and i32 %65, %66
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %72 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %71, i32 0, i32 27
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %70, %64
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @RDES3_RECEIVE_WATCHDOG, align 4
  %78 = and i32 %76, %77
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %83 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %82, i32 0, i32 26
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %81, %75
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @RDES3_RECEIVE_ERROR, align 4
  %89 = and i32 %87, %88
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %94 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %93, i32 0, i32 25
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %92, %86
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @RDES3_CRC_ERROR, align 4
  %100 = and i32 %98, %99
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %105 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %104, i32 0, i32 24
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %109 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %103, %97
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @RDES3_DRIBBLE_ERROR, align 4
  %115 = and i32 %113, %114
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %120 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %119, i32 0, i32 23
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %118, %112
  %124 = load i32, i32* @discard_frame, align 4
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %123, %47
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @ERDES4_MSG_TYPE_MASK, align 4
  %128 = and i32 %126, %127
  %129 = lshr i32 %128, 8
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @RDES1_IP_HDR_ERROR, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %125
  %135 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %136 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %135, i32 0, i32 22
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %134, %125
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @RDES1_IP_CSUM_BYPASSED, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %146 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %145, i32 0, i32 21
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %144, %139
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @RDES1_IPV4_HEADER, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %156 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %155, i32 0, i32 20
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %154, %149
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @RDES1_IPV6_HEADER, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %166 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %165, i32 0, i32 19
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %164, %159
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* @RDES_EXT_NO_PTP, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %175 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %174, i32 0, i32 18
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %278

178:                                              ; preds = %169
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @RDES_EXT_SYNC, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %184 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %183, i32 0, i32 17
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  br label %277

187:                                              ; preds = %178
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* @RDES_EXT_FOLLOW_UP, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %187
  %192 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %193 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %192, i32 0, i32 16
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  br label %276

196:                                              ; preds = %187
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* @RDES_EXT_DELAY_REQ, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %202 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %201, i32 0, i32 15
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 4
  br label %275

205:                                              ; preds = %196
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* @RDES_EXT_DELAY_RESP, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %205
  %210 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %211 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %210, i32 0, i32 14
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  br label %274

214:                                              ; preds = %205
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* @RDES_EXT_PDELAY_REQ, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %214
  %219 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %220 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %219, i32 0, i32 13
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 4
  br label %273

223:                                              ; preds = %214
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* @RDES_EXT_PDELAY_RESP, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %223
  %228 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %229 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %228, i32 0, i32 12
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 4
  br label %272

232:                                              ; preds = %223
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* @RDES_EXT_PDELAY_FOLLOW_UP, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %232
  %237 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %238 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %237, i32 0, i32 11
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 4
  br label %271

241:                                              ; preds = %232
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* @RDES_PTP_ANNOUNCE, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %241
  %246 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %247 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %246, i32 0, i32 10
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  br label %270

250:                                              ; preds = %241
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* @RDES_PTP_MANAGEMENT, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %250
  %255 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %256 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %255, i32 0, i32 9
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %256, align 4
  br label %269

259:                                              ; preds = %250
  %260 = load i32, i32* %12, align 4
  %261 = load i32, i32* @RDES_PTP_PKT_RESERVED_TYPE, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %268

263:                                              ; preds = %259
  %264 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %265 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %264, i32 0, i32 8
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %263, %259
  br label %269

269:                                              ; preds = %268, %254
  br label %270

270:                                              ; preds = %269, %245
  br label %271

271:                                              ; preds = %270, %236
  br label %272

272:                                              ; preds = %271, %227
  br label %273

273:                                              ; preds = %272, %218
  br label %274

274:                                              ; preds = %273, %209
  br label %275

275:                                              ; preds = %274, %200
  br label %276

276:                                              ; preds = %275, %191
  br label %277

277:                                              ; preds = %276, %182
  br label %278

278:                                              ; preds = %277, %173
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* @RDES1_PTP_PACKET_TYPE, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %285 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %284, i32 0, i32 7
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 4
  br label %288

288:                                              ; preds = %283, %278
  %289 = load i32, i32* %9, align 4
  %290 = load i32, i32* @RDES1_PTP_VER, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %288
  %294 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %295 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %294, i32 0, i32 6
  %296 = load i32, i32* %295, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %295, align 4
  br label %298

298:                                              ; preds = %293, %288
  %299 = load i32, i32* %9, align 4
  %300 = load i32, i32* @RDES1_TIMESTAMP_DROPPED, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %298
  %304 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %305 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %305, align 4
  br label %308

308:                                              ; preds = %303, %298
  %309 = load i32, i32* %10, align 4
  %310 = load i32, i32* @RDES2_SA_FILTER_FAIL, align 4
  %311 = and i32 %309, %310
  %312 = call i64 @unlikely(i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %308
  %315 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %316 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %316, align 4
  %319 = load i32, i32* @discard_frame, align 4
  store i32 %319, i32* %13, align 4
  br label %320

320:                                              ; preds = %314, %308
  %321 = load i32, i32* %10, align 4
  %322 = load i32, i32* @RDES2_DA_FILTER_FAIL, align 4
  %323 = and i32 %321, %322
  %324 = call i64 @unlikely(i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %332

326:                                              ; preds = %320
  %327 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %328 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %328, align 4
  %331 = load i32, i32* @discard_frame, align 4
  store i32 %331, i32* %13, align 4
  br label %332

332:                                              ; preds = %326, %320
  %333 = load i32, i32* %10, align 4
  %334 = load i32, i32* @RDES2_L3_FILTER_MATCH, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %332
  %338 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %339 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %339, align 4
  br label %342

342:                                              ; preds = %337, %332
  %343 = load i32, i32* %10, align 4
  %344 = load i32, i32* @RDES2_L4_FILTER_MATCH, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %342
  %348 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %349 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %349, align 4
  br label %352

352:                                              ; preds = %347, %342
  %353 = load i32, i32* %10, align 4
  %354 = load i32, i32* @RDES2_L3_L4_FILT_NB_MATCH_MASK, align 4
  %355 = and i32 %353, %354
  %356 = load i32, i32* @RDES2_L3_L4_FILT_NB_MATCH_SHIFT, align 4
  %357 = lshr i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %364

359:                                              ; preds = %352
  %360 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %361 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %361, align 4
  br label %364

364:                                              ; preds = %359, %352
  %365 = load i32, i32* %13, align 4
  store i32 %365, i32* %4, align 4
  br label %366

366:                                              ; preds = %364, %45, %34
  %367 = load i32, i32* %4, align 4
  ret i32 %367
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
