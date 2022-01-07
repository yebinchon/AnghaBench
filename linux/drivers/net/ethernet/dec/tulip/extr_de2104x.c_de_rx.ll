; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i64, i32, i32 }

@DE_RX_RING_SIZE = common dso_local global i32 0, align 4
@DescOwn = common dso_local global i32 0, align 4
@rx_copybreak = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"rx slot %d status 0x%x len %d copying? %d\0A\00", align 1
@RX_OFFSET = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@RingEnd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"rx work limit reached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.de_private*)* @de_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de_rx(%struct.de_private* %0) #0 {
  %2 = alloca %struct.de_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.de_private* %0, %struct.de_private** %2, align 8
  %14 = load %struct.de_private*, %struct.de_private** %2, align 8
  %15 = getelementptr inbounds %struct.de_private, %struct.de_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @DE_RX_RING_SIZE, align 4
  store i32 %17, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %262, %1
  %19 = load i32, i32* %4, align 4
  %20 = add i32 %19, -1
  store i32 %20, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %284

22:                                               ; preds = %18
  %23 = load %struct.de_private*, %struct.de_private** %2, align 8
  %24 = getelementptr inbounds %struct.de_private, %struct.de_private* %23, i32 0, i32 5
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %10, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = call i32 (...) @rmb()
  %37 = load %struct.de_private*, %struct.de_private** %2, align 8
  %38 = getelementptr inbounds %struct.de_private, %struct.de_private* %37, i32 0, i32 3
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @le32_to_cpu(i8* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @DescOwn, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %22
  br label %284

51:                                               ; preds = %22
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 16
  %54 = and i32 %53, 2047
  %55 = sub nsw i32 %54, 4
  store i32 %55, i32* %8, align 4
  %56 = load %struct.de_private*, %struct.de_private** %2, align 8
  %57 = getelementptr inbounds %struct.de_private, %struct.de_private* %56, i32 0, i32 5
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %51
  %68 = load %struct.de_private*, %struct.de_private** %2, align 8
  %69 = getelementptr inbounds %struct.de_private, %struct.de_private* %68, i32 0, i32 2
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %231

75:                                               ; preds = %51
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 939557632
  %78 = icmp ne i32 %77, 768
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load %struct.de_private*, %struct.de_private** %2, align 8
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @de_rx_err_acct(%struct.de_private* %83, i32 %84, i32 %85, i32 %86)
  br label %231

88:                                               ; preds = %75
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @rx_copybreak, align 4
  %91 = icmp sle i32 %89, %90
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %12, align 4
  %93 = load %struct.de_private*, %struct.de_private** %2, align 8
  %94 = load i32, i32* @rx_status, align 4
  %95 = load %struct.de_private*, %struct.de_private** %2, align 8
  %96 = getelementptr inbounds %struct.de_private, %struct.de_private* %95, i32 0, i32 2
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @netif_dbg(%struct.de_private* %93, i32 %94, %struct.TYPE_11__* %97, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %88
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @RX_OFFSET, align 4
  %108 = add nsw i32 %106, %107
  br label %113

109:                                              ; preds = %88
  %110 = load %struct.de_private*, %struct.de_private** %2, align 8
  %111 = getelementptr inbounds %struct.de_private, %struct.de_private* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  br label %113

113:                                              ; preds = %109, %105
  %114 = phi i32 [ %108, %105 ], [ %112, %109 ]
  store i32 %114, i32* %13, align 4
  %115 = load %struct.de_private*, %struct.de_private** %2, align 8
  %116 = getelementptr inbounds %struct.de_private, %struct.de_private* %115, i32 0, i32 2
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_11__* %117, i32 %118)
  store %struct.sk_buff* %119, %struct.sk_buff** %11, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %121 = icmp ne %struct.sk_buff* %120, null
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %113
  %127 = load %struct.de_private*, %struct.de_private** %2, align 8
  %128 = getelementptr inbounds %struct.de_private, %struct.de_private* %127, i32 0, i32 2
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  store i32 1, i32* %5, align 4
  store i32 100, i32* %4, align 4
  br label %231

134:                                              ; preds = %113
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %172, label %137

137:                                              ; preds = %134
  %138 = load %struct.de_private*, %struct.de_private** %2, align 8
  %139 = getelementptr inbounds %struct.de_private, %struct.de_private* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %144 = call i32 @pci_unmap_single(i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @skb_put(%struct.sk_buff* %145, i32 %146)
  %148 = load %struct.de_private*, %struct.de_private** %2, align 8
  %149 = getelementptr inbounds %struct.de_private, %struct.de_private* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %156 = call i32 @pci_map_single(i32 %150, i32 %153, i32 %154, i32 %155)
  %157 = load %struct.de_private*, %struct.de_private** %2, align 8
  %158 = getelementptr inbounds %struct.de_private, %struct.de_private* %157, i32 0, i32 5
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = load i32, i32* %3, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i32 %156, i32* %163, align 8
  store i32 %156, i32* %9, align 4
  %164 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %165 = load %struct.de_private*, %struct.de_private** %2, align 8
  %166 = getelementptr inbounds %struct.de_private, %struct.de_private* %165, i32 0, i32 5
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = load i32, i32* %3, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  store %struct.sk_buff* %164, %struct.sk_buff** %171, align 8
  br label %197

172:                                              ; preds = %134
  %173 = load %struct.de_private*, %struct.de_private** %2, align 8
  %174 = getelementptr inbounds %struct.de_private, %struct.de_private* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %179 = call i32 @pci_dma_sync_single_for_cpu(i32 %175, i32 %176, i32 %177, i32 %178)
  %180 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %181 = load i32, i32* @RX_OFFSET, align 4
  %182 = call i32 @skb_reserve(%struct.sk_buff* %180, i32 %181)
  %183 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @skb_put(%struct.sk_buff* %184, i32 %185)
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %183, i32 %186, i32 %187)
  %189 = load %struct.de_private*, %struct.de_private** %2, align 8
  %190 = getelementptr inbounds %struct.de_private, %struct.de_private* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %195 = call i32 @pci_dma_sync_single_for_device(i32 %191, i32 %192, i32 %193, i32 %194)
  %196 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %196, %struct.sk_buff** %10, align 8
  br label %197

197:                                              ; preds = %172, %137
  %198 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %199 = load %struct.de_private*, %struct.de_private** %2, align 8
  %200 = getelementptr inbounds %struct.de_private, %struct.de_private* %199, i32 0, i32 2
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %200, align 8
  %202 = call i32 @eth_type_trans(%struct.sk_buff* %198, %struct.TYPE_11__* %201)
  %203 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %204 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 8
  %205 = load %struct.de_private*, %struct.de_private** %2, align 8
  %206 = getelementptr inbounds %struct.de_private, %struct.de_private* %205, i32 0, i32 2
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  %212 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %213 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.de_private*, %struct.de_private** %2, align 8
  %216 = getelementptr inbounds %struct.de_private, %struct.de_private* %215, i32 0, i32 2
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %221, %214
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %219, align 4
  %224 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %225 = call i32 @netif_rx(%struct.sk_buff* %224)
  store i32 %225, i32* %6, align 4
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @NET_RX_DROP, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %197
  store i32 1, i32* %5, align 4
  br label %230

230:                                              ; preds = %229, %197
  br label %231

231:                                              ; preds = %230, %126, %82, %67
  %232 = load i32, i32* %3, align 4
  %233 = load i32, i32* @DE_RX_RING_SIZE, align 4
  %234 = sub nsw i32 %233, 1
  %235 = icmp eq i32 %232, %234
  br i1 %235, label %236, label %250

236:                                              ; preds = %231
  %237 = load i32, i32* @RingEnd, align 4
  %238 = load %struct.de_private*, %struct.de_private** %2, align 8
  %239 = getelementptr inbounds %struct.de_private, %struct.de_private* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %237, %240
  %242 = call i8* @cpu_to_le32(i32 %241)
  %243 = load %struct.de_private*, %struct.de_private** %2, align 8
  %244 = getelementptr inbounds %struct.de_private, %struct.de_private* %243, i32 0, i32 3
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %244, align 8
  %246 = load i32, i32* %3, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 2
  store i8* %242, i8** %249, align 8
  br label %262

250:                                              ; preds = %231
  %251 = load %struct.de_private*, %struct.de_private** %2, align 8
  %252 = getelementptr inbounds %struct.de_private, %struct.de_private* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i8* @cpu_to_le32(i32 %253)
  %255 = load %struct.de_private*, %struct.de_private** %2, align 8
  %256 = getelementptr inbounds %struct.de_private, %struct.de_private* %255, i32 0, i32 3
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %256, align 8
  %258 = load i32, i32* %3, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 2
  store i8* %254, i8** %261, align 8
  br label %262

262:                                              ; preds = %250, %236
  %263 = load i32, i32* %9, align 4
  %264 = call i8* @cpu_to_le32(i32 %263)
  %265 = load %struct.de_private*, %struct.de_private** %2, align 8
  %266 = getelementptr inbounds %struct.de_private, %struct.de_private* %265, i32 0, i32 3
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %266, align 8
  %268 = load i32, i32* %3, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 1
  store i8* %264, i8** %271, align 8
  %272 = call i32 (...) @wmb()
  %273 = load i32, i32* @DescOwn, align 4
  %274 = call i8* @cpu_to_le32(i32 %273)
  %275 = load %struct.de_private*, %struct.de_private** %2, align 8
  %276 = getelementptr inbounds %struct.de_private, %struct.de_private* %275, i32 0, i32 3
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %276, align 8
  %278 = load i32, i32* %3, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 0
  store i8* %274, i8** %281, align 8
  %282 = load i32, i32* %3, align 4
  %283 = call i32 @NEXT_RX(i32 %282)
  store i32 %283, i32* %3, align 4
  br label %18

284:                                              ; preds = %50, %18
  %285 = load i32, i32* %4, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %292, label %287

287:                                              ; preds = %284
  %288 = load %struct.de_private*, %struct.de_private** %2, align 8
  %289 = getelementptr inbounds %struct.de_private, %struct.de_private* %288, i32 0, i32 2
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %289, align 8
  %291 = call i32 @netdev_warn(%struct.TYPE_11__* %290, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %292

292:                                              ; preds = %287, %284
  %293 = load i32, i32* %3, align 4
  %294 = load %struct.de_private*, %struct.de_private** %2, align 8
  %295 = getelementptr inbounds %struct.de_private, %struct.de_private* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @de_rx_err_acct(%struct.de_private*, i32, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.de_private*, i32, %struct.TYPE_11__*, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_11__*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @NEXT_RX(i32) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
