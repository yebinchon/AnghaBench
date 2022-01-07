; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ena_adapter = type { i32, i32, i32, %struct.net_device*, %struct.ena_com_dev* }
%struct.net_device = type { i32* }
%struct.ena_com_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ena_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.ena_adapter* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.ena_adapter* %7, %struct.ena_adapter** %3, align 8
  %8 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %8, i32 0, i32 4
  %10 = load %struct.ena_com_dev*, %struct.ena_com_dev** %9, align 8
  store %struct.ena_com_dev* %10, %struct.ena_com_dev** %4, align 8
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %11, i32 0, i32 3
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %14, i32 0, i32 2
  %16 = call i32 @del_timer_sync(i32* %15)
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %17, i32 0, i32 1
  %19 = call i32 @cancel_work_sync(i32* %18)
  %20 = call i32 (...) @rtnl_lock()
  %21 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %22 = call i32 @ena_destroy_device(%struct.ena_adapter* %21, i32 1)
  %23 = call i32 (...) @rtnl_unlock()
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call i32 @unregister_netdev(%struct.net_device* %24)
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 @free_netdev(%struct.net_device* %26)
  %28 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %29 = call i32 @ena_com_rss_destroy(%struct.ena_com_dev* %28)
  %30 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %31 = call i32 @ena_com_delete_debug_area(%struct.ena_com_dev* %30)
  %32 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %33 = call i32 @ena_com_delete_host_info(%struct.ena_com_dev* %32)
  %34 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = call i32 @ena_release_bars(%struct.ena_com_dev* %34, %struct.pci_dev* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = call i32 @pci_disable_device(%struct.pci_dev* %37)
  %39 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %40 = call i32 @vfree(%struct.ena_com_dev* %39)
  ret void
}

declare dso_local %struct.ena_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @ena_destroy_device(%struct.ena_adapter*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @ena_com_rss_destroy(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_delete_debug_area(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_delete_host_info(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_release_bars(%struct.ena_com_dev*, %struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @vfree(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
