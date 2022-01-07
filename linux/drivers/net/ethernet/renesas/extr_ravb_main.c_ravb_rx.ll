; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ravb_private = type { i32*, i32*, i32*, i32, %struct.sk_buff***, i64, %struct.ravb_ex_rx_desc**, i32*, %struct.net_device_stats* }
%struct.sk_buff = type { i32, i32 }
%struct.ravb_ex_rx_desc = type { i64, i32, i32, i8*, i32, i32, i8* }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i32, i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@DT_FEMPTY = common dso_local global i64 0, align 8
@RX_DS = common dso_local global i32 0, align 4
@MSC_MC = common dso_local global i32 0, align 4
@MSC_CRC = common dso_local global i32 0, align 4
@MSC_RFE = common dso_local global i32 0, align 4
@MSC_RTSF = common dso_local global i32 0, align 4
@MSC_RTLF = common dso_local global i32 0, align 4
@MSC_CEEF = common dso_local global i32 0, align 4
@RAVB_RXTSTAMP_TYPE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RAVB_NC = common dso_local global i32 0, align 4
@RAVB_RXTSTAMP_TYPE_V2_L2_EVENT = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@RAVB_ALIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32)* @ravb_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_rx(%struct.net_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ravb_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device_stats*, align 8
  %11 = alloca %struct.ravb_ex_rx_desc*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.timespec64, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.skb_shared_hwtstamps*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %20)
  store %struct.ravb_private* %21, %struct.ravb_private** %7, align 8
  %22 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %23 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %30 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = srem i32 %28, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %38 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %45 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %43, %50
  %52 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %53 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %51, %58
  store i32 %59, i32* %9, align 4
  %60 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %61 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %60, i32 0, i32 8
  %62 = load %struct.net_device_stats*, %struct.net_device_stats** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %62, i64 %64
  store %struct.net_device_stats* %65, %struct.net_device_stats** %10, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @min(i32 %66, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %17, align 4
  %71 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %72 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %71, i32 0, i32 6
  %73 = load %struct.ravb_ex_rx_desc**, %struct.ravb_ex_rx_desc*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %73, i64 %75
  %77 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %77, i64 %79
  store %struct.ravb_ex_rx_desc* %80, %struct.ravb_ex_rx_desc** %11, align 8
  br label %81

81:                                               ; preds = %292, %105, %3
  %82 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %11, align 8
  %83 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DT_FEMPTY, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %319

87:                                               ; preds = %81
  %88 = call i32 (...) @dma_rmb()
  %89 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %11, align 8
  %90 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %15, align 4
  %92 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %11, align 8
  %93 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @le16_to_cpu(i8* %94)
  %96 = load i32, i32* @RX_DS, align 4
  %97 = and i32 %95, %96
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  br label %319

102:                                              ; preds = %87
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  br label %81

106:                                              ; preds = %102
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @MSC_MC, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %113 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %111, %106
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @MSC_CRC, align 4
  %119 = load i32, i32* @MSC_RFE, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @MSC_RTSF, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @MSC_RTLF, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @MSC_CEEF, align 4
  %126 = or i32 %124, %125
  %127 = and i32 %117, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %176

129:                                              ; preds = %116
  %130 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %131 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* @MSC_CRC, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %129
  %139 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %140 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %138, %129
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* @MSC_RFE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %150 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %148, %143
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @MSC_RTLF, align 4
  %156 = load i32, i32* @MSC_RTSF, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %154, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %153
  %161 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %162 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %160, %153
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* @MSC_CEEF, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %172 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %170, %165
  br label %292

176:                                              ; preds = %116
  %177 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %178 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @RAVB_RXTSTAMP_TYPE, align 4
  %181 = and i32 %179, %180
  store i32 %181, i32* %18, align 4
  %182 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %183 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %182, i32 0, i32 4
  %184 = load %struct.sk_buff***, %struct.sk_buff**** %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.sk_buff**, %struct.sk_buff*** %184, i64 %186
  %188 = load %struct.sk_buff**, %struct.sk_buff*** %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %188, i64 %190
  %192 = load %struct.sk_buff*, %struct.sk_buff** %191, align 8
  store %struct.sk_buff* %192, %struct.sk_buff** %12, align 8
  %193 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %194 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %193, i32 0, i32 4
  %195 = load %struct.sk_buff***, %struct.sk_buff**** %194, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.sk_buff**, %struct.sk_buff*** %195, i64 %197
  %199 = load %struct.sk_buff**, %struct.sk_buff*** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %199, i64 %201
  store %struct.sk_buff* null, %struct.sk_buff** %202, align 8
  %203 = load %struct.net_device*, %struct.net_device** %4, align 8
  %204 = getelementptr inbounds %struct.net_device, %struct.net_device* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %11, align 8
  %208 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @le32_to_cpu(i32 %209)
  %211 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %212 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %211, i32 0, i32 5
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %215 = call i32 @dma_unmap_single(i32 %206, i32 %210, i64 %213, i32 %214)
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* @RAVB_NC, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %176
  %220 = load i32, i32* @RAVB_RXTSTAMP_TYPE_V2_L2_EVENT, align 4
  br label %224

221:                                              ; preds = %176
  %222 = load i32, i32* @RAVB_RXTSTAMP_TYPE_V2_L2_EVENT, align 4
  %223 = xor i32 %222, -1
  br label %224

224:                                              ; preds = %221, %219
  %225 = phi i32 [ %220, %219 ], [ %223, %221 ]
  %226 = load i32, i32* %18, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %18, align 4
  %228 = load i32, i32* %18, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %256

230:                                              ; preds = %224
  %231 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %232 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %231)
  store %struct.skb_shared_hwtstamps* %232, %struct.skb_shared_hwtstamps** %19, align 8
  %233 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %19, align 8
  %234 = call i32 @memset(%struct.skb_shared_hwtstamps* %233, i32 0, i32 4)
  %235 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %11, align 8
  %236 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %235, i32 0, i32 6
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @le16_to_cpu(i8* %237)
  %239 = shl i32 %238, 32
  %240 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %11, align 8
  %241 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @le32_to_cpu(i32 %242)
  %244 = or i32 %239, %243
  %245 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %14, i32 0, i32 0
  store i32 %244, i32* %245, align 4
  %246 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %11, align 8
  %247 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @le32_to_cpu(i32 %248)
  %250 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %14, i32 0, i32 1
  store i32 %249, i32* %250, align 4
  %251 = bitcast %struct.timespec64* %14 to i64*
  %252 = load i64, i64* %251, align 4
  %253 = call i32 @timespec64_to_ktime(i64 %252)
  %254 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %19, align 8
  %255 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 4
  br label %256

256:                                              ; preds = %230, %224
  %257 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %258 = load i32, i32* %16, align 4
  %259 = call i32 @skb_put(%struct.sk_buff* %257, i32 %258)
  %260 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %261 = load %struct.net_device*, %struct.net_device** %4, align 8
  %262 = call i32 @eth_type_trans(%struct.sk_buff* %260, %struct.net_device* %261)
  %263 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %264 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load %struct.net_device*, %struct.net_device** %4, align 8
  %266 = getelementptr inbounds %struct.net_device, %struct.net_device* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %256
  %272 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %273 = call i32 @ravb_rx_csum(%struct.sk_buff* %272)
  br label %274

274:                                              ; preds = %271, %256
  %275 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %276 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %275, i32 0, i32 7
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %6, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %282 = call i32 @napi_gro_receive(i32* %280, %struct.sk_buff* %281)
  %283 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %284 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %284, align 4
  %287 = load i32, i32* %16, align 4
  %288 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %289 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, %287
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %274, %175
  %293 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %294 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %6, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %298, align 4
  %301 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %302 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %301, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %6, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = srem i32 %300, %307
  store i32 %308, i32* %8, align 4
  %309 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %310 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %309, i32 0, i32 6
  %311 = load %struct.ravb_ex_rx_desc**, %struct.ravb_ex_rx_desc*** %310, align 8
  %312 = load i32, i32* %6, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %311, i64 %313
  %315 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %314, align 8
  %316 = load i32, i32* %8, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %315, i64 %317
  store %struct.ravb_ex_rx_desc* %318, %struct.ravb_ex_rx_desc** %11, align 8
  br label %81

319:                                              ; preds = %101, %81
  br label %320

320:                                              ; preds = %443, %319
  %321 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %322 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %6, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %329 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %328, i32 0, i32 2
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %6, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = sub nsw i32 %327, %334
  %336 = icmp sgt i32 %335, 0
  br i1 %336, label %337, label %452

337:                                              ; preds = %320
  %338 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %339 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %338, i32 0, i32 2
  %340 = load i32*, i32** %339, align 8
  %341 = load i32, i32* %6, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %346 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %6, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = srem i32 %344, %351
  store i32 %352, i32* %8, align 4
  %353 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %354 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %353, i32 0, i32 6
  %355 = load %struct.ravb_ex_rx_desc**, %struct.ravb_ex_rx_desc*** %354, align 8
  %356 = load i32, i32* %6, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %355, i64 %357
  %359 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %358, align 8
  %360 = load i32, i32* %8, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %359, i64 %361
  store %struct.ravb_ex_rx_desc* %362, %struct.ravb_ex_rx_desc** %11, align 8
  %363 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %364 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %363, i32 0, i32 5
  %365 = load i64, i64* %364, align 8
  %366 = call i8* @cpu_to_le16(i64 %365)
  %367 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %11, align 8
  %368 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %367, i32 0, i32 3
  store i8* %366, i8** %368, align 8
  %369 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %370 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %369, i32 0, i32 4
  %371 = load %struct.sk_buff***, %struct.sk_buff**** %370, align 8
  %372 = load i32, i32* %6, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.sk_buff**, %struct.sk_buff*** %371, i64 %373
  %375 = load %struct.sk_buff**, %struct.sk_buff*** %374, align 8
  %376 = load i32, i32* %8, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %375, i64 %377
  %379 = load %struct.sk_buff*, %struct.sk_buff** %378, align 8
  %380 = icmp ne %struct.sk_buff* %379, null
  br i1 %380, label %438, label %381

381:                                              ; preds = %337
  %382 = load %struct.net_device*, %struct.net_device** %4, align 8
  %383 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %384 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %383, i32 0, i32 5
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* @RAVB_ALIGN, align 8
  %387 = add nsw i64 %385, %386
  %388 = sub nsw i64 %387, 1
  %389 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %382, i64 %388)
  store %struct.sk_buff* %389, %struct.sk_buff** %12, align 8
  %390 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %391 = icmp ne %struct.sk_buff* %390, null
  br i1 %391, label %393, label %392

392:                                              ; preds = %381
  br label %452

393:                                              ; preds = %381
  %394 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %395 = call i32 @ravb_set_buffer_align(%struct.sk_buff* %394)
  %396 = load %struct.net_device*, %struct.net_device** %4, align 8
  %397 = getelementptr inbounds %struct.net_device, %struct.net_device* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %401 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %11, align 8
  %404 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %403, i32 0, i32 3
  %405 = load i8*, i8** %404, align 8
  %406 = call i32 @le16_to_cpu(i8* %405)
  %407 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %408 = call i32 @dma_map_single(i32 %399, i32 %402, i32 %406, i32 %407)
  store i32 %408, i32* %13, align 4
  %409 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %410 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %409)
  %411 = load %struct.net_device*, %struct.net_device** %4, align 8
  %412 = getelementptr inbounds %struct.net_device, %struct.net_device* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* %13, align 4
  %416 = call i64 @dma_mapping_error(i32 %414, i32 %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %393
  %419 = call i8* @cpu_to_le16(i64 0)
  %420 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %11, align 8
  %421 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %420, i32 0, i32 3
  store i8* %419, i8** %421, align 8
  br label %422

422:                                              ; preds = %418, %393
  %423 = load i32, i32* %13, align 4
  %424 = call i32 @cpu_to_le32(i32 %423)
  %425 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %11, align 8
  %426 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %425, i32 0, i32 2
  store i32 %424, i32* %426, align 4
  %427 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %428 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %429 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %428, i32 0, i32 4
  %430 = load %struct.sk_buff***, %struct.sk_buff**** %429, align 8
  %431 = load i32, i32* %6, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.sk_buff**, %struct.sk_buff*** %430, i64 %432
  %434 = load %struct.sk_buff**, %struct.sk_buff*** %433, align 8
  %435 = load i32, i32* %8, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %434, i64 %436
  store %struct.sk_buff* %427, %struct.sk_buff** %437, align 8
  br label %438

438:                                              ; preds = %422, %337
  %439 = call i32 (...) @dma_wmb()
  %440 = load i64, i64* @DT_FEMPTY, align 8
  %441 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %11, align 8
  %442 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %441, i32 0, i32 0
  store i64 %440, i64* %442, align 8
  br label %443

443:                                              ; preds = %438
  %444 = load %struct.ravb_private*, %struct.ravb_private** %7, align 8
  %445 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %444, i32 0, i32 2
  %446 = load i32*, i32** %445, align 8
  %447 = load i32, i32* %6, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %446, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %449, align 4
  br label %320

452:                                              ; preds = %392, %320
  %453 = load i32, i32* %17, align 4
  %454 = load i32, i32* %9, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %9, align 4
  %456 = sub nsw i32 %453, %455
  %457 = load i32*, i32** %5, align 8
  %458 = load i32, i32* %457, align 4
  %459 = sub nsw i32 %458, %456
  store i32 %459, i32* %457, align 4
  %460 = load i32, i32* %9, align 4
  %461 = icmp sle i32 %460, 0
  %462 = zext i1 %461 to i32
  ret i32 %462
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @timespec64_to_ktime(i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @ravb_rx_csum(%struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i32 @ravb_set_buffer_align(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dma_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
