; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_rx_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_rx_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fe_priv = type { i64, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_10__, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }

@NV_RX_AVAIL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DESC_VER_1 = common dso_local global i64 0, align 8
@NV_RX_DESCRIPTORVALID = common dso_local global i32 0, align 4
@LEN_MASK_V1 = common dso_local global i32 0, align 4
@NV_RX_ERROR = common dso_local global i32 0, align 4
@NV_RX_ERROR_MASK = common dso_local global i32 0, align 4
@NV_RX_ERROR4 = common dso_local global i32 0, align 4
@NV_RX_FRAMINGERR = common dso_local global i32 0, align 4
@NV_RX_SUBTRACT1 = common dso_local global i32 0, align 4
@NV_RX2_DESCRIPTORVALID = common dso_local global i32 0, align 4
@LEN_MASK_V2 = common dso_local global i32 0, align 4
@NV_RX2_ERROR = common dso_local global i32 0, align 4
@NV_RX2_ERROR_MASK = common dso_local global i32 0, align 4
@NV_RX2_ERROR4 = common dso_local global i32 0, align 4
@NV_RX2_FRAMINGERR = common dso_local global i32 0, align 4
@NV_RX2_SUBTRACT1 = common dso_local global i32 0, align 4
@NV_RX2_CHECKSUMMASK = common dso_local global i32 0, align 4
@NV_RX2_CHECKSUM_IP_TCP = common dso_local global i32 0, align 4
@NV_RX2_CHECKSUM_IP_UDP = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@stat_rx_packets = common dso_local global i32 0, align 4
@stat_rx_bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @nv_rx_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_rx_process(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fe_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.fe_priv* %11, %struct.fe_priv** %5, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %275, %2
  %13 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %14 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %18 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %17, i32 0, i32 10
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = icmp ne %struct.TYPE_12__* %16, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %12
  %23 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %24 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @NV_RX_AVAIL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br label %37

37:                                               ; preds = %33, %22, %12
  %38 = phi i1 [ false, %22 ], [ false, %12 ], [ %36, %33 ]
  br i1 %38, label %39, label %278

39:                                               ; preds = %37
  %40 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %41 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %40, i32 0, i32 9
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %45 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %50 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %49, i32 0, i32 2
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %55 = call i32 @dma_unmap_single(i32* %43, i32 %48, i32 %53, i32 %54)
  %56 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %57 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %56, i32 0, i32 2
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  store %struct.sk_buff* %60, %struct.sk_buff** %8, align 8
  %61 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %62 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %61, i32 0, i32 2
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %64, align 8
  %65 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %66 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DESC_VER_1, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %132

70:                                               ; preds = %39
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @NV_RX_DESCRIPTORVALID, align 4
  %73 = and i32 %71, %72
  %74 = call i64 @likely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %128

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @LEN_MASK_V1, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @NV_RX_ERROR, align 4
  %82 = and i32 %80, %81
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %127

85:                                               ; preds = %76
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @NV_RX_ERROR_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @NV_RX_ERROR4, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @nv_getlen(%struct.net_device* %92, i32 %95, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = call i32 @dev_kfree_skb(%struct.sk_buff* %101)
  br label %231

103:                                              ; preds = %91
  br label %126

104:                                              ; preds = %85
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @NV_RX_ERROR_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* @NV_RX_FRAMINGERR, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @NV_RX_SUBTRACT1, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %115, %110
  br label %125

119:                                              ; preds = %104
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %122 = call i32 @rx_missing_handler(i32 %120, %struct.fe_priv* %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = call i32 @dev_kfree_skb(%struct.sk_buff* %123)
  br label %231

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %103
  br label %127

127:                                              ; preds = %126, %76
  br label %131

128:                                              ; preds = %70
  %129 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %130 = call i32 @dev_kfree_skb(%struct.sk_buff* %129)
  br label %231

131:                                              ; preds = %127
  br label %207

132:                                              ; preds = %39
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @NV_RX2_DESCRIPTORVALID, align 4
  %135 = and i32 %133, %134
  %136 = call i64 @likely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %203

138:                                              ; preds = %132
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @LEN_MASK_V2, align 4
  %141 = and i32 %139, %140
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @NV_RX2_ERROR, align 4
  %144 = and i32 %142, %143
  %145 = call i64 @unlikely(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %186

147:                                              ; preds = %138
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @NV_RX2_ERROR_MASK, align 4
  %150 = and i32 %148, %149
  %151 = load i32, i32* @NV_RX2_ERROR4, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %147
  %154 = load %struct.net_device*, %struct.net_device** %3, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @nv_getlen(%struct.net_device* %154, i32 %157, i32 %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %153
  %163 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %164 = call i32 @dev_kfree_skb(%struct.sk_buff* %163)
  br label %231

165:                                              ; preds = %153
  br label %185

166:                                              ; preds = %147
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @NV_RX2_ERROR_MASK, align 4
  %169 = and i32 %167, %168
  %170 = load i32, i32* @NV_RX2_FRAMINGERR, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %166
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @NV_RX2_SUBTRACT1, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %9, align 4
  br label %180

180:                                              ; preds = %177, %172
  br label %184

181:                                              ; preds = %166
  %182 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %183 = call i32 @dev_kfree_skb(%struct.sk_buff* %182)
  br label %231

184:                                              ; preds = %180
  br label %185

185:                                              ; preds = %184, %165
  br label %186

186:                                              ; preds = %185, %138
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @NV_RX2_CHECKSUMMASK, align 4
  %189 = and i32 %187, %188
  %190 = load i32, i32* @NV_RX2_CHECKSUM_IP_TCP, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %186
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @NV_RX2_CHECKSUMMASK, align 4
  %195 = and i32 %193, %194
  %196 = load i32, i32* @NV_RX2_CHECKSUM_IP_UDP, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %192, %186
  %199 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %200 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  br label %202

202:                                              ; preds = %198, %192
  br label %206

203:                                              ; preds = %132
  %204 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %205 = call i32 @dev_kfree_skb(%struct.sk_buff* %204)
  br label %231

206:                                              ; preds = %202
  br label %207

207:                                              ; preds = %206, %131
  %208 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @skb_put(%struct.sk_buff* %208, i32 %209)
  %211 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %212 = load %struct.net_device*, %struct.net_device** %3, align 8
  %213 = call i32 @eth_type_trans(%struct.sk_buff* %211, %struct.net_device* %212)
  %214 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %215 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 4
  %216 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %217 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %216, i32 0, i32 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %219 = call i32 @napi_gro_receive(i32* %217, %struct.sk_buff* %218)
  %220 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %221 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %220, i32 0, i32 7
  %222 = call i32 @u64_stats_update_begin(i32* %221)
  %223 = load i32, i32* @stat_rx_packets, align 4
  %224 = call i32 @nv_txrx_stats_inc(i32 %223)
  %225 = load i32, i32* @stat_rx_bytes, align 4
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @nv_txrx_stats_add(i32 %225, i32 %226)
  %228 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %229 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %228, i32 0, i32 7
  %230 = call i32 @u64_stats_update_end(i32* %229)
  br label %231

231:                                              ; preds = %207, %203, %181, %162, %128, %119, %100
  %232 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %233 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %232, i32 0, i32 5
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 1
  store %struct.TYPE_12__* %236, %struct.TYPE_12__** %234, align 8
  %237 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %238 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %237, i32 0, i32 6
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to %struct.TYPE_12__*
  %243 = icmp eq %struct.TYPE_12__* %235, %242
  %244 = zext i1 %243 to i32
  %245 = call i64 @unlikely(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %231
  %248 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %249 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %250, align 8
  %252 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %253 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  store %struct.TYPE_12__* %251, %struct.TYPE_12__** %254, align 8
  br label %255

255:                                              ; preds = %247, %231
  %256 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %257 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %256, i32 0, i32 2
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 1
  store %struct.TYPE_14__* %259, %struct.TYPE_14__** %257, align 8
  %260 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %261 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = inttoptr i64 %263 to %struct.TYPE_14__*
  %265 = icmp eq %struct.TYPE_14__* %258, %264
  %266 = zext i1 %265 to i32
  %267 = call i64 @unlikely(i32 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %255
  %270 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %271 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %270, i32 0, i32 1
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %271, align 8
  %273 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %274 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %273, i32 0, i32 2
  store %struct.TYPE_14__* %272, %struct.TYPE_14__** %274, align 8
  br label %275

275:                                              ; preds = %269, %255
  %276 = load i32, i32* %7, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %7, align 4
  br label %12

278:                                              ; preds = %37
  %279 = load i32, i32* %7, align 4
  ret i32 %279
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nv_getlen(%struct.net_device*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rx_missing_handler(i32, %struct.fe_priv*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @nv_txrx_stats_inc(i32) #1

declare dso_local i32 @nv_txrx_stats_add(i32, i32) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
