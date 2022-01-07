; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ethtool.c_netxen_nic_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ethtool.c_netxen_nic_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32 }
%struct.netxen_adapter = type { %struct.TYPE_2__, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@NETXEN_NIC_GBE = common dso_local global i64 0, align 8
@MAX_RCV_DESCRIPTORS_1G = common dso_local global i32 0, align 4
@MAX_JUMBO_RCV_DESCRIPTORS_1G = common dso_local global i32 0, align 4
@MAX_RCV_DESCRIPTORS_10G = common dso_local global i32 0, align 4
@MAX_JUMBO_RCV_DESCRIPTORS_10G = common dso_local global i32 0, align 4
@MAX_CMD_DESCRIPTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @netxen_nic_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_nic_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.netxen_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.netxen_adapter* %7, %struct.netxen_adapter** %5, align 8
  %8 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %9 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %20
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 4
  %27 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NETXEN_NIC_GBE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %2
  %39 = load i32, i32* @MAX_RCV_DESCRIPTORS_1G, align 4
  %40 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @MAX_JUMBO_RCV_DESCRIPTORS_1G, align 4
  %43 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %52

45:                                               ; preds = %2
  %46 = load i32, i32* @MAX_RCV_DESCRIPTORS_10G, align 4
  %47 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @MAX_JUMBO_RCV_DESCRIPTORS_10G, align 4
  %50 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %45, %38
  %53 = load i32, i32* @MAX_CMD_DESCRIPTORS, align 4
  %54 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %55 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  ret void
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
