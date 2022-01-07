; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_rx_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_rx_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.mt76_queue = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_dev*, %struct.mt76_queue*)* @mt76_dma_rx_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_dma_rx_cleanup(%struct.mt76_dev* %0, %struct.mt76_queue* %1) #0 {
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.mt76_queue*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  store %struct.mt76_queue* %1, %struct.mt76_queue** %4, align 8
  %8 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %9 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %8, i32 0, i32 1
  %10 = call i32 @spin_lock_bh(i32* %9)
  br label %11

11:                                               ; preds = %21, %2
  %12 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %13 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %14 = call i8* @mt76_dma_dequeue(%struct.mt76_dev* %12, %struct.mt76_queue* %13, i32 1, i32* null, i32* null, i32* %7)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %22

18:                                               ; preds = %11
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @skb_free_frag(i8* %19)
  br label %21

21:                                               ; preds = %18
  br i1 true, label %11, label %22

22:                                               ; preds = %21, %17
  %23 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %24 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock_bh(i32* %24)
  %26 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %27 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %47

32:                                               ; preds = %22
  %33 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %34 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.page* @virt_to_page(i32 %36)
  store %struct.page* %37, %struct.page** %5, align 8
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %40 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__page_frag_cache_drain(%struct.page* %38, i32 %42)
  %44 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %45 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %44, i32 0, i32 0
  %46 = call i32 @memset(%struct.TYPE_2__* %45, i32 0, i32 8)
  br label %47

47:                                               ; preds = %32, %31
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i8* @mt76_dma_dequeue(%struct.mt76_dev*, %struct.mt76_queue*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @skb_free_frag(i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i32 @__page_frag_cache_drain(%struct.page*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
