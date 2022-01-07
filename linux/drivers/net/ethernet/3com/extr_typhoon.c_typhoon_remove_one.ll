; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.typhoon = type { i32, i32, i32 }

@PCI_D0 = common dso_local global i32 0, align 4
@NoWait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @typhoon_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typhoon_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.typhoon*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.typhoon* @netdev_priv(%struct.net_device* %7)
  store %struct.typhoon* %8, %struct.typhoon** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = load i32, i32* @PCI_D0, align 4
  %13 = call i32 @pci_set_power_state(%struct.pci_dev* %11, i32 %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = call i32 @pci_restore_state(%struct.pci_dev* %14)
  %16 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %17 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NoWait, align 4
  %20 = call i32 @typhoon_reset(i32 %18, i32 %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %23 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pci_iounmap(%struct.pci_dev* %21, i32 %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %28 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %31 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pci_free_consistent(%struct.pci_dev* %26, i32 4, i32 %29, i32 %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = call i32 @pci_release_regions(%struct.pci_dev* %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = call i32 @pci_clear_mwi(%struct.pci_dev* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = call i32 @pci_disable_device(%struct.pci_dev* %38)
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @free_netdev(%struct.net_device* %40)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.typhoon* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @typhoon_reset(i32, i32) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_clear_mwi(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
