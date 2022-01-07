; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_process_v4_outbound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_process_v4_outbound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.iphdr = type { i64, i32, i32, i32 }
%struct.flowi4 = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.rtable = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.TYPE_7__ = type { %struct.net_device* }

@NET_XMIT_DROP = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@FLOWI_FLAG_ANYSRC = common dso_local global i32 0, align 4
@FLOWI_FLAG_SKIP_NH_OIF = common dso_local global i32 0, align 4
@RT_SCOPE_LINK = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @vrf_process_v4_outbound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrf_process_v4_outbound(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.flowi4, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.rtable*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.net* @dev_net(%struct.net_device* %12)
  store %struct.net* %13, %struct.net** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i64, i64* @ETH_HLEN, align 8
  %16 = add i64 %15, 24
  %17 = call i32 @pskb_may_pull(%struct.sk_buff* %14, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %120

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %21)
  store %struct.iphdr* %22, %struct.iphdr** %6, align 8
  %23 = call i32 @memset(%struct.flowi4* %8, i32 0, i32 40)
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 6
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  %29 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 5
  store i32 %28, i32* %29, align 4
  %30 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %31 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @RT_TOS(i32 %32)
  %34 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @FLOWI_FLAG_ANYSRC, align 4
  %36 = load i32, i32* @FLOWI_FLAG_SKIP_NH_OIF, align 4
  %37 = or i32 %35, %36
  %38 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  %51 = load %struct.net*, %struct.net** %9, align 8
  %52 = call %struct.rtable* @ip_route_output_flow(%struct.net* %51, %struct.flowi4* %8, i32* null)
  store %struct.rtable* %52, %struct.rtable** %10, align 8
  %53 = load %struct.rtable*, %struct.rtable** %10, align 8
  %54 = call i64 @IS_ERR(%struct.rtable* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %20
  br label %120

57:                                               ; preds = %20
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @skb_dst_drop(%struct.sk_buff* %58)
  %60 = load %struct.rtable*, %struct.rtable** %10, align 8
  %61 = getelementptr inbounds %struct.rtable, %struct.rtable* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.net_device*, %struct.net_device** %62, align 8
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = icmp eq %struct.net_device* %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = load %struct.rtable*, %struct.rtable** %10, align 8
  %70 = getelementptr inbounds %struct.rtable, %struct.rtable* %69, i32 0, i32 0
  %71 = call i32 @vrf_local_xmit(%struct.sk_buff* %67, %struct.net_device* %68, %struct.TYPE_6__* %70)
  store i32 %71, i32* %3, align 4
  br label %124

72:                                               ; preds = %57
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = load %struct.rtable*, %struct.rtable** %10, align 8
  %75 = getelementptr inbounds %struct.rtable, %struct.rtable* %74, i32 0, i32 0
  %76 = call i32 @skb_dst_set(%struct.sk_buff* %73, %struct.TYPE_6__* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call i32 @skb_network_offset(%struct.sk_buff* %78)
  %80 = call i32 @__skb_pull(%struct.sk_buff* %77, i32 %79)
  %81 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %82 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %72
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call %struct.TYPE_7__* @skb_dst(%struct.sk_buff* %86)
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.net_device*, %struct.net_device** %88, align 8
  %90 = load i32, i32* @RT_SCOPE_LINK, align 4
  %91 = call i64 @inet_select_addr(%struct.net_device* %89, i32 0, i32 %90)
  %92 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %93 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %85, %72
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = call %struct.TYPE_7__* @skb_dst(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.net_device*, %struct.net_device** %97, align 8
  %99 = call %struct.net* @dev_net(%struct.net_device* %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = call i32 @vrf_ip_local_out(%struct.net* %99, i32 %102, %struct.sk_buff* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @net_xmit_eval(i32 %105)
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %94
  %110 = load %struct.net_device*, %struct.net_device** %5, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %117

115:                                              ; preds = %94
  %116 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %115, %109
  br label %118

118:                                              ; preds = %120, %117
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %124

120:                                              ; preds = %56, %19
  %121 = load %struct.net_device*, %struct.net_device** %5, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = call i32 @vrf_tx_error(%struct.net_device* %121, %struct.sk_buff* %122)
  br label %118

124:                                              ; preds = %118, %66
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.flowi4*, i32, i32) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local %struct.rtable* @ip_route_output_flow(%struct.net*, %struct.flowi4*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @vrf_local_xmit(%struct.sk_buff*, %struct.net_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_6__*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @inet_select_addr(%struct.net_device*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @vrf_ip_local_out(%struct.net*, i32, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @net_xmit_eval(i32) #1

declare dso_local i32 @vrf_tx_error(%struct.net_device*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
