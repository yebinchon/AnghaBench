; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_rx_rgtstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_rx_rgtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_q_vector = type { %struct.igb_adapter* }
%struct.igb_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { i32 }

@E1000_TSYNCRXCTL = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_VALID = common dso_local global i32 0, align 4
@E1000_RXSTMPL = common dso_local global i32 0, align 4
@E1000_RXSTMPH = common dso_local global i32 0, align 4
@e1000_i210 = common dso_local global i64 0, align 8
@IGB_I210_RX_LATENCY_10 = common dso_local global i32 0, align 4
@IGB_I210_RX_LATENCY_100 = common dso_local global i32 0, align 4
@IGB_I210_RX_LATENCY_1000 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_ptp_rx_rgtstamp(%struct.igb_q_vector* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.igb_q_vector*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.igb_q_vector* %0, %struct.igb_q_vector** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %10 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %9, i32 0, i32 0
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %10, align 8
  store %struct.igb_adapter* %11, %struct.igb_adapter** %5, align 8
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 2
  store %struct.e1000_hw* %13, %struct.e1000_hw** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @E1000_TSYNCRXCTL, align 4
  %15 = call i32 @rd32(i32 %14)
  %16 = load i32, i32* @E1000_TSYNCRXCTL_VALID, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %64

20:                                               ; preds = %2
  %21 = load i32, i32* @E1000_RXSTMPL, align 4
  %22 = call i32 @rd32(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @E1000_RXSTMPH, align 4
  %24 = call i32 @rd32(i32 %23)
  %25 = shl i32 %24, 32
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call %struct.TYPE_5__* @skb_hwtstamps(%struct.sk_buff* %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @igb_ptp_systim_to_hwtstamp(%struct.igb_adapter* %28, %struct.TYPE_5__* %30, i32 %31)
  %33 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @e1000_i210, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %20
  %41 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %50 [
    i32 130, label %44
    i32 129, label %46
    i32 128, label %48
  ]

44:                                               ; preds = %40
  %45 = load i32, i32* @IGB_I210_RX_LATENCY_10, align 4
  store i32 %45, i32* %8, align 4
  br label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @IGB_I210_RX_LATENCY_100, align 4
  store i32 %47, i32* %8, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @IGB_I210_RX_LATENCY_1000, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %40, %48, %46, %44
  br label %51

51:                                               ; preds = %50, %20
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call %struct.TYPE_5__* @skb_hwtstamps(%struct.sk_buff* %52)
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ktime_sub_ns(i32 %55, i32 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call %struct.TYPE_5__* @skb_hwtstamps(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @jiffies, align 4
  %62 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %63 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %51, %19
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_ptp_systim_to_hwtstamp(%struct.igb_adapter*, %struct.TYPE_5__*, i32) #1

declare dso_local %struct.TYPE_5__* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @ktime_sub_ns(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
