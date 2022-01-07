; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NFP_NET_CFG_MBOX_CMD_CTAG_FILTER_ADD = common dso_local global i32 0, align 4
@NFP_NET_CFG_VLAN_FILTER_SZ = common dso_local global i32 0, align 4
@NFP_NET_CFG_VLAN_FILTER_VID = common dso_local global i64 0, align 8
@NFP_NET_CFG_VLAN_FILTER_PROTO = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @nfp_net_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_vlan_rx_add_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_net*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @NFP_NET_CFG_MBOX_CMD_CTAG_FILTER_ADD, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %12)
  store %struct.nfp_net* %13, %struct.nfp_net** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

17:                                               ; preds = %3
  %18 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %19 = load i32, i32* @NFP_NET_CFG_VLAN_FILTER_SZ, align 4
  %20 = call i32 @nfp_net_mbox_lock(%struct.nfp_net* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %47

25:                                               ; preds = %17
  %26 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %27 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %28 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NFP_NET_CFG_VLAN_FILTER_VID, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @nn_writew(%struct.nfp_net* %26, i64 %32, i32 %33)
  %35 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %36 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %37 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NFP_NET_CFG_VLAN_FILTER_PROTO, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* @ETH_P_8021Q, align 4
  %43 = call i32 @nn_writew(%struct.nfp_net* %35, i64 %41, i32 %42)
  %44 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @nfp_net_mbox_reconfig_and_unlock(%struct.nfp_net* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %25, %23, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.nfp_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nfp_net_mbox_lock(%struct.nfp_net*, i32) #1

declare dso_local i32 @nn_writew(%struct.nfp_net*, i64, i32) #1

declare dso_local i32 @nfp_net_mbox_reconfig_and_unlock(%struct.nfp_net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
