; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_rx_pktstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_rx_pktstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_q_vector = type { i32 }
%struct.sk_buff = type { i64 }

@IXGBE_TS_HDR_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_ptp_rx_pktstamp(%struct.ixgbe_q_vector* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ixgbe_q_vector*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_q_vector* %0, %struct.ixgbe_q_vector** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IXGBE_TS_HDR_LEN, align 8
  %11 = sub nsw i64 %9, %10
  %12 = load i64, i64* @IXGBE_TS_HDR_LEN, align 8
  %13 = call i32 @skb_copy_bits(%struct.sk_buff* %6, i64 %11, i32* %5, i64 %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IXGBE_TS_HDR_LEN, align 8
  %19 = sub nsw i64 %17, %18
  %20 = call i32 @__pskb_trim(%struct.sk_buff* %14, i64 %19)
  %21 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @skb_hwtstamps(%struct.sk_buff* %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @le64_to_cpu(i32 %26)
  %28 = call i32 @ixgbe_ptp_convert_to_hwtstamp(i32 %23, i32 %25, i32 %27)
  ret void
}

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i64, i32*, i64) #1

declare dso_local i32 @__pskb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @ixgbe_ptp_convert_to_hwtstamp(i32, i32, i32) #1

declare dso_local i32 @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
