; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_tx_hwtstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_tx_hwtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.sk_buff*, %struct.ixgbe_hw }
%struct.sk_buff = type { i32 }
%struct.ixgbe_hw = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@IXGBE_TXSTMPL = common dso_local global i32 0, align 4
@IXGBE_TXSTMPH = common dso_local global i32 0, align 4
@__IXGBE_PTP_TX_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_ptp_tx_hwtstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_ptp_tx_hwtstamp(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca %struct.skb_shared_hwtstamps, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 1
  %9 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %9, %struct.sk_buff** %3, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 2
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %13 = load i32, i32* @IXGBE_TXSTMPL, align 4
  %14 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %12, i32 %13)
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %19 = load i32, i32* @IXGBE_TXSTMPH, align 4
  %20 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %18, i32 %19)
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %21, 32
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ixgbe_ptp_convert_to_hwtstamp(%struct.ixgbe_adapter* %25, %struct.skb_shared_hwtstamps* %5, i32 %26)
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %28, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %29, align 8
  %30 = load i32, i32* @__IXGBE_PTP_TX_IN_PROGRESS, align 4
  %31 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %31, i32 0, i32 0
  %33 = call i32 @clear_bit_unlock(i32 %30, i32* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call i32 @skb_tstamp_tx(%struct.sk_buff* %34, %struct.skb_shared_hwtstamps* %5)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %36)
  ret void
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_ptp_convert_to_hwtstamp(%struct.ixgbe_adapter*, %struct.skb_shared_hwtstamps*, i32) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
