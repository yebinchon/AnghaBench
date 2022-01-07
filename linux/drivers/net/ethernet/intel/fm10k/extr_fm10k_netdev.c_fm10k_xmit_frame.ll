; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32, i64 }
%struct.net_device = type { i32 }
%struct.fm10k_intfc = type { i32*, i32 }
%struct.vlan_hdr = type { i64, i64 }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_P_802_2 = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @fm10k_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.fm10k_intfc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vlan_hdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %13)
  store %struct.fm10k_intfc* %14, %struct.fm10k_intfc** %6, align 8
  %15 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %16 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @READ_ONCE(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %25, i32* %3, align 4
  br label %151

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @ETH_P_8021Q, align 4
  %31 = call i64 @htons(i32 %30)
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %109

33:                                               ; preds = %26
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call i32 @skb_vlan_tag_present(%struct.sk_buff* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %109, label %37

37:                                               ; preds = %33
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %38, i32 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %4, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %151

45:                                               ; preds = %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %48 = call i32 @pskb_may_pull(%struct.sk_buff* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %55, i32* %3, align 4
  br label %151

56:                                               ; preds = %45
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @skb_cow_head(%struct.sk_buff* %57, i32 0)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call i32 @dev_kfree_skb(%struct.sk_buff* %62)
  %64 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %64, i32* %3, align 4
  br label %151

65:                                               ; preds = %56
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ETH_HLEN, align 8
  %70 = add nsw i64 %68, %69
  %71 = inttoptr i64 %70 to %struct.vlan_hdr*
  store %struct.vlan_hdr* %71, %struct.vlan_hdr** %10, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load i32, i32* @ETH_P_8021Q, align 4
  %74 = call i64 @htons(i32 %73)
  %75 = load %struct.vlan_hdr*, %struct.vlan_hdr** %10, align 8
  %76 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @ntohs(i64 %77)
  %79 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %72, i64 %74, i32 %78)
  %80 = load %struct.vlan_hdr*, %struct.vlan_hdr** %10, align 8
  %81 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @ntohs(i64 %83)
  %85 = icmp sge i32 %84, 1536
  br i1 %85, label %86, label %88

86:                                               ; preds = %65
  %87 = load i64, i64* %11, align 8
  br label %91

88:                                               ; preds = %65
  %89 = load i32, i32* @ETH_P_802_2, align 4
  %90 = call i64 @htons(i32 %89)
  br label %91

91:                                               ; preds = %88, %86
  %92 = phi i64 [ %87, %86 ], [ %90, %88 ]
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @VLAN_HLEN, align 8
  %99 = add nsw i64 %97, %98
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @memmove(i64 %99, i64 %102, i32 12)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = load i64, i64* @VLAN_HLEN, align 8
  %106 = call i32 @__skb_pull(%struct.sk_buff* %104, i64 %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = call i32 @skb_reset_mac_header(%struct.sk_buff* %107)
  br label %109

109:                                              ; preds = %91, %33, %26
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %112, 17
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %109
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 17, %120
  store i32 %121, i32* %12, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i64 @skb_pad(%struct.sk_buff* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %127, i32* %3, align 4
  br label %151

128:                                              ; preds = %117
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @__skb_put(%struct.sk_buff* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %109
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp uge i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %8, align 4
  %139 = urem i32 %138, %137
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %136, %132
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %143 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @fm10k_xmit_frame_ring(%struct.sk_buff* %141, i32 %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %140, %126, %61, %54, %43, %24
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_pad(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @fm10k_xmit_frame_ring(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
