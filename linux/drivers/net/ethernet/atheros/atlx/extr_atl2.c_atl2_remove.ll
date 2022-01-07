; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.atl2_adapter = type { %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@__ATL2_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @atl2_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl2_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.atl2_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.atl2_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.atl2_adapter* %8, %struct.atl2_adapter** %4, align 8
  %9 = load i32, i32* @__ATL2_DOWN, align 4
  %10 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %10, i32 0, i32 5
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %13, i32 0, i32 4
  %15 = call i32 @del_timer_sync(i32* %14)
  %16 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %16, i32 0, i32 3
  %18 = call i32 @del_timer_sync(i32* %17)
  %19 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %19, i32 0, i32 2
  %21 = call i32 @cancel_work_sync(i32* %20)
  %22 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %22, i32 0, i32 1
  %24 = call i32 @cancel_work_sync(i32* %23)
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @unregister_netdev(%struct.net_device* %25)
  %27 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %27, i32 0, i32 0
  %29 = call i32 @atl2_force_ps(%struct.TYPE_2__* %28)
  %30 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @iounmap(i32 %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = call i32 @pci_release_regions(%struct.pci_dev* %35)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @free_netdev(%struct.net_device* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = call i32 @pci_disable_device(%struct.pci_dev* %39)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.atl2_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @atl2_force_ps(%struct.TYPE_2__*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
