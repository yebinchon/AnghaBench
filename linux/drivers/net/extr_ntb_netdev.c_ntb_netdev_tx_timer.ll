; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_ntb_netdev.c_ntb_netdev_tx_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_ntb_netdev.c_ntb_netdev_tx_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_netdev = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.timer_list = type { i32 }

@tx_timer = common dso_local global i32 0, align 4
@tx_stop = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@tx_time = common dso_local global i32 0, align 4
@dev = common dso_local global %struct.ntb_netdev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ntb_netdev_tx_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_netdev_tx_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ntb_netdev*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.ntb_netdev*, %struct.ntb_netdev** %3, align 8
  %6 = ptrtoint %struct.ntb_netdev* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @tx_timer, align 4
  %9 = call %struct.ntb_netdev* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.ntb_netdev* %9, %struct.ntb_netdev** %3, align 8
  %10 = load %struct.ntb_netdev*, %struct.ntb_netdev** %3, align 8
  %11 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.ntb_netdev*, %struct.ntb_netdev** %3, align 8
  %14 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ntb_transport_tx_free_entry(i32 %15)
  %17 = load i64, i64* @tx_stop, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.ntb_netdev*, %struct.ntb_netdev** %3, align 8
  %21 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %20, i32 0, i32 0
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i32, i32* @tx_time, align 4
  %24 = call i64 @usecs_to_jiffies(i32 %23)
  %25 = add nsw i64 %22, %24
  %26 = call i32 @mod_timer(i32* %21, i64 %25)
  br label %36

27:                                               ; preds = %1
  %28 = call i32 (...) @smp_mb()
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i64 @netif_queue_stopped(%struct.net_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 @netif_wake_queue(%struct.net_device* %33)
  br label %35

35:                                               ; preds = %32, %27
  br label %36

36:                                               ; preds = %35, %19
  ret void
}

declare dso_local %struct.ntb_netdev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @ntb_transport_tx_free_entry(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
