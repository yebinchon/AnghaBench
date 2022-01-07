; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_slcan.c_slc_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_slcan.c_slc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.slcan = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @slc_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slc_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.slcan*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.slcan* @netdev_priv(%struct.net_device* %4)
  store %struct.slcan* %5, %struct.slcan** %3, align 8
  %6 = load %struct.slcan*, %struct.slcan** %3, align 8
  %7 = getelementptr inbounds %struct.slcan, %struct.slcan* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.slcan*, %struct.slcan** %3, align 8
  %10 = getelementptr inbounds %struct.slcan, %struct.slcan* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %15 = load %struct.slcan*, %struct.slcan** %3, align 8
  %16 = getelementptr inbounds %struct.slcan, %struct.slcan* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @clear_bit(i32 %14, i32* %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @netif_stop_queue(%struct.net_device* %21)
  %23 = load %struct.slcan*, %struct.slcan** %3, align 8
  %24 = getelementptr inbounds %struct.slcan, %struct.slcan* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.slcan*, %struct.slcan** %3, align 8
  %26 = getelementptr inbounds %struct.slcan, %struct.slcan* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.slcan*, %struct.slcan** %3, align 8
  %28 = getelementptr inbounds %struct.slcan, %struct.slcan* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_bh(i32* %28)
  ret i32 0
}

declare dso_local %struct.slcan* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
