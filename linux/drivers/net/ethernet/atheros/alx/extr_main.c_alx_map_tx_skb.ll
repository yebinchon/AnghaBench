; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_map_tx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_map_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_tx_queue = type { i32, i32, %struct.TYPE_7__*, i32, %struct.alx_txd* }
%struct.TYPE_7__ = type { %struct.sk_buff* }
%struct.alx_txd = type { i32, i8*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i8* }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }

@TPD_LSO_V2_SHIFT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4
@TPD_EOP_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_tx_queue*, %struct.sk_buff*)* @alx_map_tx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_map_tx_skb(%struct.alx_tx_queue* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alx_tx_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.alx_txd*, align 8
  %7 = alloca %struct.alx_txd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.alx_tx_queue* %0, %struct.alx_tx_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %14 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %11, align 4
  %16 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %17 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %16, i32 0, i32 4
  %18 = load %struct.alx_txd*, %struct.alx_txd** %17, align 8
  %19 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %20 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %18, i64 %22
  store %struct.alx_txd* %23, %struct.alx_txd** %7, align 8
  %24 = load %struct.alx_txd*, %struct.alx_txd** %7, align 8
  store %struct.alx_txd* %24, %struct.alx_txd** %6, align 8
  %25 = load %struct.alx_txd*, %struct.alx_txd** %6, align 8
  %26 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TPD_LSO_V2_SHIFT, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %2
  %33 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %34 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %38 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %43 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %32
  %45 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %46 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %45, i32 0, i32 4
  %47 = load %struct.alx_txd*, %struct.alx_txd** %46, align 8
  %48 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %49 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %47, i64 %51
  store %struct.alx_txd* %52, %struct.alx_txd** %6, align 8
  %53 = load %struct.alx_txd*, %struct.alx_txd** %7, align 8
  %54 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.alx_txd*, %struct.alx_txd** %6, align 8
  %57 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.alx_txd*, %struct.alx_txd** %7, align 8
  %59 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.alx_txd*, %struct.alx_txd** %6, align 8
  %62 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.alx_txd*, %struct.alx_txd** %7, align 8
  %64 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.alx_txd*, %struct.alx_txd** %6, align 8
  %67 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %44, %2
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @skb_headlen(%struct.sk_buff* %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %72 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @DMA_TO_DEVICE, align 4
  %79 = call i32 @dma_map_single(i32 %73, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %81 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @dma_mapping_error(i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %68
  br label %240

87:                                               ; preds = %68
  %88 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %89 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %88, i32 0, i32 2
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %92 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %94
  %96 = load i32, i32* @size, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @dma_unmap_len_set(%struct.TYPE_7__* %95, i32 %96, i32 %97)
  %99 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %100 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %99, i32 0, i32 2
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %103 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %105
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @dma_unmap_addr_set(%struct.TYPE_7__* %106, i32 %107, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = call i8* @cpu_to_le64(i32 %110)
  %112 = load %struct.alx_txd*, %struct.alx_txd** %6, align 8
  %113 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i8* %111, i8** %114, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i8* @cpu_to_le16(i32 %115)
  %117 = load %struct.alx_txd*, %struct.alx_txd** %6, align 8
  %118 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %207, %87
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %121)
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %120, %124
  br i1 %125, label %126, label %210

126:                                              ; preds = %119
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %127)
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32* %133, i32** %12, align 8
  %134 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %135 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  %138 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %139 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %137, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %126
  %143 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %144 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  br label %145

145:                                              ; preds = %142, %126
  %146 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %147 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %146, i32 0, i32 4
  %148 = load %struct.alx_txd*, %struct.alx_txd** %147, align 8
  %149 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %150 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %148, i64 %152
  store %struct.alx_txd* %153, %struct.alx_txd** %6, align 8
  %154 = load %struct.alx_txd*, %struct.alx_txd** %7, align 8
  %155 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.alx_txd*, %struct.alx_txd** %6, align 8
  %158 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load i32*, i32** %12, align 8
  %160 = call i32 @skb_frag_size(i32* %159)
  store i32 %160, i32* %9, align 4
  %161 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %162 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load i32*, i32** %12, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @DMA_TO_DEVICE, align 4
  %167 = call i32 @skb_frag_dma_map(i32 %163, i32* %164, i32 0, i32 %165, i32 %166)
  store i32 %167, i32* %8, align 4
  %168 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %169 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = call i64 @dma_mapping_error(i32 %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %145
  br label %240

175:                                              ; preds = %145
  %176 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %177 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %176, i32 0, i32 2
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %180 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i64 %182
  %184 = load i32, i32* @size, align 4
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @dma_unmap_len_set(%struct.TYPE_7__* %183, i32 %184, i32 %185)
  %187 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %188 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %187, i32 0, i32 2
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %191 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i64 %193
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @dma_unmap_addr_set(%struct.TYPE_7__* %194, i32 %195, i32 %196)
  %198 = load i32, i32* %8, align 4
  %199 = call i8* @cpu_to_le64(i32 %198)
  %200 = load %struct.alx_txd*, %struct.alx_txd** %6, align 8
  %201 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  store i8* %199, i8** %202, align 8
  %203 = load i32, i32* %9, align 4
  %204 = call i8* @cpu_to_le16(i32 %203)
  %205 = load %struct.alx_txd*, %struct.alx_txd** %6, align 8
  %206 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %205, i32 0, i32 1
  store i8* %204, i8** %206, align 8
  br label %207

207:                                              ; preds = %175
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %119

210:                                              ; preds = %119
  %211 = load i32, i32* @TPD_EOP_SHIFT, align 4
  %212 = shl i32 1, %211
  %213 = call i32 @cpu_to_le32(i32 %212)
  %214 = load %struct.alx_txd*, %struct.alx_txd** %6, align 8
  %215 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %219 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %220 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %219, i32 0, i32 2
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %223 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  store %struct.sk_buff* %218, %struct.sk_buff** %227, align 8
  %228 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %229 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 8
  %232 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %233 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %231, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %210
  %237 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %238 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %237, i32 0, i32 0
  store i32 0, i32* %238, align 8
  br label %239

239:                                              ; preds = %236, %210
  store i32 0, i32* %3, align 4
  br label %263

240:                                              ; preds = %174, %86
  %241 = load i32, i32* %11, align 4
  store i32 %241, i32* %10, align 4
  br label %242

242:                                              ; preds = %259, %240
  %243 = load i32, i32* %10, align 4
  %244 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %245 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %243, %246
  br i1 %247, label %248, label %260

248:                                              ; preds = %242
  %249 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %250 = load i32, i32* %10, align 4
  %251 = call i32 @alx_free_txbuf(%struct.alx_tx_queue* %249, i32 %250)
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %10, align 4
  %254 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %4, align 8
  %255 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %253, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %248
  store i32 0, i32* %10, align 4
  br label %259

259:                                              ; preds = %258, %248
  br label %242

260:                                              ; preds = %242
  %261 = load i32, i32* @ENOMEM, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %3, align 4
  br label %263

263:                                              ; preds = %260, %239
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @alx_free_txbuf(%struct.alx_tx_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
