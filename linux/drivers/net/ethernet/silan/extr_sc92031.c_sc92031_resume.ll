; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/silan/extr_sc92031.c_sc92031_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/silan/extr_sc92031.c_sc92031_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.sc92031_priv = type { i32 }

@PCI_D0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @sc92031_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc92031_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sc92031_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.sc92031_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.sc92031_priv* %8, %struct.sc92031_priv** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call i32 @pci_restore_state(%struct.pci_dev* %9)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = load i32, i32* @PCI_D0, align 4
  %13 = call i32 @pci_set_power_state(%struct.pci_dev* %11, i32 %12)
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @netif_running(%struct.net_device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %41

18:                                               ; preds = %1
  %19 = load %struct.sc92031_priv*, %struct.sc92031_priv** %4, align 8
  %20 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @_sc92031_reset(%struct.net_device* %22)
  %24 = load %struct.sc92031_priv*, %struct.sc92031_priv** %4, align 8
  %25 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock_bh(i32* %25)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @sc92031_enable_interrupts(%struct.net_device* %27)
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @netif_device_attach(%struct.net_device* %29)
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i64 @netif_carrier_ok(%struct.net_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @netif_wake_queue(%struct.net_device* %35)
  br label %40

37:                                               ; preds = %18
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 @netif_tx_disable(%struct.net_device* %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %17
  ret i32 0
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.sc92031_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @_sc92031_reset(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @sc92031_enable_interrupts(%struct.net_device*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
