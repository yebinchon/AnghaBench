; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_skb_tx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_skb_tx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32 }
%struct.sk_buff = type { i64 }
%struct.iphdr = type { i32, i32 }
%struct.ipv6hdr = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@MVPP2_TXD_L4_CSUM_NOT = common dso_local global i32 0, align 4
@MVPP2_TXD_IP_CSUM_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*, %struct.sk_buff*)* @mvpp2_skb_tx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_skb_tx_csum(%struct.mvpp2_port* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.ipv6hdr*, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i64 @vlan_get_protocol(%struct.sk_buff* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* @ETH_P_IP, align 4
  %21 = call i64 @htons(i32 %20)
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %24)
  store %struct.iphdr* %25, %struct.iphdr** %9, align 8
  %26 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %27 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %30 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  br label %54

32:                                               ; preds = %16
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* @ETH_P_IPV6, align 4
  %35 = call i64 @htons(i32 %34)
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %38)
  store %struct.ipv6hdr* %39, %struct.ipv6hdr** %10, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @skb_network_header_len(%struct.sk_buff* %40)
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @skb_network_header_len(%struct.sk_buff* %44)
  %46 = ashr i32 %45, 2
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %49 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  br label %53

51:                                               ; preds = %32
  %52 = load i32, i32* @MVPP2_TXD_L4_CSUM_NOT, align 4
  store i32 %52, i32* %3, align 4
  br label %65

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %23
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call i32 @skb_network_offset(%struct.sk_buff* %55)
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @mvpp2_txq_desc_csum(i32 %56, i64 %57, i32 %58, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %65

61:                                               ; preds = %2
  %62 = load i32, i32* @MVPP2_TXD_L4_CSUM_NOT, align 4
  %63 = load i32, i32* @MVPP2_TXD_IP_CSUM_DISABLE, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %54, %51
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @mvpp2_txq_desc_csum(i32, i64, i32, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
