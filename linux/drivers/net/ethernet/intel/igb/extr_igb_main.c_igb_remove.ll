; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.igb_adapter = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i64 }

@__IGB_DOWN = common dso_local global i32 0, align 4
@E1000_DCA_CTRL = common dso_local global i32 0, align 4
@E1000_DCA_CTRL_DCA_MODE_DISABLE = common dso_local global i32 0, align 4
@IGB_FLAG_DCA_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @igb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.igb_adapter*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.igb_adapter* %9, %struct.igb_adapter** %4, align 8
  %10 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %10, i32 0, i32 9
  store %struct.e1000_hw* %11, %struct.e1000_hw** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = call i32 @pm_runtime_get_noresume(i32* %13)
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %16 = call i32 @igb_remove_i2c(%struct.igb_adapter* %15)
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %18 = call i32 @igb_ptp_stop(%struct.igb_adapter* %17)
  %19 = load i32, i32* @__IGB_DOWN, align 4
  %20 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %20, i32 0, i32 8
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %23, i32 0, i32 7
  %25 = call i32 @del_timer_sync(i32* %24)
  %26 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %26, i32 0, i32 6
  %28 = call i32 @del_timer_sync(i32* %27)
  %29 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %29, i32 0, i32 5
  %31 = call i32 @cancel_work_sync(i32* %30)
  %32 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %32, i32 0, i32 4
  %34 = call i32 @cancel_work_sync(i32* %33)
  %35 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %36 = call i32 @igb_release_hw_control(%struct.igb_adapter* %35)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @unregister_netdev(%struct.net_device* %37)
  %39 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %40 = call i32 @igb_clear_interrupt_scheme(%struct.igb_adapter* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pci_iounmap(%struct.pci_dev* %41, i32 %44)
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %1
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @iounmap(i64 %53)
  br label %55

55:                                               ; preds = %50, %1
  %56 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %57 = call i32 @pci_release_mem_regions(%struct.pci_dev* %56)
  %58 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %59 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @kfree(i32 %60)
  %62 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @kfree(i32 %64)
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = call i32 @free_netdev(%struct.net_device* %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %69 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %68)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %71 = call i32 @pci_disable_device(%struct.pci_dev* %70)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @igb_remove_i2c(%struct.igb_adapter*) #1

declare dso_local i32 @igb_ptp_stop(%struct.igb_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @igb_release_hw_control(%struct.igb_adapter*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @igb_clear_interrupt_scheme(%struct.igb_adapter*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @iounmap(i64) #1

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
