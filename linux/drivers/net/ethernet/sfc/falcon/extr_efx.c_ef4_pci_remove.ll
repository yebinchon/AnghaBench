; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ef4_nic = type { i32, i32 }

@STATE_UNINIT = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"shutdown successful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ef4_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ef4_nic*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.ef4_nic* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.ef4_nic* %5, %struct.ef4_nic** %3, align 8
  %6 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %7 = icmp ne %struct.ef4_nic* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %45

9:                                                ; preds = %1
  %10 = call i32 (...) @rtnl_lock()
  %11 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %12 = call i32 @ef4_dissociate(%struct.ef4_nic* %11)
  %13 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %14 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_close(i32 %15)
  %17 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %18 = call i32 @ef4_disable_interrupts(%struct.ef4_nic* %17)
  %19 = load i32, i32* @STATE_UNINIT, align 4
  %20 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %21 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = call i32 (...) @rtnl_unlock()
  %23 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %24 = call i32 @ef4_unregister_netdev(%struct.ef4_nic* %23)
  %25 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %26 = call i32 @ef4_mtd_remove(%struct.ef4_nic* %25)
  %27 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %28 = call i32 @ef4_pci_remove_main(%struct.ef4_nic* %27)
  %29 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %30 = call i32 @ef4_fini_io(%struct.ef4_nic* %29)
  %31 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %32 = load i32, i32* @drv, align 4
  %33 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %34 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @netif_dbg(%struct.ef4_nic* %31, i32 %32, i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %38 = call i32 @ef4_fini_struct(%struct.ef4_nic* %37)
  %39 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %40 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @free_netdev(i32 %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %43)
  br label %45

45:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.ef4_nic* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @ef4_dissociate(%struct.ef4_nic*) #1

declare dso_local i32 @dev_close(i32) #1

declare dso_local i32 @ef4_disable_interrupts(%struct.ef4_nic*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @ef4_unregister_netdev(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_mtd_remove(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_pci_remove_main(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_fini_io(%struct.ef4_nic*) #1

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*) #1

declare dso_local i32 @ef4_fini_struct(%struct.ef4_nic*) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
