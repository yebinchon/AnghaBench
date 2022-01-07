; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_islpci_eth.c_islpci_eth_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_islpci_eth.c_islpci_eth_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64*, i32, %struct.sk_buff**, %struct.TYPE_14__, %struct.TYPE_17__*, %struct.net_device* }
%struct.sk_buff = type { i8*, i32, i32, i32, i32, %struct.net_device* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.iw_quality = type { i32, i64, i64, i64 }
%struct.rx_annex_header = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@ISL38XX_CB_RX_QSIZE = common dso_local global i64 0, align 8
@MAX_FRAGMENT_SIZE_RX = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@init_wds = common dso_local global i64 0, align 8
@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@ISL38XX_CB_RX_DATA_LQ = common dso_local global i64 0, align 8
@SHOW_ERROR_MESSAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Error allocating skb\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Error mapping DMA address\0A\00", align 1
@SHOW_BUFFER_CONTENTS = common dso_local global i32 0, align 4
@SHOW_FUNCTION_CALLS = common dso_local global i32 0, align 4
@SHOW_TRACING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @islpci_eth_receive(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iw_quality, align 8
  %12 = alloca %struct.rx_annex_header*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 7
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %3, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %4, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ISL38XX_CB_RX_QSIZE, align 8
  %23 = urem i64 %21, %22
  store i64 %23, i64* %7, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 4
  %34 = load %struct.sk_buff**, %struct.sk_buff*** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %34, i64 %35
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %5, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le32_to_cpu(i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = sub i64 %45, %49
  %51 = and i64 %50, 3
  store i64 %51, i64* %8, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MAX_FRAGMENT_SIZE_RX, align 8
  %62 = add nsw i64 %61, 2
  %63 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %64 = call i32 @pci_unmap_single(i32 %54, i64 %60, i64 %62, i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @skb_put(%struct.sk_buff* %65, i32 %66)
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %1
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i32 @skb_pull(%struct.sk_buff* %71, i32 2)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call i32 @skb_put(%struct.sk_buff* %73, i32 2)
  br label %75

75:                                               ; preds = %70, %1
  %76 = load i64, i64* @init_wds, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %75
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 6
  store i8* %82, i8** %9, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 6
  %91 = call i32 @memmove(i8* %85, i8* %86, i32 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, 6
  %97 = call i32 @skb_trim(%struct.sk_buff* %92, i32 %96)
  br label %98

98:                                               ; preds = %78, %75
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @IW_MODE_MONITOR, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %98
  %108 = load %struct.net_device*, %struct.net_device** %3, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 5
  store %struct.net_device* %108, %struct.net_device** %110, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %112 = call i32 @islpci_monitor_rx(%struct.TYPE_16__* %111, %struct.sk_buff** %5)
  store i32 %112, i32* %10, align 4
  br label %171

113:                                              ; preds = %98
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* @ETH_ALEN, align 4
  %118 = mul nsw i32 2, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %165

127:                                              ; preds = %113
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = bitcast i8* %130 to %struct.rx_annex_header*
  store %struct.rx_annex_header* %131, %struct.rx_annex_header** %12, align 8
  %132 = load %struct.rx_annex_header*, %struct.rx_annex_header** %12, align 8
  %133 = getelementptr inbounds %struct.rx_annex_header, %struct.rx_annex_header* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %11, i32 0, i32 2
  store i64 %135, i64* %136, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %11, i32 0, i32 1
  store i64 %141, i64* %142, align 8
  %143 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %11, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %11, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %144, %146
  %148 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %11, i32 0, i32 3
  store i64 %147, i64* %148, align 8
  %149 = getelementptr inbounds %struct.iw_quality, %struct.iw_quality* %11, i32 0, i32 0
  store i32 7, i32* %149, align 8
  %150 = load %struct.net_device*, %struct.net_device** %3, align 8
  %151 = load %struct.rx_annex_header*, %struct.rx_annex_header** %12, align 8
  %152 = getelementptr inbounds %struct.rx_annex_header, %struct.rx_annex_header* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @wireless_spy_update(%struct.net_device* %150, i32 %153, %struct.iw_quality* %11)
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 4
  %160 = load i32, i32* @ETH_ALEN, align 4
  %161 = mul nsw i32 2, %160
  %162 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %155, i8* %159, i32 %161)
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = call i32 @skb_pull(%struct.sk_buff* %163, i32 4)
  br label %165

165:                                              ; preds = %127, %113
  %166 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %167 = load %struct.net_device*, %struct.net_device** %3, align 8
  %168 = call i32 @eth_type_trans(%struct.sk_buff* %166, %struct.net_device* %167)
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %165, %107
  %172 = load i32, i32* @CHECKSUM_NONE, align 4
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 8
  %175 = load %struct.net_device*, %struct.net_device** %3, align 8
  %176 = getelementptr inbounds %struct.net_device, %struct.net_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  %180 = load i32, i32* %6, align 4
  %181 = load %struct.net_device*, %struct.net_device** %3, align 8
  %182 = getelementptr inbounds %struct.net_device, %struct.net_device* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, %180
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* %10, align 4
  %187 = call i64 @unlikely(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %171
  %190 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %191 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %190)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %195

192:                                              ; preds = %171
  %193 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %194 = call i32 @netif_rx(%struct.sk_buff* %193)
  br label %195

195:                                              ; preds = %192, %189
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %197, align 8
  br label %200

200:                                              ; preds = %277, %195
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i64, i64* @ISL38XX_CB_RX_DATA_LQ, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i64 @le32_to_cpu(i32 %206)
  store i64 %207, i64* %7, align 8
  %208 = load i64, i64* %7, align 8
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = sub i64 %208, %211
  %213 = load i64, i64* @ISL38XX_CB_RX_QSIZE, align 8
  %214 = icmp ult i64 %212, %213
  br i1 %214, label %215, label %298

215:                                              ; preds = %200
  %216 = load i64, i64* @MAX_FRAGMENT_SIZE_RX, align 8
  %217 = add nsw i64 %216, 2
  %218 = call %struct.sk_buff* @dev_alloc_skb(i64 %217)
  store %struct.sk_buff* %218, %struct.sk_buff** %5, align 8
  %219 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %220 = icmp eq %struct.sk_buff* %219, null
  %221 = zext i1 %220 to i32
  %222 = call i64 @unlikely(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %215
  %225 = load i32, i32* @SHOW_ERROR_MESSAGES, align 4
  %226 = call i32 (i32, i8*, ...) @DEBUG(i32 %225, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %298

227:                                              ; preds = %215
  %228 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %229 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %230 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = ptrtoint i8* %231 to i64
  %233 = sub nsw i64 4, %232
  %234 = and i64 %233, 3
  %235 = trunc i64 %234 to i32
  %236 = call i32 @skb_reserve(%struct.sk_buff* %228, i32 %235)
  %237 = load i64, i64* %7, align 8
  %238 = load i64, i64* @ISL38XX_CB_RX_QSIZE, align 8
  %239 = urem i64 %237, %238
  store i64 %239, i64* %7, align 8
  %240 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 4
  %243 = load %struct.sk_buff**, %struct.sk_buff*** %242, align 8
  %244 = load i64, i64* %7, align 8
  %245 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %243, i64 %244
  store %struct.sk_buff* %240, %struct.sk_buff** %245, align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %250 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = load i64, i64* @MAX_FRAGMENT_SIZE_RX, align 8
  %253 = add nsw i64 %252, 2
  %254 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %255 = call i64 @pci_map_single(i32 %248, i8* %251, i64 %253, i32 %254)
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 2
  %258 = load i64*, i64** %257, align 8
  %259 = load i64, i64* %7, align 8
  %260 = getelementptr inbounds i64, i64* %258, i64 %259
  store i64 %255, i64* %260, align 8
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 2
  %266 = load i64*, i64** %265, align 8
  %267 = load i64, i64* %7, align 8
  %268 = getelementptr inbounds i64, i64* %266, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = call i64 @pci_dma_mapping_error(i32 %263, i64 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %227
  %273 = load i32, i32* @SHOW_ERROR_MESSAGES, align 4
  %274 = call i32 (i32, i8*, ...) @DEBUG(i32 %273, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %275 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %276 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %275)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %298

277:                                              ; preds = %227
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 2
  %280 = load i64*, i64** %279, align 8
  %281 = load i64, i64* %7, align 8
  %282 = getelementptr inbounds i64, i64* %280, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = call i32 @cpu_to_le32(i64 %283)
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %286, align 8
  %288 = load i64, i64* %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 0
  store i32 %284, i32* %290, align 4
  %291 = call i32 (...) @wmb()
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i64, i64* @ISL38XX_CB_RX_DATA_LQ, align 8
  %296 = getelementptr inbounds i32, i32* %294, i64 %295
  %297 = call i32 @le32_add_cpu(i32* %296, i32 1)
  br label %200

298:                                              ; preds = %272, %224, %200
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %300 = call i32 @islpci_trigger(%struct.TYPE_16__* %299)
  ret i32 0
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @islpci_monitor_rx(%struct.TYPE_16__*, %struct.sk_buff**) #1

declare dso_local i32 @wireless_spy_update(%struct.net_device*, i32, %struct.iw_quality*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64 @pci_map_single(i32, i8*, i64, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i64) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @islpci_trigger(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
