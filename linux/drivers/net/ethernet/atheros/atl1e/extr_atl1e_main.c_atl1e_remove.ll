; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.atl1e_adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@__AT_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @atl1e_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.atl1e_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.atl1e_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.atl1e_adapter* %8, %struct.atl1e_adapter** %4, align 8
  %9 = load i32, i32* @__AT_DOWN, align 4
  %10 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %10, i32 0, i32 1
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %14 = call i32 @atl1e_del_timer(%struct.atl1e_adapter* %13)
  %15 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %16 = call i32 @atl1e_cancel_work(%struct.atl1e_adapter* %15)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @unregister_netdev(%struct.net_device* %17)
  %19 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %20 = call i32 @atl1e_free_ring_resources(%struct.atl1e_adapter* %19)
  %21 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %21, i32 0, i32 0
  %23 = call i32 @atl1e_force_ps(%struct.TYPE_2__* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pci_iounmap(%struct.pci_dev* %24, i32 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = call i32 @pci_release_regions(%struct.pci_dev* %30)
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = call i32 @free_netdev(%struct.net_device* %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = call i32 @pci_disable_device(%struct.pci_dev* %34)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.atl1e_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atl1e_del_timer(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_cancel_work(%struct.atl1e_adapter*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @atl1e_free_ring_resources(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_force_ps(%struct.TYPE_2__*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
