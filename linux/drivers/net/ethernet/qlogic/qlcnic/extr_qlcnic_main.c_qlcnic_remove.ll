; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.qlcnic_adapter = type { i32*, %struct.qlcnic_hardware_context*, i32, %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context*, i32, i32, %struct.net_device* }
%struct.qlcnic_hardware_context = type { %struct.qlcnic_hardware_context*, i32 }
%struct.net_device = type { i32 }

@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @qlcnic_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.qlcnic_adapter* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.qlcnic_adapter* %7, %struct.qlcnic_adapter** %3, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %9 = icmp eq %struct.qlcnic_adapter* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %111

11:                                               ; preds = %1
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 7
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %16 = call i32 @qlcnic_cancel_idc_work(%struct.qlcnic_adapter* %15)
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %18 = call i32 @qlcnic_sriov_pf_disable(%struct.qlcnic_adapter* %17)
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 1
  %21 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %20, align 8
  store %struct.qlcnic_hardware_context* %21, %struct.qlcnic_hardware_context** %5, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i32 @unregister_netdev(%struct.net_device* %22)
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %25 = call i32 @qlcnic_sriov_cleanup(%struct.qlcnic_adapter* %24)
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %27 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %11
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %31 = call i32 @qlcnic_83xx_initialize_nic(%struct.qlcnic_adapter* %30, i32 0)
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 6
  %34 = call i32 @cancel_delayed_work_sync(i32* %33)
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %36 = call i32 @qlcnic_83xx_free_mbx_intr(%struct.qlcnic_adapter* %35)
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %38 = call i32 @qlcnic_83xx_detach_mailbox_work(%struct.qlcnic_adapter* %37)
  %39 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %40 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @qlcnic_83xx_free_mailbox(i32 %41)
  %43 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %44 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %43, i32 0, i32 0
  %45 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %44, align 8
  %46 = call i32 @kfree(%struct.qlcnic_hardware_context* %45)
  br label %47

47:                                               ; preds = %29, %11
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @qlcnic_dcb_free(i32 %50)
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %53 = call i32 @qlcnic_detach(%struct.qlcnic_adapter* %52)
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %54, i32 0, i32 4
  %56 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %55, align 8
  %57 = call i32 @kfree(%struct.qlcnic_hardware_context* %56)
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 3
  %60 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %59, align 8
  %61 = call i32 @kfree(%struct.qlcnic_hardware_context* %60)
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %63 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %47
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %67 = call i32 @qlcnic_clr_all_drv_state(%struct.qlcnic_adapter* %66, i32 0)
  br label %68

68:                                               ; preds = %65, %47
  %69 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %70, i32 0, i32 2
  %72 = call i32 @clear_bit(i32 %69, i32* %71)
  %73 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %74 = call i32 @qlcnic_free_lb_filters_mem(%struct.qlcnic_adapter* %73)
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %76 = call i32 @qlcnic_teardown_intr(%struct.qlcnic_adapter* %75)
  %77 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %78 = call i32 @qlcnic_remove_sysfs(%struct.qlcnic_adapter* %77)
  %79 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %80 = call i32 @qlcnic_unregister_hwmon_dev(%struct.qlcnic_adapter* %79)
  %81 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %81, i32 0, i32 1
  %83 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %82, align 8
  %84 = call i32 @qlcnic_cleanup_pci_map(%struct.qlcnic_hardware_context* %83)
  %85 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %86 = call i32 @qlcnic_release_firmware(%struct.qlcnic_adapter* %85)
  %87 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %88 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %87)
  %89 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %90 = call i32 @pci_release_regions(%struct.pci_dev* %89)
  %91 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %92 = call i32 @pci_disable_device(%struct.pci_dev* %91)
  %93 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %68
  %98 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @destroy_workqueue(i32* %100)
  %102 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %97, %68
  %105 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %106 = call i32 @qlcnic_free_adapter_resources(%struct.qlcnic_adapter* %105)
  %107 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %108 = call i32 @kfree(%struct.qlcnic_hardware_context* %107)
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = call i32 @free_netdev(%struct.net_device* %109)
  br label %111

111:                                              ; preds = %104, %10
  ret void
}

declare dso_local %struct.qlcnic_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @qlcnic_cancel_idc_work(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_pf_disable(%struct.qlcnic_adapter*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @qlcnic_sriov_cleanup(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_initialize_nic(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @qlcnic_83xx_free_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_detach_mailbox_work(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_free_mailbox(i32) #1

declare dso_local i32 @kfree(%struct.qlcnic_hardware_context*) #1

declare dso_local i32 @qlcnic_dcb_free(i32) #1

declare dso_local i32 @qlcnic_detach(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_clr_all_drv_state(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_free_lb_filters_mem(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_teardown_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_remove_sysfs(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_unregister_hwmon_dev(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_cleanup_pci_map(%struct.qlcnic_hardware_context*) #1

declare dso_local i32 @qlcnic_release_firmware(%struct.qlcnic_adapter*) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @qlcnic_free_adapter_resources(%struct.qlcnic_adapter*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
