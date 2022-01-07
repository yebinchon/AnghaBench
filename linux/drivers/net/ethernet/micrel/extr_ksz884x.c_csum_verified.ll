; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_csum_verified.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_csum_verified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i16, i32 }
%struct.iphdr = type { i16, i64 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @csum_verified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csum_verified(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i16, align 2
  %4 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 0
  %7 = load i16, i16* %6, align 4
  store i16 %7, i16* %3, align 2
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = call i32 @skb_reset_network_header(%struct.sk_buff* %8)
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call i64 @skb_network_header(%struct.sk_buff* %10)
  %12 = inttoptr i64 %11 to %struct.iphdr*
  store %struct.iphdr* %12, %struct.iphdr** %4, align 8
  %13 = load i16, i16* %3, align 2
  %14 = zext i16 %13 to i32
  %15 = load i32, i32* @ETH_P_8021Q, align 4
  %16 = call zeroext i16 @htons(i32 %15)
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %21 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %20, i32 0, i32 0
  %22 = load i16, i16* %21, align 8
  store i16 %22, i16* %3, align 2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = load i32, i32* @VLAN_HLEN, align 4
  %25 = call i32 @skb_set_network_header(%struct.sk_buff* %23, i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %27 = call i64 @skb_network_header(%struct.sk_buff* %26)
  %28 = inttoptr i64 %27 to %struct.iphdr*
  store %struct.iphdr* %28, %struct.iphdr** %4, align 8
  br label %29

29:                                               ; preds = %19, %1
  %30 = load i16, i16* %3, align 2
  %31 = zext i16 %30 to i32
  %32 = load i32, i32* @ETH_P_IP, align 4
  %33 = call zeroext i16 @htons(i32 %32)
  %34 = zext i16 %33 to i32
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %38 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IPPROTO_TCP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %29
  ret void
}

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local zeroext i16 @htons(i32) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
