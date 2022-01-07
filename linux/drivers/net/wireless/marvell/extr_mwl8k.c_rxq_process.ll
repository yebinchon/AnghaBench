; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_rxq_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_rxq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, i32, i32, %struct.TYPE_4__*, %struct.mwl8k_rx_queue* }
%struct.TYPE_4__ = type { i32, i32 (i8*, %struct.ieee80211_rx_status*, i32*, i32*)* }
%struct.ieee80211_rx_status = type { i32 }
%struct.mwl8k_rx_queue = type { i64, i64, %struct.TYPE_5__*, i8* }
%struct.TYPE_5__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.mwl8k_vif = type { i64 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.mwl8k_dma_data = type { i32, %struct.ieee80211_hdr }

@dma = common dso_local global i32 0, align 4
@MWL8K_RX_MAXSZ = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@MWL8K_RX_DESCS = common dso_local global i64 0, align 8
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @rxq_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxq_process(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mwl8k_priv*, align 8
  %8 = alloca %struct.mwl8k_vif*, align 8
  %9 = alloca %struct.mwl8k_rx_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_rx_status, align 4
  %15 = alloca %struct.ieee80211_hdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.mwl8k_dma_data*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  %20 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %19, align 8
  store %struct.mwl8k_priv* %20, %struct.mwl8k_priv** %7, align 8
  store %struct.mwl8k_vif* null, %struct.mwl8k_vif** %8, align 8
  %21 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %22 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %21, i32 0, i32 4
  %23 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %23, i64 %25
  store %struct.mwl8k_rx_queue* %26, %struct.mwl8k_rx_queue** %9, align 8
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %198, %3
  %28 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %9, align 8
  %29 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = icmp ne i32 %33, 0
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i1 [ false, %27 ], [ %35, %32 ]
  br i1 %37, label %38, label %213

38:                                               ; preds = %36
  %39 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %9, align 8
  %40 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %9, align 8
  %43 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.sk_buff*, %struct.sk_buff** %46, align 8
  store %struct.sk_buff* %47, %struct.sk_buff** %11, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %49 = icmp eq %struct.sk_buff* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %213

51:                                               ; preds = %38
  %52 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %9, align 8
  %53 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %9, align 8
  %56 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %59 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = mul i64 %57, %63
  %65 = getelementptr i8, i8* %54, i64 %64
  store i8* %65, i8** %12, align 8
  %66 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %67 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32 (i8*, %struct.ieee80211_rx_status*, i32*, i32*)*, i32 (i8*, %struct.ieee80211_rx_status*, i32*, i32*)** %69, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %73 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %72, i32 0, i32 2
  %74 = call i32 %70(i8* %71, %struct.ieee80211_rx_status* %14, i32* %16, i32* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %51
  br label %213

78:                                               ; preds = %51
  %79 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %9, align 8
  %80 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %9, align 8
  %83 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %86, align 8
  %87 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %88 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %9, align 8
  %91 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %90, i32 0, i32 2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %9, align 8
  %94 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %95
  %97 = load i32, i32* @dma, align 4
  %98 = call i32 @dma_unmap_addr(%struct.TYPE_5__* %96, i32 %97)
  %99 = load i32, i32* @MWL8K_RX_MAXSZ, align 4
  %100 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %101 = call i32 @pci_unmap_single(i32 %89, i32 %98, i32 %99, i32 %100)
  %102 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %9, align 8
  %103 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %102, i32 0, i32 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %9, align 8
  %106 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %107
  %109 = load i32, i32* @dma, align 4
  %110 = call i32 @dma_unmap_addr_set(%struct.TYPE_5__* %108, i32 %109, i32 0)
  %111 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %9, align 8
  %112 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %9, align 8
  %116 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @MWL8K_RX_DESCS, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %78
  %121 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %9, align 8
  %122 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %120, %78
  %124 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %9, align 8
  %125 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, -1
  store i64 %127, i64* %125, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to %struct.mwl8k_dma_data*
  %132 = getelementptr inbounds %struct.mwl8k_dma_data, %struct.mwl8k_dma_data* %131, i32 0, i32 1
  store %struct.ieee80211_hdr* %132, %struct.ieee80211_hdr** %15, align 8
  %133 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i8*
  %138 = call i64 @mwl8k_capture_bssid(%struct.mwl8k_priv* %133, i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %123
  %141 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %143 = call i32 @mwl8k_save_beacon(%struct.ieee80211_hw* %141, %struct.sk_buff* %142)
  br label %144

144:                                              ; preds = %140, %123
  %145 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %146 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @ieee80211_has_protected(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %198

150:                                              ; preds = %144
  %151 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %152 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %151, i32 0, i32 0
  %153 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %154 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call %struct.mwl8k_vif* @mwl8k_find_vif_bss(i32* %152, i32 %155)
  store %struct.mwl8k_vif* %156, %struct.mwl8k_vif** %8, align 8
  %157 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %8, align 8
  %158 = icmp ne %struct.mwl8k_vif* %157, null
  br i1 %158, label %159, label %197

159:                                              ; preds = %150
  %160 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %8, align 8
  %161 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %197

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %14, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %164
  %171 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = inttoptr i64 %173 to %struct.mwl8k_dma_data*
  store %struct.mwl8k_dma_data* %174, %struct.mwl8k_dma_data** %17, align 8
  %175 = load %struct.mwl8k_dma_data*, %struct.mwl8k_dma_data** %17, align 8
  %176 = getelementptr inbounds %struct.mwl8k_dma_data, %struct.mwl8k_dma_data* %175, i32 0, i32 0
  %177 = bitcast i32* %176 to i8*
  %178 = call i32 @memset(i8* %177, i32 0, i32 4)
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 4
  store i32 %180, i32* %13, align 4
  br label %181

181:                                              ; preds = %170, %164
  %182 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %183 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @ieee80211_is_auth(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %196, label %187

187:                                              ; preds = %181
  %188 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %189 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %192 = or i32 %190, %191
  %193 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %14, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %192
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %187, %181
  br label %197

197:                                              ; preds = %196, %159, %150
  br label %198

198:                                              ; preds = %197, %144
  %199 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %200 = load i32, i32* %13, align 4
  %201 = call i32 @skb_put(%struct.sk_buff* %199, i32 %200)
  %202 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %203 = load i32, i32* %16, align 4
  %204 = call i32 @mwl8k_remove_dma_header(%struct.sk_buff* %202, i32 %203)
  %205 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %206 = call i32 @IEEE80211_SKB_RXCB(%struct.sk_buff* %205)
  %207 = call i32 @memcpy(i32 %206, %struct.ieee80211_rx_status* %14, i32 4)
  %208 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %210 = call i32 @ieee80211_rx_irqsafe(%struct.ieee80211_hw* %208, %struct.sk_buff* %209)
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %27

213:                                              ; preds = %77, %50, %36
  %214 = load i32, i32* %10, align 4
  ret i32 %214
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @mwl8k_capture_bssid(%struct.mwl8k_priv*, i8*) #1

declare dso_local i32 @mwl8k_save_beacon(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i64 @ieee80211_has_protected(i32) #1

declare dso_local %struct.mwl8k_vif* @mwl8k_find_vif_bss(i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ieee80211_is_auth(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @mwl8k_remove_dma_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
