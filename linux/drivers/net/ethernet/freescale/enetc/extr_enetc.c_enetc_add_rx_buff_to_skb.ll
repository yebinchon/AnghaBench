; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_add_rx_buff_to_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_add_rx_buff_to_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_bdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.enetc_rx_swbd = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENETC_RXB_TRUESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_bdr*, i32, i32, %struct.sk_buff*)* @enetc_add_rx_buff_to_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_add_rx_buff_to_skb(%struct.enetc_bdr* %0, i32 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.enetc_bdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.enetc_rx_swbd*, align 8
  store %struct.enetc_bdr* %0, %struct.enetc_bdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %10 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.enetc_rx_swbd* @enetc_get_rx_buff(%struct.enetc_bdr* %10, i32 %11, i32 %12)
  store %struct.enetc_rx_swbd* %13, %struct.enetc_rx_swbd** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %9, align 8
  %20 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %9, align 8
  %23 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ENETC_RXB_TRUESIZE, align 4
  %27 = call i32 @skb_add_rx_frag(%struct.sk_buff* %14, i32 %18, i32 %21, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %29 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %9, align 8
  %30 = call i32 @enetc_put_rx_buff(%struct.enetc_bdr* %28, %struct.enetc_rx_swbd* %29)
  ret void
}

declare dso_local %struct.enetc_rx_swbd* @enetc_get_rx_buff(%struct.enetc_bdr*, i32, i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @enetc_put_rx_buff(%struct.enetc_bdr*, %struct.enetc_rx_swbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
