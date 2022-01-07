; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_has_tx_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_has_tx_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mt76_queue* }
%struct.mt76_queue = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76_has_tx_pending(%struct.mt76_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.mt76_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %31, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %10)
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %6
  %14 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.mt76_queue*, %struct.mt76_queue** %20, align 8
  store %struct.mt76_queue* %21, %struct.mt76_queue** %4, align 8
  %22 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %23 = icmp ne %struct.mt76_queue* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %26 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %35

30:                                               ; preds = %24, %13
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %6

34:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
