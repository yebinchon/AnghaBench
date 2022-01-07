; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_rx_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_rx_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pcnet32_private = type { i32*, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32, i64, i64 }
%struct.pcnet32_rx_head = type { i32, i32, i32 }

@PKT_BUF_SIZE = common dso_local global i16 0, align 2
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Impossible packet size %d!\0A\00", align 1
@rx_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Runt packet!\0A\00", align 1
@rx_copybreak = common dso_local global i16 0, align 2
@PKT_BUF_SKB = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"DMA mapping error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.pcnet32_private*, %struct.pcnet32_rx_head*, i32)* @pcnet32_rx_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcnet32_rx_entry(%struct.net_device* %0, %struct.pcnet32_private* %1, %struct.pcnet32_rx_head* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.pcnet32_private*, align 8
  %7 = alloca %struct.pcnet32_rx_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i16, align 2
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.pcnet32_private* %1, %struct.pcnet32_private** %6, align 8
  store %struct.pcnet32_rx_head* %2, %struct.pcnet32_rx_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.pcnet32_rx_head*, %struct.pcnet32_rx_head** %7, align 8
  %16 = getelementptr inbounds %struct.pcnet32_rx_head, %struct.pcnet32_rx_head* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @le16_to_cpu(i32 %17)
  %19 = trunc i64 %18 to i16
  %20 = sext i16 %19 to i32
  %21 = ashr i32 %20, 8
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 3
  br i1 %23, label %24, label %75

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %24
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, 32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 16
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %44
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %64
  br label %288

75:                                               ; preds = %4
  %76 = load %struct.pcnet32_rx_head*, %struct.pcnet32_rx_head** %7, align 8
  %77 = getelementptr inbounds %struct.pcnet32_rx_head, %struct.pcnet32_rx_head* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  %80 = and i32 %79, 4095
  %81 = sub nsw i32 %80, 4
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %12, align 2
  %83 = load i16, i16* %12, align 2
  %84 = sext i16 %83 to i32
  %85 = load i16, i16* @PKT_BUF_SIZE, align 2
  %86 = sext i16 %85 to i32
  %87 = icmp sgt i32 %84, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %75
  %92 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %93 = load i32, i32* @drv, align 4
  %94 = load %struct.net_device*, %struct.net_device** %5, align 8
  %95 = load i16, i16* %12, align 2
  %96 = sext i16 %95 to i32
  %97 = call i32 (%struct.pcnet32_private*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.pcnet32_private* %92, i32 %93, %struct.net_device* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %288

103:                                              ; preds = %75
  %104 = load i16, i16* %12, align 2
  %105 = sext i16 %104 to i32
  %106 = icmp slt i32 %105, 60
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %109 = load i32, i32* @rx_err, align 4
  %110 = load %struct.net_device*, %struct.net_device** %5, align 8
  %111 = call i32 (%struct.pcnet32_private*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.pcnet32_private* %108, i32 %109, %struct.net_device* %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %112 = load %struct.net_device*, %struct.net_device** %5, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %288

117:                                              ; preds = %103
  %118 = load i16, i16* %12, align 2
  %119 = sext i16 %118 to i32
  %120 = load i16, i16* @rx_copybreak, align 2
  %121 = sext i16 %120 to i32
  %122 = icmp sgt i32 %119, %121
  br i1 %122, label %123, label %200

123:                                              ; preds = %117
  %124 = load %struct.net_device*, %struct.net_device** %5, align 8
  %125 = load i64, i64* @PKT_BUF_SKB, align 8
  %126 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %124, i64 %125)
  store %struct.sk_buff* %126, %struct.sk_buff** %13, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %128 = icmp ne %struct.sk_buff* %127, null
  br i1 %128, label %129, label %198

129:                                              ; preds = %123
  %130 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %131 = load i64, i64* @NET_IP_ALIGN, align 8
  %132 = call i32 @skb_reserve(%struct.sk_buff* %130, i64 %131)
  %133 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %134 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i16, i16* @PKT_BUF_SIZE, align 2
  %140 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %141 = call i32 @pci_map_single(i32 %135, i64 %138, i16 signext %139, i32 %140)
  store i32 %141, i32* %14, align 4
  %142 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %143 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %14, align 4
  %146 = call i64 @pci_dma_mapping_error(i32 %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %129
  %149 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %150 = load i32, i32* @rx_err, align 4
  %151 = load %struct.net_device*, %struct.net_device** %5, align 8
  %152 = call i32 (%struct.pcnet32_private*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.pcnet32_private* %149, i32 %150, %struct.net_device* %151, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %153 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %154 = call i32 @dev_kfree_skb(%struct.sk_buff* %153)
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  br label %197

155:                                              ; preds = %129
  %156 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %157 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %156, i32 0, i32 2
  %158 = load %struct.sk_buff**, %struct.sk_buff*** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %158, i64 %160
  %162 = load %struct.sk_buff*, %struct.sk_buff** %161, align 8
  store %struct.sk_buff* %162, %struct.sk_buff** %11, align 8
  %163 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %164 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %167 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i16, i16* @PKT_BUF_SIZE, align 2
  %174 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %175 = call i32 @pci_unmap_single(i32 %165, i32 %172, i16 signext %173, i32 %174)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %177 = load i16, i16* %12, align 2
  %178 = call i32 @skb_put(%struct.sk_buff* %176, i16 signext %177)
  %179 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %180 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %181 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %180, i32 0, i32 2
  %182 = load %struct.sk_buff**, %struct.sk_buff*** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %182, i64 %184
  store %struct.sk_buff* %179, %struct.sk_buff** %185, align 8
  %186 = load i32, i32* %14, align 4
  %187 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %188 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %186, i32* %192, align 4
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @cpu_to_le32(i32 %193)
  %195 = load %struct.pcnet32_rx_head*, %struct.pcnet32_rx_head** %7, align 8
  %196 = getelementptr inbounds %struct.pcnet32_rx_head, %struct.pcnet32_rx_head* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 4
  store i32 1, i32* %10, align 4
  br label %197

197:                                              ; preds = %155, %148
  br label %199

198:                                              ; preds = %123
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  br label %199

199:                                              ; preds = %198, %197
  br label %207

200:                                              ; preds = %117
  %201 = load %struct.net_device*, %struct.net_device** %5, align 8
  %202 = load i16, i16* %12, align 2
  %203 = sext i16 %202 to i64
  %204 = load i64, i64* @NET_IP_ALIGN, align 8
  %205 = add nsw i64 %203, %204
  %206 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %201, i64 %205)
  store %struct.sk_buff* %206, %struct.sk_buff** %11, align 8
  br label %207

207:                                              ; preds = %200, %199
  %208 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %209 = icmp eq %struct.sk_buff* %208, null
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load %struct.net_device*, %struct.net_device** %5, align 8
  %212 = getelementptr inbounds %struct.net_device, %struct.net_device* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 4
  br label %288

216:                                              ; preds = %207
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %265, label %219

219:                                              ; preds = %216
  %220 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %221 = load i64, i64* @NET_IP_ALIGN, align 8
  %222 = call i32 @skb_reserve(%struct.sk_buff* %220, i64 %221)
  %223 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %224 = load i16, i16* %12, align 2
  %225 = call i32 @skb_put(%struct.sk_buff* %223, i16 signext %224)
  %226 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %227 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %230 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i16, i16* %12, align 2
  %237 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %238 = call i32 @pci_dma_sync_single_for_cpu(i32 %228, i32 %235, i16 signext %236, i32 %237)
  %239 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %240 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %241 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %240, i32 0, i32 2
  %242 = load %struct.sk_buff**, %struct.sk_buff*** %241, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %242, i64 %244
  %246 = load %struct.sk_buff*, %struct.sk_buff** %245, align 8
  %247 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = inttoptr i64 %248 to i8*
  %250 = load i16, i16* %12, align 2
  %251 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %239, i8* %249, i16 signext %250)
  %252 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %253 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %256 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i16, i16* %12, align 2
  %263 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %264 = call i32 @pci_dma_sync_single_for_device(i32 %254, i32 %261, i16 signext %262, i32 %263)
  br label %265

265:                                              ; preds = %219, %216
  %266 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %267 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.net_device*, %struct.net_device** %5, align 8
  %270 = getelementptr inbounds %struct.net_device, %struct.net_device* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %273, %268
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %271, align 4
  %276 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %277 = load %struct.net_device*, %struct.net_device** %5, align 8
  %278 = call i32 @eth_type_trans(%struct.sk_buff* %276, %struct.net_device* %277)
  %279 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %280 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %279, i32 0, i32 0
  store i32 %278, i32* %280, align 8
  %281 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %282 = call i32 @netif_receive_skb(%struct.sk_buff* %281)
  %283 = load %struct.net_device*, %struct.net_device** %5, align 8
  %284 = getelementptr inbounds %struct.net_device, %struct.net_device* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 4
  br label %288

288:                                              ; preds = %265, %210, %107, %91, %74
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_err(%struct.pcnet32_private*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @pci_map_single(i32, i64, i16 signext, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i16 signext, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i16 signext) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i16 signext, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i16 signext) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i16 signext, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
