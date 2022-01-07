; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_pcidev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_pcidev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.lan743x_adapter = type { i32, %struct.net_device* }
%struct.net_device = type { i32, i32, i32*, i32*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@NETIF_MSG_DRV = common dso_local global i32 0, align 4
@NETIF_MSG_PROBE = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@NETIF_MSG_IFDOWN = common dso_local global i32 0, align 4
@NETIF_MSG_TX_QUEUED = common dso_local global i32 0, align 4
@LAN743X_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@lan743x_netdev_ops = common dso_local global i32 0, align 4
@lan743x_ethtool_ops = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Initialization failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @lan743x_pcidev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_pcidev_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.lan743x_adapter*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.lan743x_adapter* null, %struct.lan743x_adapter** %6, align 8
  store %struct.net_device* null, %struct.net_device** %7, align 8
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = call %struct.net_device* @devm_alloc_etherdev(i32* %12, i32 16)
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %117

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = call i32 @SET_NETDEV_DEV(%struct.net_device* %18, i32* %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = call i32 @pci_set_drvdata(%struct.pci_dev* %22, %struct.net_device* %23)
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = call %struct.lan743x_adapter* @netdev_priv(%struct.net_device* %25)
  store %struct.lan743x_adapter* %26, %struct.lan743x_adapter** %6, align 8
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %28, i32 0, i32 1
  store %struct.net_device* %27, %struct.net_device** %29, align 8
  %30 = load i32, i32* @NETIF_MSG_DRV, align 4
  %31 = load i32, i32* @NETIF_MSG_PROBE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @NETIF_MSG_LINK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @NETIF_MSG_TX_QUEUED, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @LAN743X_MAX_FRAME_SIZE, align 4
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = call i32 @lan743x_pci_init(%struct.lan743x_adapter* %46, %struct.pci_dev* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %17
  br label %117

52:                                               ; preds = %17
  %53 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %54 = call i32 @lan743x_csr_init(%struct.lan743x_adapter* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %114

58:                                               ; preds = %52
  %59 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = call i32 @lan743x_hardware_init(%struct.lan743x_adapter* %59, %struct.pci_dev* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %114

65:                                               ; preds = %58
  %66 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %67 = call i32 @lan743x_mdiobus_init(%struct.lan743x_adapter* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %111

71:                                               ; preds = %65
  %72 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %73 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %72, i32 0, i32 1
  %74 = load %struct.net_device*, %struct.net_device** %73, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 3
  store i32* @lan743x_netdev_ops, i32** %75, align 8
  %76 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %77 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %76, i32 0, i32 1
  %78 = load %struct.net_device*, %struct.net_device** %77, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 2
  store i32* @lan743x_ethtool_ops, i32** %79, align 8
  %80 = load i32, i32* @NETIF_F_SG, align 4
  %81 = load i32, i32* @NETIF_F_TSO, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %86 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %85, i32 0, i32 1
  %87 = load %struct.net_device*, %struct.net_device** %86, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 8
  %89 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %90 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %89, i32 0, i32 1
  %91 = load %struct.net_device*, %struct.net_device** %90, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %95 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %94, i32 0, i32 1
  %96 = load %struct.net_device*, %struct.net_device** %95, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 1
  store i32 %93, i32* %97, align 4
  %98 = load %struct.net_device*, %struct.net_device** %7, align 8
  %99 = call i32 @netif_carrier_off(%struct.net_device* %98)
  %100 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %101 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %100, i32 0, i32 1
  %102 = load %struct.net_device*, %struct.net_device** %101, align 8
  %103 = call i32 @register_netdev(%struct.net_device* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %71
  br label %108

107:                                              ; preds = %71
  store i32 0, i32* %3, align 4
  br label %120

108:                                              ; preds = %106
  %109 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %110 = call i32 @lan743x_mdiobus_cleanup(%struct.lan743x_adapter* %109)
  br label %111

111:                                              ; preds = %108, %70
  %112 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %113 = call i32 @lan743x_hardware_cleanup(%struct.lan743x_adapter* %112)
  br label %114

114:                                              ; preds = %111, %64, %57
  %115 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %116 = call i32 @lan743x_pci_cleanup(%struct.lan743x_adapter* %115)
  br label %117

117:                                              ; preds = %114, %51, %16
  %118 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %117, %107
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.net_device* @devm_alloc_etherdev(i32*, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local %struct.lan743x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @lan743x_pci_init(%struct.lan743x_adapter*, %struct.pci_dev*) #1

declare dso_local i32 @lan743x_csr_init(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_hardware_init(%struct.lan743x_adapter*, %struct.pci_dev*) #1

declare dso_local i32 @lan743x_mdiobus_init(%struct.lan743x_adapter*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @lan743x_mdiobus_cleanup(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_hardware_cleanup(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_pci_cleanup(%struct.lan743x_adapter*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
