; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_io_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_io_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ixgbe_adapter = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@__IXGBE_DISABLED = common dso_local global i32 0, align 4
@IXGBE_WUS = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @ixgbe_io_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_io_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.ixgbe_adapter* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.ixgbe_adapter* %6, %struct.ixgbe_adapter** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call i64 @pci_enable_device_mem(%struct.pci_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @probe, align 4
  %12 = call i32 @e_err(i32 %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %13, i32* %4, align 4
  br label %41

14:                                               ; preds = %1
  %15 = call i32 (...) @smp_mb__before_atomic()
  %16 = load i32, i32* @__IXGBE_DISABLED, align 4
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 2
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = call i32 @pci_set_master(%struct.pci_dev* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = call i32 @pci_restore_state(%struct.pci_dev* %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = call i32 @pci_save_state(%struct.pci_dev* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = call i32 @pci_wake_from_d3(%struct.pci_dev* %32, i32 0)
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %35 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %34)
  %36 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* @IXGBE_WUS, align 4
  %39 = call i32 @IXGBE_WRITE_REG(%struct.TYPE_2__* %37, i32 %38, i32 -1)
  %40 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %14, %10
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.ixgbe_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @e_err(i32, i8*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_wake_from_d3(%struct.pci_dev*, i32) #1

declare dso_local i32 @ixgbe_reset(%struct.ixgbe_adapter*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
