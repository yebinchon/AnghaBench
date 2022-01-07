; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32 (%struct.ixgbe_adapter*)*, i32, i32, i32, i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_ptp_reset(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %5 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %5, i32 0, i32 6
  store %struct.ixgbe_hw* %6, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 5
  %10 = call i32 @ixgbe_ptp_set_timestamp_mode(%struct.ixgbe_adapter* %7, i32* %9)
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %20 = call i32 @ixgbe_ptp_start_cyclecounter(%struct.ixgbe_adapter* %19)
  %21 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %21, i32 0, i32 2
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %25, i32 0, i32 4
  %27 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %27, i32 0, i32 3
  %29 = call i32 (...) @ktime_get_real()
  %30 = call i32 @ktime_to_ns(i32 %29)
  %31 = call i32 @timecounter_init(i32* %26, i32* %28, i32 %30)
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %32, i32 0, i32 2
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* @jiffies, align 4
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %39, i32 0, i32 0
  %41 = load i32 (%struct.ixgbe_adapter*)*, i32 (%struct.ixgbe_adapter*)** %40, align 8
  %42 = icmp ne i32 (%struct.ixgbe_adapter*)* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %18
  %44 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %44, i32 0, i32 0
  %46 = load i32 (%struct.ixgbe_adapter*)*, i32 (%struct.ixgbe_adapter*)** %45, align 8
  %47 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %48 = call i32 %46(%struct.ixgbe_adapter* %47)
  br label %49

49:                                               ; preds = %17, %43, %18
  ret void
}

declare dso_local i32 @ixgbe_ptp_set_timestamp_mode(%struct.ixgbe_adapter*, i32*) #1

declare dso_local i32 @ixgbe_ptp_start_cyclecounter(%struct.ixgbe_adapter*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @timecounter_init(i32*, i32*, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
