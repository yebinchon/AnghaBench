; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_rx_hwtstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_rx_hwtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }
%struct.sk_buff = type { i32 }

@FLAG_HAS_HW_TIMESTAMP = common dso_local global i32 0, align 4
@E1000_RXDEXT_STATERR_TST = common dso_local global i32 0, align 4
@TSYNCRXCTL = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_VALID = common dso_local global i32 0, align 4
@RXSTMPL = common dso_local global i32 0, align 4
@RXSTMPH = common dso_local global i32 0, align 4
@FLAG2_CHECK_RX_HWTSTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*, i32, %struct.sk_buff*)* @e1000e_rx_hwtstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000e_rx_hwtstamp(%struct.e1000_adapter* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 2
  store %struct.e1000_hw* %10, %struct.e1000_hw** %7, align 8
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FLAG_HAS_HW_TIMESTAMP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @E1000_RXDEXT_STATERR_TST, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* @TSYNCRXCTL, align 4
  %24 = call i32 @er32(i32 %23)
  %25 = load i32, i32* @E1000_TSYNCRXCTL_VALID, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22, %17, %3
  br label %48

29:                                               ; preds = %22
  %30 = load i32, i32* @RXSTMPL, align 4
  %31 = call i32 @er32(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @RXSTMPH, align 4
  %33 = call i32 @er32(i32 %32)
  %34 = shl i32 %33, 32
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @skb_hwtstamps(%struct.sk_buff* %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @e1000e_systim_to_hwtstamp(%struct.e1000_adapter* %37, i32 %39, i32 %40)
  %42 = load i32, i32* @FLAG2_CHECK_RX_HWTSTAMP, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %45 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000e_systim_to_hwtstamp(%struct.e1000_adapter*, i32, i32) #1

declare dso_local i32 @skb_hwtstamps(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
