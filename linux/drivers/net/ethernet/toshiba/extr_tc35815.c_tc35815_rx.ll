; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_tc35815.c_tc35815_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_tc35815.c_tc35815_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tc35815_local = type { i32, %struct.RxFD*, %struct.RxFD*, %struct.RxFD*, %struct.TYPE_8__*, i32, %struct.TYPE_6__* }
%struct.RxFD = type { %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i8*, i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.BDesc* }
%struct.BDesc = type { i8*, i8* }

@FD_CownsFD = common dso_local global i32 0, align 4
@FD_FDLength_MASK = common dso_local global i32 0, align 4
@FD_BDCnt_MASK = common dso_local global i32 0, align 4
@FD_BDCnt_SHIFT = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@Rx_Good = common dso_local global i32 0, align 4
@BD_RxBDID_MASK = common dso_local global i32 0, align 4
@BD_RxBDID_SHIFT = common dso_local global i32 0, align 4
@RX_BUF_NUM = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Rx error (status %x)\0A\00", align 1
@Rx_Stat_Mask = common dso_local global i32 0, align 4
@Rx_LongErr = common dso_local global i32 0, align 4
@Rx_CRCErr = common dso_local global i32 0, align 4
@Rx_Over = common dso_local global i32 0, align 4
@Rx_Align = common dso_local global i32 0, align 4
@BD_CownsBD = common dso_local global i32 0, align 4
@FD_Next_EOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @tc35815_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc35815_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tc35815_local*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca %struct.BDesc*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call %struct.tc35815_local* @netdev_priv(%struct.net_device* %19)
  store %struct.tc35815_local* %20, %struct.tc35815_local** %5, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %428, %2
  %22 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %23 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %22, i32 0, i32 1
  %24 = load %struct.RxFD*, %struct.RxFD** %23, align 8
  %25 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @le32_to_cpu(i8* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @FD_CownsFD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %429

33:                                               ; preds = %21
  %34 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %35 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %34, i32 0, i32 1
  %36 = load %struct.RxFD*, %struct.RxFD** %35, align 8
  %37 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @le32_to_cpu(i8* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @FD_FDLength_MASK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @FD_BDCnt_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @FD_BDCnt_SHIFT, align 4
  %48 = lshr i32 %46, %47
  store i32 %48, i32* %11, align 4
  %49 = load i64, i64* @ETH_FCS_LEN, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %10, align 4
  %54 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %55 = call i64 @netif_msg_rx_status(%struct.tc35815_local* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %33
  %58 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %59 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %58, i32 0, i32 1
  %60 = load %struct.RxFD*, %struct.RxFD** %59, align 8
  %61 = call i32 @dump_rxfd(%struct.RxFD* %60)
  br label %62

62:                                               ; preds = %57, %33
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @Rx_Good, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %178

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %429

72:                                               ; preds = %67
  %73 = load i32, i32* %11, align 4
  %74 = icmp sgt i32 %73, 1
  %75 = zext i1 %74 to i32
  %76 = call i32 @BUG_ON(i32 %75)
  %77 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %78 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %77, i32 0, i32 1
  %79 = load %struct.RxFD*, %struct.RxFD** %78, align 8
  %80 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @le32_to_cpu(i8* %84)
  %86 = load i32, i32* @BD_RxBDID_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @BD_RxBDID_SHIFT, align 4
  %89 = ashr i32 %87, %88
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @RX_BUF_NUM, align 4
  %92 = icmp sge i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @BUG_ON(i32 %93)
  %95 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %96 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %95, i32 0, i32 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load %struct.sk_buff*, %struct.sk_buff** %101, align 8
  store %struct.sk_buff* %102, %struct.sk_buff** %12, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @prefetch(i32 %105)
  %107 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %108 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %107, i32 0, i32 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %113, align 8
  %114 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %115 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %118 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %117, i32 0, i32 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @RX_BUF_SIZE, align 4
  %126 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %127 = call i32 @pci_unmap_single(i32 %116, i32 %124, i32 %125, i32 %126)
  %128 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %129 = call i32 @HAVE_DMA_RXALIGN(%struct.tc35815_local* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %147, label %131

131:                                              ; preds = %72
  %132 = load i64, i64* @NET_IP_ALIGN, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %131
  %135 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* @NET_IP_ALIGN, align 8
  %143 = sub nsw i64 %141, %142
  %144 = trunc i64 %143 to i32
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @memmove(i32 %137, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %134, %131, %72
  %148 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %149 = load i32, i32* %10, align 4
  %150 = call i8* @skb_put(%struct.sk_buff* %148, i32 %149)
  store i8* %150, i8** %13, align 8
  %151 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %152 = call i64 @netif_msg_pktdata(%struct.tc35815_local* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load i8*, i8** %13, align 8
  %156 = call i32 @print_eth(i8* %155)
  br label %157

157:                                              ; preds = %154, %147
  %158 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %159 = load %struct.net_device*, %struct.net_device** %3, align 8
  %160 = call i32 @eth_type_trans(%struct.sk_buff* %158, %struct.net_device* %159)
  %161 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  %163 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %164 = call i32 @netif_receive_skb(%struct.sk_buff* %163)
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  %167 = load %struct.net_device*, %struct.net_device** %3, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.net_device*, %struct.net_device** %3, align 8
  %174 = getelementptr inbounds %struct.net_device, %struct.net_device* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, %172
  store i32 %177, i32* %175, align 4
  br label %259

178:                                              ; preds = %62
  %179 = load %struct.net_device*, %struct.net_device** %3, align 8
  %180 = getelementptr inbounds %struct.net_device, %struct.net_device* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  %184 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %185 = call i64 @netif_msg_rx_err(%struct.tc35815_local* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %178
  %188 = load %struct.net_device*, %struct.net_device** %3, align 8
  %189 = getelementptr inbounds %struct.net_device, %struct.net_device* %188, i32 0, i32 2
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @Rx_Stat_Mask, align 4
  %192 = and i32 %190, %191
  %193 = call i32 @dev_info(i32* %189, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %192)
  br label %194

194:                                              ; preds = %187, %178
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* @Rx_LongErr, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %214

199:                                              ; preds = %194
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @Rx_CRCErr, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %199
  %205 = load i32, i32* @Rx_LongErr, align 4
  %206 = load i32, i32* @Rx_CRCErr, align 4
  %207 = or i32 %205, %206
  %208 = xor i32 %207, -1
  %209 = load i32, i32* %9, align 4
  %210 = and i32 %209, %208
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* @Rx_Over, align 4
  %212 = load i32, i32* %9, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %9, align 4
  br label %214

214:                                              ; preds = %204, %199, %194
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* @Rx_LongErr, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %214
  %220 = load %struct.net_device*, %struct.net_device** %3, align 8
  %221 = getelementptr inbounds %struct.net_device, %struct.net_device* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %219, %214
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* @Rx_Over, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %225
  %231 = load %struct.net_device*, %struct.net_device** %3, align 8
  %232 = getelementptr inbounds %struct.net_device, %struct.net_device* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 4
  br label %236

236:                                              ; preds = %230, %225
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* @Rx_CRCErr, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %236
  %242 = load %struct.net_device*, %struct.net_device** %3, align 8
  %243 = getelementptr inbounds %struct.net_device, %struct.net_device* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %244, align 4
  br label %247

247:                                              ; preds = %241, %236
  %248 = load i32, i32* %9, align 4
  %249 = load i32, i32* @Rx_Align, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %247
  %253 = load %struct.net_device*, %struct.net_device** %3, align 8
  %254 = getelementptr inbounds %struct.net_device, %struct.net_device* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %252, %247
  br label %259

259:                                              ; preds = %258, %157
  %260 = load i32, i32* %11, align 4
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %384

262:                                              ; preds = %259
  %263 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %264 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %263, i32 0, i32 1
  %265 = load %struct.RxFD*, %struct.RxFD** %264, align 8
  %266 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %265, i32 0, i32 1
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %266, align 8
  %268 = load i32, i32* %11, align 4
  %269 = sub nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 @le32_to_cpu(i8* %273)
  store i32 %274, i32* %15, align 4
  %275 = load i32, i32* %15, align 4
  %276 = load i32, i32* @BD_RxBDID_MASK, align 4
  %277 = and i32 %275, %276
  %278 = load i32, i32* @BD_RxBDID_SHIFT, align 4
  %279 = ashr i32 %277, %278
  %280 = trunc i32 %279 to i8
  store i8 %280, i8* %16, align 1
  %281 = load i8, i8* %16, align 1
  %282 = zext i8 %281 to i32
  %283 = load i32, i32* @RX_BUF_NUM, align 4
  %284 = icmp sge i32 %282, %283
  %285 = zext i1 %284 to i32
  %286 = call i32 @BUG_ON(i32 %285)
  %287 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %288 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %288, align 8
  br label %291

291:                                              ; preds = %367, %262
  %292 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %293 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @RX_BUF_NUM, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %383

297:                                              ; preds = %291
  %298 = load i8, i8* %16, align 1
  %299 = zext i8 %298 to i32
  %300 = add nsw i32 %299, 1
  %301 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %302 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = add nsw i32 %300, %303
  %305 = load i32, i32* @RX_BUF_NUM, align 4
  %306 = srem i32 %304, %305
  %307 = trunc i32 %306 to i8
  store i8 %307, i8* %17, align 1
  %308 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %309 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %308, i32 0, i32 6
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = load %struct.BDesc*, %struct.BDesc** %311, align 8
  %313 = load i8, i8* %17, align 1
  %314 = zext i8 %313 to i64
  %315 = getelementptr inbounds %struct.BDesc, %struct.BDesc* %312, i64 %314
  store %struct.BDesc* %315, %struct.BDesc** %18, align 8
  %316 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %317 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %316, i32 0, i32 4
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %317, align 8
  %319 = load i8, i8* %17, align 1
  %320 = zext i8 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 1
  %323 = load %struct.sk_buff*, %struct.sk_buff** %322, align 8
  %324 = icmp ne %struct.sk_buff* %323, null
  br i1 %324, label %367, label %325

325:                                              ; preds = %297
  %326 = load %struct.net_device*, %struct.net_device** %3, align 8
  %327 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %328 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %331 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %330, i32 0, i32 4
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %331, align 8
  %333 = load i8, i8* %17, align 1
  %334 = zext i8 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 0
  %337 = call %struct.sk_buff* @alloc_rxbuf_skb(%struct.net_device* %326, i32 %329, i32* %336)
  %338 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %339 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %338, i32 0, i32 4
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %339, align 8
  %341 = load i8, i8* %17, align 1
  %342 = zext i8 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 1
  store %struct.sk_buff* %337, %struct.sk_buff** %344, align 8
  %345 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %346 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %345, i32 0, i32 4
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %346, align 8
  %348 = load i8, i8* %17, align 1
  %349 = zext i8 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 1
  %352 = load %struct.sk_buff*, %struct.sk_buff** %351, align 8
  %353 = icmp ne %struct.sk_buff* %352, null
  br i1 %353, label %355, label %354

354:                                              ; preds = %325
  br label %383

355:                                              ; preds = %325
  %356 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %357 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %356, i32 0, i32 4
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %357, align 8
  %359 = load i8, i8* %17, align 1
  %360 = zext i8 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = call i8* @cpu_to_le32(i32 %363)
  %365 = load %struct.BDesc*, %struct.BDesc** %18, align 8
  %366 = getelementptr inbounds %struct.BDesc, %struct.BDesc* %365, i32 0, i32 1
  store i8* %364, i8** %366, align 8
  br label %367

367:                                              ; preds = %355, %297
  %368 = load i32, i32* @BD_CownsBD, align 4
  %369 = load i8, i8* %17, align 1
  %370 = zext i8 %369 to i32
  %371 = load i32, i32* @BD_RxBDID_SHIFT, align 4
  %372 = shl i32 %370, %371
  %373 = or i32 %368, %372
  %374 = load i32, i32* @RX_BUF_SIZE, align 4
  %375 = or i32 %373, %374
  %376 = call i8* @cpu_to_le32(i32 %375)
  %377 = load %struct.BDesc*, %struct.BDesc** %18, align 8
  %378 = getelementptr inbounds %struct.BDesc, %struct.BDesc* %377, i32 0, i32 0
  store i8* %376, i8** %378, align 8
  %379 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %380 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %380, align 8
  br label %291

383:                                              ; preds = %354, %291
  br label %384

384:                                              ; preds = %383, %259
  store i32 0, i32* %7, align 4
  br label %385

385:                                              ; preds = %411, %384
  %386 = load i32, i32* %7, align 4
  %387 = load i32, i32* %11, align 4
  %388 = add nsw i32 %387, 1
  %389 = sdiv i32 %388, 2
  %390 = add nsw i32 %389, 1
  %391 = icmp slt i32 %386, %390
  br i1 %391, label %392, label %414

392:                                              ; preds = %385
  %393 = load i32, i32* @FD_Next_EOL, align 4
  %394 = call i8* @cpu_to_le32(i32 %393)
  %395 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %396 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %395, i32 0, i32 1
  %397 = load %struct.RxFD*, %struct.RxFD** %396, align 8
  %398 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 1
  store i8* %394, i8** %399, align 8
  %400 = load i32, i32* @FD_CownsFD, align 4
  %401 = call i8* @cpu_to_le32(i32 %400)
  %402 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %403 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %402, i32 0, i32 1
  %404 = load %struct.RxFD*, %struct.RxFD** %403, align 8
  %405 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i32 0, i32 0
  store i8* %401, i8** %406, align 8
  %407 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %408 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %407, i32 0, i32 1
  %409 = load %struct.RxFD*, %struct.RxFD** %408, align 8
  %410 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %409, i32 1
  store %struct.RxFD* %410, %struct.RxFD** %408, align 8
  br label %411

411:                                              ; preds = %392
  %412 = load i32, i32* %7, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %7, align 4
  br label %385

414:                                              ; preds = %385
  %415 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %416 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %415, i32 0, i32 1
  %417 = load %struct.RxFD*, %struct.RxFD** %416, align 8
  %418 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %419 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %418, i32 0, i32 3
  %420 = load %struct.RxFD*, %struct.RxFD** %419, align 8
  %421 = icmp ugt %struct.RxFD* %417, %420
  br i1 %421, label %422, label %428

422:                                              ; preds = %414
  %423 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %424 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %423, i32 0, i32 2
  %425 = load %struct.RxFD*, %struct.RxFD** %424, align 8
  %426 = load %struct.tc35815_local*, %struct.tc35815_local** %5, align 8
  %427 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %426, i32 0, i32 1
  store %struct.RxFD* %425, %struct.RxFD** %427, align 8
  br label %428

428:                                              ; preds = %422, %414
  br label %21

429:                                              ; preds = %71, %21
  %430 = load i32, i32* %8, align 4
  ret i32 %430
}

declare dso_local %struct.tc35815_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i64 @netif_msg_rx_status(%struct.tc35815_local*) #1

declare dso_local i32 @dump_rxfd(%struct.RxFD*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @HAVE_DMA_RXALIGN(%struct.tc35815_local*) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @netif_msg_pktdata(%struct.tc35815_local*) #1

declare dso_local i32 @print_eth(i8*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i64 @netif_msg_rx_err(%struct.tc35815_local*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local %struct.sk_buff* @alloc_rxbuf_skb(%struct.net_device*, i32, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
