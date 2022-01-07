; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.atl1_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@REG_PHY_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @atl1_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.atl1_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %59

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.atl1_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.atl1_adapter* %12, %struct.atl1_adapter** %4, align 8
  %13 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ether_addr_equal_unaligned(i32 %16, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %10
  %24 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %29 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcpy(i32 %27, i32 %31, i32 %32)
  %34 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %34, i32 0, i32 0
  %36 = call i32 @atl1_set_mac_addr(%struct.TYPE_2__* %35)
  br label %37

37:                                               ; preds = %23, %10
  %38 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @REG_PHY_ENABLE, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @iowrite16(i32 0, i64 %43)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i32 @unregister_netdev(%struct.net_device* %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %48 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @pci_iounmap(%struct.pci_dev* %47, i64 %51)
  %53 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %54 = call i32 @pci_release_regions(%struct.pci_dev* %53)
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @free_netdev(%struct.net_device* %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %58 = call i32 @pci_disable_device(%struct.pci_dev* %57)
  br label %59

59:                                               ; preds = %37, %9
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.atl1_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ether_addr_equal_unaligned(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @atl1_set_mac_addr(%struct.TYPE_2__*) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
