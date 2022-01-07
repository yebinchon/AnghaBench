; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_txq_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_txq_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_queue = type { i32, i64, i32, i8*, i32, i32, %struct.tx_desc* }
%struct.tx_desc = type { i32, i32, i32 }
%struct.mv643xx_eth_private = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.sk_buff = type { i32 }

@BUFFER_OWNED_BY_DMA = common dso_local global i32 0, align 4
@DESC_DMA_MAP_PAGE = common dso_local global i8 0, align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TX_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@ERROR_SUMMARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"tx error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tx_queue*, i32, i32)* @txq_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txq_reclaim(%struct.tx_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv643xx_eth_private*, align 8
  %8 = alloca %struct.netdev_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tx_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.tx_queue* %0, %struct.tx_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %16 = call %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue* %15)
  store %struct.mv643xx_eth_private* %16, %struct.mv643xx_eth_private** %7, align 8
  %17 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %18 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %21 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.TYPE_7__* %19, i32 %22)
  store %struct.netdev_queue* %23, %struct.netdev_queue** %8, align 8
  %24 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %25 = call i32 @__netif_tx_lock_bh(%struct.netdev_queue* %24)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %173, %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %32 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i1 [ false, %26 ], [ %34, %30 ]
  br i1 %36, label %37, label %174

37:                                               ; preds = %35
  %38 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %39 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %10, align 4
  %41 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %42 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %41, i32 0, i32 6
  %43 = load %struct.tx_desc*, %struct.tx_desc** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %43, i64 %45
  store %struct.tx_desc* %46, %struct.tx_desc** %11, align 8
  %47 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %48 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* %13, align 1
  %54 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %55 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @BUFFER_OWNED_BY_DMA, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %37
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %174

65:                                               ; preds = %61
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @BUFFER_OWNED_BY_DMA, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %71 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %65, %37
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  %75 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %76 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %78 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %81 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %86 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %85, i32 0, i32 2
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %72
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  %90 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %91 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, -1
  store i64 %93, i64* %91, align 8
  %94 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %95 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %96 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @IS_TSO_HEADER(%struct.tx_queue* %94, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %137, label %100

100:                                              ; preds = %87
  %101 = load i8, i8* %13, align 1
  %102 = sext i8 %101 to i32
  %103 = load i8, i8* @DESC_DMA_MAP_PAGE, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %100
  %107 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %108 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %114 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %117 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @DMA_TO_DEVICE, align 4
  %120 = call i32 @dma_unmap_page(i32 %112, i32 %115, i32 %118, i32 %119)
  br label %136

121:                                              ; preds = %100
  %122 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %123 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %122, i32 0, i32 1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %129 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %132 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @DMA_TO_DEVICE, align 4
  %135 = call i32 @dma_unmap_single(i32 %127, i32 %130, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %121, %106
  br label %137

137:                                              ; preds = %136, %87
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @TX_ENABLE_INTERRUPT, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %137
  %143 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %144 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %143, i32 0, i32 5
  %145 = call %struct.sk_buff* @__skb_dequeue(i32* %144)
  store %struct.sk_buff* %145, %struct.sk_buff** %14, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %147 = icmp ne %struct.sk_buff* %146, null
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = call i32 @WARN_ON(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %142
  %153 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %154 = call i32 @dev_consume_skb_any(%struct.sk_buff* %153)
  br label %155

155:                                              ; preds = %152, %142
  br label %156

156:                                              ; preds = %155, %137
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @ERROR_SUMMARY, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %156
  %162 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %163 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %162, i32 0, i32 1
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = call i32 @netdev_info(%struct.TYPE_7__* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %166 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %167 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %166, i32 0, i32 1
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %161, %156
  br label %26

174:                                              ; preds = %64, %35
  %175 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %176 = call i32 @__netif_tx_unlock_bh(%struct.netdev_queue* %175)
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %5, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %174
  %181 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %182 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = shl i32 1, %183
  %185 = xor i32 %184, -1
  %186 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %187 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %180, %174
  %191 = load i32, i32* %9, align 4
  ret i32 %191
}

declare dso_local %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @__netif_tx_lock_bh(%struct.netdev_queue*) #1

declare dso_local i32 @IS_TSO_HEADER(%struct.tx_queue*, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netdev_info(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @__netif_tx_unlock_bh(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
