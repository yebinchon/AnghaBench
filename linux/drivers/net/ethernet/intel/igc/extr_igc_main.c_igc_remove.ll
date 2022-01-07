; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.igc_adapter = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@__IGC_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @igc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.igc_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.igc_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.igc_adapter* %8, %struct.igc_adapter** %4, align 8
  %9 = load i32, i32* @__IGC_DOWN, align 4
  %10 = load %struct.igc_adapter*, %struct.igc_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %10, i32 0, i32 7
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load %struct.igc_adapter*, %struct.igc_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %13, i32 0, i32 6
  %15 = call i32 @del_timer_sync(i32* %14)
  %16 = load %struct.igc_adapter*, %struct.igc_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %16, i32 0, i32 5
  %18 = call i32 @del_timer_sync(i32* %17)
  %19 = load %struct.igc_adapter*, %struct.igc_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %19, i32 0, i32 4
  %21 = call i32 @cancel_work_sync(i32* %20)
  %22 = load %struct.igc_adapter*, %struct.igc_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %22, i32 0, i32 3
  %24 = call i32 @cancel_work_sync(i32* %23)
  %25 = load %struct.igc_adapter*, %struct.igc_adapter** %4, align 8
  %26 = call i32 @igc_release_hw_control(%struct.igc_adapter* %25)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @unregister_netdev(%struct.net_device* %27)
  %29 = load %struct.igc_adapter*, %struct.igc_adapter** %4, align 8
  %30 = call i32 @igc_clear_interrupt_scheme(%struct.igc_adapter* %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = load %struct.igc_adapter*, %struct.igc_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pci_iounmap(%struct.pci_dev* %31, i32 %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = call i32 @pci_release_mem_regions(%struct.pci_dev* %36)
  %38 = load %struct.igc_adapter*, %struct.igc_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @kfree(i32 %40)
  %42 = load %struct.igc_adapter*, %struct.igc_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @kfree(i32 %44)
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @free_netdev(%struct.net_device* %46)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %51 = call i32 @pci_disable_device(%struct.pci_dev* %50)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.igc_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @igc_release_hw_control(%struct.igc_adapter*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @igc_clear_interrupt_scheme(%struct.igc_adapter*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_mem_regions(%struct.pci_dev*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
