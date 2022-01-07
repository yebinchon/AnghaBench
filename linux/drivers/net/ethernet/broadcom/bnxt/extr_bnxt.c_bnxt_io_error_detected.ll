; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_io_error_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_io_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.bnxt = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"PCI I/O error detected\0A\00", align 1
@pci_channel_io_perm_failure = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @bnxt_io_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_io_error_detected(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.bnxt*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.bnxt* @netdev_priv(%struct.net_device* %10)
  store %struct.bnxt* %11, %struct.bnxt** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call i32 @netdev_info(%struct.net_device* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (...) @rtnl_lock()
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call i32 @netif_device_detach(%struct.net_device* %15)
  %17 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %18 = call i32 @bnxt_ulp_stop(%struct.bnxt* %17)
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @pci_channel_io_perm_failure, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = call i32 (...) @rtnl_unlock()
  %24 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %24, i32* %3, align 4
  br label %37

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = call i64 @netif_running(%struct.net_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call i32 @bnxt_close(%struct.net_device* %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i32 @pci_disable_device(%struct.pci_dev* %33)
  %35 = call i32 (...) @rtnl_unlock()
  %36 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %22
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @bnxt_ulp_stop(%struct.bnxt*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnxt_close(%struct.net_device*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
