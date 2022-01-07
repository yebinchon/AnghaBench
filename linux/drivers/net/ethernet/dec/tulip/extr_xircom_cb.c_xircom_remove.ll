; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_xircom_cb.c_xircom_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_xircom_cb.c_xircom_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.xircom_private = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @xircom_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xircom_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.xircom_private*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.xircom_private* @netdev_priv(%struct.net_device* %8)
  store %struct.xircom_private* %9, %struct.xircom_private** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @unregister_netdev(%struct.net_device* %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = load %struct.xircom_private*, %struct.xircom_private** %4, align 8
  %16 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pci_iounmap(%struct.pci_dev* %14, i32 %17)
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.xircom_private*, %struct.xircom_private** %4, align 8
  %21 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.xircom_private*, %struct.xircom_private** %4, align 8
  %24 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dma_free_coherent(%struct.device* %19, i32 8192, i32 %22, i32 %25)
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.xircom_private*, %struct.xircom_private** %4, align 8
  %29 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xircom_private*, %struct.xircom_private** %4, align 8
  %32 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dma_free_coherent(%struct.device* %27, i32 8192, i32 %30, i32 %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @free_netdev(%struct.net_device* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = call i32 @pci_release_regions(%struct.pci_dev* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = call i32 @pci_disable_device(%struct.pci_dev* %39)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.xircom_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
