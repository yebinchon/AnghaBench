; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx_tso.c_efx_tso_check_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx_tso.c_efx_tso_check_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.vlan_ethhdr = type { i64 }
%struct.ethhdr = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@NEXTHDR_TCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sk_buff*)* @efx_tso_check_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @efx_tso_check_protocol(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.vlan_ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ethhdr*
  %12 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %16)
  %18 = load i64, i64* %3, align 8
  %19 = load i32, i32* @ETH_P_8021Q, align 4
  %20 = call i64 @htons(i32 %19)
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %26, %struct.vlan_ethhdr** %4, align 8
  %27 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %4, align 8
  %28 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %22, %1
  %31 = load i64, i64* %3, align 8
  %32 = load i32, i32* @ETH_P_IP, align 4
  %33 = call i64 @htons(i32 %32)
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %37 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IPPROTO_TCP, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %42)
  br label %59

44:                                               ; preds = %30
  %45 = load i64, i64* %3, align 8
  %46 = load i32, i32* @ETH_P_IPV6, align 4
  %47 = call i64 @htons(i32 %46)
  %48 = icmp ne i64 %45, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %52 = call %struct.TYPE_6__* @ipv6_hdr(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NEXTHDR_TCP, align 8
  %56 = icmp ne i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %57)
  br label %59

59:                                               ; preds = %44, %35
  %60 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %61 = call %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @PTR_DIFF(%struct.TYPE_5__* %61, i64 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %67 = call %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 2
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %65, %71
  %73 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %74 = call i64 @skb_headlen(%struct.sk_buff* %73)
  %75 = icmp sgt i64 %72, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %76)
  %78 = load i64, i64* %3, align 8
  ret i64 %78
}

declare dso_local i32 @EFX_WARN_ON_ONCE_PARANOID(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_7__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @PTR_DIFF(%struct.TYPE_5__*, i64) #1

declare dso_local %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
