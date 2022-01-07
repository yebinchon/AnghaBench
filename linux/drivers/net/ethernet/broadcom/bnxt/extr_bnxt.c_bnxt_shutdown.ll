; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.bnxt = type { i32 }

@system_state = common dso_local global i64 0, align 8
@SYSTEM_POWER_OFF = common dso_local global i64 0, align 8
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @bnxt_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bnxt*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %46

10:                                               ; preds = %1
  %11 = call i32 (...) @rtnl_lock()
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.bnxt* @netdev_priv(%struct.net_device* %12)
  store %struct.bnxt* %13, %struct.bnxt** %4, align 8
  %14 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %15 = icmp ne %struct.bnxt* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %44

17:                                               ; preds = %10
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i64 @netif_running(%struct.net_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @dev_close(%struct.net_device* %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %26 = call i32 @bnxt_ulp_shutdown(%struct.bnxt* %25)
  %27 = load i64, i64* @system_state, align 8
  %28 = load i64, i64* @SYSTEM_POWER_OFF, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %32 = call i32 @bnxt_clear_int_mode(%struct.bnxt* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = call i32 @pci_disable_device(%struct.pci_dev* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %37 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pci_wake_from_d3(%struct.pci_dev* %35, i32 %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = load i32, i32* @PCI_D3hot, align 4
  %42 = call i32 @pci_set_power_state(%struct.pci_dev* %40, i32 %41)
  br label %43

43:                                               ; preds = %30, %24
  br label %44

44:                                               ; preds = %43, %16
  %45 = call i32 (...) @rtnl_unlock()
  br label %46

46:                                               ; preds = %44, %9
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @bnxt_ulp_shutdown(%struct.bnxt*) #1

declare dso_local i32 @bnxt_clear_int_mode(%struct.bnxt*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_wake_from_d3(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
