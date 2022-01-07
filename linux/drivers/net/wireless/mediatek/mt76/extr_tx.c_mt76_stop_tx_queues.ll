; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_stop_tx_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_stop_tx_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.ieee80211_sta = type { %struct.ieee80211_txq** }
%struct.ieee80211_txq = type { i64 }
%struct.mt76_queue = type { i32 }
%struct.mt76_txq = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mt76_queue* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_stop_tx_queues(%struct.mt76_dev* %0, %struct.ieee80211_sta* %1, i32 %2) #0 {
  %4 = alloca %struct.mt76_dev*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_txq*, align 8
  %9 = alloca %struct.mt76_queue*, align 8
  %10 = alloca %struct.mt76_txq*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %57, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_txq**, %struct.ieee80211_txq*** %14, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.ieee80211_txq** %15)
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %11
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_txq**, %struct.ieee80211_txq*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ieee80211_txq*, %struct.ieee80211_txq** %21, i64 %23
  %25 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %24, align 8
  store %struct.ieee80211_txq* %25, %struct.ieee80211_txq** %8, align 8
  %26 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %8, align 8
  %27 = icmp ne %struct.ieee80211_txq* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %57

29:                                               ; preds = %18
  %30 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %8, align 8
  %31 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.mt76_txq*
  store %struct.mt76_txq* %33, %struct.mt76_txq** %10, align 8
  %34 = load %struct.mt76_txq*, %struct.mt76_txq** %10, align 8
  %35 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.mt76_queue*, %struct.mt76_queue** %37, align 8
  store %struct.mt76_queue* %38, %struct.mt76_queue** %9, align 8
  %39 = load %struct.mt76_queue*, %struct.mt76_queue** %9, align 8
  %40 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %39, i32 0, i32 0
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load %struct.mt76_txq*, %struct.mt76_txq** %10, align 8
  %43 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %29
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %46, %29
  %50 = phi i1 [ false, %29 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = load %struct.mt76_txq*, %struct.mt76_txq** %10, align 8
  %53 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mt76_queue*, %struct.mt76_queue** %9, align 8
  %55 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_bh(i32* %55)
  br label %57

57:                                               ; preds = %49, %28
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %11

60:                                               ; preds = %11
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.ieee80211_txq**) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
