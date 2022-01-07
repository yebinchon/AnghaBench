; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_io_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_io_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.tg3 = type { i32 }

@PCI_ERS_RESULT_DISCONNECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", align 1
@PCI_ERS_RESULT_RECOVERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_dev*)* @tg3_io_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tg3_io_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.tg3* @netdev_priv(%struct.net_device* %9)
  store %struct.tg3* %10, %struct.tg3** %4, align 8
  %11 = load i64, i64* @PCI_ERS_RESULT_DISCONNECT, align 8
  store i64 %11, i64* %5, align 8
  %12 = call i32 (...) @rtnl_lock()
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = call i64 @pci_enable_device(%struct.pci_dev* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %43

20:                                               ; preds = %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @pci_set_master(%struct.pci_dev* %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = call i32 @pci_restore_state(%struct.pci_dev* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = call i32 @pci_save_state(%struct.pci_dev* %25)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = icmp ne %struct.net_device* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i64 @netif_running(%struct.net_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29, %20
  %34 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  store i64 %34, i64* %5, align 8
  br label %43

35:                                               ; preds = %29
  %36 = load %struct.tg3*, %struct.tg3** %4, align 8
  %37 = call i32 @tg3_power_up(%struct.tg3* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %43

41:                                               ; preds = %35
  %42 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %41, %40, %33, %16
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = icmp ne %struct.net_device* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i64 @netif_running(%struct.net_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.tg3*, %struct.tg3** %4, align 8
  %56 = call i32 @tg3_napi_enable(%struct.tg3* %55)
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @dev_close(%struct.net_device* %57)
  br label %59

59:                                               ; preds = %54, %50, %47, %43
  %60 = call i32 (...) @rtnl_unlock()
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.tg3* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @tg3_power_up(%struct.tg3*) #1

declare dso_local i32 @tg3_napi_enable(%struct.tg3*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
