; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.rtl8169_private = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @rtl_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtl8169_private*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %7)
  store %struct.rtl8169_private* %8, %struct.rtl8169_private** %4, align 8
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %10 = call i64 @r8168_check_dash(%struct.rtl8169_private* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %14 = call i32 @rtl8168_driver_stop(%struct.rtl8169_private* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %17 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %16, i32 0, i32 1
  %18 = call i32 @netif_napi_del(i32* %17)
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @unregister_netdev(%struct.net_device* %19)
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %22 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mdiobus_unregister(i32 %26)
  %28 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %29 = call i32 @rtl_release_firmware(%struct.rtl8169_private* %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = call i64 @pci_dev_run_wake(%struct.pci_dev* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %15
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = call i32 @pm_runtime_get_noresume(i32* %35)
  br label %37

37:                                               ; preds = %33, %15
  %38 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rtl_rar_set(%struct.rtl8169_private* %38, i32 %41)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @r8168_check_dash(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168_driver_stop(%struct.rtl8169_private*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @rtl_release_firmware(%struct.rtl8169_private*) #1

declare dso_local i64 @pci_dev_run_wake(%struct.pci_dev*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @rtl_rar_set(%struct.rtl8169_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
