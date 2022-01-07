; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_ntb_netdev.c_ntb_netdev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_ntb_netdev.c_ntb_netdev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ntb_dev = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32, i64, i32, i64, i32*, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.ntb_netdev = type { i32, %struct.pci_dev*, %struct.net_device* }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@IFF_LIVE_ADDR_CHANGE = common dso_local global i32 0, align 4
@NTB_TX_TIMEOUT_MS = common dso_local global i32 0, align 4
@ntb_netdev_ops = common dso_local global i32 0, align 4
@ntb_ethtool_ops = common dso_local global i32 0, align 4
@ETH_MAX_MTU = common dso_local global i32 0, align 4
@ntb_netdev_handlers = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ntb_netdev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_netdev_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ntb_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.ntb_netdev*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ntb_dev* @dev_ntb(i32 %11)
  store %struct.ntb_dev* %12, %struct.ntb_dev** %4, align 8
  %13 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %14 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %6, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %17 = icmp ne %struct.pci_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %125

21:                                               ; preds = %1
  %22 = call %struct.net_device* @alloc_etherdev(i32 24)
  store %struct.net_device* %22, %struct.net_device** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = icmp ne %struct.net_device* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %125

28:                                               ; preds = %21
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = call i32 @SET_NETDEV_DEV(%struct.net_device* %29, %struct.device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call %struct.ntb_netdev* @netdev_priv(%struct.net_device* %32)
  store %struct.ntb_netdev* %33, %struct.ntb_netdev** %7, align 8
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = load %struct.ntb_netdev*, %struct.ntb_netdev** %7, align 8
  %36 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %35, i32 0, i32 2
  store %struct.net_device* %34, %struct.net_device** %36, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %38 = load %struct.ntb_netdev*, %struct.ntb_netdev** %7, align 8
  %39 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %38, i32 0, i32 1
  store %struct.pci_dev* %37, %struct.pci_dev** %39, align 8
  %40 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @IFF_LIVE_ADDR_CHANGE, align 4
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 12
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 11
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @NTB_TX_TIMEOUT_MS, align 4
  %54 = call i32 @msecs_to_jiffies(i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 4
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @eth_random_addr(i32 %59)
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @memcpy(i32 %63, i32 %66, i32 %69)
  %71 = load %struct.net_device*, %struct.net_device** %5, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 5
  store i32* @ntb_netdev_ops, i32** %72, align 8
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 4
  store i32* @ntb_ethtool_ops, i32** %74, align 8
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @ETH_MAX_MTU, align 4
  %78 = load %struct.net_device*, %struct.net_device** %5, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = load %struct.device*, %struct.device** %3, align 8
  %82 = call i32 @ntb_transport_create_queue(%struct.net_device* %80, %struct.device* %81, i32* @ntb_netdev_handlers)
  %83 = load %struct.ntb_netdev*, %struct.ntb_netdev** %7, align 8
  %84 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ntb_netdev*, %struct.ntb_netdev** %7, align 8
  %86 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %28
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %8, align 4
  br label %121

92:                                               ; preds = %28
  %93 = load %struct.ntb_netdev*, %struct.ntb_netdev** %7, align 8
  %94 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @ntb_transport_max_size(i32 %95)
  %97 = load i64, i64* @ETH_HLEN, align 8
  %98 = sub nsw i64 %96, %97
  %99 = load %struct.net_device*, %struct.net_device** %5, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load %struct.net_device*, %struct.net_device** %5, align 8
  %102 = call i32 @register_netdev(%struct.net_device* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %116

106:                                              ; preds = %92
  %107 = load %struct.device*, %struct.device** %3, align 8
  %108 = load %struct.net_device*, %struct.net_device** %5, align 8
  %109 = call i32 @dev_set_drvdata(%struct.device* %107, %struct.net_device* %108)
  %110 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %111 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %110, i32 0, i32 0
  %112 = load %struct.net_device*, %struct.net_device** %5, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dev_info(i32* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %114)
  store i32 0, i32* %2, align 4
  br label %125

116:                                              ; preds = %105
  %117 = load %struct.ntb_netdev*, %struct.ntb_netdev** %7, align 8
  %118 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @ntb_transport_free_queue(i32 %119)
  br label %121

121:                                              ; preds = %116, %89
  %122 = load %struct.net_device*, %struct.net_device** %5, align 8
  %123 = call i32 @free_netdev(%struct.net_device* %122)
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %121, %106, %25, %18
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.ntb_dev* @dev_ntb(i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local %struct.ntb_netdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @eth_random_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ntb_transport_create_queue(%struct.net_device*, %struct.device*, i32*) #1

declare dso_local i64 @ntb_transport_max_size(i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @ntb_transport_free_queue(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
