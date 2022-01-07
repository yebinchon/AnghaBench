; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.fe_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @nv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fe_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.fe_priv* %8, %struct.fe_priv** %4, align 8
  %9 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %10 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @free_percpu(i32 %11)
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @unregister_netdev(%struct.net_device* %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = call i32 @nv_restore_mac_addr(%struct.pci_dev* %15)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @nv_restore_phy(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @nv_mgmt_release_sema(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @free_rings(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @get_hwbase(%struct.net_device* %23)
  %25 = call i32 @iounmap(i32 %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = call i32 @pci_release_regions(%struct.pci_dev* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = call i32 @pci_disable_device(%struct.pci_dev* %28)
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @free_netdev(%struct.net_device* %30)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @nv_restore_mac_addr(%struct.pci_dev*) #1

declare dso_local i32 @nv_restore_phy(%struct.net_device*) #1

declare dso_local i32 @nv_mgmt_release_sema(%struct.net_device*) #1

declare dso_local i32 @free_rings(%struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @get_hwbase(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
