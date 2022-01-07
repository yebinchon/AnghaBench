; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.pasemi_mac = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pasemi_mac_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pasemi_mac_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pasemi_mac*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.pasemi_mac* @netdev_priv(%struct.net_device* %11)
  store %struct.pasemi_mac* %12, %struct.pasemi_mac** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @unregister_netdev(%struct.net_device* %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = call i32 @pci_disable_device(%struct.pci_dev* %15)
  %17 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %18 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pci_dev_put(i32 %19)
  %21 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %22 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pci_dev_put(i32 %23)
  %25 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %26 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @pasemi_dma_free_chan(i32* %28)
  %30 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %31 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @pasemi_dma_free_chan(i32* %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @free_netdev(%struct.net_device* %35)
  br label %37

37:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.pasemi_mac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_put(i32) #1

declare dso_local i32 @pasemi_dma_free_chan(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
