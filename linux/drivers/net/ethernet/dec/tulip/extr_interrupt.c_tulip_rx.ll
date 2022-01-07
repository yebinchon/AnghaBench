; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_interrupt.c_tulip_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_interrupt.c_tulip_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i16, i32, i32, i32, i32, i32, i32 }
%struct.tulip_private = type { i32, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@tulip_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"In tulip_rx(), entry %d %08x\0A\00", align 1
@DescOwned = common dso_local global i32 0, align 4
@RxLengthOver2047 = common dso_local global i32 0, align 4
@RxDescCRCError = common dso_local global i32 0, align 4
@RxDescCollisionSeen = common dso_local global i32 0, align 4
@RxDescRunt = common dso_local global i32 0, align 4
@RxDescDescErr = common dso_local global i32 0, align 4
@RxWholePkt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Oversized Ethernet frame spanned multiple buffers, status %08x!\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Receive error, Rx status %08x\0A\00", align 1
@tulip_rx_copybreak = common dso_local global i16 0, align 2
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [85 x i8] c"Internal fault: The skbuff addresses do not match in tulip_rx: %08x vs. %Lx %p / %p\0A\00", align 1
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @tulip_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tulip_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tulip_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.tulip_private* @netdev_priv(%struct.net_device* %11)
  store %struct.tulip_private* %12, %struct.tulip_private** %3, align 8
  %13 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %14 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RX_RING_SIZE, align 4
  %17 = srem i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %19 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RX_RING_SIZE, align 4
  %22 = add nsw i32 %20, %21
  %23 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %24 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %27 = load i32, i32* @tulip_debug, align 4
  %28 = icmp sgt i32 %27, 4
  br i1 %28, label %29, label %41

29:                                               ; preds = %1
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %33 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %32, i32 0, i32 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_dbg(%struct.net_device* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %39)
  br label %41

41:                                               ; preds = %29, %1
  br label %42

42:                                               ; preds = %355, %41
  %43 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %44 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %43, i32 0, i32 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DescOwned, align 4
  %52 = call i32 @cpu_to_le32(i32 %51)
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %364

56:                                               ; preds = %42
  %57 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %58 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %57, i32 0, i32 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @le32_to_cpu(i32 %64)
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @tulip_debug, align 4
  %68 = icmp sgt i32 %67, 5
  br i1 %68, label %69, label %74

69:                                               ; preds = %56
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_dbg(%struct.net_device* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %56
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %5, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %364

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = ashr i32 %80, 16
  %82 = and i32 %81, 2047
  %83 = sub nsw i32 %82, 4
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %8, align 2
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @RxLengthOver2047, align 4
  %87 = load i32, i32* @RxDescCRCError, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @RxDescCollisionSeen, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @RxDescRunt, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @RxDescDescErr, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @RxWholePkt, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %85, %96
  %98 = load i32, i32* @RxWholePkt, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %79
  %101 = load i16, i16* %8, align 2
  %102 = sext i16 %101 to i32
  %103 = icmp sgt i32 %102, 1518
  br i1 %103, label %104, label %189

104:                                              ; preds = %100, %79
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @RxLengthOver2047, align 4
  %107 = load i32, i32* @RxWholePkt, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = load i32, i32* @RxWholePkt, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %104
  %113 = load i32, i32* %7, align 4
  %114 = and i32 %113, 65535
  %115 = icmp ne i32 %114, 32767
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = load i32, i32* @tulip_debug, align 4
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @netdev_warn(%struct.net_device* %120, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %119, %116
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %112
  br label %188

130:                                              ; preds = %104
  %131 = load i32, i32* @tulip_debug, align 4
  %132 = icmp sgt i32 %131, 2
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load %struct.net_device*, %struct.net_device** %2, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_dbg(%struct.net_device* %134, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %133, %130
  %138 = load %struct.net_device*, %struct.net_device** %2, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = load i16, i16* %8, align 2
  %144 = sext i16 %143 to i32
  %145 = icmp sgt i32 %144, 1518
  br i1 %145, label %151, label %146

146:                                              ; preds = %137
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @RxDescRunt, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146, %137
  %152 = load %struct.net_device*, %struct.net_device** %2, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %151, %146
  %158 = load i32, i32* %7, align 4
  %159 = and i32 %158, 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load %struct.net_device*, %struct.net_device** %2, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %161, %157
  %168 = load i32, i32* %7, align 4
  %169 = and i32 %168, 2
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %167
  %172 = load %struct.net_device*, %struct.net_device** %2, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %171, %167
  %178 = load i32, i32* %7, align 4
  %179 = and i32 %178, 1
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %177
  %182 = load %struct.net_device*, %struct.net_device** %2, align 8
  %183 = getelementptr inbounds %struct.net_device, %struct.net_device* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %181, %177
  br label %188

188:                                              ; preds = %187, %129
  br label %355

189:                                              ; preds = %100
  %190 = load i16, i16* %8, align 2
  %191 = sext i16 %190 to i32
  %192 = load i16, i16* @tulip_rx_copybreak, align 2
  %193 = sext i16 %192 to i32
  %194 = icmp slt i32 %191, %193
  br i1 %194, label %195, label %250

195:                                              ; preds = %189
  %196 = load %struct.net_device*, %struct.net_device** %2, align 8
  %197 = load i16, i16* %8, align 2
  %198 = sext i16 %197 to i32
  %199 = add nsw i32 %198, 2
  %200 = trunc i32 %199 to i16
  %201 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %196, i16 signext %200)
  store %struct.sk_buff* %201, %struct.sk_buff** %9, align 8
  %202 = icmp ne %struct.sk_buff* %201, null
  br i1 %202, label %203, label %250

203:                                              ; preds = %195
  %204 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %205 = call i32 @skb_reserve(%struct.sk_buff* %204, i32 2)
  %206 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %207 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %210 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %209, i32 0, i32 2
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %210, align 8
  %212 = load i32, i32* %4, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i16, i16* %8, align 2
  %218 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %219 = call i32 @pci_dma_sync_single_for_cpu(i32 %208, i64 %216, i16 signext %217, i32 %218)
  %220 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %221 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %222 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %221, i32 0, i32 2
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = load i32, i32* %4, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  %228 = load %struct.sk_buff*, %struct.sk_buff** %227, align 8
  %229 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load i16, i16* %8, align 2
  %232 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %220, i32 %230, i16 signext %231)
  %233 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %234 = load i16, i16* %8, align 2
  %235 = call i8* @skb_put(%struct.sk_buff* %233, i16 signext %234)
  %236 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %237 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %240 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %239, i32 0, i32 2
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %240, align 8
  %242 = load i32, i32* %4, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i16, i16* %8, align 2
  %248 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %249 = call i32 @pci_dma_sync_single_for_device(i32 %238, i64 %246, i16 signext %247, i32 %248)
  br label %333

250:                                              ; preds = %195, %189
  %251 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %252 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %251, i32 0, i32 2
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %252, align 8
  %254 = load i32, i32* %4, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 1
  %258 = load %struct.sk_buff*, %struct.sk_buff** %257, align 8
  store %struct.sk_buff* %258, %struct.sk_buff** %9, align 8
  %259 = load i16, i16* %8, align 2
  %260 = call i8* @skb_put(%struct.sk_buff* %258, i16 signext %259)
  store i8* %260, i8** %10, align 8
  %261 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %262 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %261, i32 0, i32 2
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %262, align 8
  %264 = load i32, i32* %4, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %270 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %269, i32 0, i32 4
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %270, align 8
  %272 = load i32, i32* %4, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i64 @le32_to_cpu(i32 %276)
  %278 = icmp ne i64 %268, %277
  br i1 %278, label %279, label %304

279:                                              ; preds = %250
  %280 = load %struct.net_device*, %struct.net_device** %2, align 8
  %281 = getelementptr inbounds %struct.net_device, %struct.net_device* %280, i32 0, i32 1
  %282 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %283 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %282, i32 0, i32 4
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %283, align 8
  %285 = load i32, i32* %4, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = call i64 @le32_to_cpu(i32 %289)
  %291 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %292 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %291, i32 0, i32 2
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %292, align 8
  %294 = load i32, i32* %4, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %300 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i8*, i8** %10, align 8
  %303 = call i32 @dev_err(i32* %281, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i64 %290, i64 %298, i32 %301, i8* %302)
  br label %304

304:                                              ; preds = %279, %250
  %305 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %306 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %309 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %308, i32 0, i32 2
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %309, align 8
  %311 = load i32, i32* %4, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i32, i32* @PKT_BUF_SZ, align 4
  %317 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %318 = call i32 @pci_unmap_single(i32 %307, i64 %315, i32 %316, i32 %317)
  %319 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %320 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %319, i32 0, i32 2
  %321 = load %struct.TYPE_5__*, %struct.TYPE_5__** %320, align 8
  %322 = load i32, i32* %4, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %325, align 8
  %326 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %327 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %326, i32 0, i32 2
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %327, align 8
  %329 = load i32, i32* %4, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 0
  store i64 0, i64* %332, align 8
  br label %333

333:                                              ; preds = %304, %203
  %334 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %335 = load %struct.net_device*, %struct.net_device** %2, align 8
  %336 = call i32 @eth_type_trans(%struct.sk_buff* %334, %struct.net_device* %335)
  %337 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %338 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %337, i32 0, i32 0
  store i32 %336, i32* %338, align 4
  %339 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %340 = call i32 @netif_rx(%struct.sk_buff* %339)
  %341 = load %struct.net_device*, %struct.net_device** %2, align 8
  %342 = getelementptr inbounds %struct.net_device, %struct.net_device* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %343, align 4
  %346 = load i16, i16* %8, align 2
  %347 = sext i16 %346 to i32
  %348 = load %struct.net_device*, %struct.net_device** %2, align 8
  %349 = getelementptr inbounds %struct.net_device, %struct.net_device* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 0
  %351 = load i16, i16* %350, align 4
  %352 = sext i16 %351 to i32
  %353 = add nsw i32 %352, %347
  %354 = trunc i32 %353 to i16
  store i16 %354, i16* %350, align 4
  br label %355

355:                                              ; preds = %333, %188
  %356 = load i32, i32* %6, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %6, align 4
  %358 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %359 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %359, align 8
  %362 = load i32, i32* @RX_RING_SIZE, align 4
  %363 = srem i32 %361, %362
  store i32 %363, i32* %4, align 4
  br label %42

364:                                              ; preds = %78, %42
  %365 = load i32, i32* %6, align 4
  ret i32 %365
}

declare dso_local %struct.tulip_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i16 signext) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i64, i16 signext, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32, i16 signext) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i16 signext) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i64, i16 signext, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64, i32, i8*) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
