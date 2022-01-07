; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ionic_desc_info = type { %struct.ionic_txq_desc*, %struct.ionic_txq_sg_desc* }
%struct.ionic_txq_desc = type { i32, i32 }
%struct.ionic_txq_sg_desc = type { %struct.ionic_txq_sg_elem* }
%struct.ionic_txq_sg_elem = type { i32, i32 }
%struct.ionic_cq_info = type { i32 }
%struct.ionic_tx_stats = type { i32 }
%struct.sk_buff = type { i32 }

@IONIC_TXQ_DESC_OPCODE_TSO = common dso_local global i64 0, align 8
@IONIC_TXQ_DESC_FLAG_TSO_SOT = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info*, i8*)* @ionic_tx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_tx_clean(%struct.ionic_queue* %0, %struct.ionic_desc_info* %1, %struct.ionic_cq_info* %2, i8* %3) #0 {
  %5 = alloca %struct.ionic_queue*, align 8
  %6 = alloca %struct.ionic_desc_info*, align 8
  %7 = alloca %struct.ionic_cq_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ionic_txq_sg_desc*, align 8
  %10 = alloca %struct.ionic_txq_sg_elem*, align 8
  %11 = alloca %struct.ionic_tx_stats*, align 8
  %12 = alloca %struct.ionic_txq_desc*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca i32, align 4
  store %struct.ionic_queue* %0, %struct.ionic_queue** %5, align 8
  store %struct.ionic_desc_info* %1, %struct.ionic_desc_info** %6, align 8
  store %struct.ionic_cq_info* %2, %struct.ionic_cq_info** %7, align 8
  store i8* %3, i8** %8, align 8
  %22 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %6, align 8
  %23 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %22, i32 0, i32 1
  %24 = load %struct.ionic_txq_sg_desc*, %struct.ionic_txq_sg_desc** %23, align 8
  store %struct.ionic_txq_sg_desc* %24, %struct.ionic_txq_sg_desc** %9, align 8
  %25 = load %struct.ionic_txq_sg_desc*, %struct.ionic_txq_sg_desc** %9, align 8
  %26 = getelementptr inbounds %struct.ionic_txq_sg_desc, %struct.ionic_txq_sg_desc* %25, i32 0, i32 0
  %27 = load %struct.ionic_txq_sg_elem*, %struct.ionic_txq_sg_elem** %26, align 8
  store %struct.ionic_txq_sg_elem* %27, %struct.ionic_txq_sg_elem** %10, align 8
  %28 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %29 = call %struct.ionic_tx_stats* @q_to_tx_stats(%struct.ionic_queue* %28)
  store %struct.ionic_tx_stats* %29, %struct.ionic_tx_stats** %11, align 8
  %30 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %6, align 8
  %31 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %30, i32 0, i32 0
  %32 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %31, align 8
  store %struct.ionic_txq_desc* %32, %struct.ionic_txq_desc** %12, align 8
  %33 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %34 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.device*, %struct.device** %38, align 8
  store %struct.device* %39, %struct.device** %13, align 8
  %40 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %12, align 8
  %41 = getelementptr inbounds %struct.ionic_txq_desc, %struct.ionic_txq_desc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @le64_to_cpu(i32 %42)
  %44 = call i32 @decode_txq_desc_cmd(i64 %43, i64* %14, i64* %15, i64* %16, i64* %19)
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* @IONIC_TXQ_DESC_OPCODE_TSO, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %4
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* @IONIC_TXQ_DESC_FLAG_TSO_SOT, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48, %4
  %54 = load %struct.device*, %struct.device** %13, align 8
  %55 = load i64, i64* %19, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %12, align 8
  %58 = getelementptr inbounds %struct.ionic_txq_desc, %struct.ionic_txq_desc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = load i32, i32* @DMA_TO_DEVICE, align 4
  %62 = call i32 @dma_unmap_single(%struct.device* %54, i32 %56, i32 %60, i32 %61)
  br label %73

63:                                               ; preds = %48
  %64 = load %struct.device*, %struct.device** %13, align 8
  %65 = load i64, i64* %19, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %12, align 8
  %68 = getelementptr inbounds %struct.ionic_txq_desc, %struct.ionic_txq_desc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le16_to_cpu(i32 %69)
  %71 = load i32, i32* @DMA_TO_DEVICE, align 4
  %72 = call i32 @dma_unmap_page(%struct.device* %64, i32 %66, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %63, %53
  store i32 0, i32* %18, align 4
  br label %74

74:                                               ; preds = %92, %73
  %75 = load i32, i32* %18, align 4
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* %16, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load %struct.device*, %struct.device** %13, align 8
  %81 = load %struct.ionic_txq_sg_elem*, %struct.ionic_txq_sg_elem** %10, align 8
  %82 = getelementptr inbounds %struct.ionic_txq_sg_elem, %struct.ionic_txq_sg_elem* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @le64_to_cpu(i32 %83)
  %85 = trunc i64 %84 to i32
  %86 = load %struct.ionic_txq_sg_elem*, %struct.ionic_txq_sg_elem** %10, align 8
  %87 = getelementptr inbounds %struct.ionic_txq_sg_elem, %struct.ionic_txq_sg_elem* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = load i32, i32* @DMA_TO_DEVICE, align 4
  %91 = call i32 @dma_unmap_page(%struct.device* %80, i32 %85, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %79
  %93 = load i32, i32* %18, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %18, align 4
  %95 = load %struct.ionic_txq_sg_elem*, %struct.ionic_txq_sg_elem** %10, align 8
  %96 = getelementptr inbounds %struct.ionic_txq_sg_elem, %struct.ionic_txq_sg_elem* %95, i32 1
  store %struct.ionic_txq_sg_elem* %96, %struct.ionic_txq_sg_elem** %10, align 8
  br label %74

97:                                               ; preds = %74
  %98 = load i8*, i8** %8, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %140

100:                                              ; preds = %97
  %101 = load i8*, i8** %8, align 8
  %102 = bitcast i8* %101 to %struct.sk_buff*
  store %struct.sk_buff* %102, %struct.sk_buff** %20, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %21, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %107 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %106)
  store i32 %107, i32* %17, align 4
  %108 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %109 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @__netif_subqueue_stopped(i32 %112, i32 %113)
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %100
  %118 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %119 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %17, align 4
  %124 = call i32 @netif_wake_subqueue(i32 %122, i32 %123)
  %125 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %126 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %117, %100
  %130 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %131 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %130)
  %132 = load %struct.ionic_tx_stats*, %struct.ionic_tx_stats** %11, align 8
  %133 = getelementptr inbounds %struct.ionic_tx_stats, %struct.ionic_tx_stats* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %137 = call i32 @q_to_ndq(%struct.ionic_queue* %136)
  %138 = load i32, i32* %21, align 4
  %139 = call i32 @netdev_tx_completed_queue(i32 %137, i32 1, i32 %138)
  br label %140

140:                                              ; preds = %129, %97
  ret void
}

declare dso_local %struct.ionic_tx_stats* @q_to_tx_stats(%struct.ionic_queue*) #1

declare dso_local i32 @decode_txq_desc_cmd(i64, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__netif_subqueue_stopped(i32, i32) #1

declare dso_local i32 @netif_wake_subqueue(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netdev_tx_completed_queue(i32, i32, i32) #1

declare dso_local i32 @q_to_ndq(%struct.ionic_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
