; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_sundance.c_sundance_remove1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_sundance.c_sundance_remove1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i32, i32, i32, i32 }

@RX_TOTAL_SIZE = common dso_local global i32 0, align 4
@TX_TOTAL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @sundance_remove1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sundance_remove1(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_private*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %9, label %43

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %10)
  store %struct.netdev_private* %11, %struct.netdev_private** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @unregister_netdev(%struct.net_device* %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* @RX_TOTAL_SIZE, align 4
  %17 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %18 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %21 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dma_free_coherent(i32* %15, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i32, i32* @TX_TOTAL_SIZE, align 4
  %27 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %28 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %31 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dma_free_coherent(i32* %25, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %36 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pci_iounmap(%struct.pci_dev* %34, i32 %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = call i32 @pci_release_regions(%struct.pci_dev* %39)
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @free_netdev(%struct.net_device* %41)
  br label %43

43:                                               ; preds = %9, %1
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
