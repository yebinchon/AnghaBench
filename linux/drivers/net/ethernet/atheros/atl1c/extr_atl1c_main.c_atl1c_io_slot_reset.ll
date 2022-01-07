; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_io_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_io_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.atl1c_adapter = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Cannot re-enable PCI device after reset\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @atl1c_io_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_io_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.atl1c_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.net_device* %7, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.atl1c_adapter* %9, %struct.atl1c_adapter** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call i64 @pci_enable_device(%struct.pci_dev* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %15 = call i64 @netif_msg_hw(%struct.atl1c_adapter* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %22, i32* %2, align 4
  br label %36

23:                                               ; preds = %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i32 @pci_set_master(%struct.pci_dev* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = load i32, i32* @PCI_D3hot, align 4
  %28 = call i32 @pci_enable_wake(%struct.pci_dev* %26, i32 %27, i32 0)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = load i32, i32* @PCI_D3cold, align 4
  %31 = call i32 @pci_enable_wake(%struct.pci_dev* %29, i32 %30, i32 0)
  %32 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %32, i32 0, i32 0
  %34 = call i32 @atl1c_reset_mac(i32* %33)
  %35 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %23, %21
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i64 @netif_msg_hw(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_wake(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @atl1c_reset_mac(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
