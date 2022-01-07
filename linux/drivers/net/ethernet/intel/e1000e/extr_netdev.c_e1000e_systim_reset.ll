; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_systim_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_systim_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.e1000_hw, %struct.ptp_clock_info }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_hw = type { i32 }
%struct.ptp_clock_info = type { i64 (%struct.ptp_clock_info*, i32)* }

@FLAG_HAS_HW_TIMESTAMP = common dso_local global i32 0, align 4
@TIMINCA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to restore TIMINCA clock rate delta: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000e_systim_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000e_systim_reset(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.ptp_clock_info*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 8
  store %struct.ptp_clock_info* %9, %struct.ptp_clock_info** %3, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 7
  store %struct.e1000_hw* %11, %struct.e1000_hw** %4, align 8
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FLAG_HAS_HW_TIMESTAMP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %73

19:                                               ; preds = %1
  %20 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %3, align 8
  %21 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %20, i32 0, i32 0
  %22 = load i64 (%struct.ptp_clock_info*, i32)*, i64 (%struct.ptp_clock_info*, i32)** %21, align 8
  %23 = icmp ne i64 (%struct.ptp_clock_info*, i32)* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %3, align 8
  %26 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %25, i32 0, i32 0
  %27 = load i64 (%struct.ptp_clock_info*, i32)*, i64 (%struct.ptp_clock_info*, i32)** %26, align 8
  %28 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %3, align 8
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i64 %27(%struct.ptp_clock_info* %28, i32 %31)
  store i64 %32, i64* %7, align 8
  br label %43

33:                                               ; preds = %19
  %34 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %35 = call i64 @e1000e_get_base_timinca(%struct.e1000_adapter* %34, i32* %6)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @TIMINCA, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ew32(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %33
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %47, i32 0, i32 5
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %51)
  br label %73

53:                                               ; preds = %43
  %54 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %54, i32 0, i32 2
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %58, i32 0, i32 4
  %60 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %60, i32 0, i32 3
  %62 = call i32 (...) @ktime_get_real()
  %63 = call i32 @ktime_to_ns(i32 %62)
  %64 = call i32 @timecounter_init(i32* %59, i32* %61, i32 %63)
  %65 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %65, i32 0, i32 2
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %70 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %70, i32 0, i32 1
  %72 = call i32 @e1000e_config_hwtstamp(%struct.e1000_adapter* %69, i32* %71)
  br label %73

73:                                               ; preds = %53, %46, %18
  ret void
}

declare dso_local i64 @e1000e_get_base_timinca(%struct.e1000_adapter*, i32*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @timecounter_init(i32*, i32*, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @e1000e_config_hwtstamp(%struct.e1000_adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
