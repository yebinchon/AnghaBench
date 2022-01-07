; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_free_tx_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_free_tx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.qede_tx_queue = type { i64, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.eth_tx_1st_bd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.eth_tx_bd = type { %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }

@QEDE_TSO_SPLIT_BD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"skb is null for txq idx=%d txq->sw_tx_cons=%d txq->sw_tx_prod=%d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qede_free_tx_pkt(%struct.qede_dev* %0, %struct.qede_tx_queue* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.qede_tx_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.eth_tx_1st_bd*, align 8
  %11 = alloca %struct.eth_tx_bd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.eth_tx_bd*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %5, align 8
  store %struct.qede_tx_queue* %1, %struct.qede_tx_queue** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %19 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %22 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %9, align 8
  store i32 0, i32* %12, align 4
  %29 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %30 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @QEDE_TSO_SPLIT_BD, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %3
  %46 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %49 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %52 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @DP_ERR(%struct.qede_dev* %46, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %50, i32 %53)
  store i32 -1, i32* %4, align 4
  br label %150

55:                                               ; preds = %3
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %61 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %60, i32 0, i32 2
  %62 = call i64 @qed_chain_consume(i32* %61)
  %63 = inttoptr i64 %62 to %struct.eth_tx_1st_bd*
  store %struct.eth_tx_1st_bd* %63, %struct.eth_tx_1st_bd** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  %66 = load %struct.eth_tx_1st_bd*, %struct.eth_tx_1st_bd** %10, align 8
  %67 = getelementptr inbounds %struct.eth_tx_1st_bd, %struct.eth_tx_1st_bd* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %55
  %73 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %74 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %73, i32 0, i32 2
  %75 = call i64 @qed_chain_consume(i32* %74)
  %76 = inttoptr i64 %75 to %struct.eth_tx_bd*
  store %struct.eth_tx_bd* %76, %struct.eth_tx_bd** %17, align 8
  %77 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %17, align 8
  %78 = call i32 @BD_UNMAP_LEN(%struct.eth_tx_bd* %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %72, %55
  %82 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %83 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.eth_tx_1st_bd*, %struct.eth_tx_1st_bd** %10, align 8
  %87 = bitcast %struct.eth_tx_1st_bd* %86 to %struct.eth_tx_bd*
  %88 = call i32 @BD_UNMAP_ADDR(%struct.eth_tx_bd* %87)
  %89 = load %struct.eth_tx_1st_bd*, %struct.eth_tx_1st_bd** %10, align 8
  %90 = bitcast %struct.eth_tx_1st_bd* %89 to %struct.eth_tx_bd*
  %91 = call i32 @BD_UNMAP_LEN(%struct.eth_tx_bd* %90)
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* @DMA_TO_DEVICE, align 4
  %95 = call i32 @dma_unmap_single(i32* %85, i32 %88, i32 %93, i32 %94)
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %118, %81
  %97 = load i32, i32* %15, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %99 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %98)
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %97, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %96
  %104 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %105 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %104, i32 0, i32 2
  %106 = call i64 @qed_chain_consume(i32* %105)
  %107 = inttoptr i64 %106 to %struct.eth_tx_bd*
  store %struct.eth_tx_bd* %107, %struct.eth_tx_bd** %11, align 8
  %108 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %109 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %11, align 8
  %113 = call i32 @BD_UNMAP_ADDR(%struct.eth_tx_bd* %112)
  %114 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %11, align 8
  %115 = call i32 @BD_UNMAP_LEN(%struct.eth_tx_bd* %114)
  %116 = load i32, i32* @DMA_TO_DEVICE, align 4
  %117 = call i32 @dma_unmap_page(i32* %111, i32 %113, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %103
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %96

123:                                              ; preds = %96
  br label %124

124:                                              ; preds = %129, %123
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %131 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %130, i32 0, i32 2
  %132 = call i64 @qed_chain_consume(i32* %131)
  br label %124

133:                                              ; preds = %124
  %134 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %135 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %134)
  %136 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %137 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load i64, i64* %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %142, align 8
  %143 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %6, align 8
  %144 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = load i64, i64* %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i32 0, i32* %149, align 8
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %133, %45
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*, i64, i64, i32) #1

declare dso_local i64 @qed_chain_consume(i32*) #1

declare dso_local i32 @BD_UNMAP_LEN(%struct.eth_tx_bd*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @BD_UNMAP_ADDR(%struct.eth_tx_bd*) #1

declare dso_local %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
