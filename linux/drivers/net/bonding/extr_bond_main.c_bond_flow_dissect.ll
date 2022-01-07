; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_flow_dissect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_flow_dissect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.flow_keys = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.iphdr = type { i32, i32 }

@BOND_XMIT_POLICY_LAYER23 = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@BOND_XMIT_POLICY_LAYER34 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bonding*, %struct.sk_buff*, %struct.flow_keys*)* @bond_flow_dissect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_flow_dissect(%struct.bonding* %0, %struct.sk_buff* %1, %struct.flow_keys* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bonding*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.flow_keys*, align 8
  %8 = alloca %struct.ipv6hdr*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.flow_keys* %2, %struct.flow_keys** %7, align 8
  store i32 -1, i32* %11, align 4
  %12 = load %struct.bonding*, %struct.bonding** %5, align 8
  %13 = getelementptr inbounds %struct.bonding, %struct.bonding* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BOND_XMIT_POLICY_LAYER23, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load %struct.flow_keys*, %struct.flow_keys** %7, align 8
  %21 = call i32 @skb_flow_dissect_flow_keys(%struct.sk_buff* %19, %struct.flow_keys* %20, i32 0)
  store i32 %21, i32* %4, align 4
  br label %121

22:                                               ; preds = %3
  %23 = load %struct.flow_keys*, %struct.flow_keys** %7, align 8
  %24 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @skb_network_offset(%struct.sk_buff* %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @ETH_P_IP, align 4
  %32 = call i64 @htons(i32 %31)
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %22
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @pskb_may_pull(%struct.sk_buff* %35, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %121

47:                                               ; preds = %34
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %48)
  store %struct.iphdr* %49, %struct.iphdr** %9, align 8
  %50 = load %struct.flow_keys*, %struct.flow_keys** %7, align 8
  %51 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %52 = call i32 @iph_to_flow_copy_v4addrs(%struct.flow_keys* %50, %struct.iphdr* %51)
  %53 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %54 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 2
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %60 = call i32 @ip_is_fragment(%struct.iphdr* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %47
  %63 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %64 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %62, %47
  br label %102

67:                                               ; preds = %22
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @ETH_P_IPV6, align 4
  %72 = call i64 @htons(i32 %71)
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %67
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i32 @pskb_may_pull(%struct.sk_buff* %75, i32 %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %121

87:                                               ; preds = %74
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %88)
  store %struct.ipv6hdr* %89, %struct.ipv6hdr** %8, align 8
  %90 = load %struct.flow_keys*, %struct.flow_keys** %7, align 8
  %91 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %92 = call i32 @iph_to_flow_copy_v6addrs(%struct.flow_keys* %90, %struct.ipv6hdr* %91)
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 %94, 4
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %10, align 4
  %97 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %98 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %11, align 4
  br label %101

100:                                              ; preds = %67
  store i32 0, i32* %4, align 4
  br label %121

101:                                              ; preds = %87
  br label %102

102:                                              ; preds = %101, %66
  %103 = load %struct.bonding*, %struct.bonding** %5, align 8
  %104 = getelementptr inbounds %struct.bonding, %struct.bonding* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BOND_XMIT_POLICY_LAYER34, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %102
  %110 = load i32, i32* %11, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @skb_flow_get_ports(%struct.sk_buff* %113, i32 %114, i32 %115)
  %117 = load %struct.flow_keys*, %struct.flow_keys** %7, align 8
  %118 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %112, %109, %102
  store i32 1, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %100, %86, %46, %18
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @skb_flow_dissect_flow_keys(%struct.sk_buff*, %struct.flow_keys*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @iph_to_flow_copy_v4addrs(%struct.flow_keys*, %struct.iphdr*) #1

declare dso_local i32 @ip_is_fragment(%struct.iphdr*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @iph_to_flow_copy_v6addrs(%struct.flow_keys*, %struct.ipv6hdr*) #1

declare dso_local i32 @skb_flow_get_ports(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
