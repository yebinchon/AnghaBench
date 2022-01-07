; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32 (%struct.ixgbe_adapter*)*, i32, i32 }

@__IXGBE_PTP_RUNNING = common dso_local global i32 0, align 4
@IXGBE_FLAG2_PTP_PPS_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_ptp_suspend(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %3 = load i32, i32* @__IXGBE_PTP_RUNNING, align 4
  %4 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %4, i32 0, i32 3
  %6 = call i32 @test_and_clear_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %32

9:                                                ; preds = %1
  %10 = load i32, i32* @IXGBE_FLAG2_PTP_PPS_ENABLED, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 1
  %18 = load i32 (%struct.ixgbe_adapter*)*, i32 (%struct.ixgbe_adapter*)** %17, align 8
  %19 = icmp ne i32 (%struct.ixgbe_adapter*)* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %9
  %21 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %21, i32 0, i32 1
  %23 = load i32 (%struct.ixgbe_adapter*)*, i32 (%struct.ixgbe_adapter*)** %22, align 8
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %25 = call i32 %23(%struct.ixgbe_adapter* %24)
  br label %26

26:                                               ; preds = %20, %9
  %27 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %27, i32 0, i32 0
  %29 = call i32 @cancel_work_sync(i32* %28)
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %31 = call i32 @ixgbe_ptp_clear_tx_timestamp(%struct.ixgbe_adapter* %30)
  br label %32

32:                                               ; preds = %26, %8
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @ixgbe_ptp_clear_tx_timestamp(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
