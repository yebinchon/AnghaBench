; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_io_error_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_io_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.ixgbevf_adapter = type { i32 }

@__IXGBEVF_SERVICE_INITED = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@pci_channel_io_perm_failure = common dso_local global i64 0, align 8
@__IXGBEVF_DISABLED = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @ixgbevf_io_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_io_error_detected(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ixgbevf_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ixgbevf_adapter* %11, %struct.ixgbevf_adapter** %7, align 8
  %12 = load i32, i32* @__IXGBEVF_SERVICE_INITED, align 4
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %13, i32 0, i32 0
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  %20 = call i32 (...) @rtnl_lock()
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = call i32 @netif_device_detach(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = call i64 @netif_running(%struct.net_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %28 = call i32 @ixgbevf_close_suspend(%struct.ixgbevf_adapter* %27)
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @pci_channel_io_perm_failure, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = call i32 (...) @rtnl_unlock()
  %35 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %35, i32* %3, align 4
  br label %48

36:                                               ; preds = %29
  %37 = load i32, i32* @__IXGBEVF_DISABLED, align 4
  %38 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %39 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %38, i32 0, i32 0
  %40 = call i32 @test_and_set_bit(i32 %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = call i32 @pci_disable_device(%struct.pci_dev* %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = call i32 (...) @rtnl_unlock()
  %47 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %33, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_close_suspend(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
