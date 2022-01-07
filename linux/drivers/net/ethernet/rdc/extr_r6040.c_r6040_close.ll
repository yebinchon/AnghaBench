; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rdc/extr_r6040.c_r6040_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rdc/extr_r6040.c_r6040_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.r6040_private = type { i32*, i32, i32*, i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@RX_DESC_SIZE = common dso_local global i32 0, align 4
@TX_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @r6040_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r6040_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r6040_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r6040_private* @netdev_priv(%struct.net_device* %5)
  store %struct.r6040_private* %6, %struct.r6040_private** %3, align 8
  %7 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %8 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %7, i32 0, i32 6
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @phy_stop(i32 %12)
  %14 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %15 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %14, i32 0, i32 5
  %16 = call i32 @napi_disable(i32* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netif_stop_queue(%struct.net_device* %17)
  %19 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %20 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %19, i32 0, i32 4
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @r6040_down(%struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @r6040_free_rxbufs(%struct.net_device* %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @r6040_free_txbufs(%struct.net_device* %26)
  %28 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %29 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %28, i32 0, i32 4
  %30 = call i32 @spin_unlock_irq(i32* %29)
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @free_irq(i32 %33, %struct.net_device* %34)
  %36 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %37 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %1
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = load i32, i32* @RX_DESC_SIZE, align 4
  %43 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %44 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %47 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pci_free_consistent(%struct.pci_dev* %41, i32 %42, i32* %45, i32 %48)
  %50 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %51 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %40, %1
  %53 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %54 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = load i32, i32* @TX_DESC_SIZE, align 4
  %60 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %61 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %64 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pci_free_consistent(%struct.pci_dev* %58, i32 %59, i32* %62, i32 %65)
  %67 = load %struct.r6040_private*, %struct.r6040_private** %3, align 8
  %68 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %57, %52
  ret i32 0
}

declare dso_local %struct.r6040_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @r6040_down(%struct.net_device*) #1

declare dso_local i32 @r6040_free_rxbufs(%struct.net_device*) #1

declare dso_local i32 @r6040_free_txbufs(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
