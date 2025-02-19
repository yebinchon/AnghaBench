; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/silan/extr_sc92031.c_sc92031_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/silan/extr_sc92031.c_sc92031_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sc92031_priv = type { i32, i32, i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@TX_BUF_TOT_LEN = common dso_local global i32 0, align 4
@RX_BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sc92031_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc92031_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sc92031_priv*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.sc92031_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.sc92031_priv* %6, %struct.sc92031_priv** %3, align 8
  %7 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %8 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %7, i32 0, i32 5
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @netif_tx_disable(%struct.net_device* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @sc92031_disable_interrupts(%struct.net_device* %12)
  %14 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %15 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %14, i32 0, i32 4
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @_sc92031_disable_tx_rx(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @_sc92031_tx_clear(%struct.net_device* %19)
  %21 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %22 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %21, i32 0, i32 4
  %23 = call i32 @spin_unlock_bh(i32* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @free_irq(i32 %26, %struct.net_device* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load i32, i32* @TX_BUF_TOT_LEN, align 4
  %31 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %32 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %35 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pci_free_consistent(%struct.pci_dev* %29, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load i32, i32* @RX_BUF_LEN, align 4
  %40 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %41 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %44 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pci_free_consistent(%struct.pci_dev* %38, i32 %39, i32 %42, i32 %45)
  ret i32 0
}

declare dso_local %struct.sc92031_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @sc92031_disable_interrupts(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @_sc92031_disable_tx_rx(%struct.net_device*) #1

declare dso_local i32 @_sc92031_tx_clear(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
