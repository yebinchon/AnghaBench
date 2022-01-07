; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_enh_desc.c_enh_desc_get_ext_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_enh_desc.c_enh_desc_get_ext_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_extended_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ERDES0_RX_MAC_ADDR = common dso_local global i32 0, align 4
@ERDES4_MSG_TYPE_MASK = common dso_local global i32 0, align 4
@ERDES4_IP_HDR_ERR = common dso_local global i32 0, align 4
@ERDES4_IP_PAYLOAD_ERR = common dso_local global i32 0, align 4
@ERDES4_IP_CSUM_BYPASSED = common dso_local global i32 0, align 4
@ERDES4_IPV4_PKT_RCVD = common dso_local global i32 0, align 4
@ERDES4_IPV6_PKT_RCVD = common dso_local global i32 0, align 4
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
@ERDES4_PTP_FRAME_TYPE = common dso_local global i32 0, align 4
@ERDES4_PTP_VER = common dso_local global i32 0, align 4
@ERDES4_TIMESTAMP_DROPPED = common dso_local global i32 0, align 4
@ERDES4_AV_PKT_RCVD = common dso_local global i32 0, align 4
@ERDES4_AV_TAGGED_PKT_RCVD = common dso_local global i32 0, align 4
@ERDES4_VLAN_TAG_PRI_VAL_MASK = common dso_local global i32 0, align 4
@ERDES4_L3_FILTER_MATCH = common dso_local global i32 0, align 4
@ERDES4_L4_FILTER_MATCH = common dso_local global i32 0, align 4
@ERDES4_L3_L4_FILT_NO_MATCH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.stmmac_extra_stats*, %struct.dma_extended_desc*)* @enh_desc_get_ext_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enh_desc_get_ext_status(i8* %0, %struct.stmmac_extra_stats* %1, %struct.dma_extended_desc* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stmmac_extra_stats*, align 8
  %6 = alloca %struct.dma_extended_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.stmmac_extra_stats* %1, %struct.stmmac_extra_stats** %5, align 8
  store %struct.dma_extended_desc* %2, %struct.dma_extended_desc** %6, align 8
  %10 = load %struct.dma_extended_desc*, %struct.dma_extended_desc** %6, align 8
  %11 = getelementptr inbounds %struct.dma_extended_desc, %struct.dma_extended_desc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le32_to_cpu(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.dma_extended_desc*, %struct.dma_extended_desc** %6, align 8
  %16 = getelementptr inbounds %struct.dma_extended_desc, %struct.dma_extended_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ERDES0_RX_MAC_ADDR, align 4
  %21 = and i32 %19, %20
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %280

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ERDES4_MSG_TYPE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = lshr i32 %27, 8
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @ERDES4_IP_HDR_ERR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %35 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %34, i32 0, i32 24
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %24
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ERDES4_IP_PAYLOAD_ERR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %45 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %44, i32 0, i32 23
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @ERDES4_IP_CSUM_BYPASSED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %55 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %54, i32 0, i32 22
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @ERDES4_IPV4_PKT_RCVD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %65 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %64, i32 0, i32 21
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @ERDES4_IPV6_PKT_RCVD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %75 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %74, i32 0, i32 20
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @RDES_EXT_NO_PTP, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %84 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %83, i32 0, i32 19
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %187

87:                                               ; preds = %78
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @RDES_EXT_SYNC, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %93 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %92, i32 0, i32 18
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %186

96:                                               ; preds = %87
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @RDES_EXT_FOLLOW_UP, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %102 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %101, i32 0, i32 17
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %185

105:                                              ; preds = %96
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @RDES_EXT_DELAY_REQ, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %111 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %110, i32 0, i32 16
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %184

114:                                              ; preds = %105
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @RDES_EXT_DELAY_RESP, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %120 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %119, i32 0, i32 15
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %183

123:                                              ; preds = %114
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @RDES_EXT_PDELAY_REQ, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %129 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %128, i32 0, i32 14
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %182

132:                                              ; preds = %123
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @RDES_EXT_PDELAY_RESP, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %138 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %137, i32 0, i32 13
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %181

141:                                              ; preds = %132
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @RDES_EXT_PDELAY_FOLLOW_UP, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %147 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %146, i32 0, i32 12
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %180

150:                                              ; preds = %141
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @RDES_PTP_ANNOUNCE, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %156 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %155, i32 0, i32 11
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  br label %179

159:                                              ; preds = %150
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @RDES_PTP_MANAGEMENT, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %165 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %164, i32 0, i32 10
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  br label %178

168:                                              ; preds = %159
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @RDES_PTP_PKT_RESERVED_TYPE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %174 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %173, i32 0, i32 9
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %172, %168
  br label %178

178:                                              ; preds = %177, %163
  br label %179

179:                                              ; preds = %178, %154
  br label %180

180:                                              ; preds = %179, %145
  br label %181

181:                                              ; preds = %180, %136
  br label %182

182:                                              ; preds = %181, %127
  br label %183

183:                                              ; preds = %182, %118
  br label %184

184:                                              ; preds = %183, %109
  br label %185

185:                                              ; preds = %184, %100
  br label %186

186:                                              ; preds = %185, %91
  br label %187

187:                                              ; preds = %186, %82
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @ERDES4_PTP_FRAME_TYPE, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %194 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %192, %187
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @ERDES4_PTP_VER, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %204 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %202, %197
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* @ERDES4_TIMESTAMP_DROPPED, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %214 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %212, %207
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* @ERDES4_AV_PKT_RCVD, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %224 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %222, %217
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* @ERDES4_AV_TAGGED_PKT_RCVD, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %227
  %233 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %234 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 4
  br label %237

237:                                              ; preds = %232, %227
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @ERDES4_VLAN_TAG_PRI_VAL_MASK, align 4
  %240 = and i32 %238, %239
  %241 = lshr i32 %240, 18
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %237
  %244 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %245 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %243, %237
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @ERDES4_L3_FILTER_MATCH, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %255 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %253, %248
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* @ERDES4_L4_FILTER_MATCH, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %258
  %264 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %265 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %263, %258
  %269 = load i32, i32* %8, align 4
  %270 = load i32, i32* @ERDES4_L3_L4_FILT_NO_MATCH_MASK, align 4
  %271 = and i32 %269, %270
  %272 = lshr i32 %271, 26
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %268
  %275 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %276 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %276, align 4
  br label %279

279:                                              ; preds = %274, %268
  br label %280

280:                                              ; preds = %279, %3
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
