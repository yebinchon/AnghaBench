; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_systim_to_hwtstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_systim_to_hwtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, %struct.skb_shared_hwtstamps*, i32)* @igb_ptp_systim_to_hwtstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_ptp_systim_to_hwtstamp(%struct.igb_adapter* %0, %struct.skb_shared_hwtstamps* %1, i32 %2) #0 {
  %4 = alloca %struct.igb_adapter*, align 8
  %5 = alloca %struct.skb_shared_hwtstamps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %4, align 8
  store %struct.skb_shared_hwtstamps* %1, %struct.skb_shared_hwtstamps** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %42 [
    i32 133, label %14
    i32 132, label %14
    i32 128, label %14
    i32 129, label %14
    i32 131, label %33
    i32 130, label %33
  ]

14:                                               ; preds = %3, %3, %3, %3
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @timecounter_cyc2time(i32* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %23, i32 0, i32 0
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %5, align 8
  %28 = call i32 @memset(%struct.skb_shared_hwtstamps* %27, i32 0, i32 4)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @ns_to_ktime(i32 %29)
  %31 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %5, align 8
  %32 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %43

33:                                               ; preds = %3, %3
  %34 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %5, align 8
  %35 = call i32 @memset(%struct.skb_shared_hwtstamps* %34, i32 0, i32 4)
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 32
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ktime_set(i32 %37, i32 %38)
  %40 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %5, align 8
  %41 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %43

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %42, %33, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @timecounter_cyc2time(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
