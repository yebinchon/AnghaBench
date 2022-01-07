; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sky2_hw = type { i32, %struct.net_device** }
%struct.net_device = type { i32 }

@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @sky2_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.sky2_hw* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.sky2_hw* %7, %struct.sky2_hw** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %33, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %11 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %8
  %15 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %16 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %15, i32 0, i32 1
  %17 = load %struct.net_device**, %struct.net_device*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 %19
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %5, align 8
  %22 = call i32 (...) @rtnl_lock()
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call i64 @netif_running(%struct.net_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @dev_close(%struct.net_device* %27)
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = call i32 @netif_device_detach(%struct.net_device* %29)
  br label %31

31:                                               ; preds = %26, %14
  %32 = call i32 (...) @rtnl_unlock()
  br label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %8

36:                                               ; preds = %8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = call i32 @sky2_suspend(i32* %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = call i32 @device_may_wakeup(i32* %42)
  %44 = call i32 @pci_wake_from_d3(%struct.pci_dev* %40, i32 %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = load i32, i32* @PCI_D3hot, align 4
  %47 = call i32 @pci_set_power_state(%struct.pci_dev* %45, i32 %46)
  ret void
}

declare dso_local %struct.sky2_hw* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @sky2_suspend(i32*) #1

declare dso_local i32 @pci_wake_from_d3(%struct.pci_dev*, i32) #1

declare dso_local i32 @device_may_wakeup(i32*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
