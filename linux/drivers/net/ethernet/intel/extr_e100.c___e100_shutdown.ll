; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c___e100_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c___e100_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.nic = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@wol_magic = common dso_local global i32 0, align 4
@phy_82552_v = common dso_local global i64 0, align 8
@E100_82552_SMARTSPEED = common dso_local global i32 0, align 4
@E100_82552_REV_ANEG = common dso_local global i32 0, align 4
@E100_82552_ANEG_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32*)* @__e100_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__e100_shutdown(%struct.pci_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nic*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.nic* @netdev_priv(%struct.net_device* %10)
  store %struct.nic* %11, %struct.nic** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call i64 @netif_running(%struct.net_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.nic*, %struct.nic** %6, align 8
  %17 = call i32 @e100_down(%struct.nic* %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call i32 @netif_device_detach(%struct.net_device* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = call i32 @pci_save_state(%struct.pci_dev* %21)
  %23 = load %struct.nic*, %struct.nic** %6, align 8
  %24 = getelementptr inbounds %struct.nic, %struct.nic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @wol_magic, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.nic*, %struct.nic** %6, align 8
  %29 = call i32 @e100_asf(%struct.nic* %28)
  %30 = or i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %18
  %33 = load %struct.nic*, %struct.nic** %6, align 8
  %34 = getelementptr inbounds %struct.nic, %struct.nic* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @phy_82552_v, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %32
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = load %struct.nic*, %struct.nic** %6, align 8
  %41 = getelementptr inbounds %struct.nic, %struct.nic* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @E100_82552_SMARTSPEED, align 4
  %45 = call i32 @mdio_read(%struct.net_device* %39, i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = load %struct.nic*, %struct.nic** %6, align 8
  %48 = getelementptr inbounds %struct.nic, %struct.nic* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @E100_82552_SMARTSPEED, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @E100_82552_REV_ANEG, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @E100_82552_ANEG_NOW, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @mdio_write(%struct.net_device* %46, i32 %50, i32 %51, i32 %56)
  br label %58

58:                                               ; preds = %38, %32
  %59 = load i32*, i32** %4, align 8
  store i32 1, i32* %59, align 4
  br label %62

60:                                               ; preds = %18
  %61 = load i32*, i32** %4, align 8
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = call i32 @pci_clear_master(%struct.pci_dev* %63)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @e100_down(%struct.nic*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @e100_asf(%struct.nic*) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @mdio_write(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
