; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_tx_queue_skb_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_tx_queue_skb_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mt76_queue* }
%struct.mt76_queue = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.mt76_queue_buf = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, i32, %struct.sk_buff*, i32)* @mt76_dma_tx_queue_skb_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76_dma_tx_queue_skb_raw(%struct.mt76_dev* %0, i32 %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt76_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mt76_queue*, align 8
  %11 = alloca %struct.mt76_queue_buf, align 4
  %12 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %14 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.mt76_queue*, %struct.mt76_queue** %19, align 8
  store %struct.mt76_queue* %20, %struct.mt76_queue** %10, align 8
  %21 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %22 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DMA_TO_DEVICE, align 4
  %31 = call i32 @dma_map_single(i32 %23, i32 %26, i32 %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %33 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @dma_mapping_error(i32 %34, i32 %35)
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %4
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %63

42:                                               ; preds = %4
  %43 = load i32, i32* %12, align 4
  %44 = getelementptr inbounds %struct.mt76_queue_buf, %struct.mt76_queue_buf* %11, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.mt76_queue_buf, %struct.mt76_queue_buf* %11, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.mt76_queue*, %struct.mt76_queue** %10, align 8
  %50 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %49, i32 0, i32 0
  %51 = call i32 @spin_lock_bh(i32* %50)
  %52 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %53 = load %struct.mt76_queue*, %struct.mt76_queue** %10, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call i32 @mt76_dma_add_buf(%struct.mt76_dev* %52, %struct.mt76_queue* %53, %struct.mt76_queue_buf* %11, i32 1, i32 %54, %struct.sk_buff* %55, i32* null)
  %57 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %58 = load %struct.mt76_queue*, %struct.mt76_queue** %10, align 8
  %59 = call i32 @mt76_dma_kick_queue(%struct.mt76_dev* %57, %struct.mt76_queue* %58)
  %60 = load %struct.mt76_queue*, %struct.mt76_queue** %10, align 8
  %61 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock_bh(i32* %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %42, %39
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mt76_dma_add_buf(%struct.mt76_dev*, %struct.mt76_queue*, %struct.mt76_queue_buf*, i32, i32, %struct.sk_buff*, i32*) #1

declare dso_local i32 @mt76_dma_kick_queue(%struct.mt76_dev*, %struct.mt76_queue*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
