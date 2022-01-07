; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_io_error_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_io_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.ixgbe_adapter = type { i64, i32, i32, %struct.ixgbe_hw, %struct.net_device* }
%struct.ixgbe_hw = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }

@__IXGBE_SERVICE_INITED = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@pci_channel_io_perm_failure = common dso_local global i64 0, align 8
@__IXGBE_DISABLED = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@IXGBE_82599_VF_DEVICE_ID = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_VF = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_X_VF = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550_VF = common dso_local global i32 0, align 4
@IXGBE_X540_VF_DEVICE_ID = common dso_local global i32 0, align 4
@PCI_ERR_HEADER_LOG = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @ixgbe_io_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_io_error_detected(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.ixgbe_adapter* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.ixgbe_adapter* %9, %struct.ixgbe_adapter** %6, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 4
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load i32, i32* @__IXGBE_SERVICE_INITED, align 4
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 1
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = call i32 @netif_device_present(%struct.net_device* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %25, i32* %3, align 4
  br label %55

26:                                               ; preds = %20
  %27 = call i32 (...) @rtnl_lock()
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = call i32 @netif_device_detach(%struct.net_device* %28)
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = call i64 @netif_running(%struct.net_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %35 = call i32 @ixgbe_close_suspend(%struct.ixgbe_adapter* %34)
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @pci_channel_io_perm_failure, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = call i32 (...) @rtnl_unlock()
  %42 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %42, i32* %3, align 4
  br label %55

43:                                               ; preds = %36
  %44 = load i32, i32* @__IXGBE_DISABLED, align 4
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 1
  %47 = call i32 @test_and_set_bit(i32 %44, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = call i32 @pci_disable_device(%struct.pci_dev* %50)
  br label %52

52:                                               ; preds = %49, %43
  %53 = call i32 (...) @rtnl_unlock()
  %54 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %40, %24, %18
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.ixgbe_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ixgbe_close_suspend(%struct.ixgbe_adapter*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
