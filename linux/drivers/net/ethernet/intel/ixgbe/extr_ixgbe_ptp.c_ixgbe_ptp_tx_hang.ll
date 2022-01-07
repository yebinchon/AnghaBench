; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_tx_hang.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_tx_hang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, i32, i64 }

@IXGBE_PTP_TX_TIMEOUT = common dso_local global i64 0, align 8
@__IXGBE_PTP_TX_IN_PROGRESS = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"clearing Tx timestamp hang\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_ptp_tx_hang(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %4 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @IXGBE_PTP_TX_TIMEOUT, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @time_is_before_jiffies(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %37

15:                                               ; preds = %1
  %16 = load i32, i32* @__IXGBE_PTP_TX_IN_PROGRESS, align 4
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 2
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %37

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %26, i32 0, i32 1
  %28 = call i32 @cancel_work_sync(i32* %27)
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %30 = call i32 @ixgbe_ptp_clear_tx_timestamp(%struct.ixgbe_adapter* %29)
  %31 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @drv, align 4
  %36 = call i32 @e_warn(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %14, %21, %25, %22
  ret void
}

declare dso_local i32 @time_is_before_jiffies(i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @ixgbe_ptp_clear_tx_timestamp(%struct.ixgbe_adapter*) #1

declare dso_local i32 @e_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
