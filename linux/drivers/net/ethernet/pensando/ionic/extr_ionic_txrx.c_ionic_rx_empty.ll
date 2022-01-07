; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { %struct.ionic_desc_info*, %struct.ionic_desc_info*, %struct.TYPE_4__* }
%struct.ionic_desc_info = type { i32*, %struct.ionic_rxq_desc*, %struct.ionic_desc_info* }
%struct.ionic_rxq_desc = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ionic_rx_empty(%struct.ionic_queue* %0) #0 {
  %2 = alloca %struct.ionic_queue*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ionic_desc_info*, align 8
  %5 = alloca %struct.ionic_rxq_desc*, align 8
  store %struct.ionic_queue* %0, %struct.ionic_queue** %2, align 8
  %6 = load %struct.ionic_queue*, %struct.ionic_queue** %2, align 8
  %7 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %3, align 8
  %13 = load %struct.ionic_queue*, %struct.ionic_queue** %2, align 8
  %14 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %13, i32 0, i32 1
  %15 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %14, align 8
  store %struct.ionic_desc_info* %15, %struct.ionic_desc_info** %4, align 8
  br label %16

16:                                               ; preds = %43, %1
  %17 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %4, align 8
  %18 = load %struct.ionic_queue*, %struct.ionic_queue** %2, align 8
  %19 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %18, i32 0, i32 0
  %20 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %19, align 8
  %21 = icmp ne %struct.ionic_desc_info* %17, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  %23 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %4, align 8
  %24 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %23, i32 0, i32 1
  %25 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %24, align 8
  store %struct.ionic_rxq_desc* %25, %struct.ionic_rxq_desc** %5, align 8
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %5, align 8
  %28 = getelementptr inbounds %struct.ionic_rxq_desc, %struct.ionic_rxq_desc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le64_to_cpu(i32 %29)
  %31 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %5, align 8
  %32 = getelementptr inbounds %struct.ionic_rxq_desc, %struct.ionic_rxq_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %36 = call i32 @dma_unmap_single(%struct.device* %26, i32 %30, i32 %34, i32 %35)
  %37 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %4, align 8
  %38 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @dev_kfree_skb(i32* %39)
  %41 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %4, align 8
  %42 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %22
  %44 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %4, align 8
  %45 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %44, i32 0, i32 2
  %46 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %45, align 8
  store %struct.ionic_desc_info* %46, %struct.ionic_desc_info** %4, align 8
  br label %16

47:                                               ; preds = %16
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
