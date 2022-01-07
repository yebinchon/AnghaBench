; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_11__*, %struct.TYPE_20__**, %struct.bnxt_tx_ring_info*, %struct.bnxt_rx_ring_info* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.bnxt_tx_ring_info*, %struct.bnxt_rx_ring_info*, %struct.bnxt_cp_ring_info, %struct.bnxt* }
%struct.bnxt_cp_ring_info = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.bnxt_tx_ring_info = type { i32, %struct.TYPE_20__*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8* }
%struct.bnxt_rx_ring_info = type { %struct.TYPE_20__*, %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@BNXT_RMEM_RING_PTE_FLAG = common dso_local global i8* null, align 8
@BNXT_FLAG_SHARED_RINGS = common dso_local global i32 0, align 4
@bnxt_tx_int = common dso_local global i32 0, align 4
@BNXT_NAPI_FLAG_XDP = common dso_local global i32 0, align 4
@bnxt_tx_int_xdp = common dso_local global i32 0, align 4
@BNXT_VNIC_RSS_FLAG = common dso_local global i32 0, align 4
@BNXT_VNIC_MCAST_FLAG = common dso_local global i32 0, align 4
@BNXT_VNIC_UCAST_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32)* @bnxt_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_alloc_mem(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.bnxt_cp_ring_info*, align 8
  %13 = alloca %struct.bnxt_rx_ring_info*, align 8
  %14 = alloca %struct.bnxt_tx_ring_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %352

17:                                               ; preds = %2
  %18 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %19 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @L1_CACHE_ALIGN(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = call i32 @L1_CACHE_ALIGN(i32 4)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %29 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %27, %30
  %32 = add nsw i32 %26, %31
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kzalloc(i32 %32, i32 %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %17
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %395

40:                                               ; preds = %17
  %41 = load i8*, i8** %11, align 8
  %42 = bitcast i8* %41 to %struct.TYPE_20__**
  %43 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %44 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %43, i32 0, i32 7
  store %struct.TYPE_20__** %42, %struct.TYPE_20__*** %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr i8, i8* %46, i64 %47
  store i8* %48, i8** %11, align 8
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %103, %40
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %52 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %110

55:                                               ; preds = %49
  %56 = load i8*, i8** %11, align 8
  %57 = bitcast i8* %56 to %struct.TYPE_20__*
  %58 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %59 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %58, i32 0, i32 7
  %60 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %60, i64 %62
  store %struct.TYPE_20__* %57, %struct.TYPE_20__** %63, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %66 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %65, i32 0, i32 7
  %67 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %67, i64 %69
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  store i32 %64, i32* %72, align 8
  %73 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %74 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %75 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %74, i32 0, i32 7
  %76 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %76, i64 %78
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 6
  store %struct.bnxt* %73, %struct.bnxt** %81, align 8
  %82 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %83 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %55
  %89 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %90 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %89, i32 0, i32 7
  %91 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %91, i64 %93
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 5
  store %struct.bnxt_cp_ring_info* %96, %struct.bnxt_cp_ring_info** %12, align 8
  %97 = load i8*, i8** @BNXT_RMEM_RING_PTE_FLAG, align 8
  %98 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %12, align 8
  %99 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  store i8* %97, i8** %101, align 8
  br label %102

102:                                              ; preds = %88, %55
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i8*, i8** %11, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr i8, i8* %107, i64 %108
  store i8* %109, i8** %11, align 8
  br label %49

110:                                              ; preds = %49
  %111 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %112 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i8* @kcalloc(i32 %113, i32 24, i32 %114)
  %116 = bitcast i8* %115 to %struct.bnxt_rx_ring_info*
  %117 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %118 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %117, i32 0, i32 9
  store %struct.bnxt_rx_ring_info* %116, %struct.bnxt_rx_ring_info** %118, align 8
  %119 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %120 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %119, i32 0, i32 9
  %121 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %120, align 8
  %122 = icmp ne %struct.bnxt_rx_ring_info* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %110
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %395

126:                                              ; preds = %110
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %181, %126
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %130 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %184

133:                                              ; preds = %127
  %134 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %135 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %134, i32 0, i32 9
  %136 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %136, i64 %138
  store %struct.bnxt_rx_ring_info* %139, %struct.bnxt_rx_ring_info** %13, align 8
  %140 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %141 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %133
  %147 = load i8*, i8** @BNXT_RMEM_RING_PTE_FLAG, align 8
  %148 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %13, align 8
  %149 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  store i8* %147, i8** %151, align 8
  %152 = load i8*, i8** @BNXT_RMEM_RING_PTE_FLAG, align 8
  %153 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %13, align 8
  %154 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  store i8* %152, i8** %156, align 8
  br label %157

157:                                              ; preds = %146, %133
  %158 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %159 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %158, i32 0, i32 7
  %160 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %160, i64 %162
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  %165 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %13, align 8
  %166 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %165, i32 0, i32 0
  store %struct.TYPE_20__* %164, %struct.TYPE_20__** %166, align 8
  %167 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %168 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %167, i32 0, i32 9
  %169 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %169, i64 %171
  %173 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %174 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %173, i32 0, i32 7
  %175 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %175, i64 %177
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 4
  store %struct.bnxt_rx_ring_info* %172, %struct.bnxt_rx_ring_info** %180, align 8
  br label %181

181:                                              ; preds = %157
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  br label %127

184:                                              ; preds = %127
  %185 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %186 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @GFP_KERNEL, align 4
  %189 = call i8* @kcalloc(i32 %187, i32 24, i32 %188)
  %190 = bitcast i8* %189 to %struct.bnxt_tx_ring_info*
  %191 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %192 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %191, i32 0, i32 8
  store %struct.bnxt_tx_ring_info* %190, %struct.bnxt_tx_ring_info** %192, align 8
  %193 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %194 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %193, i32 0, i32 8
  %195 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %194, align 8
  %196 = icmp ne %struct.bnxt_tx_ring_info* %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %184
  %198 = load i32, i32* @ENOMEM, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %3, align 4
  br label %395

200:                                              ; preds = %184
  %201 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %202 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @GFP_KERNEL, align 4
  %205 = call i8* @kcalloc(i32 %203, i32 4, i32 %204)
  %206 = bitcast i8* %205 to i32*
  %207 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %208 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %207, i32 0, i32 4
  store i32* %206, i32** %208, align 8
  %209 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %210 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %209, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %200
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %3, align 4
  br label %395

216:                                              ; preds = %200
  %217 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %218 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @BNXT_FLAG_SHARED_RINGS, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  store i32 0, i32* %7, align 4
  br label %228

224:                                              ; preds = %216
  %225 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %226 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  store i32 %227, i32* %7, align 4
  br label %228

228:                                              ; preds = %224, %223
  store i32 0, i32* %6, align 4
  br label %229

229:                                              ; preds = %328, %228
  %230 = load i32, i32* %6, align 4
  %231 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %232 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = icmp slt i32 %230, %233
  br i1 %234, label %235, label %333

235:                                              ; preds = %229
  %236 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %237 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %236, i32 0, i32 8
  %238 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %238, i64 %240
  store %struct.bnxt_tx_ring_info* %241, %struct.bnxt_tx_ring_info** %14, align 8
  %242 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %243 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %235
  %249 = load i8*, i8** @BNXT_RMEM_RING_PTE_FLAG, align 8
  %250 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %14, align 8
  %251 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 0
  store i8* %249, i8** %253, align 8
  br label %254

254:                                              ; preds = %248, %235
  %255 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %256 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %255, i32 0, i32 7
  %257 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %256, align 8
  %258 = load i32, i32* %7, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %257, i64 %259
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %260, align 8
  %262 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %14, align 8
  %263 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %262, i32 0, i32 1
  store %struct.TYPE_20__* %261, %struct.TYPE_20__** %263, align 8
  %264 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %14, align 8
  %265 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %266 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %265, i32 0, i32 7
  %267 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %266, align 8
  %268 = load i32, i32* %7, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %267, i64 %269
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 3
  store %struct.bnxt_tx_ring_info* %264, %struct.bnxt_tx_ring_info** %272, align 8
  %273 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %274 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* %6, align 4
  %277 = add nsw i32 %275, %276
  %278 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %279 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %278, i32 0, i32 4
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %6, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  store i32 %277, i32* %283, align 4
  %284 = load i32, i32* %6, align 4
  %285 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %286 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = icmp sge i32 %284, %287
  br i1 %288, label %289, label %306

289:                                              ; preds = %254
  %290 = load i32, i32* %6, align 4
  %291 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %292 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 8
  %294 = sub nsw i32 %290, %293
  %295 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %14, align 8
  %296 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %295, i32 0, i32 0
  store i32 %294, i32* %296, align 8
  %297 = load i32, i32* @bnxt_tx_int, align 4
  %298 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %299 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %298, i32 0, i32 7
  %300 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %299, align 8
  %301 = load i32, i32* %7, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %300, i64 %302
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i32 0, i32 1
  store i32 %297, i32* %305, align 4
  br label %327

306:                                              ; preds = %254
  %307 = load i32, i32* @BNXT_NAPI_FLAG_XDP, align 4
  %308 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %309 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %308, i32 0, i32 7
  %310 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %309, align 8
  %311 = load i32, i32* %7, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %310, i64 %312
  %314 = load %struct.TYPE_20__*, %struct.TYPE_20__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = or i32 %316, %307
  store i32 %317, i32* %315, align 8
  %318 = load i32, i32* @bnxt_tx_int_xdp, align 4
  %319 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %320 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %319, i32 0, i32 7
  %321 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %320, align 8
  %322 = load i32, i32* %7, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %321, i64 %323
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 1
  store i32 %318, i32* %326, align 4
  br label %327

327:                                              ; preds = %306, %289
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %6, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %6, align 4
  %331 = load i32, i32* %7, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %7, align 4
  br label %229

333:                                              ; preds = %229
  %334 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %335 = call i32 @bnxt_alloc_stats(%struct.bnxt* %334)
  store i32 %335, i32* %8, align 4
  %336 = load i32, i32* %8, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %333
  br label %391

339:                                              ; preds = %333
  %340 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %341 = call i32 @bnxt_alloc_ntp_fltrs(%struct.bnxt* %340)
  store i32 %341, i32* %8, align 4
  %342 = load i32, i32* %8, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %339
  br label %391

345:                                              ; preds = %339
  %346 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %347 = call i32 @bnxt_alloc_vnics(%struct.bnxt* %346)
  store i32 %347, i32* %8, align 4
  %348 = load i32, i32* %8, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %345
  br label %391

351:                                              ; preds = %345
  br label %352

352:                                              ; preds = %351, %2
  %353 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %354 = call i32 @bnxt_init_ring_struct(%struct.bnxt* %353)
  %355 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %356 = call i32 @bnxt_alloc_rx_rings(%struct.bnxt* %355)
  store i32 %356, i32* %8, align 4
  %357 = load i32, i32* %8, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %352
  br label %391

360:                                              ; preds = %352
  %361 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %362 = call i32 @bnxt_alloc_tx_rings(%struct.bnxt* %361)
  store i32 %362, i32* %8, align 4
  %363 = load i32, i32* %8, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %360
  br label %391

366:                                              ; preds = %360
  %367 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %368 = call i32 @bnxt_alloc_cp_rings(%struct.bnxt* %367)
  store i32 %368, i32* %8, align 4
  %369 = load i32, i32* %8, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %366
  br label %391

372:                                              ; preds = %366
  %373 = load i32, i32* @BNXT_VNIC_RSS_FLAG, align 4
  %374 = load i32, i32* @BNXT_VNIC_MCAST_FLAG, align 4
  %375 = or i32 %373, %374
  %376 = load i32, i32* @BNXT_VNIC_UCAST_FLAG, align 4
  %377 = or i32 %375, %376
  %378 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %379 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %378, i32 0, i32 6
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i64 0
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = or i32 %383, %377
  store i32 %384, i32* %382, align 4
  %385 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %386 = call i32 @bnxt_alloc_vnic_attributes(%struct.bnxt* %385)
  store i32 %386, i32* %8, align 4
  %387 = load i32, i32* %8, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %372
  br label %391

390:                                              ; preds = %372
  store i32 0, i32* %3, align 4
  br label %395

391:                                              ; preds = %389, %371, %365, %359, %350, %344, %338
  %392 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %393 = call i32 @bnxt_free_mem(%struct.bnxt* %392, i32 1)
  %394 = load i32, i32* %8, align 4
  store i32 %394, i32* %3, align 4
  br label %395

395:                                              ; preds = %391, %390, %213, %197, %123, %37
  %396 = load i32, i32* %3, align 4
  ret i32 %396
}

declare dso_local i32 @L1_CACHE_ALIGN(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @bnxt_alloc_stats(%struct.bnxt*) #1

declare dso_local i32 @bnxt_alloc_ntp_fltrs(%struct.bnxt*) #1

declare dso_local i32 @bnxt_alloc_vnics(%struct.bnxt*) #1

declare dso_local i32 @bnxt_init_ring_struct(%struct.bnxt*) #1

declare dso_local i32 @bnxt_alloc_rx_rings(%struct.bnxt*) #1

declare dso_local i32 @bnxt_alloc_tx_rings(%struct.bnxt*) #1

declare dso_local i32 @bnxt_alloc_cp_rings(%struct.bnxt*) #1

declare dso_local i32 @bnxt_alloc_vnic_attributes(%struct.bnxt*) #1

declare dso_local i32 @bnxt_free_mem(%struct.bnxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
