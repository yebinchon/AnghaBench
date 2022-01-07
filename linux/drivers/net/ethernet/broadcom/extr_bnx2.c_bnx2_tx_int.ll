; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_tx_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_tx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i64, %struct.TYPE_3__*, i32, %struct.bnx2_napi* }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2_napi = type { %struct.bnx2_tx_ring_info }
%struct.bnx2_tx_ring_info = type { i64, i64, %struct.bnx2_sw_tx_bd* }
%struct.bnx2_sw_tx_bd = type { i64, %struct.sk_buff*, i64 }
%struct.sk_buff = type { i64, i32 }
%struct.netdev_queue = type { i32 }
%struct.TYPE_4__ = type { i32* }

@BNX2_MAX_TX_DESC_CNT = common dso_local global i64 0, align 8
@mapping = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, %struct.bnx2_napi*, i32)* @bnx2_tx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_tx_int(%struct.bnx2* %0, %struct.bnx2_napi* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2*, align 8
  %5 = alloca %struct.bnx2_napi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2_tx_ring_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.netdev_queue*, align 8
  %15 = alloca %struct.bnx2_sw_tx_bd*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.bnx2_sw_tx_bd*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %4, align 8
  store %struct.bnx2_napi* %1, %struct.bnx2_napi** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load %struct.bnx2_napi*, %struct.bnx2_napi** %5, align 8
  %23 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %22, i32 0, i32 0
  store %struct.bnx2_tx_ring_info* %23, %struct.bnx2_tx_ring_info** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %24 = load %struct.bnx2_napi*, %struct.bnx2_napi** %5, align 8
  %25 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %26 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %25, i32 0, i32 3
  %27 = load %struct.bnx2_napi*, %struct.bnx2_napi** %26, align 8
  %28 = ptrtoint %struct.bnx2_napi* %24 to i64
  %29 = ptrtoint %struct.bnx2_napi* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 24
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %34 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %35, i32 %36)
  store %struct.netdev_queue* %37, %struct.netdev_queue** %14, align 8
  %38 = load %struct.bnx2_napi*, %struct.bnx2_napi** %5, align 8
  %39 = call i64 @bnx2_get_hw_tx_cons(%struct.bnx2_napi* %38)
  store i64 %39, i64* %8, align 8
  %40 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %7, align 8
  %41 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %170, %3
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %171

47:                                               ; preds = %43
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @BNX2_TX_RING_IDX(i64 %48)
  store i64 %49, i64* %10, align 8
  %50 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %7, align 8
  %51 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %50, i32 0, i32 2
  %52 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %52, i64 %53
  store %struct.bnx2_sw_tx_bd* %54, %struct.bnx2_sw_tx_bd** %15, align 8
  %55 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %15, align 8
  %56 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %55, i32 0, i32 1
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %16, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = call i32 @prefetch(i32* %59)
  %61 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %15, align 8
  %62 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %47
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %15, align 8
  %68 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %19, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %15, align 8
  %74 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %20, align 8
  %78 = load i64, i64* %20, align 8
  %79 = load i64, i64* @BNX2_MAX_TX_DESC_CNT, align 8
  %80 = icmp sge i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %65
  %85 = load i64, i64* %19, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %19, align 8
  br label %87

87:                                               ; preds = %84, %65
  %88 = load i64, i64* %19, align 8
  %89 = load i64, i64* %8, align 8
  %90 = sub nsw i64 %88, %89
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %171

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %47
  %95 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %96 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %15, align 8
  %100 = load i32, i32* @mapping, align 4
  %101 = call i32 @dma_unmap_addr(%struct.bnx2_sw_tx_bd* %99, i32 %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %103 = call i32 @skb_headlen(%struct.sk_buff* %102)
  %104 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %105 = call i32 @dma_unmap_single(i32* %98, i32 %101, i32 %103, i32 %104)
  %106 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %15, align 8
  %107 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %106, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %107, align 8
  %108 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %15, align 8
  %109 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %112

112:                                              ; preds = %142, %94
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %18, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %145

116:                                              ; preds = %112
  %117 = load i64, i64* %9, align 8
  %118 = call i64 @BNX2_NEXT_TX_BD(i64 %117)
  store i64 %118, i64* %9, align 8
  %119 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %7, align 8
  %120 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %119, i32 0, i32 2
  %121 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %120, align 8
  %122 = load i64, i64* %9, align 8
  %123 = call i64 @BNX2_TX_RING_IDX(i64 %122)
  %124 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %121, i64 %123
  store %struct.bnx2_sw_tx_bd* %124, %struct.bnx2_sw_tx_bd** %21, align 8
  %125 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %126 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %21, align 8
  %130 = load i32, i32* @mapping, align 4
  %131 = call i32 @dma_unmap_addr(%struct.bnx2_sw_tx_bd* %129, i32 %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %133 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %132)
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %17, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = call i32 @skb_frag_size(i32* %138)
  %140 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %141 = call i32 @dma_unmap_page(i32* %128, i32 %131, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %116
  %143 = load i32, i32* %17, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %17, align 4
  br label %112

145:                                              ; preds = %112
  %146 = load i64, i64* %9, align 8
  %147 = call i64 @BNX2_NEXT_TX_BD(i64 %146)
  store i64 %147, i64* %9, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = zext i32 %151 to i64
  %153 = add nsw i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %13, align 4
  %155 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %156 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %155)
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %145
  br label %171

163:                                              ; preds = %145
  %164 = load i64, i64* %8, align 8
  %165 = load i64, i64* %9, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load %struct.bnx2_napi*, %struct.bnx2_napi** %5, align 8
  %169 = call i64 @bnx2_get_hw_tx_cons(%struct.bnx2_napi* %168)
  store i64 %169, i64* %8, align 8
  br label %170

170:                                              ; preds = %167, %163
  br label %43

171:                                              ; preds = %162, %92, %43
  %172 = load %struct.netdev_queue*, %struct.netdev_queue** %14, align 8
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %172, i32 %173, i32 %174)
  %176 = load i64, i64* %8, align 8
  %177 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %7, align 8
  %178 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  %179 = load i64, i64* %9, align 8
  %180 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %7, align 8
  %181 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %180, i32 0, i32 0
  store i64 %179, i64* %181, align 8
  %182 = call i32 (...) @smp_mb()
  %183 = load %struct.netdev_queue*, %struct.netdev_queue** %14, align 8
  %184 = call i32 @netif_tx_queue_stopped(%struct.netdev_queue* %183)
  %185 = call i64 @unlikely(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %216

187:                                              ; preds = %171
  %188 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %189 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %7, align 8
  %190 = call i64 @bnx2_tx_avail(%struct.bnx2* %188, %struct.bnx2_tx_ring_info* %189)
  %191 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %192 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp sgt i64 %190, %193
  br i1 %194, label %195, label %216

195:                                              ; preds = %187
  %196 = load %struct.netdev_queue*, %struct.netdev_queue** %14, align 8
  %197 = call i32 (...) @smp_processor_id()
  %198 = call i32 @__netif_tx_lock(%struct.netdev_queue* %196, i32 %197)
  %199 = load %struct.netdev_queue*, %struct.netdev_queue** %14, align 8
  %200 = call i32 @netif_tx_queue_stopped(%struct.netdev_queue* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %195
  %203 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %204 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %7, align 8
  %205 = call i64 @bnx2_tx_avail(%struct.bnx2* %203, %struct.bnx2_tx_ring_info* %204)
  %206 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %207 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp sgt i64 %205, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %202
  %211 = load %struct.netdev_queue*, %struct.netdev_queue** %14, align 8
  %212 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %211)
  br label %213

213:                                              ; preds = %210, %202, %195
  %214 = load %struct.netdev_queue*, %struct.netdev_queue** %14, align 8
  %215 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %214)
  br label %216

216:                                              ; preds = %213, %187, %171
  %217 = load i32, i32* %11, align 4
  ret i32 %217
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i64 @bnx2_get_hw_tx_cons(%struct.bnx2_napi*) #1

declare dso_local i64 @BNX2_TX_RING_IDX(i64) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.bnx2_sw_tx_bd*, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @BNX2_NEXT_TX_BD(i64) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i64 @bnx2_tx_avail(%struct.bnx2*, %struct.bnx2_tx_ring_info*) #1

declare dso_local i32 @__netif_tx_lock(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
