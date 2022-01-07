; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_vlan_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_vlan_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.packet_type = type { %struct.stmmac_test_priv* }
%struct.stmmac_test_priv = type { i64, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.stmmachdr = type { i64 }
%struct.ethhdr = type { i32 }
%struct.udphdr = type { i64 }
%struct.iphdr = type { i64, i32 }

@ETH_P_8021AD = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@STMMAC_TEST_PKT_SIZE = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@STMMAC_TEST_PKT_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @stmmac_test_vlan_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_test_vlan_validate(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.packet_type*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.stmmac_test_priv*, align 8
  %10 = alloca %struct.stmmachdr*, align 8
  %11 = alloca %struct.ethhdr*, align 8
  %12 = alloca %struct.udphdr*, align 8
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.packet_type* %2, %struct.packet_type** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %15 = load %struct.packet_type*, %struct.packet_type** %7, align 8
  %16 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %15, i32 0, i32 0
  %17 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %16, align 8
  store %struct.stmmac_test_priv* %17, %struct.stmmac_test_priv** %9, align 8
  %18 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %19 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @ETH_P_8021AD, align 4
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @ETH_P_8021Q, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %14, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.sk_buff* @skb_unshare(%struct.sk_buff* %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %5, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %143

34:                                               ; preds = %26
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i64 @skb_linearize(%struct.sk_buff* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %143

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i64 @skb_headlen(%struct.sk_buff* %40)
  %42 = load i64, i64* @STMMAC_TEST_PKT_SIZE, align 8
  %43 = load i64, i64* @ETH_HLEN, align 8
  %44 = sub nsw i64 %42, %43
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %143

47:                                               ; preds = %39
  %48 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %49 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i64 @htons(i32 %56)
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %143

60:                                               ; preds = %52
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %65 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %143

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %47
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i64 @skb_mac_header(%struct.sk_buff* %71)
  %73 = inttoptr i64 %72 to %struct.ethhdr*
  store %struct.ethhdr* %73, %struct.ethhdr** %11, align 8
  %74 = load %struct.ethhdr*, %struct.ethhdr** %11, align 8
  %75 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %78 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ether_addr_equal(i32 %76, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %70
  br label %143

85:                                               ; preds = %70
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %86)
  store %struct.iphdr* %87, %struct.iphdr** %13, align 8
  %88 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %89 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = call i64 @skb_network_header(%struct.sk_buff* %93)
  %95 = add nsw i64 %94, 4
  %96 = inttoptr i64 %95 to %struct.iphdr*
  store %struct.iphdr* %96, %struct.iphdr** %13, align 8
  br label %97

97:                                               ; preds = %92, %85
  %98 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %99 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @IPPROTO_UDP, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %143

104:                                              ; preds = %97
  %105 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %106 = bitcast %struct.iphdr* %105 to i32*
  %107 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %108 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = mul nsw i32 4, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  %113 = bitcast i32* %112 to %struct.udphdr*
  store %struct.udphdr* %113, %struct.udphdr** %12, align 8
  %114 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %115 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %118 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %117, i32 0, i32 3
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @htons(i32 %121)
  %123 = icmp ne i64 %116, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %104
  br label %143

125:                                              ; preds = %104
  %126 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %127 = bitcast %struct.udphdr* %126 to i32*
  %128 = getelementptr inbounds i32, i32* %127, i64 8
  %129 = bitcast i32* %128 to %struct.stmmachdr*
  store %struct.stmmachdr* %129, %struct.stmmachdr** %10, align 8
  %130 = load %struct.stmmachdr*, %struct.stmmachdr** %10, align 8
  %131 = getelementptr inbounds %struct.stmmachdr, %struct.stmmachdr* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* @STMMAC_TEST_PKT_MAGIC, align 4
  %134 = call i64 @cpu_to_be64(i32 %133)
  %135 = icmp ne i64 %132, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  br label %143

137:                                              ; preds = %125
  %138 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %139 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %138, i32 0, i32 1
  store i32 1, i32* %139, align 8
  %140 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %141 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %140, i32 0, i32 2
  %142 = call i32 @complete(i32* %141)
  br label %143

143:                                              ; preds = %137, %136, %124, %103, %84, %68, %59, %46, %38, %33
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = call i32 @kfree_skb(%struct.sk_buff* %144)
  ret i32 0
}

declare dso_local %struct.sk_buff* @skb_unshare(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
