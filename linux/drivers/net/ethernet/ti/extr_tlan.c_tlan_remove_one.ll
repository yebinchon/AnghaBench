; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.tlan_priv = type { i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @tlan_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.tlan_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.tlan_priv* %8, %struct.tlan_priv** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.tlan_priv*, %struct.tlan_priv** %4, align 8
  %12 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.tlan_priv*, %struct.tlan_priv** %4, align 8
  %17 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tlan_priv*, %struct.tlan_priv** %4, align 8
  %20 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.tlan_priv*, %struct.tlan_priv** %4, align 8
  %23 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.tlan_priv*, %struct.tlan_priv** %4, align 8
  %26 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pci_free_consistent(i32 %18, i32 %21, i64 %24, i32 %27)
  br label %29

29:                                               ; preds = %15, %1
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @free_netdev(%struct.net_device* %30)
  %32 = load %struct.tlan_priv*, %struct.tlan_priv** %4, align 8
  %33 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %32, i32 0, i32 0
  %34 = call i32 @cancel_work_sync(i32* %33)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
