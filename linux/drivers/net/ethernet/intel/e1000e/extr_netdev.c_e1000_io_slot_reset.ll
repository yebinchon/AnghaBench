; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_io_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_io_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@FLAG2_DISABLE_ASPM_L0S = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_L0S = common dso_local global i32 0, align 4
@FLAG2_DISABLE_ASPM_L1 = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_L1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i32 0, align 4
@WUS = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @e1000_io_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_io_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.e1000_adapter* %12, %struct.e1000_adapter** %4, align 8
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %13, i32 0, i32 1
  store %struct.e1000_hw* %14, %struct.e1000_hw** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FLAG2_DISABLE_ASPM_L0S, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @PCIE_LINK_STATE_L0S, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %21, %1
  %24 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FLAG2_DISABLE_ASPM_L1, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @PCIE_LINK_STATE_L1, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @e1000e_disable_aspm_locked(%struct.pci_dev* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = call i32 @pci_enable_device_mem(%struct.pci_dev* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 1
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %50, i32* %8, align 4
  br label %69

51:                                               ; preds = %41
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %55 = call i32 @pci_restore_state(%struct.pci_dev* %54)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %57 = call i32 @pci_set_master(%struct.pci_dev* %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %59 = load i32, i32* @PCI_D3hot, align 4
  %60 = call i32 @pci_enable_wake(%struct.pci_dev* %58, i32 %59, i32 0)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %62 = load i32, i32* @PCI_D3cold, align 4
  %63 = call i32 @pci_enable_wake(%struct.pci_dev* %61, i32 %62, i32 0)
  %64 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %65 = call i32 @e1000e_reset(%struct.e1000_adapter* %64)
  %66 = load i32, i32* @WUS, align 4
  %67 = call i32 @ew32(i32 %66, i32 -1)
  %68 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %51, %46
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @e1000e_disable_aspm_locked(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_wake(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @e1000e_reset(%struct.e1000_adapter*) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
