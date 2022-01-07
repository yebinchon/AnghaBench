; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ethtool.c_netxen_nic_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ethtool.c_netxen_nic_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.net_device*)*, i32 (%struct.net_device*)* }
%struct.ethtool_link_ksettings = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.netxen_adapter = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@NETXEN_NIC_GBE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NX_FW_CAPABILITY_GBE_LINK_CFG = common dso_local global i32 0, align 4
@NX_RCODE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @netxen_nic_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.netxen_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.netxen_adapter* %10, %struct.netxen_adapter** %6, align 8
  %11 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NETXEN_NIC_GBE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %94

24:                                               ; preds = %2
  %25 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NX_FW_CAPABILITY_GBE_LINK_CFG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %94

34:                                               ; preds = %24
  %35 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nx_fw_cmd_set_gbe_port(%struct.netxen_adapter* %35, i32 %36, i32 %40, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @NX_RCODE_NOT_SUPPORTED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %94

52:                                               ; preds = %34
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %94

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %62 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %74 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = call i32 @netif_running(%struct.net_device* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %94

79:                                               ; preds = %59
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %83, align 8
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = call i32 %84(%struct.net_device* %85)
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %90, align 8
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = call i32 %91(%struct.net_device* %92)
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %79, %78, %55, %49, %31, %21
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nx_fw_cmd_set_gbe_port(%struct.netxen_adapter*, i32, i32, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
