; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_rx_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_rx_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.urb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@MT_RXQ_MAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mt76u_rx_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76u_rx_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.mt76_dev*
  store %struct.mt76_dev* %8, %struct.mt76_dev** %3, align 8
  %9 = call i32 (...) @rcu_read_lock()
  br label %10

10:                                               ; preds = %1, %32
  %11 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %12 = call %struct.urb* @mt76u_get_next_rx_entry(%struct.mt76_dev* %11)
  store %struct.urb* %12, %struct.urb** %4, align 8
  %13 = load %struct.urb*, %struct.urb** %4, align 8
  %14 = icmp ne %struct.urb* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %36

16:                                               ; preds = %10
  %17 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %18 = load %struct.urb*, %struct.urb** %4, align 8
  %19 = call i32 @mt76u_process_rx_entry(%struct.mt76_dev* %17, %struct.urb* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %24 = load %struct.urb*, %struct.urb** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call i32 @mt76u_refill_rx(%struct.mt76_dev* %23, %struct.urb* %24, i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %36

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %16
  %33 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %34 = load %struct.urb*, %struct.urb** %4, align 8
  %35 = call i32 @mt76u_submit_rx_buf(%struct.mt76_dev* %33, %struct.urb* %34)
  br label %10

36:                                               ; preds = %30, %15
  %37 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %38 = load i32, i32* @MT_RXQ_MAIN, align 4
  %39 = call i32 @mt76_rx_poll_complete(%struct.mt76_dev* %37, i32 %38, i32* null)
  %40 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.urb* @mt76u_get_next_rx_entry(%struct.mt76_dev*) #1

declare dso_local i32 @mt76u_process_rx_entry(%struct.mt76_dev*, %struct.urb*) #1

declare dso_local i32 @mt76u_refill_rx(%struct.mt76_dev*, %struct.urb*, i32, i32) #1

declare dso_local i32 @mt76u_submit_rx_buf(%struct.mt76_dev*, %struct.urb*) #1

declare dso_local i32 @mt76_rx_poll_complete(%struct.mt76_dev*, i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
