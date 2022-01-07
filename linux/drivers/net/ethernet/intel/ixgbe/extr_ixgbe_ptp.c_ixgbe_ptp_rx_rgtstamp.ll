; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_rx_rgtstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_rx_rgtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_q_vector = type { %struct.ixgbe_adapter* }
%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }
%struct.sk_buff = type { i32 }

@IXGBE_TSYNCRXCTL = common dso_local global i32 0, align 4
@IXGBE_TSYNCRXCTL_VALID = common dso_local global i32 0, align 4
@IXGBE_RXSTMPL = common dso_local global i32 0, align 4
@IXGBE_RXSTMPH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_ptp_rx_rgtstamp(%struct.ixgbe_q_vector* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ixgbe_q_vector*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_q_vector* %0, %struct.ixgbe_q_vector** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %3, align 8
  %10 = icmp ne %struct.ixgbe_q_vector* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %12, i32 0, i32 0
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %13, align 8
  %15 = icmp ne %struct.ixgbe_adapter* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %2
  br label %48

17:                                               ; preds = %11
  %18 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %18, i32 0, i32 0
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %19, align 8
  store %struct.ixgbe_adapter* %20, %struct.ixgbe_adapter** %5, align 8
  %21 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %21, i32 0, i32 0
  store %struct.ixgbe_hw* %22, %struct.ixgbe_hw** %6, align 8
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %24 = load i32, i32* @IXGBE_TSYNCRXCTL, align 4
  %25 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @IXGBE_TSYNCRXCTL_VALID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  br label %48

31:                                               ; preds = %17
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %33 = load i32, i32* @IXGBE_RXSTMPL, align 4
  %34 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %38 = load i32, i32* @IXGBE_RXSTMPH, align 4
  %39 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %37, i32 %38)
  %40 = shl i32 %39, 32
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @skb_hwtstamps(%struct.sk_buff* %44)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ixgbe_ptp_convert_to_hwtstamp(%struct.ixgbe_adapter* %43, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %31, %30, %16
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_ptp_convert_to_hwtstamp(%struct.ixgbe_adapter*, i32, i32) #1

declare dso_local i32 @skb_hwtstamps(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
