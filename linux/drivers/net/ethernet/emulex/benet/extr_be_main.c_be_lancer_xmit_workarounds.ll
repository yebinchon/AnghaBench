; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_lancer_xmit_workarounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_lancer_xmit_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64, i64 }
%struct.sk_buff = type { i32, i64, i32, i64 }
%struct.be_wrb_params = type { i32 }
%struct.vlan_ethhdr = type { i64 }
%struct.iphdr = type { i32 }

@ETH_P_8021Q = common dso_local global i64 0, align 8
@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_SKIP_HW = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.be_adapter*, %struct.sk_buff*, %struct.be_wrb_params*)* @be_lancer_xmit_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @be_lancer_xmit_workarounds(%struct.be_adapter* %0, %struct.sk_buff* %1, %struct.be_wrb_params* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.be_wrb_params*, align 8
  %8 = alloca %struct.vlan_ethhdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iphdr*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.be_wrb_params* %2, %struct.be_wrb_params** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %14, %struct.vlan_ethhdr** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @ntohs(i32 %17)
  %19 = load i64, i64* @ETH_P_8021Q, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @VLAN_ETH_HLEN, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @ETH_HLEN, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %9, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sle i32 %29, 60
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  %32 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %33 = call i64 @lancer_chip(%struct.be_adapter* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %35, %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call i64 @is_ipv4_pkt(%struct.sk_buff* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i64 @ip_hdr(%struct.sk_buff* %44)
  %46 = inttoptr i64 %45 to %struct.iphdr*
  store %struct.iphdr* %46, %struct.iphdr** %10, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %51 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ntohs(i32 %52)
  %54 = add nsw i64 %49, %53
  %55 = call i32 @pskb_trim(%struct.sk_buff* %47, i64 %54)
  br label %56

56:                                               ; preds = %43, %39, %35, %25
  %57 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %58 = call i64 @be_pvid_tagging_enabled(%struct.be_adapter* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %8, align 8
  %62 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ETH_P_8021Q, align 8
  %65 = call i64 @htons(i64 %64)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %69 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @VLAN_SKIP_HW, align 4
  %72 = call i32 @BE_WRB_F_SET(i32 %70, i32 %71, i32 1)
  br label %73

73:                                               ; preds = %67, %60, %56
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %73
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %87 = call %struct.sk_buff* @be_insert_vlan_in_pkt(%struct.be_adapter* %84, %struct.sk_buff* %85, %struct.be_wrb_params* %86)
  store %struct.sk_buff* %87, %struct.sk_buff** %6, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = icmp ne %struct.sk_buff* %88, null
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %150

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95, %79, %73
  %97 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = call i64 @be_ipv6_tx_stall_chk(%struct.be_adapter* %97, %struct.sk_buff* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %96
  %102 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %103 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %108 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106, %101
  %112 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %113 = call i32 @qnq_async_evt_rcvd(%struct.be_adapter* %112)
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  br label %116

116:                                              ; preds = %111, %106, %96
  %117 = phi i1 [ false, %106 ], [ false, %96 ], [ %115, %111 ]
  %118 = zext i1 %117 to i32
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %147

122:                                              ; preds = %116
  %123 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = call i64 @be_ipv6_tx_stall_chk(%struct.be_adapter* %123, %struct.sk_buff* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %122
  %128 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = call i64 @be_vlan_tag_tx_chk(%struct.be_adapter* %128, %struct.sk_buff* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  %133 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %136 = call %struct.sk_buff* @be_insert_vlan_in_pkt(%struct.be_adapter* %133, %struct.sk_buff* %134, %struct.be_wrb_params* %135)
  store %struct.sk_buff* %136, %struct.sk_buff** %6, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %138 = icmp ne %struct.sk_buff* %137, null
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %132
  br label %150

144:                                              ; preds = %132
  br label %145

145:                                              ; preds = %144, %127, %122
  %146 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %146, %struct.sk_buff** %4, align 8
  br label %151

147:                                              ; preds = %121
  %148 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %149 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %148)
  br label %150

150:                                              ; preds = %147, %143, %94
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %151

151:                                              ; preds = %150, %145
  %152 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %152
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @is_ipv4_pkt(%struct.sk_buff*) #1

declare dso_local i64 @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i64) #1

declare dso_local i64 @be_pvid_tagging_enabled(%struct.be_adapter*) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i32 @BE_WRB_F_SET(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @be_insert_vlan_in_pkt(%struct.be_adapter*, %struct.sk_buff*, %struct.be_wrb_params*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @be_ipv6_tx_stall_chk(%struct.be_adapter*, %struct.sk_buff*) #1

declare dso_local i32 @qnq_async_evt_rcvd(%struct.be_adapter*) #1

declare dso_local i64 @be_vlan_tag_tx_chk(%struct.be_adapter*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
