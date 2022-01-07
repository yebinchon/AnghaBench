; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_probe_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_probe_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { %struct.rocker_port**, %struct.pci_dev* }
%struct.rocker_port = type { i32, i32, i32, i32, %struct.rocker*, %struct.net_device* }
%struct.net_device = type { i32, i32, i32, i32*, i32* }
%struct.pci_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"world init failed\0A\00", align 1
@rocker_port_netdev_ops = common dso_local global i32 0, align 4
@rocker_port_ethtool_ops = common dso_local global i32 0, align 4
@rocker_port_poll_tx = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@rocker_port_poll_rx = common dso_local global i32 0, align 4
@NETIF_F_NETNS_LOCAL = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@ROCKER_PORT_MIN_MTU = common dso_local global i32 0, align 4
@ROCKER_PORT_MAX_MTU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"port world pre-init failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"register_netdev failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"port world init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*, i32)* @rocker_probe_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_probe_port(%struct.rocker* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rocker*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.rocker_port*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.rocker*, %struct.rocker** %4, align 8
  %11 = getelementptr inbounds %struct.rocker, %struct.rocker* %10, i32 0, i32 1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  %13 = call %struct.net_device* @alloc_etherdev(i32 32)
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %132

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = call i32 @SET_NETDEV_DEV(%struct.net_device* %20, i32* %22)
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = call %struct.rocker_port* @netdev_priv(%struct.net_device* %24)
  store %struct.rocker_port* %25, %struct.rocker_port** %7, align 8
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %28 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %27, i32 0, i32 5
  store %struct.net_device* %26, %struct.net_device** %28, align 8
  %29 = load %struct.rocker*, %struct.rocker** %4, align 8
  %30 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %31 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %30, i32 0, i32 4
  store %struct.rocker* %29, %struct.rocker** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %34 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %35, 1
  %37 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %38 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %40 = call i32 @rocker_world_check_init(%struct.rocker_port* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %19
  %44 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %128

47:                                               ; preds = %19
  %48 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %49 = call i32 @rocker_port_dev_addr_init(%struct.rocker_port* %48)
  %50 = load %struct.net_device*, %struct.net_device** %8, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 4
  store i32* @rocker_port_netdev_ops, i32** %51, align 8
  %52 = load %struct.net_device*, %struct.net_device** %8, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 3
  store i32* @rocker_port_ethtool_ops, i32** %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %8, align 8
  %55 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %56 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %55, i32 0, i32 3
  %57 = load i32, i32* @rocker_port_poll_tx, align 4
  %58 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %59 = call i32 @netif_tx_napi_add(%struct.net_device* %54, i32* %56, i32 %57, i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %8, align 8
  %61 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %62 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %61, i32 0, i32 2
  %63 = load i32, i32* @rocker_port_poll_rx, align 4
  %64 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %65 = call i32 @netif_napi_add(%struct.net_device* %60, i32* %62, i32 %63, i32 %64)
  %66 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %67 = call i32 @rocker_carrier_init(%struct.rocker_port* %66)
  %68 = load i32, i32* @NETIF_F_NETNS_LOCAL, align 4
  %69 = load i32, i32* @NETIF_F_SG, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.net_device*, %struct.net_device** %8, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* @ROCKER_PORT_MIN_MTU, align 4
  %76 = load %struct.net_device*, %struct.net_device** %8, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @ROCKER_PORT_MAX_MTU, align 4
  %79 = load %struct.net_device*, %struct.net_device** %8, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %82 = call i32 @rocker_world_port_pre_init(%struct.rocker_port* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %47
  %86 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %127

89:                                               ; preds = %47
  %90 = load %struct.net_device*, %struct.net_device** %8, align 8
  %91 = call i32 @register_netdev(%struct.net_device* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 0
  %97 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %124

98:                                               ; preds = %89
  %99 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %100 = load %struct.rocker*, %struct.rocker** %4, align 8
  %101 = getelementptr inbounds %struct.rocker, %struct.rocker* %100, i32 0, i32 0
  %102 = load %struct.rocker_port**, %struct.rocker_port*** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.rocker_port*, %struct.rocker_port** %102, i64 %104
  store %struct.rocker_port* %99, %struct.rocker_port** %105, align 8
  %106 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %107 = call i32 @rocker_world_port_init(%struct.rocker_port* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %98
  %111 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 0
  %113 = call i32 @dev_err(i32* %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %115

114:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %132

115:                                              ; preds = %110
  %116 = load %struct.rocker*, %struct.rocker** %4, align 8
  %117 = getelementptr inbounds %struct.rocker, %struct.rocker* %116, i32 0, i32 0
  %118 = load %struct.rocker_port**, %struct.rocker_port*** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.rocker_port*, %struct.rocker_port** %118, i64 %120
  store %struct.rocker_port* null, %struct.rocker_port** %121, align 8
  %122 = load %struct.net_device*, %struct.net_device** %8, align 8
  %123 = call i32 @unregister_netdev(%struct.net_device* %122)
  br label %124

124:                                              ; preds = %115, %94
  %125 = load %struct.rocker_port*, %struct.rocker_port** %7, align 8
  %126 = call i32 @rocker_world_port_post_fini(%struct.rocker_port* %125)
  br label %127

127:                                              ; preds = %124, %85
  br label %128

128:                                              ; preds = %127, %43
  %129 = load %struct.net_device*, %struct.net_device** %8, align 8
  %130 = call i32 @free_netdev(%struct.net_device* %129)
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %128, %114, %16
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.rocker_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rocker_world_check_init(%struct.rocker_port*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @rocker_port_dev_addr_init(%struct.rocker_port*) #1

declare dso_local i32 @netif_tx_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @rocker_carrier_init(%struct.rocker_port*) #1

declare dso_local i32 @rocker_world_port_pre_init(%struct.rocker_port*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @rocker_world_port_init(%struct.rocker_port*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @rocker_world_port_post_fini(%struct.rocker_port*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
