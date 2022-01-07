; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_io_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_io_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.bnxt = type { i32 }

@PCI_ERS_RESULT_DISCONNECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"PCI Slot Reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", align 1
@PCI_ERS_RESULT_RECOVERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_dev*)* @bnxt_io_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnxt_io_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.bnxt* @netdev_priv(%struct.net_device* %9)
  store %struct.bnxt* %10, %struct.bnxt** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i64, i64* @PCI_ERS_RESULT_DISCONNECT, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %13 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @netdev_info(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @rtnl_lock()
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = call i64 @pci_enable_device(%struct.pci_dev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %46

24:                                               ; preds = %1
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = call i32 @pci_set_master(%struct.pci_dev* %25)
  %27 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %28 = call i32 @bnxt_hwrm_func_reset(%struct.bnxt* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = call i64 @netif_running(%struct.net_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @bnxt_open(%struct.net_device* %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %31, %24
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  store i64 %42, i64* %6, align 8
  %43 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %44 = call i32 @bnxt_ulp_start(%struct.bnxt* %43)
  br label %45

45:                                               ; preds = %41, %38
  br label %46

46:                                               ; preds = %45, %20
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i64 @netif_running(%struct.net_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @dev_close(%struct.net_device* %55)
  br label %57

57:                                               ; preds = %54, %50, %46
  %58 = call i32 (...) @rtnl_unlock()
  %59 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  ret i64 %59
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @bnxt_hwrm_func_reset(%struct.bnxt*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnxt_open(%struct.net_device*) #1

declare dso_local i32 @bnxt_ulp_start(%struct.bnxt*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
