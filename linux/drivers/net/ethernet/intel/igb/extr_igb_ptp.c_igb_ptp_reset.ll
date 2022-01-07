; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, i32, i32, i32, %struct.e1000_hw, i32 }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.timespec64 = type { i32 }

@E1000_TIMINCA = common dso_local global i32 0, align 4
@INCPERIOD_82576 = common dso_local global i32 0, align 4
@INCVALUE_82576 = common dso_local global i32 0, align 4
@E1000_TSAUXC = common dso_local global i32 0, align 4
@E1000_TSSDP = common dso_local global i32 0, align 4
@E1000_TSIM = common dso_local global i32 0, align 4
@TSYNC_INTERRUPTS = common dso_local global i32 0, align 4
@TSINTR_SYS_WRAP = common dso_local global i32 0, align 4
@E1000_IMS = common dso_local global i32 0, align 4
@E1000_IMS_TS = common dso_local global i32 0, align 4
@IGB_PTP_OVERFLOW_CHECK = common dso_local global i32 0, align 4
@IGB_SYSTIM_OVERFLOW_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_ptp_reset(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.timespec64, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 6
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %9 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %9, i32 0, i32 7
  %11 = call i32 @igb_ptp_set_timestamp_mode(%struct.igb_adapter* %8, i32* %10)
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 2
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %48 [
    i32 133, label %21
    i32 132, label %27
    i32 128, label %27
    i32 129, label %27
    i32 131, label %27
    i32 130, label %27
  ]

21:                                               ; preds = %1
  %22 = load i32, i32* @E1000_TIMINCA, align 4
  %23 = load i32, i32* @INCPERIOD_82576, align 4
  %24 = load i32, i32* @INCVALUE_82576, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @wr32(i32 %22, i32 %25)
  br label %49

27:                                               ; preds = %1, %1, %1, %1, %1
  %28 = load i32, i32* @E1000_TSAUXC, align 4
  %29 = call i32 @wr32(i32 %28, i32 0)
  %30 = load i32, i32* @E1000_TSSDP, align 4
  %31 = call i32 @wr32(i32 %30, i32 0)
  %32 = load i32, i32* @E1000_TSIM, align 4
  %33 = load i32, i32* @TSYNC_INTERRUPTS, align 4
  %34 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @TSINTR_SYS_WRAP, align 4
  br label %41

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  %43 = or i32 %33, %42
  %44 = call i32 @wr32(i32 %32, i32 %43)
  %45 = load i32, i32* @E1000_IMS, align 4
  %46 = load i32, i32* @E1000_IMS_TS, align 4
  %47 = call i32 @wr32(i32 %45, i32 %46)
  br label %49

48:                                               ; preds = %1
  br label %76

49:                                               ; preds = %41, %21
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 131
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 130
  br i1 %60, label %61, label %67

61:                                               ; preds = %55, %49
  %62 = call i32 (...) @ktime_get_real()
  %63 = call i32 @ktime_to_timespec64(i32 %62)
  %64 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %66 = call i32 @igb_ptp_write_i210(%struct.igb_adapter* %65, %struct.timespec64* %5)
  br label %75

67:                                               ; preds = %55
  %68 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %68, i32 0, i32 4
  %70 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %70, i32 0, i32 3
  %72 = call i32 (...) @ktime_get_real()
  %73 = call i32 @ktime_to_ns(i32 %72)
  %74 = call i32 @timecounter_init(i32* %69, i32* %71, i32 %73)
  br label %75

75:                                               ; preds = %67, %61
  br label %76

76:                                               ; preds = %75, %48
  %77 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %77, i32 0, i32 2
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = call i32 (...) @wrfl()
  %82 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IGB_PTP_OVERFLOW_CHECK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %89, i32 0, i32 1
  %91 = load i32, i32* @IGB_SYSTIM_OVERFLOW_PERIOD, align 4
  %92 = call i32 @schedule_delayed_work(i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %88, %76
  ret void
}

declare dso_local i32 @igb_ptp_set_timestamp_mode(%struct.igb_adapter*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @ktime_to_timespec64(i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @igb_ptp_write_i210(%struct.igb_adapter*, %struct.timespec64*) #1

declare dso_local i32 @timecounter_init(i32*, i32*, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
