; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtl8169_private = type { i32*, i32*, i32, i32, i32, %struct.TYPE_2__, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@RTL_FLAG_MAX = common dso_local global i32 0, align 4
@R8169_RX_RING_BYTES = common dso_local global i32 0, align 4
@R8169_TX_RING_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rtl8169_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8169_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %5)
  store %struct.rtl8169_private* %6, %struct.rtl8169_private** %3, align 8
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %8 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %7, i32 0, i32 6
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = call i32 @pm_runtime_get_sync(i32* %11)
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %14 = call i32 @rtl8169_update_counters(%struct.rtl8169_private* %13)
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %16 = call i32 @rtl_lock_work(%struct.rtl8169_private* %15)
  %17 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %18 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RTL_FLAG_MAX, align 4
  %22 = call i32 @bitmap_zero(i32 %20, i32 %21)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @rtl8169_down(%struct.net_device* %23)
  %25 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %26 = call i32 @rtl_unlock_work(%struct.rtl8169_private* %25)
  %27 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %28 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @cancel_work_sync(i32* %29)
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %32 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @phy_disconnect(i32 %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %37 = call i32 @pci_free_irq(%struct.pci_dev* %35, i32 0, %struct.rtl8169_private* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* @R8169_RX_RING_BYTES, align 4
  %41 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %42 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %45 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dma_free_coherent(i32* %39, i32 %40, i32* %43, i32 %46)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load i32, i32* @R8169_TX_RING_BYTES, align 4
  %51 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %52 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %55 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dma_free_coherent(i32* %49, i32 %50, i32* %53, i32 %56)
  %58 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %59 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %61 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = call i32 @pm_runtime_put_sync(i32* %63)
  ret i32 0
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @rtl8169_update_counters(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_lock_work(%struct.rtl8169_private*) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @rtl8169_down(%struct.net_device*) #1

declare dso_local i32 @rtl_unlock_work(%struct.rtl8169_private*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @phy_disconnect(i32) #1

declare dso_local i32 @pci_free_irq(%struct.pci_dev*, i32, %struct.rtl8169_private*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
