; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_setup_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_setup_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__, i64, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32*, i32, i32* }

@netxen_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@netxen_nic_ethtool_ops = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NX_FW_CAPABILITY_FVLANTX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NX_FW_CAPABILITY_HW_LRO = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@netxen_tx_timeout_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to read mac addr\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to register net device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*, %struct.net_device*)* @netxen_setup_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_setup_netdev(%struct.netxen_adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netxen_adapter*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %8, i32 0, i32 7
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %7, align 8
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %11, i32 0, i32 6
  store i64 0, i64* %12, align 8
  %13 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @NX_IS_REVISION_P3(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %20, i32 0, i32 0
  store i32 38, i32* %21, align 8
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %23, i32 0, i32 0
  store i32 16, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 7
  store i32* @netxen_netdev_ops, i32** %27, align 8
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 5, %28
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @netxen_nic_change_mtu(%struct.net_device* %32, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 5
  store i32* @netxen_nic_ethtool_ops, i32** %38, align 8
  %39 = load i32, i32* @NETIF_F_SG, align 4
  %40 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NETIF_F_TSO, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @NX_IS_REVISION_P3(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %25
  %55 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %56 = load i32, i32* @NETIF_F_TSO6, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %54, %25
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %71 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %62
  %75 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %74, %62
  %86 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %87 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @NX_FW_CAPABILITY_FVLANTX, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %94 = load %struct.net_device*, %struct.net_device** %5, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %85
  %99 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %100 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @NX_FW_CAPABILITY_HW_LRO, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i32, i32* @NETIF_F_LRO, align 4
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %98
  %112 = load %struct.net_device*, %struct.net_device** %5, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.net_device*, %struct.net_device** %5, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %120 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %119, i32 0, i32 3
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.net_device*, %struct.net_device** %5, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %128 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %127, i32 0, i32 2
  %129 = load i32, i32* @netxen_tx_timeout_task, align 4
  %130 = call i32 @INIT_WORK(i32* %128, i32 %129)
  %131 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %132 = call i64 @netxen_read_mac_addr(%struct.netxen_adapter* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %111
  %135 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %136 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %135, i32 0, i32 0
  %137 = call i32 @dev_warn(i32* %136, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %138

138:                                              ; preds = %134, %111
  %139 = load %struct.net_device*, %struct.net_device** %5, align 8
  %140 = call i32 @netif_carrier_off(%struct.net_device* %139)
  %141 = load %struct.net_device*, %struct.net_device** %5, align 8
  %142 = call i32 @register_netdev(%struct.net_device* %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %147 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %146, i32 0, i32 0
  %148 = call i32 @dev_err(i32* %147, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %3, align 4
  br label %151

150:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %145
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @NX_IS_REVISION_P3(i32) #1

declare dso_local i32 @netxen_nic_change_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @netxen_read_mac_addr(%struct.netxen_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
