; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_rx_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_rx_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_info = type { i64, i32, %struct.TYPE_10__*, %struct.lro*, i64, %struct.TYPE_8__*, %struct.rx_curr_get_info, i64, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.lro = type { i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.RxD_t*, %struct.TYPE_7__* }
%struct.RxD_t = type { i64 }
%struct.TYPE_7__ = type { %struct.RxD_t* }
%struct.rx_curr_get_info = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.RxD1 = type { i64 }
%struct.RxD3 = type { i64, i64 }

@INTR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: Ring Full\0A\00", align 1
@ERR_DBG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: NULL skb in Rx Intr\0A\00", align 1
@RXD_MODE_1 = common dso_local global i64 0, align 8
@HEADER_ETHERNET_II_802_3_SIZE = common dso_local global i64 0, align 8
@HEADER_802_2_SIZE = common dso_local global i64 0, align 8
@HEADER_SNAP_SIZE = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@RXD_MODE_3B = common dso_local global i64 0, align 8
@BUF0_LEN = common dso_local global i32 0, align 4
@rxd_count = common dso_local global i64* null, align 8
@indicate_max_pkts = common dso_local global i32 0, align 4
@MAX_LRO_SESSIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ring_info*, i32)* @rx_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_intr_handler(%struct.ring_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ring_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rx_curr_get_info, align 8
  %9 = alloca %struct.rx_curr_get_info, align 8
  %10 = alloca %struct.RxD_t*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.RxD1*, align 8
  %16 = alloca %struct.RxD3*, align 8
  %17 = alloca %struct.lro*, align 8
  store %struct.ring_info* %0, %struct.ring_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %3, align 4
  br label %282

22:                                               ; preds = %2
  %23 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %24 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %23, i32 0, i32 6
  %25 = bitcast %struct.rx_curr_get_info* %8 to i8*
  %26 = bitcast %struct.rx_curr_get_info* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %30 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %29, i32 0, i32 10
  %31 = call i32 @memcpy(%struct.rx_curr_get_info* %9, i32* %30, i32 16)
  %32 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  %34 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %35 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %34, i32 0, i32 5
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.RxD_t*, %struct.RxD_t** %45, align 8
  store %struct.RxD_t* %46, %struct.RxD_t** %10, align 8
  br label %47

47:                                               ; preds = %238, %22
  %48 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %49 = call i64 @RXD_IS_UP2DT(%struct.RxD_t* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %239

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 1
  %59 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %9, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load i32, i32* @INTR_DBG, align 4
  %64 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %65 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %64, i32 0, i32 9
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @DBG_PRINT(i32 %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %239

70:                                               ; preds = %55, %51
  %71 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %72 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.sk_buff*
  store %struct.sk_buff* %74, %struct.sk_buff** %11, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %76 = icmp eq %struct.sk_buff* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i32, i32* @ERR_DBG, align 4
  %79 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %80 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %79, i32 0, i32 9
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @DBG_PRINT(i32 %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  store i32 0, i32* %3, align 4
  br label %282

85:                                               ; preds = %70
  %86 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %87 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @RXD_MODE_1, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %85
  %92 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %93 = bitcast %struct.RxD_t* %92 to %struct.RxD1*
  store %struct.RxD1* %93, %struct.RxD1** %15, align 8
  %94 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %95 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.RxD1*, %struct.RxD1** %15, align 8
  %98 = getelementptr inbounds %struct.RxD1, %struct.RxD1* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %102 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @HEADER_ETHERNET_II_802_3_SIZE, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i64, i64* @HEADER_802_2_SIZE, align 8
  %107 = add nsw i64 %105, %106
  %108 = load i64, i64* @HEADER_SNAP_SIZE, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %111 = call i32 @pci_unmap_single(i32 %96, i32 %100, i64 %109, i32 %110)
  br label %145

112:                                              ; preds = %85
  %113 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %114 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @RXD_MODE_3B, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %144

118:                                              ; preds = %112
  %119 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %120 = bitcast %struct.RxD_t* %119 to %struct.RxD3*
  store %struct.RxD3* %120, %struct.RxD3** %16, align 8
  %121 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %122 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.RxD3*, %struct.RxD3** %16, align 8
  %125 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* @BUF0_LEN, align 4
  %129 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %130 = call i32 @pci_dma_sync_single_for_cpu(i32 %123, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %132 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.RxD3*, %struct.RxD3** %16, align 8
  %135 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %139 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 4
  %142 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %143 = call i32 @pci_unmap_single(i32 %133, i32 %137, i64 %141, i32 %142)
  br label %144

144:                                              ; preds = %118, %112
  br label %145

145:                                              ; preds = %144, %91
  %146 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @prefetch(i32 %148)
  %150 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %151 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %152 = call i32 @rx_osm_handler(%struct.ring_info* %150, %struct.RxD_t* %151)
  %153 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %153, align 8
  %156 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %159 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %159, i32 0, i32 1
  store i64 %157, i64* %160, align 8
  %161 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %162 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %161, i32 0, i32 5
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load %struct.RxD_t*, %struct.RxD_t** %172, align 8
  store %struct.RxD_t* %173, %struct.RxD_t** %10, align 8
  %174 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64*, i64** @rxd_count, align 8
  %177 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %178 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds i64, i64* %176, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %175, %181
  br i1 %182, label %183, label %211

183:                                              ; preds = %145
  %184 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 1
  store i64 0, i64* %184, align 8
  %185 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %188 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %188, i32 0, i32 1
  store i64 %186, i64* %189, align 8
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %194 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %192, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %183
  store i32 0, i32* %6, align 4
  br label %198

198:                                              ; preds = %197, %183
  %199 = load i32, i32* %6, align 4
  %200 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %201 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %200, i32 0, i32 6
  %202 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %201, i32 0, i32 0
  store i32 %199, i32* %202, align 8
  %203 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %204 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %203, i32 0, i32 5
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load %struct.RxD_t*, %struct.RxD_t** %209, align 8
  store %struct.RxD_t* %210, %struct.RxD_t** %10, align 8
  br label %211

211:                                              ; preds = %198, %145
  %212 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %213 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %212, i32 0, i32 2
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %211
  %220 = load i32, i32* %5, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %5, align 4
  %222 = load i32, i32* %13, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %13, align 4
  %224 = load i32, i32* %5, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %219
  br label %239

227:                                              ; preds = %219
  br label %228

228:                                              ; preds = %227, %211
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* @indicate_max_pkts, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* @indicate_max_pkts, align 4
  %236 = icmp sgt i32 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  br label %239

238:                                              ; preds = %233, %228
  br label %47

239:                                              ; preds = %237, %226, %62, %47
  %240 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %241 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %280

244:                                              ; preds = %239
  store i32 0, i32* %14, align 4
  br label %245

245:                                              ; preds = %276, %244
  %246 = load i32, i32* %14, align 4
  %247 = load i32, i32* @MAX_LRO_SESSIONS, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %279

249:                                              ; preds = %245
  %250 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %251 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %250, i32 0, i32 3
  %252 = load %struct.lro*, %struct.lro** %251, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.lro, %struct.lro* %252, i64 %254
  store %struct.lro* %255, %struct.lro** %17, align 8
  %256 = load %struct.lro*, %struct.lro** %17, align 8
  %257 = getelementptr inbounds %struct.lro, %struct.lro* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %275

260:                                              ; preds = %249
  %261 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %262 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %261, i32 0, i32 2
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %262, align 8
  %264 = load %struct.lro*, %struct.lro** %17, align 8
  %265 = call i32 @update_L3L4_header(%struct.TYPE_10__* %263, %struct.lro* %264)
  %266 = load %struct.lro*, %struct.lro** %17, align 8
  %267 = getelementptr inbounds %struct.lro, %struct.lro* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.lro*, %struct.lro** %17, align 8
  %270 = getelementptr inbounds %struct.lro, %struct.lro* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @queue_rx_frame(i32 %268, i32 %271)
  %273 = load %struct.lro*, %struct.lro** %17, align 8
  %274 = call i32 @clear_lro_session(%struct.lro* %273)
  br label %275

275:                                              ; preds = %260, %249
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %14, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %14, align 4
  br label %245

279:                                              ; preds = %245
  br label %280

280:                                              ; preds = %279, %239
  %281 = load i32, i32* %13, align 4
  store i32 %281, i32* %3, align 4
  br label %282

282:                                              ; preds = %280, %77, %20
  %283 = load i32, i32* %3, align 4
  ret i32 %283
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.rx_curr_get_info*, i32*, i32) #2

declare dso_local i64 @RXD_IS_UP2DT(%struct.RxD_t*) #2

declare dso_local i32 @DBG_PRINT(i32, i8*, i32) #2

declare dso_local i32 @pci_unmap_single(i32, i32, i64, i32) #2

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #2

declare dso_local i32 @prefetch(i32) #2

declare dso_local i32 @rx_osm_handler(%struct.ring_info*, %struct.RxD_t*) #2

declare dso_local i32 @update_L3L4_header(%struct.TYPE_10__*, %struct.lro*) #2

declare dso_local i32 @queue_rx_frame(i32, i32) #2

declare dso_local i32 @clear_lro_session(%struct.lro*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
