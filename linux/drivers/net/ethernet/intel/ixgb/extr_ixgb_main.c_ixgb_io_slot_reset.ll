; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_io_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_io_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.ixgb_adapter = type { i32, i32 }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Cannot re-enable PCI device after reset\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"After reset, the EEPROM checksum is not valid\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"After reset, invalid MAC address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @ixgb_io_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_io_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ixgb_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.net_device* %7, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ixgb_adapter* %9, %struct.ixgb_adapter** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call i64 @pci_enable_device(%struct.pci_dev* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %15 = load i32, i32* @probe, align 4
  %16 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @netif_err(%struct.ixgb_adapter* %14, i32 %15, i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %20, i32* %2, align 4
  br label %82

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @PCI_FUNC(i32 %24)
  %26 = icmp ne i64 0, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %28, i32* %2, align 4
  br label %82

29:                                               ; preds = %21
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = call i32 @pci_set_master(%struct.pci_dev* %30)
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i32 @netif_carrier_off(%struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call i32 @netif_stop_queue(%struct.net_device* %34)
  %36 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %37 = call i32 @ixgb_reset(%struct.ixgb_adapter* %36)
  %38 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %38, i32 0, i32 1
  %40 = call i32 @ixgb_validate_eeprom_checksum(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %29
  %43 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %44 = load i32, i32* @probe, align 4
  %45 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @netif_err(%struct.ixgb_adapter* %43, i32 %44, i32 %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %49, i32* %2, align 4
  br label %82

50:                                               ; preds = %29
  %51 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %51, i32 0, i32 1
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ixgb_get_ee_mac_addr(i32* %52, i32 %55)
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(i32 %59, i32 %62, i32 %65)
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @is_valid_ether_addr(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %50
  %73 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %74 = load i32, i32* @probe, align 4
  %75 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %76 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @netif_err(%struct.ixgb_adapter* %73, i32 %74, i32 %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %79, i32* %2, align 4
  br label %82

80:                                               ; preds = %50
  %81 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %72, %42, %27, %13
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @netif_err(%struct.ixgb_adapter*, i32, i32, i8*) #1

declare dso_local i64 @PCI_FUNC(i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ixgb_reset(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_validate_eeprom_checksum(i32*) #1

declare dso_local i32 @ixgb_get_ee_mac_addr(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
