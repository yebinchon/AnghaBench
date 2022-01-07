; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_ntb_netdev.c___ntb_netdev_maybe_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_ntb_netdev.c___ntb_netdev_maybe_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ntb_transport_qp = type { i32 }
%struct.ntb_netdev = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@tx_time = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ntb_transport_qp*, i32)* @__ntb_netdev_maybe_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ntb_netdev_maybe_stop_tx(%struct.net_device* %0, %struct.ntb_transport_qp* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ntb_transport_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ntb_netdev*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ntb_transport_qp* %1, %struct.ntb_transport_qp** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.ntb_netdev* @netdev_priv(%struct.net_device* %9)
  store %struct.ntb_netdev* %10, %struct.ntb_netdev** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call i32 @netif_stop_queue(%struct.net_device* %11)
  %13 = call i32 (...) @smp_mb()
  %14 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %15 = call i32 @ntb_transport_tx_free_entry(%struct.ntb_transport_qp* %14)
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.ntb_netdev*, %struct.ntb_netdev** %8, align 8
  %23 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %22, i32 0, i32 0
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i32, i32* @tx_time, align 4
  %26 = call i64 @usecs_to_jiffies(i32 %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @mod_timer(i32* %23, i64 %27)
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call i32 @netif_start_queue(%struct.net_device* %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %21
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.ntb_netdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ntb_transport_tx_free_entry(%struct.ntb_transport_qp*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
