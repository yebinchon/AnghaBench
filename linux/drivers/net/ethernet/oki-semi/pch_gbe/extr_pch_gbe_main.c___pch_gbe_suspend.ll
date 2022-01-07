; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c___pch_gbe_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c___pch_gbe_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.pch_gbe_adapter = type { i64, %struct.pch_gbe_hw }
%struct.pch_gbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @__pch_gbe_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pch_gbe_suspend(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pch_gbe_adapter*, align 8
  %5 = alloca %struct.pch_gbe_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.pch_gbe_adapter* %11, %struct.pch_gbe_adapter** %4, align 8
  %12 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %12, i32 0, i32 1
  store %struct.pch_gbe_hw* %13, %struct.pch_gbe_hw** %5, align 8
  %14 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @netif_device_detach(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i64 @netif_running(%struct.net_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %24 = call i32 @pch_gbe_down(%struct.pch_gbe_adapter* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %25
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @pch_gbe_set_multi(%struct.net_device* %29)
  %31 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %32 = call i32 @pch_gbe_setup_rctl(%struct.pch_gbe_adapter* %31)
  %33 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %34 = call i32 @pch_gbe_configure_rx(%struct.pch_gbe_adapter* %33)
  %35 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %36 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %37 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %41 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pch_gbe_set_rgmii_ctrl(%struct.pch_gbe_adapter* %35, i32 %39, i32 %43)
  %45 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %46 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %47 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %51 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pch_gbe_set_mode(%struct.pch_gbe_adapter* %45, i32 %49, i32 %53)
  %55 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @pch_gbe_mac_set_wol_event(%struct.pch_gbe_hw* %55, i64 %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %59 = call i32 @pci_disable_device(%struct.pci_dev* %58)
  br label %68

60:                                               ; preds = %25
  %61 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %62 = call i32 @pch_gbe_phy_power_down(%struct.pch_gbe_hw* %61)
  %63 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @pch_gbe_mac_set_wol_event(%struct.pch_gbe_hw* %63, i64 %64)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %67 = call i32 @pci_disable_device(%struct.pci_dev* %66)
  br label %68

68:                                               ; preds = %60, %28
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @pch_gbe_down(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_set_multi(%struct.net_device*) #1

declare dso_local i32 @pch_gbe_setup_rctl(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_configure_rx(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_set_rgmii_ctrl(%struct.pch_gbe_adapter*, i32, i32) #1

declare dso_local i32 @pch_gbe_set_mode(%struct.pch_gbe_adapter*, i32, i32) #1

declare dso_local i32 @pch_gbe_mac_set_wol_event(%struct.pch_gbe_hw*, i64) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pch_gbe_phy_power_down(%struct.pch_gbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
