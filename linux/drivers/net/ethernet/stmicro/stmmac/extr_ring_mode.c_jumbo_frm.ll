; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_ring_mode.c_jumbo_frm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_ring_mode.c_jumbo_frm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.stmmac_tx_queue = type { i32, %struct.TYPE_4__*, %struct.dma_desc*, i64, i32**, %struct.stmmac_priv* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.dma_desc = type { i8*, i8* }
%struct.stmmac_priv = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@BUF_SIZE_8KiB = common dso_local global i32 0, align 4
@BUF_SIZE_2KiB = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@BUF_SIZE_4KiB = common dso_local global i32 0, align 4
@STMMAC_RING_MODE = common dso_local global i32 0, align 4
@DMA_TX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, i32)* @jumbo_frm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jumbo_frm(i8* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stmmac_tx_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stmmac_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dma_desc*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.stmmac_tx_queue*
  store %struct.stmmac_tx_queue* %17, %struct.stmmac_tx_queue** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @skb_headlen(%struct.sk_buff* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %21 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %20, i32 0, i32 5
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %21, align 8
  store %struct.stmmac_priv* %22, %struct.stmmac_priv** %10, align 8
  %23 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %24 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %27 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %32 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = inttoptr i64 %36 to %struct.dma_desc*
  store %struct.dma_desc* %37, %struct.dma_desc** %15, align 8
  br label %45

38:                                               ; preds = %3
  %39 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %40 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %39, i32 0, i32 2
  %41 = load %struct.dma_desc*, %struct.dma_desc** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %41, i64 %43
  store %struct.dma_desc* %44, %struct.dma_desc** %15, align 8
  br label %45

45:                                               ; preds = %38, %30
  %46 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %47 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @BUF_SIZE_8KiB, align 4
  store i32 %53, i32* %12, align 4
  br label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @BUF_SIZE_2KiB, align 4
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sub i32 %57, %58
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @BUF_SIZE_8KiB, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %219

63:                                               ; preds = %56
  %64 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %65 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @DMA_TO_DEVICE, align 4
  %72 = call i32 @dma_map_single(i32 %66, i64 %69, i32 %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = load %struct.dma_desc*, %struct.dma_desc** %15, align 8
  %76 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %78 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i64 @dma_mapping_error(i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %63
  store i32 -1, i32* %4, align 4
  br label %289

84:                                               ; preds = %63
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %87 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %95 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i32 %93, i32* %100, align 4
  %101 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %102 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i32 1, i32* %107, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @BUF_SIZE_4KiB, align 4
  %110 = add i32 %108, %109
  %111 = call i8* @cpu_to_le32(i32 %110)
  %112 = load %struct.dma_desc*, %struct.dma_desc** %15, align 8
  %113 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %115 = load %struct.dma_desc*, %struct.dma_desc** %15, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @STMMAC_RING_MODE, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @stmmac_prepare_tx_desc(%struct.stmmac_priv* %114, %struct.dma_desc* %115, i32 1, i32 %116, i32 %117, i32 %118, i32 0, i32 0, i32 %121)
  %123 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %124 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %123, i32 0, i32 4
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  store i32* null, i32** %128, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @DMA_TX_SIZE, align 4
  %131 = call i32 @STMMAC_GET_ENTRY(i32 %129, i32 %130)
  store i32 %131, i32* %11, align 4
  %132 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %133 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %84
  %137 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %138 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = zext i32 %140 to i64
  %142 = add nsw i64 %139, %141
  %143 = inttoptr i64 %142 to %struct.dma_desc*
  store %struct.dma_desc* %143, %struct.dma_desc** %15, align 8
  br label %151

144:                                              ; preds = %84
  %145 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %146 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %145, i32 0, i32 2
  %147 = load %struct.dma_desc*, %struct.dma_desc** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %147, i64 %149
  store %struct.dma_desc* %150, %struct.dma_desc** %15, align 8
  br label %151

151:                                              ; preds = %144, %136
  %152 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %153 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = zext i32 %158 to i64
  %160 = add nsw i64 %157, %159
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @DMA_TO_DEVICE, align 4
  %163 = call i32 @dma_map_single(i32 %154, i64 %160, i32 %161, i32 %162)
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %14, align 4
  %165 = call i8* @cpu_to_le32(i32 %164)
  %166 = load %struct.dma_desc*, %struct.dma_desc** %15, align 8
  %167 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  %168 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %169 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call i64 @dma_mapping_error(i32 %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %151
  store i32 -1, i32* %4, align 4
  br label %289

175:                                              ; preds = %151
  %176 = load i32, i32* %14, align 4
  %177 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %178 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %177, i32 0, i32 1
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load i32, i32* %11, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  store i32 %176, i32* %183, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %186 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %185, i32 0, i32 1
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  store i32 %184, i32* %191, align 4
  %192 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %193 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %192, i32 0, i32 1
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = load i32, i32* %11, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 2
  store i32 1, i32* %198, align 4
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* @BUF_SIZE_4KiB, align 4
  %201 = add i32 %199, %200
  %202 = call i8* @cpu_to_le32(i32 %201)
  %203 = load %struct.dma_desc*, %struct.dma_desc** %15, align 8
  %204 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %203, i32 0, i32 0
  store i8* %202, i8** %204, align 8
  %205 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %206 = load %struct.dma_desc*, %struct.dma_desc** %15, align 8
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* @STMMAC_RING_MODE, align 4
  %210 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %211 = call i32 @skb_is_nonlinear(%struct.sk_buff* %210)
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %216 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @stmmac_prepare_tx_desc(%struct.stmmac_priv* %205, %struct.dma_desc* %206, i32 0, i32 %207, i32 %208, i32 %209, i32 1, i32 %214, i32 %217)
  br label %284

219:                                              ; preds = %56
  %220 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %221 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %224 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* @DMA_TO_DEVICE, align 4
  %228 = call i32 @dma_map_single(i32 %222, i64 %225, i32 %226, i32 %227)
  store i32 %228, i32* %14, align 4
  %229 = load i32, i32* %14, align 4
  %230 = call i8* @cpu_to_le32(i32 %229)
  %231 = load %struct.dma_desc*, %struct.dma_desc** %15, align 8
  %232 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %231, i32 0, i32 1
  store i8* %230, i8** %232, align 8
  %233 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %234 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %14, align 4
  %237 = call i64 @dma_mapping_error(i32 %235, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %219
  store i32 -1, i32* %4, align 4
  br label %289

240:                                              ; preds = %219
  %241 = load i32, i32* %14, align 4
  %242 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %243 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %242, i32 0, i32 1
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %243, align 8
  %245 = load i32, i32* %11, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  store i32 %241, i32* %248, align 4
  %249 = load i32, i32* %9, align 4
  %250 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %251 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %250, i32 0, i32 1
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %251, align 8
  %253 = load i32, i32* %11, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 1
  store i32 %249, i32* %256, align 4
  %257 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %258 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %257, i32 0, i32 1
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %258, align 8
  %260 = load i32, i32* %11, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 2
  store i32 1, i32* %263, align 4
  %264 = load i32, i32* %14, align 4
  %265 = load i32, i32* @BUF_SIZE_4KiB, align 4
  %266 = add i32 %264, %265
  %267 = call i8* @cpu_to_le32(i32 %266)
  %268 = load %struct.dma_desc*, %struct.dma_desc** %15, align 8
  %269 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %268, i32 0, i32 0
  store i8* %267, i8** %269, align 8
  %270 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %271 = load %struct.dma_desc*, %struct.dma_desc** %15, align 8
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* @STMMAC_RING_MODE, align 4
  %275 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %276 = call i32 @skb_is_nonlinear(%struct.sk_buff* %275)
  %277 = icmp ne i32 %276, 0
  %278 = xor i1 %277, true
  %279 = zext i1 %278 to i32
  %280 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %281 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @stmmac_prepare_tx_desc(%struct.stmmac_priv* %270, %struct.dma_desc* %271, i32 1, i32 %272, i32 %273, i32 %274, i32 0, i32 %279, i32 %282)
  br label %284

284:                                              ; preds = %240, %175
  %285 = load i32, i32* %11, align 4
  %286 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %8, align 8
  %287 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 8
  %288 = load i32, i32* %11, align 4
  store i32 %288, i32* %4, align 4
  br label %289

289:                                              ; preds = %284, %239, %174, %83
  %290 = load i32, i32* %4, align 4
  ret i32 %290
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i64, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @stmmac_prepare_tx_desc(%struct.stmmac_priv*, %struct.dma_desc*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @STMMAC_GET_ENTRY(i32, i32) #1

declare dso_local i32 @skb_is_nonlinear(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
