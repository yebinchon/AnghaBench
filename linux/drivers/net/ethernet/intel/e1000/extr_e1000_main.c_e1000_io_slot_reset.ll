; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_io_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_io_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, i64, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@__E1000_DISABLED = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i32 0, align 4
@WUS = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @e1000_io_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_io_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.e1000_adapter* %11, %struct.e1000_adapter** %5, align 8
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 2
  store %struct.e1000_hw* %13, %struct.e1000_hw** %6, align 8
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = call i32 @pci_enable_device(%struct.pci_dev* %19)
  store i32 %20, i32* %7, align 4
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = call i32 @pci_enable_device_mem(%struct.pci_dev* %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %29, i32* %2, align 4
  br label %49

30:                                               ; preds = %24
  %31 = call i32 (...) @smp_mb__before_atomic()
  %32 = load i32, i32* @__E1000_DISABLED, align 4
  %33 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %33, i32 0, i32 0
  %35 = call i32 @clear_bit(i32 %32, i32* %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = call i32 @pci_set_master(%struct.pci_dev* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = load i32, i32* @PCI_D3hot, align 4
  %40 = call i32 @pci_enable_wake(%struct.pci_dev* %38, i32 %39, i32 0)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = load i32, i32* @PCI_D3cold, align 4
  %43 = call i32 @pci_enable_wake(%struct.pci_dev* %41, i32 %42, i32 0)
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %45 = call i32 @e1000_reset(%struct.e1000_adapter* %44)
  %46 = load i32, i32* @WUS, align 4
  %47 = call i32 @ew32(i32 %46, i32 -1)
  %48 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %30, %27
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_wake(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @e1000_reset(%struct.e1000_adapter*) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
