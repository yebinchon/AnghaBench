; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_hwcsum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_hwcsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.iphdr = type { i32, i64 }
%struct.ipv6hdr = type { i64 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@TX_CSUM_TCPIP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@TX_CSUM_UDPIP = common dso_local global i32 0, align 4
@TXPKT_L4CSUM_DIS_F = common dso_local global i32 0, align 4
@TX_CSUM_TCPIP6 = common dso_local global i32 0, align 4
@TX_CSUM_UDPIP6 = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*)* @hwcsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwcsum(i32 %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.ipv6hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %12)
  store %struct.iphdr* %13, %struct.iphdr** %7, align 8
  %14 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %15 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPPROTO_TCP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @TX_CSUM_TCPIP, align 4
  store i32 %25, i32* %6, align 4
  br label %38

26:                                               ; preds = %18
  %27 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IPPROTO_UDP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @TX_CSUM_UDPIP, align 4
  store i32 %33, i32* %6, align 4
  br label %37

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %57, %34
  %36 = load i32, i32* @TXPKT_L4CSUM_DIS_F, align 4
  store i32 %36, i32* %3, align 4
  br label %109

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %24
  br label %60

39:                                               ; preds = %2
  %40 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %41 = bitcast %struct.iphdr* %40 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %41, %struct.ipv6hdr** %8, align 8
  %42 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %43 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IPPROTO_TCP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @TX_CSUM_TCPIP6, align 4
  store i32 %48, i32* %6, align 4
  br label %59

49:                                               ; preds = %39
  %50 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %51 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IPPROTO_UDP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @TX_CSUM_UDPIP6, align 4
  store i32 %56, i32* %6, align 4
  br label %58

57:                                               ; preds = %49
  br label %35

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %58, %47
  br label %60

60:                                               ; preds = %59, %38
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @TX_CSUM_TCPIP, align 4
  %63 = icmp sge i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @likely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %93

67:                                               ; preds = %60
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i32 @skb_network_header_len(%struct.sk_buff* %68)
  %70 = call i32 @TXPKT_IPHDR_LEN_V(i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i32 @skb_network_offset(%struct.sk_buff* %71)
  %73 = load i32, i32* @ETH_HLEN, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @CHELSIO_T5, align 4
  %77 = icmp ule i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @TXPKT_ETHHDR_LEN_V(i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %88

83:                                               ; preds = %67
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @T6_TXPKT_ETHHDR_LEN_V(i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @TXPKT_CSUM_TYPE_V(i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %90, %91
  store i32 %92, i32* %3, align 4
  br label %109

93:                                               ; preds = %60
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call i32 @skb_transport_offset(%struct.sk_buff* %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @TXPKT_CSUM_TYPE_V(i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @TXPKT_CSUM_START_V(i32 %98)
  %100 = or i32 %97, %99
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = call i32 @TXPKT_CSUM_LOC_V(i64 %106)
  %108 = or i32 %100, %107
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %93, %88, %35
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @TXPKT_IPHDR_LEN_V(i32) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @TXPKT_ETHHDR_LEN_V(i32) #1

declare dso_local i32 @T6_TXPKT_ETHHDR_LEN_V(i32) #1

declare dso_local i32 @TXPKT_CSUM_TYPE_V(i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @TXPKT_CSUM_START_V(i32) #1

declare dso_local i32 @TXPKT_CSUM_LOC_V(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
