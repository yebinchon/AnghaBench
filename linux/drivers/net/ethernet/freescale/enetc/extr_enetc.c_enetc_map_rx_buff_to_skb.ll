; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_map_rx_buff_to_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_map_rx_buff_to_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.enetc_bdr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.enetc_rx_swbd = type { i32, i32 }

@ENETC_RXB_PAD = common dso_local global i32 0, align 4
@ENETC_RXB_TRUESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.enetc_bdr*, i32, i32)* @enetc_map_rx_buff_to_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @enetc_map_rx_buff_to_skb(%struct.enetc_bdr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.enetc_bdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.enetc_rx_swbd*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  store %struct.enetc_bdr* %0, %struct.enetc_bdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.enetc_rx_swbd* @enetc_get_rx_buff(%struct.enetc_bdr* %11, i32 %12, i32 %13)
  store %struct.enetc_rx_swbd* %14, %struct.enetc_rx_swbd** %8, align 8
  %15 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %8, align 8
  %16 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @page_address(i32 %17)
  %19 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %8, align 8
  %20 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, i8* %18, i64 %22
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* @ENETC_RXB_PAD, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr i8, i8* %24, i64 %27
  %29 = load i32, i32* @ENETC_RXB_TRUESIZE, align 4
  %30 = call %struct.sk_buff* @build_skb(i8* %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %9, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %3
  %38 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %39 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %54

43:                                               ; preds = %3
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = load i32, i32* @ENETC_RXB_PAD, align 4
  %46 = call i32 @skb_reserve(%struct.sk_buff* %44, i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @__skb_put(%struct.sk_buff* %47, i32 %48)
  %50 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %51 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %8, align 8
  %52 = call i32 @enetc_put_rx_buff(%struct.enetc_bdr* %50, %struct.enetc_rx_swbd* %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %53, %struct.sk_buff** %4, align 8
  br label %54

54:                                               ; preds = %43, %37
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %55
}

declare dso_local %struct.enetc_rx_swbd* @enetc_get_rx_buff(%struct.enetc_bdr*, i32, i32) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @enetc_put_rx_buff(%struct.enetc_bdr*, %struct.enetc_rx_swbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
