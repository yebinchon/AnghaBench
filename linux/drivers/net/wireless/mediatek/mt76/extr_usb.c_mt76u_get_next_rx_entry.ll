; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_get_next_rx_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_get_next_rx_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.mt76_dev = type { %struct.mt76_queue* }
%struct.mt76_queue = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.urb* }

@MT_RXQ_MAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.mt76_dev*)* @mt76u_get_next_rx_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @mt76u_get_next_rx_entry(%struct.mt76_dev* %0) #0 {
  %2 = alloca %struct.mt76_dev*, align 8
  %3 = alloca %struct.mt76_queue*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i64, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %2, align 8
  %6 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %6, i32 0, i32 0
  %8 = load %struct.mt76_queue*, %struct.mt76_queue** %7, align 8
  %9 = load i64, i64* @MT_RXQ_MAIN, align 8
  %10 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %8, i64 %9
  store %struct.mt76_queue* %10, %struct.mt76_queue** %3, align 8
  store %struct.urb* null, %struct.urb** %4, align 8
  %11 = load %struct.mt76_queue*, %struct.mt76_queue** %3, align 8
  %12 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %11, i32 0, i32 3
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.mt76_queue*, %struct.mt76_queue** %3, align 8
  %16 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %1
  %20 = load %struct.mt76_queue*, %struct.mt76_queue** %3, align 8
  %21 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.mt76_queue*, %struct.mt76_queue** %3, align 8
  %24 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.urb*, %struct.urb** %27, align 8
  store %struct.urb* %28, %struct.urb** %4, align 8
  %29 = load %struct.mt76_queue*, %struct.mt76_queue** %3, align 8
  %30 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  %33 = load %struct.mt76_queue*, %struct.mt76_queue** %3, align 8
  %34 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = urem i64 %32, %36
  %38 = load %struct.mt76_queue*, %struct.mt76_queue** %3, align 8
  %39 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.mt76_queue*, %struct.mt76_queue** %3, align 8
  %41 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %19, %1
  %45 = load %struct.mt76_queue*, %struct.mt76_queue** %3, align 8
  %46 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %45, i32 0, i32 3
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.urb*, %struct.urb** %4, align 8
  ret %struct.urb* %49
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
