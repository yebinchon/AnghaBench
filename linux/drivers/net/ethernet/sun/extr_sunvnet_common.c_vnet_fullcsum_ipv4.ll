; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_vnet_fullcsum_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_vnet_fullcsum_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i8*, i64, i32 }
%struct.iphdr = type { i64, i32, i32 }
%struct.tcphdr = type { i8* }
%struct.udphdr = type { i8* }

@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @vnet_fullcsum_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnet_fullcsum_ipv4(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca %struct.udphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %7)
  store %struct.iphdr* %8, %struct.iphdr** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %10 = call i32 @skb_transport_offset(%struct.sk_buff* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @ETH_P_IP, align 4
  %15 = call i64 @htons(i32 %14)
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %121

18:                                               ; preds = %1
  %19 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPPROTO_TCP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %26 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IPPROTO_UDP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %121

31:                                               ; preds = %24, %18
  %32 = load i32, i32* @CHECKSUM_NONE, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  store i32 1, i32* %36, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 2
  store i8* null, i8** %38, align 8
  %39 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IPPROTO_TCP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %31
  %45 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %46 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %45)
  store %struct.tcphdr* %46, %struct.tcphdr** %5, align 8
  %47 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %48 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %47, i32 0, i32 0
  store i8* null, i8** %48, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %53, %55
  %57 = call i8* @skb_checksum(%struct.sk_buff* %49, i32 %50, i64 %56, i32 0)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %61 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %64 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %68, %70
  %72 = load i64, i64* @IPPROTO_TCP, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @csum_tcpudp_magic(i32 %62, i32 %65, i64 %71, i64 %72, i8* %75)
  %77 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %78 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %121

79:                                               ; preds = %31
  %80 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %81 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IPPROTO_UDP, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %120

85:                                               ; preds = %79
  %86 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %87 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %86)
  store %struct.udphdr* %87, %struct.udphdr** %6, align 8
  %88 = load %struct.udphdr*, %struct.udphdr** %6, align 8
  %89 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %88, i32 0, i32 0
  store i8* null, i8** %89, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %94, %96
  %98 = call i8* @skb_checksum(%struct.sk_buff* %90, i32 %91, i64 %97, i32 0)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %102 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %105 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = sub nsw i64 %109, %111
  %113 = load i64, i64* @IPPROTO_UDP, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @csum_tcpudp_magic(i32 %103, i32 %106, i64 %112, i64 %113, i8* %116)
  %118 = load %struct.udphdr*, %struct.udphdr** %6, align 8
  %119 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %85, %79
  br label %121

121:                                              ; preds = %17, %30, %120, %44
  ret void
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i8* @skb_checksum(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i8* @csum_tcpudp_magic(i32, i32, i64, i64, i8*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
