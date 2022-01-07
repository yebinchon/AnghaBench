; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_rx_pktstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_rx_pktstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_q_vector = type { %struct.igb_adapter* }
%struct.igb_adapter = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_7__ = type { i32 }

@e1000_i210 = common dso_local global i64 0, align 8
@IGB_I210_RX_LATENCY_10 = common dso_local global i32 0, align 4
@IGB_I210_RX_LATENCY_100 = common dso_local global i32 0, align 4
@IGB_I210_RX_LATENCY_1000 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_ptp_rx_pktstamp(%struct.igb_q_vector* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.igb_q_vector*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.igb_adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.igb_q_vector* %0, %struct.igb_q_vector** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %7, align 8
  %12 = load %struct.igb_q_vector*, %struct.igb_q_vector** %4, align 8
  %13 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %12, i32 0, i32 0
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %13, align 8
  store %struct.igb_adapter* %14, %struct.igb_adapter** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call %struct.TYPE_7__* @skb_hwtstamps(%struct.sk_buff* %16)
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le64_to_cpu(i32 %20)
  %22 = call i32 @igb_ptp_systim_to_hwtstamp(%struct.igb_adapter* %15, %struct.TYPE_7__* %17, i32 %21)
  %23 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %24 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @e1000_i210, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %3
  %31 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %32 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %40 [
    i32 130, label %34
    i32 129, label %36
    i32 128, label %38
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @IGB_I210_RX_LATENCY_10, align 4
  store i32 %35, i32* %9, align 4
  br label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @IGB_I210_RX_LATENCY_100, align 4
  store i32 %37, i32* %9, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @IGB_I210_RX_LATENCY_1000, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %30, %38, %36, %34
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call %struct.TYPE_7__* @skb_hwtstamps(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @ktime_sub_ns(i32 %45, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call %struct.TYPE_7__* @skb_hwtstamps(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  ret void
}

declare dso_local i32 @igb_ptp_systim_to_hwtstamp(%struct.igb_adapter*, %struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_7__* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ktime_sub_ns(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
