; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_convert_to_hwtstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_convert_to_hwtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.timespec64 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, %struct.skb_shared_hwtstamps*, i32)* @ixgbe_ptp_convert_to_hwtstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_ptp_convert_to_hwtstamp(%struct.ixgbe_adapter* %0, %struct.skb_shared_hwtstamps* %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.skb_shared_hwtstamps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.timespec64, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store %struct.skb_shared_hwtstamps* %1, %struct.skb_shared_hwtstamps** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %5, align 8
  %11 = call i32 @memset(%struct.skb_shared_hwtstamps* %10, i32 0, i32 4)
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %24 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %3, %3, %3
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 32
  %20 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = call i32 @timespec64_to_ns(%struct.timespec64* %8)
  store i32 %23, i32* %6, align 4
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %17
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %26, i32 0, i32 0
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @timecounter_cyc2time(i32* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %34, i32 0, i32 0
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @ns_to_ktime(i32 %38)
  %40 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %5, align 8
  %41 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  ret void
}

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @timespec64_to_ns(%struct.timespec64*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @timecounter_cyc2time(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ns_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
