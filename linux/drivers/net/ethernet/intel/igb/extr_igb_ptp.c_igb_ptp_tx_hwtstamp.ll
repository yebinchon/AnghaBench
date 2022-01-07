; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_tx_hwtstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_tx_hwtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, %struct.sk_buff*, %struct.e1000_hw }
%struct.sk_buff = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.skb_shared_hwtstamps = type { i32 }

@E1000_TXSTMPL = common dso_local global i32 0, align 4
@E1000_TXSTMPH = common dso_local global i32 0, align 4
@e1000_i210 = common dso_local global i64 0, align 8
@IGB_I210_TX_LATENCY_10 = common dso_local global i32 0, align 4
@IGB_I210_TX_LATENCY_100 = common dso_local global i32 0, align 4
@IGB_I210_TX_LATENCY_1000 = common dso_local global i32 0, align 4
@__IGB_PTP_TX_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_ptp_tx_hwtstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_ptp_tx_hwtstamp(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca %struct.skb_shared_hwtstamps, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 2
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %10, %struct.sk_buff** %3, align 8
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 3
  store %struct.e1000_hw* %12, %struct.e1000_hw** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @E1000_TXSTMPL, align 4
  %14 = call i32 @rd32(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @E1000_TXSTMPH, align 4
  %16 = call i32 @rd32(i32 %15)
  %17 = shl i32 %16, 32
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @igb_ptp_systim_to_hwtstamp(%struct.igb_adapter* %20, %struct.skb_shared_hwtstamps* %5, i32 %21)
  %23 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @e1000_i210, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %1
  %31 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %40 [
    i32 130, label %34
    i32 129, label %36
    i32 128, label %38
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @IGB_I210_TX_LATENCY_10, align 4
  store i32 %35, i32* %7, align 4
  br label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @IGB_I210_TX_LATENCY_100, align 4
  store i32 %37, i32* %7, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @IGB_I210_TX_LATENCY_1000, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %30, %38, %36, %34
  br label %41

41:                                               ; preds = %40, %1
  %42 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @ktime_add_ns(i32 %43, i32 %44)
  %46 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %5, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %47, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %48, align 8
  %49 = load i32, i32* @__IGB_PTP_TX_IN_PROGRESS, align 4
  %50 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %50, i32 0, i32 1
  %52 = call i32 @clear_bit_unlock(i32 %49, i32* %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = call i32 @skb_tstamp_tx(%struct.sk_buff* %53, %struct.skb_shared_hwtstamps* %5)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %55)
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_ptp_systim_to_hwtstamp(%struct.igb_adapter*, %struct.skb_shared_hwtstamps*, i32) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
