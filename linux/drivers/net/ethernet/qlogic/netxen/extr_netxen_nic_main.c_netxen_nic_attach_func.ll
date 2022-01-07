; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_nic_attach_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_nic_attach_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.netxen_adapter = type { %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }

@PCI_D0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to start firmware\0A\00", align 1
@NETDEV_UP = common dso_local global i32 0, align 4
@netxen_fw_poll_work = common dso_local global i32 0, align 4
@FW_POLL_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @netxen_nic_attach_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_attach_func(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.netxen_adapter*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.netxen_adapter* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.netxen_adapter* %8, %struct.netxen_adapter** %4, align 8
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call i32 @pci_enable_device(%struct.pci_dev* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %76

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = load i32, i32* @PCI_D0, align 4
  %21 = call i32 @pci_set_power_state(%struct.pci_dev* %19, i32 %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = call i32 @pci_set_master(%struct.pci_dev* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i32 @pci_restore_state(%struct.pci_dev* %24)
  %26 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 8
  %29 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 -1, i32* %31, align 4
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %33 = call i32 @netxen_start_firmware(%struct.netxen_adapter* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %18
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %76

41:                                               ; preds = %18
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call i64 @netif_running(%struct.net_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %47 = call i32 @netxen_nic_attach(%struct.netxen_adapter* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %72

51:                                               ; preds = %45
  %52 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = call i32 @netxen_nic_up(%struct.netxen_adapter* %52, %struct.net_device* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %69

58:                                               ; preds = %51
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = load i32, i32* @NETDEV_UP, align 4
  %61 = call i32 @netxen_restore_indev_addr(%struct.net_device* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %41
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = call i32 @netif_device_attach(%struct.net_device* %63)
  %65 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %66 = load i32, i32* @netxen_fw_poll_work, align 4
  %67 = load i32, i32* @FW_POLL_DELAY, align 4
  %68 = call i32 @netxen_schedule_work(%struct.netxen_adapter* %65, i32 %66, i32 %67)
  store i32 0, i32* %2, align 4
  br label %76

69:                                               ; preds = %57
  %70 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %71 = call i32 @netxen_nic_detach(%struct.netxen_adapter* %70)
  br label %72

72:                                               ; preds = %69, %50
  %73 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %74 = call i32 @nx_decr_dev_ref_cnt(%struct.netxen_adapter* %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %62, %36, %16
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.netxen_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @netxen_start_firmware(%struct.netxen_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netxen_nic_attach(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_nic_up(%struct.netxen_adapter*, %struct.net_device*) #1

declare dso_local i32 @netxen_restore_indev_addr(%struct.net_device*, i32) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @netxen_schedule_work(%struct.netxen_adapter*, i32, i32) #1

declare dso_local i32 @netxen_nic_detach(%struct.netxen_adapter*) #1

declare dso_local i32 @nx_decr_dev_ref_cnt(%struct.netxen_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
