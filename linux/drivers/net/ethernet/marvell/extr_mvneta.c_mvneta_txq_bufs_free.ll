; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_txq_bufs_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_txq_bufs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mvneta_tx_queue = type { i32, %struct.sk_buff**, %struct.mvneta_tx_desc* }
%struct.sk_buff = type { i64 }
%struct.mvneta_tx_desc = type { i32, i32 }
%struct.netdev_queue = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, %struct.mvneta_tx_queue*, i32, %struct.netdev_queue*)* @mvneta_txq_bufs_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_txq_bufs_free(%struct.mvneta_port* %0, %struct.mvneta_tx_queue* %1, i32 %2, %struct.netdev_queue* %3) #0 {
  %5 = alloca %struct.mvneta_port*, align 8
  %6 = alloca %struct.mvneta_tx_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netdev_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mvneta_tx_desc*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.mvneta_port* %0, %struct.mvneta_port** %5, align 8
  store %struct.mvneta_tx_queue* %1, %struct.mvneta_tx_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.netdev_queue* %3, %struct.netdev_queue** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %79, %4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %82

18:                                               ; preds = %14
  %19 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %6, align 8
  %20 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %19, i32 0, i32 2
  %21 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %20, align 8
  %22 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %6, align 8
  %23 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %21, i64 %25
  store %struct.mvneta_tx_desc* %26, %struct.mvneta_tx_desc** %12, align 8
  %27 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %6, align 8
  %28 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %27, i32 0, i32 1
  %29 = load %struct.sk_buff**, %struct.sk_buff*** %28, align 8
  %30 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %6, align 8
  %31 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %29, i64 %33
  %35 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  store %struct.sk_buff* %35, %struct.sk_buff** %13, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %18
  %39 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %38, %18
  %49 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %6, align 8
  %50 = call i32 @mvneta_txq_inc_get(%struct.mvneta_tx_queue* %49)
  %51 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %6, align 8
  %52 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %12, align 8
  %53 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @IS_TSO_HEADER(%struct.mvneta_tx_queue* %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %48
  %58 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %59 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %12, align 8
  %65 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %12, align 8
  %68 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DMA_TO_DEVICE, align 4
  %71 = call i32 @dma_unmap_single(i32 %63, i32 %66, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %57, %48
  %73 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  br label %79

76:                                               ; preds = %72
  %77 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %78 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %77)
  br label %79

79:                                               ; preds = %76, %75
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %14

82:                                               ; preds = %14
  %83 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %83, i32 %84, i32 %85)
  ret void
}

declare dso_local i32 @mvneta_txq_inc_get(%struct.mvneta_tx_queue*) #1

declare dso_local i32 @IS_TSO_HEADER(%struct.mvneta_tx_queue*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
