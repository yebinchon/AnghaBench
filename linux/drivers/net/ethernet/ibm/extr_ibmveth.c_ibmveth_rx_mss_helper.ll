; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_rx_mss_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_rx_mss_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i64 }
%struct.tcphdr = type { i32, i64 }
%struct.iphdr = type { i64, i32 }
%struct.ipv6hdr = type { i64 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i64, i32)* @ibmveth_rx_mss_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmveth_rx_mss_helper(%struct.sk_buff* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca %struct.ipv6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @ETH_P_IP, align 4
  %16 = call i64 @htons(i32 %15)
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.iphdr*
  store %struct.iphdr* %22, %struct.iphdr** %10, align 8
  %23 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %24 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IPPROTO_TCP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %30 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %31, 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  br label %38

37:                                               ; preds = %18
  br label %121

38:                                               ; preds = %28
  br label %65

39:                                               ; preds = %3
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @ETH_P_IPV6, align 4
  %44 = call i64 @htons(i32 %43)
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %50, %struct.ipv6hdr** %11, align 8
  %51 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %52 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IPPROTO_TCP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  store i32 8, i32* %8, align 4
  %57 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 4
  br label %62

61:                                               ; preds = %46
  br label %121

62:                                               ; preds = %56
  br label %64

63:                                               ; preds = %39
  br label %121

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64, %38
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = inttoptr i64 %71 to %struct.tcphdr*
  store %struct.tcphdr* %72, %struct.tcphdr** %7, align 8
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load i64, i64* %5, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i64 %76, i64* %79, align 8
  br label %94

80:                                               ; preds = %65
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %85 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @ntohs(i64 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %88)
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  %91 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %92 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %83, %80
  br label %94

94:                                               ; preds = %93, %75
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %103 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %104, 4
  %106 = add nsw i32 %101, %105
  store i32 %106, i32* %9, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = sub nsw i64 %109, %111
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %113)
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @DIV_ROUND_UP(i64 %112, i64 %116)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %118)
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 8
  br label %121

121:                                              ; preds = %37, %61, %63, %100, %94
  ret void
}

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
