; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_rx.c_mwifiex_discard_gratuitous_arp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_rx.c_mwifiex_discard_gratuitous_arp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.sk_buff = type { i64 }
%struct.mwifiex_arp_eth_header = type { i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ethhdr = type { i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.icmp6hdr = type { i32 }

@ARPOP_REPLY = common dso_local global i32 0, align 4
@ARPOP_REQUEST = common dso_local global i32 0, align 4
@NDISC_NEIGHBOUR_ADVERTISEMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.sk_buff*)* @mwifiex_discard_gratuitous_arp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_discard_gratuitous_arp(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mwifiex_arp_eth_header*, align 8
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca %struct.ipv6hdr*, align 8
  %9 = alloca %struct.icmp6hdr*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ethhdr*
  store %struct.ethhdr* %13, %struct.ethhdr** %7, align 8
  %14 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %15 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ntohs(i32 %16)
  switch i32 %17, label %81 [
    i32 129, label %18
    i32 128, label %52
  ]

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 4
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.mwifiex_arp_eth_header*
  store %struct.mwifiex_arp_eth_header* %24, %struct.mwifiex_arp_eth_header** %6, align 8
  %25 = load %struct.mwifiex_arp_eth_header*, %struct.mwifiex_arp_eth_header** %6, align 8
  %26 = getelementptr inbounds %struct.mwifiex_arp_eth_header, %struct.mwifiex_arp_eth_header* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ARPOP_REPLY, align 4
  %30 = call i32 @htons(i32 %29)
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %18
  %33 = load %struct.mwifiex_arp_eth_header*, %struct.mwifiex_arp_eth_header** %6, align 8
  %34 = getelementptr inbounds %struct.mwifiex_arp_eth_header, %struct.mwifiex_arp_eth_header* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ARPOP_REQUEST, align 4
  %38 = call i32 @htons(i32 %37)
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %32, %18
  %41 = load %struct.mwifiex_arp_eth_header*, %struct.mwifiex_arp_eth_header** %6, align 8
  %42 = getelementptr inbounds %struct.mwifiex_arp_eth_header, %struct.mwifiex_arp_eth_header* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.mwifiex_arp_eth_header*, %struct.mwifiex_arp_eth_header** %6, align 8
  %45 = getelementptr inbounds %struct.mwifiex_arp_eth_header, %struct.mwifiex_arp_eth_header* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @memcmp(i32* %43, i32* %46, i32 4)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %83

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %32
  br label %82

52:                                               ; preds = %2
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 4
  %57 = inttoptr i64 %56 to i8*
  %58 = bitcast i8* %57 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %58, %struct.ipv6hdr** %8, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 4
  %63 = add i64 %62, 8
  %64 = inttoptr i64 %63 to i8*
  %65 = bitcast i8* %64 to %struct.icmp6hdr*
  store %struct.icmp6hdr* %65, %struct.icmp6hdr** %9, align 8
  %66 = load i32, i32* @NDISC_NEIGHBOUR_ADVERTISEMENT, align 4
  %67 = load %struct.icmp6hdr*, %struct.icmp6hdr** %9, align 8
  %68 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %52
  %72 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %73 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %72, i32 0, i32 1
  %74 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %75 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %74, i32 0, i32 0
  %76 = call i32 @memcmp(i32* %73, i32* %75, i32 4)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %83

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %52
  br label %82

81:                                               ; preds = %2
  br label %82

82:                                               ; preds = %81, %80, %51
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %78, %49
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
