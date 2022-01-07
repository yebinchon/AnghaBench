; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/silan/extr_sc92031.c_sc92031_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/silan/extr_sc92031.c_sc92031_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.sc92031_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @sc92031_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc92031_suspend(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sc92031_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.sc92031_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.sc92031_priv* %10, %struct.sc92031_priv** %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = call i32 @pci_save_state(%struct.pci_dev* %11)
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i32 @netif_running(%struct.net_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call i32 @netif_device_detach(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i32 @sc92031_disable_interrupts(%struct.net_device* %20)
  %22 = load %struct.sc92031_priv*, %struct.sc92031_priv** %6, align 8
  %23 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i32 @_sc92031_disable_tx_rx(%struct.net_device* %25)
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @_sc92031_tx_clear(%struct.net_device* %27)
  %29 = load %struct.sc92031_priv*, %struct.sc92031_priv** %6, align 8
  %30 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  br label %32

32:                                               ; preds = %17, %16
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @pci_choose_state(%struct.pci_dev* %34, i32 %35)
  %37 = call i32 @pci_set_power_state(%struct.pci_dev* %33, i32 %36)
  ret i32 0
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.sc92031_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @sc92031_disable_interrupts(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @_sc92031_disable_tx_rx(%struct.net_device*) #1

declare dso_local i32 @_sc92031_tx_clear(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_choose_state(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
