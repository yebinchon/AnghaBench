; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_cancel_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_cancel_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ar5523_rx_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar5523*)* @ar5523_cancel_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5523_cancel_rx_bufs(%struct.ar5523* %0) #0 {
  %2 = alloca %struct.ar5523*, align 8
  %3 = alloca %struct.ar5523_rx_data*, align 8
  %4 = alloca i64, align 8
  store %struct.ar5523* %0, %struct.ar5523** %2, align 8
  br label %5

5:                                                ; preds = %42, %1
  %6 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %7 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %6, i32 0, i32 2
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %11 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %10, i32 0, i32 3
  %12 = call i32 @list_empty(%struct.TYPE_2__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %5
  %15 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %16 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ar5523_rx_data*
  store %struct.ar5523_rx_data* %19, %struct.ar5523_rx_data** %3, align 8
  br label %21

20:                                               ; preds = %5
  store %struct.ar5523_rx_data* null, %struct.ar5523_rx_data** %3, align 8
  br label %21

21:                                               ; preds = %20, %14
  %22 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %23 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %22, i32 0, i32 2
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.ar5523_rx_data*, %struct.ar5523_rx_data** %3, align 8
  %27 = icmp ne %struct.ar5523_rx_data* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %45

29:                                               ; preds = %21
  %30 = load %struct.ar5523_rx_data*, %struct.ar5523_rx_data** %3, align 8
  %31 = getelementptr inbounds %struct.ar5523_rx_data, %struct.ar5523_rx_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_kill_urb(i32 %32)
  %34 = load %struct.ar5523_rx_data*, %struct.ar5523_rx_data** %3, align 8
  %35 = getelementptr inbounds %struct.ar5523_rx_data, %struct.ar5523_rx_data* %34, i32 0, i32 0
  %36 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %37 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %36, i32 0, i32 1
  %38 = call i32 @list_move(i32* %35, i32* %37)
  %39 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %40 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %39, i32 0, i32 0
  %41 = call i32 @atomic_inc(i32* %40)
  br label %42

42:                                               ; preds = %29
  %43 = load %struct.ar5523_rx_data*, %struct.ar5523_rx_data** %3, align 8
  %44 = icmp ne %struct.ar5523_rx_data* %43, null
  br i1 %44, label %5, label %45

45:                                               ; preds = %42, %28
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
