; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_net_checksum_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_net_checksum_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.iphdr = type { i64 }
%struct.ipv6hdr = type { i64 }

@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@TRANSPORT_INFO_IPV4_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@TRANSPORT_INFO_IPV4_UDP = common dso_local global i32 0, align 4
@TRANSPORT_INFO_IPV6_TCP = common dso_local global i32 0, align 4
@TRANSPORT_INFO_IPV6_UDP = common dso_local global i32 0, align 4
@TRANSPORT_INFO_NOT_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @net_checksum_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_checksum_info(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.iphdr*, align 8
  %5 = alloca %struct.ipv6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* @ETH_P_IP, align 4
  %10 = call i64 @htons(i32 %9)
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %13)
  store %struct.iphdr* %14, %struct.iphdr** %4, align 8
  %15 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %16 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IPPROTO_TCP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @TRANSPORT_INFO_IPV4_TCP, align 4
  store i32 %21, i32* %2, align 4
  br label %54

22:                                               ; preds = %12
  %23 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %24 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IPPROTO_UDP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @TRANSPORT_INFO_IPV4_UDP, align 4
  store i32 %29, i32* %2, align 4
  br label %54

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  br label %52

32:                                               ; preds = %1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %33)
  store %struct.ipv6hdr* %34, %struct.ipv6hdr** %5, align 8
  %35 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %36 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IPPROTO_TCP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @TRANSPORT_INFO_IPV6_TCP, align 4
  store i32 %41, i32* %2, align 4
  br label %54

42:                                               ; preds = %32
  %43 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %44 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IPPROTO_UDP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @TRANSPORT_INFO_IPV6_UDP, align 4
  store i32 %49, i32* %2, align 4
  br label %54

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51, %31
  %53 = load i32, i32* @TRANSPORT_INFO_NOT_IP, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %48, %40, %28, %20
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
