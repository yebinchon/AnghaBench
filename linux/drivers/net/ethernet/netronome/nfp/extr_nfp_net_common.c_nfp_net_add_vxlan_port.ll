; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_add_vxlan_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_add_vxlan_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i64, i32 }
%struct.nfp_net = type { i32* }

@UDP_TUNNEL_TYPE_VXLAN = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.udp_tunnel_info*)* @nfp_net_add_vxlan_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_add_vxlan_port(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.nfp_net*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %7)
  store %struct.nfp_net* %8, %struct.nfp_net** %5, align 8
  %9 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %10 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @UDP_TUNNEL_TYPE_VXLAN, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %17 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %18 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @nfp_net_find_vxlan_idx(%struct.nfp_net* %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ENOSPC, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %43

26:                                               ; preds = %15
  %27 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %28 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %40 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @nfp_net_set_vxlan_port(%struct.nfp_net* %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %14, %25, %36, %26
  ret void
}

declare dso_local %struct.nfp_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nfp_net_find_vxlan_idx(%struct.nfp_net*, i32) #1

declare dso_local i32 @nfp_net_set_vxlan_port(%struct.nfp_net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
