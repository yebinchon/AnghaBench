; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_pci_error_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_pci_error_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.alx_priv = type { %struct.alx_hw }
%struct.alx_hw = type { i32 }

@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pci error slot reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to re-enable PCI device after reset\0A\00", align 1
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @alx_pci_error_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_pci_error_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.alx_priv*, align 8
  %4 = alloca %struct.alx_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.alx_priv* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.alx_priv* %7, %struct.alx_priv** %3, align 8
  %8 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %9 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %8, i32 0, i32 0
  store %struct.alx_hw* %9, %struct.alx_hw** %4, align 8
  %10 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = call i32 @dev_info(i32* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (...) @rtnl_lock()
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = call i64 @pci_enable_device(%struct.pci_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %33

22:                                               ; preds = %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = call i32 @pci_set_master(%struct.pci_dev* %23)
  %25 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %26 = call i32 @alx_reset_pcie(%struct.alx_hw* %25)
  %27 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %28 = call i32 @alx_reset_mac(%struct.alx_hw* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %22
  br label %33

33:                                               ; preds = %32, %18
  %34 = call i32 (...) @rtnl_unlock()
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.alx_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @alx_reset_pcie(%struct.alx_hw*) #1

declare dso_local i32 @alx_reset_mac(%struct.alx_hw*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
