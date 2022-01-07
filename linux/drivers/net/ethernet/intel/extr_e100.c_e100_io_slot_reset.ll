; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_io_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_io_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.nic = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Cannot re-enable PCI device after reset\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @e100_io_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_io_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nic*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.net_device* %7, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.nic* @netdev_priv(%struct.net_device* %8)
  store %struct.nic* %9, %struct.nic** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call i64 @pci_enable_device(%struct.pci_dev* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %15, i32* %2, align 4
  br label %32

16:                                               ; preds = %1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = call i32 @pci_set_master(%struct.pci_dev* %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @PCI_FUNC(i32 %21)
  %23 = icmp ne i64 0, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %25, i32* %2, align 4
  br label %32

26:                                               ; preds = %16
  %27 = load %struct.nic*, %struct.nic** %5, align 8
  %28 = call i32 @e100_hw_reset(%struct.nic* %27)
  %29 = load %struct.nic*, %struct.nic** %5, align 8
  %30 = call i32 @e100_phy_init(%struct.nic* %29)
  %31 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %26, %24, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @PCI_FUNC(i32) #1

declare dso_local i32 @e100_hw_reset(%struct.nic*) #1

declare dso_local i32 @e100_phy_init(%struct.nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
