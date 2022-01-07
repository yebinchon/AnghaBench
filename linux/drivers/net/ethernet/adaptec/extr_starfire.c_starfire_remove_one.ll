; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/adaptec/extr_starfire.c_starfire_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/adaptec/extr_starfire.c_starfire_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i32, i64, i32 }

@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @starfire_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @starfire_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_private*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %7)
  store %struct.netdev_private* %8, %struct.netdev_private** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = icmp ne %struct.net_device* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @unregister_netdev(%struct.net_device* %14)
  %16 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %17 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %23 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %26 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %29 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pci_free_consistent(%struct.pci_dev* %21, i32 %24, i64 %27, i32 %30)
  br label %32

32:                                               ; preds = %20, %1
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = load i32, i32* @PCI_D3hot, align 4
  %35 = call i32 @pci_set_power_state(%struct.pci_dev* %33, i32 %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = call i32 @pci_disable_device(%struct.pci_dev* %36)
  %38 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %39 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @iounmap(i32 %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = call i32 @pci_release_regions(%struct.pci_dev* %42)
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @free_netdev(%struct.net_device* %44)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i64, i32) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
