; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_rx_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_rx_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.vlan_ethhdr = type { i64, i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_STAG_RX = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sk_buff*)* @stmmac_rx_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_rx_vlan(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.vlan_ethhdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %11, %struct.vlan_ethhdr** %5, align 8
  %12 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %5, align 8
  %13 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* @ETH_P_8021Q, align 4
  %17 = call i64 @htons(i32 %16)
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %19, %2
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @ETH_P_8021AD, align 4
  %29 = call i64 @htons(i32 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %26
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NETIF_F_HW_VLAN_STAG_RX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %31, %19
  %39 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %5, align 8
  %40 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ntohs(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VLAN_HLEN, align 8
  %47 = add nsw i64 %45, %46
  %48 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %5, align 8
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = mul nsw i32 %49, 2
  %51 = call i32 @memmove(i64 %47, %struct.vlan_ethhdr* %48, i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load i64, i64* @VLAN_HLEN, align 8
  %54 = call i32 @skb_pull(%struct.sk_buff* %52, i64 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %55, i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %38, %31, %26
  ret void
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @memmove(i64, %struct.vlan_ethhdr*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
