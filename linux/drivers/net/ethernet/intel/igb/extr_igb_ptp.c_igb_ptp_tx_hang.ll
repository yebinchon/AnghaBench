; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_tx_hang.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_tx_hang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.TYPE_2__*, i32, i32, i32*, i32, i64, %struct.e1000_hw }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_hw = type { i32 }

@IGB_PTP_TX_TIMEOUT = common dso_local global i64 0, align 8
@__IGB_PTP_TX_IN_PROGRESS = common dso_local global i32 0, align 4
@E1000_TXSTMPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"clearing Tx timestamp hang\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_ptp_tx_hang(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %5 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %5, i32 0, i32 6
  store %struct.e1000_hw* %6, %struct.e1000_hw** %3, align 8
  %7 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IGB_PTP_TX_TIMEOUT, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @time_is_before_jiffies(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %53

18:                                               ; preds = %1
  %19 = load i32, i32* @__IGB_PTP_TX_IN_PROGRESS, align 4
  %20 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %20, i32 0, i32 2
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %53

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %29, i32 0, i32 4
  %31 = call i32 @cancel_work_sync(i32* %30)
  %32 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @dev_kfree_skb_any(i32* %34)
  %36 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %36, i32 0, i32 3
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* @__IGB_PTP_TX_IN_PROGRESS, align 4
  %39 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %39, i32 0, i32 2
  %41 = call i32 @clear_bit_unlock(i32 %38, i32* %40)
  %42 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* @E1000_TXSTMPH, align 4
  %47 = call i32 @rd32(i32 %46)
  %48 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %17, %24, %28, %25
  ret void
}

declare dso_local i32 @time_is_before_jiffies(i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
