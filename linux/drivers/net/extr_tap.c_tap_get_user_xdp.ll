; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_get_user_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_get_user_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tap_queue = type { i32, i32, i32 }
%struct.xdp_buff = type { %struct.tun_xdp_hdr*, %struct.tun_xdp_hdr*, %struct.tun_xdp_hdr* }
%struct.tun_xdp_hdr = type { i32, %struct.virtio_net_hdr }
%struct.virtio_net_hdr = type { i32 }
%struct.tap_dev = type { i32 (%struct.tap_dev*)*, i32 }
%struct.sk_buff = type { i64, i32 }
%struct.TYPE_2__ = type { i64 }

@IFF_VNET_HDR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tap_queue*, %struct.xdp_buff*)* @tap_get_user_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tap_get_user_xdp(%struct.tap_queue* %0, %struct.xdp_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tap_queue*, align 8
  %5 = alloca %struct.xdp_buff*, align 8
  %6 = alloca %struct.tun_xdp_hdr*, align 8
  %7 = alloca %struct.virtio_net_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tap_dev*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tap_queue* %0, %struct.tap_queue** %4, align 8
  store %struct.xdp_buff* %1, %struct.xdp_buff** %5, align 8
  %14 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %15 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 2
  %16 = load %struct.tun_xdp_hdr*, %struct.tun_xdp_hdr** %15, align 8
  store %struct.tun_xdp_hdr* %16, %struct.tun_xdp_hdr** %6, align 8
  %17 = load %struct.tun_xdp_hdr*, %struct.tun_xdp_hdr** %6, align 8
  %18 = getelementptr inbounds %struct.tun_xdp_hdr, %struct.tun_xdp_hdr* %17, i32 0, i32 1
  store %struct.virtio_net_hdr* %18, %struct.virtio_net_hdr** %7, align 8
  %19 = load %struct.tun_xdp_hdr*, %struct.tun_xdp_hdr** %6, align 8
  %20 = getelementptr inbounds %struct.tun_xdp_hdr, %struct.tun_xdp_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load %struct.tap_queue*, %struct.tap_queue** %4, align 8
  %23 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFF_VNET_HDR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.tap_queue*, %struct.tap_queue** %4, align 8
  %30 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @READ_ONCE(i32 %31)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %28, %2
  %34 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %35 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %34, i32 0, i32 2
  %36 = load %struct.tun_xdp_hdr*, %struct.tun_xdp_hdr** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.sk_buff* @build_skb(%struct.tun_xdp_hdr* %36, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %11, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %12, align 4
  br label %145

44:                                               ; preds = %33
  %45 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %46 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %47 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %46, i32 0, i32 0
  %48 = load %struct.tun_xdp_hdr*, %struct.tun_xdp_hdr** %47, align 8
  %49 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %50 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %49, i32 0, i32 2
  %51 = load %struct.tun_xdp_hdr*, %struct.tun_xdp_hdr** %50, align 8
  %52 = ptrtoint %struct.tun_xdp_hdr* %48 to i64
  %53 = ptrtoint %struct.tun_xdp_hdr* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 8
  %56 = inttoptr i64 %55 to %struct.tun_xdp_hdr*
  %57 = call i32 @skb_reserve(%struct.sk_buff* %45, %struct.tun_xdp_hdr* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %59 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %60 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %59, i32 0, i32 1
  %61 = load %struct.tun_xdp_hdr*, %struct.tun_xdp_hdr** %60, align 8
  %62 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %63 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %62, i32 0, i32 0
  %64 = load %struct.tun_xdp_hdr*, %struct.tun_xdp_hdr** %63, align 8
  %65 = ptrtoint %struct.tun_xdp_hdr* %61 to i64
  %66 = ptrtoint %struct.tun_xdp_hdr* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 8
  %69 = inttoptr i64 %68 to %struct.tun_xdp_hdr*
  %70 = call i32 @skb_put(%struct.sk_buff* %58, %struct.tun_xdp_hdr* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %72 = load i32, i32* @ETH_HLEN, align 4
  %73 = call i32 @skb_set_network_header(%struct.sk_buff* %71, i32 %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %75 = call i32 @skb_reset_mac_header(%struct.sk_buff* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %77 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %44
  %85 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %86 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %7, align 8
  %87 = load %struct.tap_queue*, %struct.tap_queue** %4, align 8
  %88 = call i32 @tap_is_little_endian(%struct.tap_queue* %87)
  %89 = call i32 @virtio_net_hdr_to_skb(%struct.sk_buff* %85, %struct.virtio_net_hdr* %86, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %142

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %44
  %95 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @ETH_P_8021Q, align 4
  %99 = call i64 @htons(i32 %98)
  %100 = icmp eq i64 %97, %99
  br i1 %100, label %108, label %101

101:                                              ; preds = %94
  %102 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @ETH_P_8021AD, align 4
  %106 = call i64 @htons(i32 %105)
  %107 = icmp eq i64 %104, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %101, %94
  %109 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @__vlan_get_protocol(%struct.sk_buff* %109, i64 %112, i32* %13)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @skb_set_network_header(%struct.sk_buff* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %108, %101
  %120 = call i32 (...) @rcu_read_lock()
  %121 = load %struct.tap_queue*, %struct.tap_queue** %4, align 8
  %122 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call %struct.tap_dev* @rcu_dereference(i32 %123)
  store %struct.tap_dev* %124, %struct.tap_dev** %10, align 8
  %125 = load %struct.tap_dev*, %struct.tap_dev** %10, align 8
  %126 = icmp ne %struct.tap_dev* %125, null
  br i1 %126, label %127, label %137

127:                                              ; preds = %119
  %128 = load %struct.tap_dev*, %struct.tap_dev** %10, align 8
  %129 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %134 = call i32 @skb_probe_transport_header(%struct.sk_buff* %133)
  %135 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %136 = call i32 @dev_queue_xmit(%struct.sk_buff* %135)
  br label %140

137:                                              ; preds = %119
  %138 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %139 = call i32 @kfree_skb(%struct.sk_buff* %138)
  br label %140

140:                                              ; preds = %137, %127
  %141 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %3, align 4
  br label %167

142:                                              ; preds = %92
  %143 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %144 = call i32 @kfree_skb(%struct.sk_buff* %143)
  br label %145

145:                                              ; preds = %142, %41
  %146 = call i32 (...) @rcu_read_lock()
  %147 = load %struct.tap_queue*, %struct.tap_queue** %4, align 8
  %148 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call %struct.tap_dev* @rcu_dereference(i32 %149)
  store %struct.tap_dev* %150, %struct.tap_dev** %10, align 8
  %151 = load %struct.tap_dev*, %struct.tap_dev** %10, align 8
  %152 = icmp ne %struct.tap_dev* %151, null
  br i1 %152, label %153, label %164

153:                                              ; preds = %145
  %154 = load %struct.tap_dev*, %struct.tap_dev** %10, align 8
  %155 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %154, i32 0, i32 0
  %156 = load i32 (%struct.tap_dev*)*, i32 (%struct.tap_dev*)** %155, align 8
  %157 = icmp ne i32 (%struct.tap_dev*)* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load %struct.tap_dev*, %struct.tap_dev** %10, align 8
  %160 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %159, i32 0, i32 0
  %161 = load i32 (%struct.tap_dev*)*, i32 (%struct.tap_dev*)** %160, align 8
  %162 = load %struct.tap_dev*, %struct.tap_dev** %10, align 8
  %163 = call i32 %161(%struct.tap_dev* %162)
  br label %164

164:                                              ; preds = %158, %153, %145
  %165 = call i32 (...) @rcu_read_unlock()
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %164, %140
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.sk_buff* @build_skb(%struct.tun_xdp_hdr*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, %struct.tun_xdp_hdr*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, %struct.tun_xdp_hdr*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @virtio_net_hdr_to_skb(%struct.sk_buff*, %struct.virtio_net_hdr*, i32) #1

declare dso_local i32 @tap_is_little_endian(%struct.tap_queue*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @__vlan_get_protocol(%struct.sk_buff*, i64, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tap_dev* @rcu_dereference(i32) #1

declare dso_local i32 @skb_probe_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
