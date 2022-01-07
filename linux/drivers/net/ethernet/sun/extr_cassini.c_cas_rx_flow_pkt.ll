; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_rx_flow_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_rx_flow_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { %struct.sk_buff_head* }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

@RX_COMP3_FLOWID = common dso_local global i32 0, align 4
@N_RX_FLOWS = common dso_local global i32 0, align 4
@RX_COMP1_RELEASE_FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*, i32*, %struct.sk_buff*)* @cas_rx_flow_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_rx_flow_pkt(%struct.cas* %0, i32* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.cas*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff_head*, align 8
  store %struct.cas* %0, %struct.cas** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load i32, i32* @RX_COMP3_FLOWID, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CAS_VAL(i32 %9, i32 %12)
  %14 = load i32, i32* @N_RX_FLOWS, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.cas*, %struct.cas** %4, align 8
  %18 = getelementptr inbounds %struct.cas, %struct.cas* %17, i32 0, i32 0
  %19 = load %struct.sk_buff_head*, %struct.sk_buff_head** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %19, i64 %21
  store %struct.sk_buff_head* %22, %struct.sk_buff_head** %8, align 8
  %23 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %23, %struct.sk_buff* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RX_COMP1_RELEASE_FLOW, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %37, %32
  %34 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %35 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %6, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @cas_skb_release(%struct.sk_buff* %38)
  br label %33

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %3
  ret void
}

declare dso_local i32 @CAS_VAL(i32, i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @cas_skb_release(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
