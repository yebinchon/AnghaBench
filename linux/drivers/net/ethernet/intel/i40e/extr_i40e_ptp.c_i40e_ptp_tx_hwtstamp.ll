; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ptp.c_i40e_ptp_tx_hwtstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ptp.c_i40e_ptp_tx_hwtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, %struct.sk_buff*, i32, %struct.i40e_hw }
%struct.sk_buff = type { i32 }
%struct.i40e_hw = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@I40E_FLAG_PTP = common dso_local global i32 0, align 4
@I40E_PRTTSYN_TXTIME_L = common dso_local global i32 0, align 4
@I40E_PRTTSYN_TXTIME_H = common dso_local global i32 0, align 4
@__I40E_PTP_TX_IN_PROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_ptp_tx_hwtstamp(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca %struct.skb_shared_hwtstamps, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 2
  %11 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %11, %struct.sk_buff** %4, align 8
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %12, i32 0, i32 4
  store %struct.i40e_hw* %13, %struct.i40e_hw** %5, align 8
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %15 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @I40E_FLAG_PTP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %22 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %1
  br label %56

26:                                               ; preds = %20
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %28 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %27, i32 0, i32 2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %56

32:                                               ; preds = %26
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %34 = load i32, i32* @I40E_PRTTSYN_TXTIME_L, align 4
  %35 = call i32 @rd32(%struct.i40e_hw* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %37 = load i32, i32* @I40E_PRTTSYN_TXTIME_H, align 4
  %38 = call i32 @rd32(%struct.i40e_hw* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 32
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @i40e_ptp_convert_to_hwtstamp(%struct.skb_shared_hwtstamps* %3, i32 %43)
  %45 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %46 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %45, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %46, align 8
  %47 = load i32, i32* @__I40E_PTP_TX_IN_PROGRESS, align 4
  %48 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %49 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clear_bit_unlock(i32 %47, i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @skb_tstamp_tx(%struct.sk_buff* %52, %struct.skb_shared_hwtstamps* %3)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %54)
  br label %56

56:                                               ; preds = %32, %31, %25
  ret void
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_ptp_convert_to_hwtstamp(%struct.skb_shared_hwtstamps*, i32) #1

declare dso_local i32 @clear_bit_unlock(i32, i32) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
