; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_nic_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_nic_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.netxen_adapter = type { i64, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@__NX_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @netxen_nic_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_nic_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.netxen_adapter* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.netxen_adapter* %6, %struct.netxen_adapter** %3, align 8
  %7 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %8 = icmp eq %struct.netxen_adapter* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %66

10:                                               ; preds = %1
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %11, i32 0, i32 3
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %15 = call i32 @netxen_cancel_fw_work(%struct.netxen_adapter* %14)
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @unregister_netdev(%struct.net_device* %16)
  %18 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %18, i32 0, i32 2
  %20 = call i32 @cancel_work_sync(i32* %19)
  %21 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %22 = call i32 @netxen_free_ip_list(%struct.netxen_adapter* %21, i32 0)
  %23 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %24 = call i32 @netxen_nic_detach(%struct.netxen_adapter* %23)
  %25 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %26 = call i32 @nx_decr_dev_ref_cnt(%struct.netxen_adapter* %25)
  %27 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %10
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %33 = call i32 @netxen_free_dummy_dma(%struct.netxen_adapter* %32)
  br label %34

34:                                               ; preds = %31, %10
  %35 = load i32, i32* @__NX_RESETTING, align 4
  %36 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %36, i32 0, i32 1
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  %39 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %40 = call i32 @netxen_teardown_intr(%struct.netxen_adapter* %39)
  %41 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %42 = call i32 @netxen_set_interrupt_mode(%struct.netxen_adapter* %41, i32 0)
  %43 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %44 = call i32 @netxen_remove_diag_entries(%struct.netxen_adapter* %43)
  %45 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %46 = call i32 @netxen_cleanup_pci_map(%struct.netxen_adapter* %45)
  %47 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %48 = call i32 @netxen_release_firmware(%struct.netxen_adapter* %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @NX_IS_REVISION_P3(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %34
  %55 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %56 = call i32 @netxen_cleanup_minidump(%struct.netxen_adapter* %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %58 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %57)
  br label %59

59:                                               ; preds = %54, %34
  %60 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %61 = call i32 @pci_release_regions(%struct.pci_dev* %60)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %63 = call i32 @pci_disable_device(%struct.pci_dev* %62)
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = call i32 @free_netdev(%struct.net_device* %64)
  br label %66

66:                                               ; preds = %59, %9
  ret void
}

declare dso_local %struct.netxen_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @netxen_cancel_fw_work(%struct.netxen_adapter*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @netxen_free_ip_list(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @netxen_nic_detach(%struct.netxen_adapter*) #1

declare dso_local i32 @nx_decr_dev_ref_cnt(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_free_dummy_dma(%struct.netxen_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netxen_teardown_intr(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_set_interrupt_mode(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @netxen_remove_diag_entries(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_cleanup_pci_map(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_release_firmware(%struct.netxen_adapter*) #1

declare dso_local i64 @NX_IS_REVISION_P3(i32) #1

declare dso_local i32 @netxen_cleanup_minidump(%struct.netxen_adapter*) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
