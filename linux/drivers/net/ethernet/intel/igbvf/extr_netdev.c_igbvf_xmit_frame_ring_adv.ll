; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_xmit_frame_ring_adv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_xmit_frame_ring_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.igbvf_ring = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.igbvf_adapter = type { i32 }
%struct.TYPE_4__ = type { i64 }

@__IGBVF_DOWN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@IGBVF_TX_FLAGS_VLAN = common dso_local global i32 0, align 4
@IGBVF_TX_FLAGS_VLAN_SHIFT = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IGBVF_TX_FLAGS_IPV4 = common dso_local global i32 0, align 4
@IGBVF_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@IGBVF_TX_FLAGS_CSUM = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.igbvf_ring*)* @igbvf_xmit_frame_ring_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_xmit_frame_ring_adv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.igbvf_ring* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.igbvf_ring*, align 8
  %8 = alloca %struct.igbvf_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.igbvf_ring* %2, %struct.igbvf_ring** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.igbvf_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.igbvf_adapter* %16, %struct.igbvf_adapter** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i64 @vlan_get_protocol(%struct.sk_buff* %17)
  store i64 %18, i64* %14, align 8
  %19 = load i32, i32* @__IGBVF_DOWN, align 4
  %20 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %8, align 8
  %21 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %25)
  %27 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %27, i32* %4, align 4
  br label %150

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %34)
  %36 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %36, i32* %4, align 4
  br label %150

37:                                               ; preds = %28
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 4
  %44 = call i64 @igbvf_maybe_stop_tx(%struct.net_device* %38, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %47, i32* %4, align 4
  br label %150

48:                                               ; preds = %37
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i32, i32* @IGBVF_TX_FLAGS_VLAN, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %56)
  %58 = load i32, i32* @IGBVF_TX_FLAGS_VLAN_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %52, %48
  %63 = load i64, i64* %14, align 8
  %64 = load i32, i32* @ETH_P_IP, align 4
  %65 = call i64 @htons(i32 %64)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @IGBVF_TX_FLAGS_IPV4, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %73 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %9, align 4
  %75 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @igbvf_tso(%struct.igbvf_ring* %75, %struct.sk_buff* %76, i32 %77, i32* %11)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %71
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %85)
  %87 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %87, i32* %4, align 4
  br label %150

88:                                               ; preds = %71
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* @IGBVF_TX_FLAGS_TSO, align 4
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %10, align 4
  br label %113

95:                                               ; preds = %88
  %96 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i64, i64* %14, align 8
  %100 = call i64 @igbvf_tx_csum(%struct.igbvf_ring* %96, %struct.sk_buff* %97, i32 %98, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %95
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i32, i32* @IGBVF_TX_FLAGS_CSUM, align 4
  %110 = load i32, i32* %10, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %108, %102, %95
  br label %113

113:                                              ; preds = %112, %91
  %114 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %8, align 8
  %115 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = call i32 @igbvf_tx_map_adv(%struct.igbvf_adapter* %114, %struct.igbvf_ring* %115, %struct.sk_buff* %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %113
  %121 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %8, align 8
  %122 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @igbvf_tx_queue_adv(%struct.igbvf_adapter* %121, %struct.igbvf_ring* %122, i32 %123, i32 %124, i32 %125, i32 %128, i32 %129)
  %131 = load %struct.net_device*, %struct.net_device** %6, align 8
  %132 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %133 = add nsw i64 %132, 4
  %134 = call i64 @igbvf_maybe_stop_tx(%struct.net_device* %131, i64 %133)
  br label %148

135:                                              ; preds = %113
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %136)
  %138 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %139 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %138, i32 0, i32 1
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %147 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %135, %120
  %149 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %148, %84, %46, %33, %24
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.igbvf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @igbvf_maybe_stop_tx(%struct.net_device*, i64) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @igbvf_tso(%struct.igbvf_ring*, %struct.sk_buff*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @igbvf_tx_csum(%struct.igbvf_ring*, %struct.sk_buff*, i32, i64) #1

declare dso_local i32 @igbvf_tx_map_adv(%struct.igbvf_adapter*, %struct.igbvf_ring*, %struct.sk_buff*) #1

declare dso_local i32 @igbvf_tx_queue_adv(%struct.igbvf_adapter*, %struct.igbvf_ring*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
