; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_free_failed_tx_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_free_failed_tx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_tx_queue = type { i64, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.eth_tx_1st_bd = type { i64 }
%struct.eth_tx_bd = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_tx_queue*, %struct.eth_tx_1st_bd*, i32, i32)* @qede_free_failed_tx_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_free_failed_tx_pkt(%struct.qede_tx_queue* %0, %struct.eth_tx_1st_bd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qede_tx_queue*, align 8
  %6 = alloca %struct.eth_tx_1st_bd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.eth_tx_bd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.eth_tx_bd*, align 8
  store %struct.qede_tx_queue* %0, %struct.qede_tx_queue** %5, align 8
  store %struct.eth_tx_1st_bd* %1, %struct.eth_tx_1st_bd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %16 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %19 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %10, align 8
  store i32 0, i32* %13, align 4
  %26 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %27 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %26, i32 0, i32 3
  %28 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %29 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @le16_to_cpu(i32 %32)
  %34 = load %struct.eth_tx_1st_bd*, %struct.eth_tx_1st_bd** %6, align 8
  %35 = bitcast %struct.eth_tx_1st_bd* %34 to %struct.eth_tx_bd*
  %36 = call i32 @qed_chain_set_prod(i32* %27, i32 %33, %struct.eth_tx_bd* %35)
  %37 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %38 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %37, i32 0, i32 3
  %39 = call i64 @qed_chain_produce(i32* %38)
  %40 = inttoptr i64 %39 to %struct.eth_tx_1st_bd*
  store %struct.eth_tx_1st_bd* %40, %struct.eth_tx_1st_bd** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %4
  %44 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %45 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %44, i32 0, i32 3
  %46 = call i64 @qed_chain_produce(i32* %45)
  %47 = inttoptr i64 %46 to %struct.eth_tx_bd*
  store %struct.eth_tx_bd* %47, %struct.eth_tx_bd** %14, align 8
  %48 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %14, align 8
  %49 = call i32 @BD_UNMAP_LEN(%struct.eth_tx_bd* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %43, %4
  %53 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %54 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.eth_tx_1st_bd*, %struct.eth_tx_1st_bd** %6, align 8
  %57 = bitcast %struct.eth_tx_1st_bd* %56 to %struct.eth_tx_bd*
  %58 = call i32 @BD_UNMAP_ADDR(%struct.eth_tx_bd* %57)
  %59 = load %struct.eth_tx_1st_bd*, %struct.eth_tx_1st_bd** %6, align 8
  %60 = bitcast %struct.eth_tx_1st_bd* %59 to %struct.eth_tx_bd*
  %61 = call i32 @BD_UNMAP_LEN(%struct.eth_tx_bd* %60)
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* @DMA_TO_DEVICE, align 4
  %65 = call i32 @dma_unmap_single(i32 %55, i32 %58, i32 %63, i32 %64)
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %90, %52
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %66
  %71 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %72 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %71, i32 0, i32 3
  %73 = call i64 @qed_chain_produce(i32* %72)
  %74 = inttoptr i64 %73 to %struct.eth_tx_bd*
  store %struct.eth_tx_bd* %74, %struct.eth_tx_bd** %11, align 8
  %75 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %11, align 8
  %76 = getelementptr inbounds %struct.eth_tx_bd, %struct.eth_tx_bd* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %70
  %80 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %81 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %11, align 8
  %84 = call i32 @BD_UNMAP_ADDR(%struct.eth_tx_bd* %83)
  %85 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %11, align 8
  %86 = call i32 @BD_UNMAP_LEN(%struct.eth_tx_bd* %85)
  %87 = load i32, i32* @DMA_TO_DEVICE, align 4
  %88 = call i32 @dma_unmap_page(i32 %82, i32 %84, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %79, %70
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %66

93:                                               ; preds = %66
  %94 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %95 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %94, i32 0, i32 3
  %96 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %97 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @le16_to_cpu(i32 %100)
  %102 = load %struct.eth_tx_1st_bd*, %struct.eth_tx_1st_bd** %6, align 8
  %103 = bitcast %struct.eth_tx_1st_bd* %102 to %struct.eth_tx_bd*
  %104 = call i32 @qed_chain_set_prod(i32* %95, i32 %101, %struct.eth_tx_bd* %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %106 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %105)
  %107 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %108 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %113, align 8
  %114 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %115 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  ret void
}

declare dso_local i32 @qed_chain_set_prod(i32*, i32, %struct.eth_tx_bd*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @qed_chain_produce(i32*) #1

declare dso_local i32 @BD_UNMAP_LEN(%struct.eth_tx_bd*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @BD_UNMAP_ADDR(%struct.eth_tx_bd*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
