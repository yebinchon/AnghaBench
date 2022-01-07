; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_pci_error_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_pci_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.alx_priv = type { %struct.net_device* }
%struct.net_device = type { i32 }

@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"pci error detected\0A\00", align 1
@pci_channel_io_perm_failure = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @alx_pci_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_pci_error_detected(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.alx_priv*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.alx_priv* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.alx_priv* %9, %struct.alx_priv** %5, align 8
  %10 = load %struct.alx_priv*, %struct.alx_priv** %5, align 8
  %11 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = call i32 @dev_info(i32* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @rtnl_lock()
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call i64 @netif_running(%struct.net_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = call i32 @netif_device_detach(%struct.net_device* %22)
  %24 = load %struct.alx_priv*, %struct.alx_priv** %5, align 8
  %25 = call i32 @alx_halt(%struct.alx_priv* %24)
  br label %26

26:                                               ; preds = %21, %2
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @pci_channel_io_perm_failure, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %31, i32* %7, align 4
  br label %35

32:                                               ; preds = %26
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = call i32 @pci_disable_device(%struct.pci_dev* %33)
  br label %35

35:                                               ; preds = %32, %30
  %36 = call i32 (...) @rtnl_unlock()
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local %struct.alx_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @alx_halt(%struct.alx_priv*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
