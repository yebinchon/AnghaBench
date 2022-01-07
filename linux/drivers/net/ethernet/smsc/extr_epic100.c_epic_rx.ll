; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_epic100.c_epic_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_epic100.c_epic_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16, i32, i32, i32 }
%struct.epic_private = type { i32, i32, %struct.TYPE_4__*, i32, i32, %struct.sk_buff** }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c" In epic_rx(), entry %d %8.8x.\0A\00", align 1
@DescOwn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"  epic_rx() status was %8.8x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"epic_rx() error status was %8.8x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"Oversized Ethernet frame spanned multiple buffers, status %4.4x!\0A\00", align 1
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Oversized Ethernet frame, status %x %d bytes.\0A\00", align 1
@rx_copybreak = common dso_local global i16 0, align 2
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @epic_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epic_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.epic_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.epic_private* @netdev_priv(%struct.net_device* %13)
  store %struct.epic_private* %14, %struct.epic_private** %5, align 8
  %15 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %16 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RX_RING_SIZE, align 4
  %19 = srem i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %21 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RX_RING_SIZE, align 4
  %24 = add nsw i32 %22, %23
  %25 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %26 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %29 = load i32, i32* @debug, align 4
  %30 = icmp sgt i32 %29, 4
  br i1 %30, label %31, label %43

31:                                               ; preds = %2
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %35 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_dbg(%struct.net_device* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %41)
  br label %43

43:                                               ; preds = %31, %2
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %43
  br label %50

50:                                               ; preds = %252, %49
  %51 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %52 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DescOwn, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %261

62:                                               ; preds = %50
  %63 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %64 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @debug, align 4
  %72 = icmp sgt i32 %71, 4
  br i1 %72, label %73, label %77

73:                                               ; preds = %62
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_dbg(%struct.net_device* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %62
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %261

82:                                               ; preds = %77
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %83, 8198
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %118

86:                                               ; preds = %82
  %87 = load i32, i32* @debug, align 4
  %88 = icmp sgt i32 %87, 2
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_dbg(%struct.net_device* %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %86
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, 8192
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load %struct.net_device*, %struct.net_device** %3, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @netdev_warn(%struct.net_device* %98, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %117

106:                                              ; preds = %93
  %107 = load i32, i32* %9, align 4
  %108 = and i32 %107, 6
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %106
  br label %117

117:                                              ; preds = %116, %97
  br label %252

118:                                              ; preds = %82
  %119 = load i32, i32* %9, align 4
  %120 = ashr i32 %119, 16
  %121 = sub nsw i32 %120, 4
  %122 = trunc i32 %121 to i16
  store i16 %122, i16* %10, align 2
  %123 = load i16, i16* %10, align 2
  %124 = sext i16 %123 to i32
  %125 = load i32, i32* @PKT_BUF_SZ, align 4
  %126 = sub nsw i32 %125, 4
  %127 = icmp sgt i32 %124, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %118
  %129 = load %struct.net_device*, %struct.net_device** %3, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i16, i16* %10, align 2
  %132 = call i32 @netdev_err(%struct.net_device* %129, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %130, i16 signext %131)
  store i16 1514, i16* %10, align 2
  br label %133

133:                                              ; preds = %128, %118
  %134 = load i16, i16* %10, align 2
  %135 = sext i16 %134 to i32
  %136 = load i16, i16* @rx_copybreak, align 2
  %137 = sext i16 %136 to i32
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %198

139:                                              ; preds = %133
  %140 = load %struct.net_device*, %struct.net_device** %3, align 8
  %141 = load i16, i16* %10, align 2
  %142 = sext i16 %141 to i32
  %143 = add nsw i32 %142, 2
  %144 = trunc i32 %143 to i16
  %145 = call i8* @netdev_alloc_skb(%struct.net_device* %140, i16 signext %144)
  %146 = bitcast i8* %145 to %struct.sk_buff*
  store %struct.sk_buff* %146, %struct.sk_buff** %11, align 8
  %147 = icmp ne %struct.sk_buff* %146, null
  br i1 %147, label %148, label %198

148:                                              ; preds = %139
  %149 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %150 = call i32 @skb_reserve(%struct.sk_buff* %149, i32 2)
  %151 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %152 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %155 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %154, i32 0, i32 2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %163 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %166 = call i32 @pci_dma_sync_single_for_cpu(i32 %153, i32 %161, i32 %164, i32 %165)
  %167 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %168 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %169 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %168, i32 0, i32 5
  %170 = load %struct.sk_buff**, %struct.sk_buff*** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %170, i64 %172
  %174 = load %struct.sk_buff*, %struct.sk_buff** %173, align 8
  %175 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i16, i16* %10, align 2
  %178 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %167, i32 %176, i16 signext %177)
  %179 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %180 = load i16, i16* %10, align 2
  %181 = call i32 @skb_put(%struct.sk_buff* %179, i16 signext %180)
  %182 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %183 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %186 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %185, i32 0, i32 2
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %194 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %197 = call i32 @pci_dma_sync_single_for_device(i32 %184, i32 %192, i32 %195, i32 %196)
  br label %230

198:                                              ; preds = %139, %133
  %199 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %200 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %203 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %202, i32 0, i32 2
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %211 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %214 = call i32 @pci_unmap_single(i32 %201, i32 %209, i32 %212, i32 %213)
  %215 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %216 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %215, i32 0, i32 5
  %217 = load %struct.sk_buff**, %struct.sk_buff*** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %217, i64 %219
  %221 = load %struct.sk_buff*, %struct.sk_buff** %220, align 8
  store %struct.sk_buff* %221, %struct.sk_buff** %11, align 8
  %222 = load i16, i16* %10, align 2
  %223 = call i32 @skb_put(%struct.sk_buff* %221, i16 signext %222)
  %224 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %225 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %224, i32 0, i32 5
  %226 = load %struct.sk_buff**, %struct.sk_buff*** %225, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %226, i64 %228
  store %struct.sk_buff* null, %struct.sk_buff** %229, align 8
  br label %230

230:                                              ; preds = %198, %148
  %231 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %232 = load %struct.net_device*, %struct.net_device** %3, align 8
  %233 = call i32 @eth_type_trans(%struct.sk_buff* %231, %struct.net_device* %232)
  %234 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %235 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  %236 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %237 = call i32 @netif_receive_skb(%struct.sk_buff* %236)
  %238 = load %struct.net_device*, %struct.net_device** %3, align 8
  %239 = getelementptr inbounds %struct.net_device, %struct.net_device* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 4
  %243 = load i16, i16* %10, align 2
  %244 = sext i16 %243 to i32
  %245 = load %struct.net_device*, %struct.net_device** %3, align 8
  %246 = getelementptr inbounds %struct.net_device, %struct.net_device* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 0
  %248 = load i16, i16* %247, align 4
  %249 = sext i16 %248 to i32
  %250 = add nsw i32 %249, %244
  %251 = trunc i32 %250 to i16
  store i16 %251, i16* %247, align 4
  br label %252

252:                                              ; preds = %230, %117
  %253 = load i32, i32* %8, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %8, align 4
  %255 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %256 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %256, align 8
  %259 = load i32, i32* @RX_RING_SIZE, align 4
  %260 = srem i32 %258, %259
  store i32 %260, i32* %6, align 4
  br label %50

261:                                              ; preds = %81, %50
  br label %262

262:                                              ; preds = %335, %261
  %263 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %264 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %267 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = sub nsw i32 %265, %268
  %270 = icmp sgt i32 %269, 0
  br i1 %270, label %271, label %340

271:                                              ; preds = %262
  %272 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %273 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @RX_RING_SIZE, align 4
  %276 = srem i32 %274, %275
  store i32 %276, i32* %6, align 4
  %277 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %278 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %277, i32 0, i32 5
  %279 = load %struct.sk_buff**, %struct.sk_buff*** %278, align 8
  %280 = load i32, i32* %6, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %279, i64 %281
  %283 = load %struct.sk_buff*, %struct.sk_buff** %282, align 8
  %284 = icmp eq %struct.sk_buff* %283, null
  br i1 %284, label %285, label %326

285:                                              ; preds = %271
  %286 = load %struct.net_device*, %struct.net_device** %3, align 8
  %287 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %288 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %289, 2
  %291 = trunc i32 %290 to i16
  %292 = call i8* @netdev_alloc_skb(%struct.net_device* %286, i16 signext %291)
  %293 = bitcast i8* %292 to %struct.sk_buff*
  %294 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %295 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %294, i32 0, i32 5
  %296 = load %struct.sk_buff**, %struct.sk_buff*** %295, align 8
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %296, i64 %298
  store %struct.sk_buff* %293, %struct.sk_buff** %299, align 8
  store %struct.sk_buff* %293, %struct.sk_buff** %12, align 8
  %300 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %301 = icmp eq %struct.sk_buff* %300, null
  br i1 %301, label %302, label %303

302:                                              ; preds = %285
  br label %340

303:                                              ; preds = %285
  %304 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %305 = call i32 @skb_reserve(%struct.sk_buff* %304, i32 2)
  %306 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %307 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %310 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %313 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %316 = call i32 @pci_map_single(i32 %308, i32 %311, i32 %314, i32 %315)
  %317 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %318 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %317, i32 0, i32 2
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %318, align 8
  %320 = load i32, i32* %6, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 1
  store i32 %316, i32* %323, align 4
  %324 = load i32, i32* %8, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %8, align 4
  br label %326

326:                                              ; preds = %303, %271
  %327 = load i32, i32* @DescOwn, align 4
  %328 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %329 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %328, i32 0, i32 2
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** %329, align 8
  %331 = load i32, i32* %6, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 0
  store i32 %327, i32* %334, align 4
  br label %335

335:                                              ; preds = %326
  %336 = load %struct.epic_private*, %struct.epic_private** %5, align 8
  %337 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %337, align 4
  br label %262

340:                                              ; preds = %302, %262
  %341 = load i32, i32* %8, align 4
  ret i32 %341
}

declare dso_local %struct.epic_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i16 signext) #1

declare dso_local i8* @netdev_alloc_skb(%struct.net_device*, i16 signext) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32, i16 signext) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i16 signext) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
