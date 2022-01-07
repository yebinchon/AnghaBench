; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_dma_tx_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_dma_tx_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i32, i32, i32, i32*, %struct.b43_dma_ops* }
%struct.b43_dma_ops = type { i32 (%struct.b43_dmaring*, i32)*, i32 (%struct.b43_dmaring*, %struct.b43_dmadesc_generic*, i8*, i64, i32, i32, i32)*, %struct.b43_dmadesc_generic* (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)* }
%struct.b43_dmadesc_generic = type { i32 }
%struct.b43_dmadesc_meta = type { i32, i8*, %struct.sk_buff* }
%struct.sk_buff = type { i8*, i64 }
%struct.ieee80211_tx_info = type { i32 }
%struct.b43_private_tx_info = type { i8* }

@TX_SLOTS_PER_FRAME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_SEND_AFTER_DTIM = common dso_local global i32 0, align 4
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@B43_SHM_SH_MCASTCOOKIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_dmaring*, %struct.sk_buff*)* @dma_tx_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_tx_fragment(%struct.b43_dmaring* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43_dmaring*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.b43_dma_ops*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.b43_private_tx_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.b43_dmadesc_generic*, align 8
  %15 = alloca %struct.b43_dmadesc_meta*, align 8
  %16 = alloca %struct.b43_dmadesc_meta*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %19 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %20 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %19, i32 0, i32 4
  %21 = load %struct.b43_dma_ops*, %struct.b43_dma_ops** %20, align 8
  store %struct.b43_dma_ops* %21, %struct.b43_dma_ops** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %22)
  store %struct.ieee80211_tx_info* %23, %struct.ieee80211_tx_info** %7, align 8
  %24 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %25 = call %struct.b43_private_tx_info* @b43_get_priv_tx_info(%struct.ieee80211_tx_info* %24)
  store %struct.b43_private_tx_info* %25, %struct.b43_private_tx_info** %8, align 8
  %26 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %27 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @b43_txhdr_size(i32 %28)
  store i64 %29, i64* %18, align 8
  %30 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %31 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  %33 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %34 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %37 = call i32 @request_slot(%struct.b43_dmaring* %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.b43_dma_ops*, %struct.b43_dma_ops** %6, align 8
  %39 = getelementptr inbounds %struct.b43_dma_ops, %struct.b43_dma_ops* %38, i32 0, i32 2
  %40 = load %struct.b43_dmadesc_generic* (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)*, %struct.b43_dmadesc_generic* (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)** %39, align 8
  %41 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call %struct.b43_dmadesc_generic* %40(%struct.b43_dmaring* %41, i32 %42, %struct.b43_dmadesc_meta** %16)
  store %struct.b43_dmadesc_generic* %43, %struct.b43_dmadesc_generic** %14, align 8
  %44 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %16, align 8
  %45 = call i32 @memset(%struct.b43_dmadesc_meta* %44, i32 0, i32 24)
  %46 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %47 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @TX_SLOTS_PER_FRAME, align 4
  %51 = sdiv i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %18, align 8
  %54 = mul i64 %52, %53
  %55 = getelementptr inbounds i32, i32* %48, i64 %54
  store i32* %55, i32** %9, align 8
  %56 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @generate_cookie(%struct.b43_dmaring* %56, i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %60 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @b43_generate_txhdr(i32 %61, i32* %62, %struct.sk_buff* %63, %struct.ieee80211_tx_info* %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %2
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %73 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %76 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %3, align 4
  br label %256

78:                                               ; preds = %2
  %79 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = bitcast i32* %80 to i8*
  %82 = load i64, i64* %18, align 8
  %83 = call i8* @map_descbuffer(%struct.b43_dmaring* %79, i8* %81, i64 %82, i32 1)
  %84 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %16, align 8
  %85 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %87 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %16, align 8
  %88 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %18, align 8
  %91 = call i64 @b43_dma_mapping_error(%struct.b43_dmaring* %86, i8* %89, i64 %90, i32 1)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %78
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %96 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %99 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %256

102:                                              ; preds = %78
  %103 = load %struct.b43_dma_ops*, %struct.b43_dma_ops** %6, align 8
  %104 = getelementptr inbounds %struct.b43_dma_ops, %struct.b43_dma_ops* %103, i32 0, i32 1
  %105 = load i32 (%struct.b43_dmaring*, %struct.b43_dmadesc_generic*, i8*, i64, i32, i32, i32)*, i32 (%struct.b43_dmaring*, %struct.b43_dmadesc_generic*, i8*, i64, i32, i32, i32)** %104, align 8
  %106 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %107 = load %struct.b43_dmadesc_generic*, %struct.b43_dmadesc_generic** %14, align 8
  %108 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %16, align 8
  %109 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load i64, i64* %18, align 8
  %112 = call i32 %105(%struct.b43_dmaring* %106, %struct.b43_dmadesc_generic* %107, i8* %110, i64 %111, i32 1, i32 0, i32 0)
  %113 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %114 = call i32 @request_slot(%struct.b43_dmaring* %113)
  store i32 %114, i32* %10, align 4
  %115 = load %struct.b43_dma_ops*, %struct.b43_dma_ops** %6, align 8
  %116 = getelementptr inbounds %struct.b43_dma_ops, %struct.b43_dma_ops* %115, i32 0, i32 2
  %117 = load %struct.b43_dmadesc_generic* (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)*, %struct.b43_dmadesc_generic* (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)** %116, align 8
  %118 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call %struct.b43_dmadesc_generic* %117(%struct.b43_dmaring* %118, i32 %119, %struct.b43_dmadesc_meta** %15)
  store %struct.b43_dmadesc_generic* %120, %struct.b43_dmadesc_generic** %14, align 8
  %121 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %15, align 8
  %122 = call i32 @memset(%struct.b43_dmadesc_meta* %121, i32 0, i32 24)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %15, align 8
  %125 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %124, i32 0, i32 2
  store %struct.sk_buff* %123, %struct.sk_buff** %125, align 8
  %126 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %15, align 8
  %127 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load %struct.b43_private_tx_info*, %struct.b43_private_tx_info** %8, align 8
  %129 = getelementptr inbounds %struct.b43_private_tx_info, %struct.b43_private_tx_info* %128, i32 0, i32 0
  store i8* null, i8** %129, align 8
  %130 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i8* @map_descbuffer(%struct.b43_dmaring* %130, i8* %133, i64 %136, i32 1)
  %138 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %15, align 8
  %139 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %141 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %15, align 8
  %142 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @b43_dma_mapping_error(%struct.b43_dmaring* %140, i8* %143, i64 %146, i32 1)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %211

149:                                              ; preds = %102
  %150 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* @GFP_ATOMIC, align 4
  %157 = load i32, i32* @GFP_DMA, align 4
  %158 = or i32 %156, %157
  %159 = call i8* @kmemdup(i8* %152, i64 %155, i32 %158)
  %160 = load %struct.b43_private_tx_info*, %struct.b43_private_tx_info** %8, align 8
  %161 = getelementptr inbounds %struct.b43_private_tx_info, %struct.b43_private_tx_info* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  %162 = load %struct.b43_private_tx_info*, %struct.b43_private_tx_info** %8, align 8
  %163 = getelementptr inbounds %struct.b43_private_tx_info, %struct.b43_private_tx_info* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %175, label %166

166:                                              ; preds = %149
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %169 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %12, align 4
  %171 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %172 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %13, align 4
  br label %248

175:                                              ; preds = %149
  %176 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %177 = load %struct.b43_private_tx_info*, %struct.b43_private_tx_info** %8, align 8
  %178 = getelementptr inbounds %struct.b43_private_tx_info, %struct.b43_private_tx_info* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = call i8* @map_descbuffer(%struct.b43_dmaring* %176, i8* %179, i64 %182, i32 1)
  %184 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %15, align 8
  %185 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  %186 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %187 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %15, align 8
  %188 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = call i64 @b43_dma_mapping_error(%struct.b43_dmaring* %186, i8* %189, i64 %192, i32 1)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %175
  %196 = load %struct.b43_private_tx_info*, %struct.b43_private_tx_info** %8, align 8
  %197 = getelementptr inbounds %struct.b43_private_tx_info, %struct.b43_private_tx_info* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @kfree(i8* %198)
  %200 = load %struct.b43_private_tx_info*, %struct.b43_private_tx_info** %8, align 8
  %201 = getelementptr inbounds %struct.b43_private_tx_info, %struct.b43_private_tx_info* %200, i32 0, i32 0
  store i8* null, i8** %201, align 8
  %202 = load i32, i32* %11, align 4
  %203 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %204 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %207 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* @EIO, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %13, align 4
  br label %248

210:                                              ; preds = %175
  br label %211

211:                                              ; preds = %210, %102
  %212 = load %struct.b43_dma_ops*, %struct.b43_dma_ops** %6, align 8
  %213 = getelementptr inbounds %struct.b43_dma_ops, %struct.b43_dma_ops* %212, i32 0, i32 1
  %214 = load i32 (%struct.b43_dmaring*, %struct.b43_dmadesc_generic*, i8*, i64, i32, i32, i32)*, i32 (%struct.b43_dmaring*, %struct.b43_dmadesc_generic*, i8*, i64, i32, i32, i32)** %213, align 8
  %215 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %216 = load %struct.b43_dmadesc_generic*, %struct.b43_dmadesc_generic** %14, align 8
  %217 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %15, align 8
  %218 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %221 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = call i32 %214(%struct.b43_dmaring* %215, %struct.b43_dmadesc_generic* %216, i8* %219, i64 %222, i32 0, i32 1, i32 1)
  %224 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %225 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @IEEE80211_TX_CTL_SEND_AFTER_DTIM, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %211
  %231 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %232 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @B43_SHM_SHARED, align 4
  %235 = load i32, i32* @B43_SHM_SH_MCASTCOOKIE, align 4
  %236 = load i32, i32* %17, align 4
  %237 = call i32 @b43_shm_write16(i32 %233, i32 %234, i32 %235, i32 %236)
  br label %238

238:                                              ; preds = %230, %211
  %239 = call i32 (...) @wmb()
  %240 = load %struct.b43_dma_ops*, %struct.b43_dma_ops** %6, align 8
  %241 = getelementptr inbounds %struct.b43_dma_ops, %struct.b43_dma_ops* %240, i32 0, i32 0
  %242 = load i32 (%struct.b43_dmaring*, i32)*, i32 (%struct.b43_dmaring*, i32)** %241, align 8
  %243 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %244 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @next_slot(%struct.b43_dmaring* %244, i32 %245)
  %247 = call i32 %242(%struct.b43_dmaring* %243, i32 %246)
  store i32 0, i32* %3, align 4
  br label %256

248:                                              ; preds = %195, %166
  %249 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  %250 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %16, align 8
  %251 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %250, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = load i64, i64* %18, align 8
  %254 = call i32 @unmap_descbuffer(%struct.b43_dmaring* %249, i8* %252, i64 %253, i32 1)
  %255 = load i32, i32* %13, align 4
  store i32 %255, i32* %3, align 4
  br label %256

256:                                              ; preds = %248, %238, %93, %70
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.b43_private_tx_info* @b43_get_priv_tx_info(%struct.ieee80211_tx_info*) #1

declare dso_local i64 @b43_txhdr_size(i32) #1

declare dso_local i32 @request_slot(%struct.b43_dmaring*) #1

declare dso_local i32 @memset(%struct.b43_dmadesc_meta*, i32, i32) #1

declare dso_local i32 @generate_cookie(%struct.b43_dmaring*, i32) #1

declare dso_local i32 @b43_generate_txhdr(i32, i32*, %struct.sk_buff*, %struct.ieee80211_tx_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @map_descbuffer(%struct.b43_dmaring*, i8*, i64, i32) #1

declare dso_local i64 @b43_dma_mapping_error(%struct.b43_dmaring*, i8*, i64, i32) #1

declare dso_local i8* @kmemdup(i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @b43_shm_write16(i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @next_slot(%struct.b43_dmaring*, i32) #1

declare dso_local i32 @unmap_descbuffer(%struct.b43_dmaring*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
