; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_nic_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_nic_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.netxen_adapter = type { i32 }

@PCI_D3cold = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @netxen_nic_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_nic_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.netxen_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.netxen_adapter* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.netxen_adapter* %5, %struct.netxen_adapter** %3, align 8
  %6 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %7 = call i32 @netxen_nic_detach_func(%struct.netxen_adapter* %6)
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = call i64 @pci_save_state(%struct.pci_dev* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %14 = call i64 @netxen_nic_wol_supported(%struct.netxen_adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = load i32, i32* @PCI_D3cold, align 4
  %19 = call i32 @pci_enable_wake(%struct.pci_dev* %17, i32 %18, i32 1)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = load i32, i32* @PCI_D3hot, align 4
  %22 = call i32 @pci_enable_wake(%struct.pci_dev* %20, i32 %21, i32 1)
  br label %23

23:                                               ; preds = %16, %12
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = call i32 @pci_disable_device(%struct.pci_dev* %24)
  br label %26

26:                                               ; preds = %23, %11
  ret void
}

declare dso_local %struct.netxen_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @netxen_nic_detach_func(%struct.netxen_adapter*) #1

declare dso_local i64 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i64 @netxen_nic_wol_supported(%struct.netxen_adapter*) #1

declare dso_local i32 @pci_enable_wake(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
