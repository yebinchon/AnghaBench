; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_get_arp_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_get_arp_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.stmmac_priv = type { i32 }
%struct.stmmac_packet_attrs = type { i32, i32, i32, i32 }

@ARPOP_REQUEST = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.stmmac_priv*, %struct.stmmac_packet_attrs*)* @stmmac_test_get_arp_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @stmmac_test_get_arp_skb(%struct.stmmac_priv* %0, %struct.stmmac_packet_attrs* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.stmmac_priv*, align 8
  %5 = alloca %struct.stmmac_packet_attrs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %4, align 8
  store %struct.stmmac_packet_attrs* %1, %struct.stmmac_packet_attrs** %5, align 8
  %9 = load %struct.stmmac_packet_attrs*, %struct.stmmac_packet_attrs** %5, align 8
  %10 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @htonl(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.stmmac_packet_attrs*, %struct.stmmac_packet_attrs** %5, align 8
  %14 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @htonl(i32 %15)
  store i32 %16, i32* %7, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %17 = load i32, i32* @ARPOP_REQUEST, align 4
  %18 = load i32, i32* @ETH_P_ARP, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %21 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.stmmac_packet_attrs*, %struct.stmmac_packet_attrs** %5, align 8
  %25 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.stmmac_packet_attrs*, %struct.stmmac_packet_attrs** %5, align 8
  %28 = getelementptr inbounds %struct.stmmac_packet_attrs, %struct.stmmac_packet_attrs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.sk_buff* @arp_create(i32 %17, i32 %18, i32 %19, i32 %22, i32 %23, i32* null, i32 %26, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %8, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %44

34:                                               ; preds = %2
  %35 = load i32, i32* @PACKET_HOST, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %39 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %3, align 8
  br label %44

44:                                               ; preds = %34, %33
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %45
}

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.sk_buff* @arp_create(i32, i32, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
