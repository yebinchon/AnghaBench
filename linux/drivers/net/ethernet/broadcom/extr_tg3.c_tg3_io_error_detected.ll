; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_io_error_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_io_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.tg3 = type { i32 }

@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"PCI I/O error detected\0A\00", align 1
@pci_channel_io_frozen = common dso_local global i64 0, align 8
@RESET_KIND_SHUTDOWN = common dso_local global i32 0, align 4
@pci_channel_io_perm_failure = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @tg3_io_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_io_error_detected(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.tg3*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.tg3* @netdev_priv(%struct.net_device* %10)
  store %struct.tg3* %11, %struct.tg3** %6, align 8
  %12 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i32 @netdev_info(%struct.net_device* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @rtnl_lock()
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call i32 @netif_running(%struct.net_device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %2
  br label %48

23:                                               ; preds = %18
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @pci_channel_io_frozen, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.tg3*, %struct.tg3** %6, align 8
  %29 = getelementptr inbounds %struct.tg3, %struct.tg3* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.tg3*, %struct.tg3** %6, align 8
  %32 = call i32 @tg3_phy_stop(%struct.tg3* %31)
  %33 = load %struct.tg3*, %struct.tg3** %6, align 8
  %34 = call i32 @tg3_netif_stop(%struct.tg3* %33)
  %35 = load %struct.tg3*, %struct.tg3** %6, align 8
  %36 = call i32 @tg3_timer_stop(%struct.tg3* %35)
  %37 = load %struct.tg3*, %struct.tg3** %6, align 8
  %38 = call i32 @tg3_reset_task_cancel(%struct.tg3* %37)
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = call i32 @netif_device_detach(%struct.net_device* %39)
  %41 = load %struct.tg3*, %struct.tg3** %6, align 8
  %42 = call i32 @tg3_full_lock(%struct.tg3* %41, i32 0)
  %43 = load %struct.tg3*, %struct.tg3** %6, align 8
  %44 = load i32, i32* @RESET_KIND_SHUTDOWN, align 4
  %45 = call i32 @tg3_halt(%struct.tg3* %43, i32 %44, i32 0)
  %46 = load %struct.tg3*, %struct.tg3** %6, align 8
  %47 = call i32 @tg3_full_unlock(%struct.tg3* %46)
  br label %48

48:                                               ; preds = %30, %22
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @pci_channel_io_perm_failure, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = icmp ne %struct.net_device* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.tg3*, %struct.tg3** %6, align 8
  %57 = call i32 @tg3_napi_enable(%struct.tg3* %56)
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = call i32 @dev_close(%struct.net_device* %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %61, i32* %7, align 4
  br label %65

62:                                               ; preds = %48
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = call i32 @pci_disable_device(%struct.pci_dev* %63)
  br label %65

65:                                               ; preds = %62, %60
  %66 = call i32 (...) @rtnl_unlock()
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.tg3* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @tg3_phy_stop(%struct.tg3*) #1

declare dso_local i32 @tg3_netif_stop(%struct.tg3*) #1

declare dso_local i32 @tg3_timer_stop(%struct.tg3*) #1

declare dso_local i32 @tg3_reset_task_cancel(%struct.tg3*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @tg3_full_lock(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_halt(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_full_unlock(%struct.tg3*) #1

declare dso_local i32 @tg3_napi_enable(%struct.tg3*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
