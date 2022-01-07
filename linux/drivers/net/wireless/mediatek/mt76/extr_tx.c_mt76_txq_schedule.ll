; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_txq_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_txq_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, %struct.mt76_sw_queue* }
%struct.mt76_sw_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_txq_schedule(%struct.mt76_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt76_sw_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %7, i32 0, i32 1
  %9 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %9, i64 %11
  store %struct.mt76_sw_queue* %12, %struct.mt76_sw_queue** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp uge i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %5, align 8
  %18 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 4
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %43

22:                                               ; preds = %16
  %23 = call i32 (...) @rcu_read_lock()
  br label %24

24:                                               ; preds = %38, %22
  %25 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ieee80211_txq_schedule_start(i32 %27, i32 %28)
  %30 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @mt76_txq_schedule_list(%struct.mt76_dev* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %34 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ieee80211_txq_schedule_end(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %24, label %41

41:                                               ; preds = %38
  %42 = call i32 (...) @rcu_read_unlock()
  br label %43

43:                                               ; preds = %41, %21, %15
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ieee80211_txq_schedule_start(i32, i32) #1

declare dso_local i32 @mt76_txq_schedule_list(%struct.mt76_dev*, i32) #1

declare dso_local i32 @ieee80211_txq_schedule_end(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
